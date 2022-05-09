; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/orinoco/mic.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/orinoco/mic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.orinoco_private = type { ptr, ptr, ptr, ptr, %struct.ieee80211_supported_band, [14 x %struct.ieee80211_channel], [3 x i32], %struct.spinlock, i32, %struct.work_struct, %struct.tasklet_struct, %struct.list_head, i32, i16, %struct.work_struct, %struct.work_struct, ptr, %struct.iw_statistics, %struct.hermes, i16, i32, i32, i32, i16, i16, i32, i32, i16, i16, [4 x %struct.key_params], i32, [33 x i8], [33 x i8], [6 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %struct.iw_spy_data, %struct.iw_public_data, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, i8, ptr, ptr, %struct.notifier_block }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.104, i32 }
%struct.atomic_t = type { i32 }
%union.anon.104 = type { ptr }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.hermes = type { ptr, i32, i16, i8, ptr, ptr }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_public_data = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"michael_mic\00", [20 x i8] zeroinitializer }, align 32
@orinoco_mic_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 22, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: could not allocate crypto API michael_mic\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"orinoco_mic_init\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/intersil/orinoco/mic.c\00", [52 x i8] zeroinitializer }, align 32
@orinoco_mic_init._entry_ptr = internal global ptr @orinoco_mic_init._entry, section ".printk_index", align 4
@orinoco_mic_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@orinoco_mic_init._entry_ptr.5 = internal global ptr @orinoco_mic_init._entry.4, section ".printk_index", align 4
@orinoco_mic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: tfm_michael == NULL\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"orinoco_mic\00", [20 x i8] zeroinitializer }, align 32
@orinoco_mic._entry_ptr = internal global ptr @orinoco_mic._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 19, i32 40 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 21, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 29, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [47 x i8] c"../drivers/net/wireless/intersil/orinoco/mic.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 55, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @orinoco_mic._entry, ptr @orinoco_mic._entry_ptr, ptr @orinoco_mic_init._entry, ptr @orinoco_mic_init._entry.4, ptr @orinoco_mic_init._entry_ptr, ptr @orinoco_mic_init._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_mic_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_mic_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_mic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orinoco_mic_init(ptr nocapture noundef writeonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #4
  %tx_tfm_mic = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 61
  %0 = ptrtoint ptr %tx_tfm_mic to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %tx_tfm_mic, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.return.sink.split_crit_edge, label %if.end

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #4
  %rx_tfm_mic = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 60
  %1 = ptrtoint ptr %rx_tfm_mic to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call5, ptr %rx_tfm_mic, align 4
  %cmp.i20 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i20, label %if.end.return.sink.split_crit_edge, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %rx_tfm_mic.sink = phi ptr [ %tx_tfm_mic, %entry.return.sink.split_crit_edge ], [ %rx_tfm_mic, %if.end.return.sink.split_crit_edge ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  %2 = ptrtoint ptr %rx_tfm_mic.sink to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rx_tfm_mic.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.return_crit_edge ], [ -12, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orinoco_mic_free(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_tfm_mic = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 61
  %0 = ptrtoint ptr %tx_tfm_mic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_tfm_mic, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %1, ptr noundef %base.i.i) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_tfm_mic = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 60
  %2 = ptrtoint ptr %rx_tfm_mic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_tfm_mic, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %base.i.i10 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %3, ptr noundef %base.i.i10) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orinoco_mic(ptr noundef %tfm_michael, ptr noundef %key, ptr nocapture noundef readonly %da, ptr nocapture noundef readonly %sa, i8 noundef zeroext %priority, ptr noundef %data, i32 noundef %data_len, ptr noundef %mic) local_unnamed_addr #0 align 64 {
entry:
  %__desc_desc = alloca [376 x i8], align 8
  %hdr = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__desc_desc) #4
  %0 = call ptr @memset(ptr %__desc_desc, i32 255, i32 376)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hdr) #4
  %cmp = icmp eq ptr %tfm_michael, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds [16 x i8], ptr %hdr, i32 0, i32 15
  %2 = getelementptr inbounds [16 x i8], ptr %hdr, i32 0, i32 14
  %3 = getelementptr inbounds [16 x i8], ptr %hdr, i32 0, i32 13
  %4 = getelementptr inbounds [16 x i8], ptr %hdr, i32 0, i32 12
  %5 = getelementptr inbounds [16 x i8], ptr %hdr, i32 0, i32 6
  %6 = call ptr @memcpy(ptr %hdr, ptr %da, i32 6)
  %7 = call ptr @memcpy(ptr %5, ptr %sa, i32 6)
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %priority, ptr %4, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %2, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %1, align 1
  %12 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tfm_michael, ptr %__desc_desc, align 8
  %call6 = tail call i32 @crypto_shash_setkey(ptr noundef nonnull %tfm_michael, ptr noundef %key, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %13 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__desc_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

crypto_shash_init.exit:                           ; preds = %if.end8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %14, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 -256
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %20(ptr noundef nonnull %__desc_desc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool10.not = icmp eq i32 %call3.i, 0
  br i1 %tobool10.not, label %if.end12, label %crypto_shash_init.exit.cleanup_crit_edge

crypto_shash_init.exit.cleanup_crit_edge:         ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %crypto_shash_init.exit
  %call14 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef nonnull %hdr, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call18 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %data, i32 noundef %data_len) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %call22 = call i32 @crypto_shash_final(ptr noundef nonnull %__desc_desc, ptr noundef %mic) #4
  %21 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %__desc_desc, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 128
  %add.i = add i32 %24, 8
  %25 = call ptr @memset(ptr %__desc_desc, i32 0, i32 %add.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__desc_desc) #4, !srcloc !25
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %crypto_shash_init.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %call22, %if.end21 ], [ %call6, %if.end.cleanup_crit_edge ], [ %call3.i, %crypto_shash_init.exit.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ -126, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hdr) #4
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__desc_desc) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/orinoco/mic.c", i32 19, i32 40}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intersil/orinoco/mic.c", i32 21, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @orinoco_mic_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @orinoco_mic_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @orinoco_mic_init._entry.4, !9, !"_entry", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intersil/orinoco/mic.c", i32 29, i32 3}
!10 = !{ptr @orinoco_mic_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intersil/orinoco/mic.c", i32 55, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @orinoco_mic._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @orinoco_mic._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2148713693}
