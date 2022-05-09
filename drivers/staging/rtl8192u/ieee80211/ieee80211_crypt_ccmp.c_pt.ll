; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c_pt.bc'
source_filename = "../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c"
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
%struct.ieee80211_ccmp_data = type { [16 x i8], i32, [6 x i8], [6 x i8], i32, i32, i32, i32, ptr, [32 x i8], [32 x i8] }
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
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.rtl_80211_hdr_4addr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8], [0 x i8] }
%struct.page = type { i32, %union.anon.9, %union.anon.83, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.83 = type { %struct.atomic_t }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }

@__UNIQUE_ID_author339 = internal constant [21 x i8] c"author=Jouni Malinen\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [32 x i8] c"description=Host AP crypt: CCMP\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@ieee80211_crypt_ccmp = internal global { %struct.ieee80211_crypto_ops, [44 x i8] } { %struct.ieee80211_crypto_ops { ptr @.str, ptr @ieee80211_ccmp_init, ptr @ieee80211_ccmp_deinit, ptr @ieee80211_ccmp_encrypt, ptr @ieee80211_ccmp_decrypt, ptr null, ptr null, ptr @ieee80211_ccmp_set_key, ptr @ieee80211_ccmp_get_key, ptr @ieee80211_ccmp_print_stats, i32 8, i32 8, ptr @__this_module }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CCMP\00", [27 x i8] zeroinitializer }, align 32
@__this_module = external dso_local global %struct.module, align 128
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ccm(aes)\00", [23 x i8] zeroinitializer }, align 32
@ieee80211_ccmp_init.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r8192u_usb\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ieee80211_ccmp_init\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ieee80211_crypt_ccmp: could not allocate crypto API aes\0A\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.6, ptr @.str.4, ptr @.str.7, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ieee80211_ccmp_decrypt\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"CCMP: received packet without ExtIV flag from %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.6, ptr @.str.4, ptr @.str.8, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"CCMP: RX tkey->key_idx=%d frame keyidx=%d priv=%p\0A\00", [45 x i8] zeroinitializer }, align 32
@ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.6, ptr @.str.4, ptr @.str.9, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"CCMP: received packet from %pM with keyid=%d that does not have a configured key\0A\00", [46 x i8] zeroinitializer }, align 32
@ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.6, ptr @.str.4, ptr @.str.10, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"CCMP: replay detected: STA=%pM previous PN %pm received PN %pm\0A\00", [32 x i8] zeroinitializer }, align 32
@ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.6, ptr @.str.4, ptr @.str.11, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CCMP: decrypt failed: STA=%pM\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"key[%d] alg=CCMP key_set=%d tx_pn=%pm rx_pn=%pm format_errors=%d replays=%d decrypt_errors=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16]
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"ieee80211_crypt_ccmp\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 397, i32 36 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 398, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 64, i32 32 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 66, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 248, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 256, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 262, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 278, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 311, i32 5 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [61 x i8] c"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 387, i32 18 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_license341, ptr @ieee80211_crypt_ccmp, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_crypt_ccmp to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_ccmp_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ieee80211_register_crypto_ops_rsl(ptr noundef nonnull @ieee80211_crypt_ccmp) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_crypto_ops_rsl(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_crypto_ccmp_exit() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @ieee80211_unregister_crypto_ops_rsl(ptr noundef nonnull @ieee80211_crypt_ccmp) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_unregister_crypto_ops_rsl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ieee80211_ccmp_init(i32 noundef %key_idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 116) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_idx1 = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %call7.i.i, i32 0, i32 7
  %1 = ptrtoint ptr %key_idx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %key_idx, ptr %key_idx1, align 4
  %call2 = tail call ptr @crypto_alloc_aead(ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 128) #13
  %tfm = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %call7.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %tfm, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_ccmp_init.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_ccmp_init, %if.then10)) #13
          to label %if.end20 [label %if.then10], !srcloc !45

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ieee80211_ccmp_init.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.5) #13
  br label %if.end20

if.end20:                                         ; preds = %if.then10, %do.body
  %3 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %tfm, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end20 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_ccmp_deinit(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tfm = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %1, ptr noundef %base.i.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %priv) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_ccmp_encrypt(ptr noundef %skb, i32 noundef %hdr_len, ptr noundef %priv) #2 align 64 {
entry:
  %sg = alloca [2 x %struct.scatterlist], align 4
  %iv = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i)
  %cmp = icmp ult i32 %sub.ptr.sub.i, 8
  br i1 %cmp, label %entry.cleanup65_crit_edge, label %lor.lhs.false

entry.cleanup65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup65

lor.lhs.false:                                    ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %lor.lhs.false.cleanup65_crit_edge

lor.lhs.false.cleanup65_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup65

skb_tailroom.exit:                                ; preds = %lor.lhs.false
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i114 = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i115 = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i116 = sub i32 %sub.ptr.lhs.cast.i114, %sub.ptr.rhs.cast.i115
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i116)
  %cmp2 = icmp slt i32 %sub.ptr.sub.i116, 8
  br i1 %cmp2, label %skb_tailroom.exit.cleanup65_crit_edge, label %lor.lhs.false3

skb_tailroom.exit.cleanup65_crit_edge:            ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup65

lor.lhs.false3:                                   ; preds = %skb_tailroom.exit
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %hdr_len)
  %cmp4 = icmp ult i32 %11, %hdr_len
  br i1 %cmp4, label %lor.lhs.false3.cleanup65_crit_edge, label %if.end

lor.lhs.false3.cleanup65_crit_edge:               ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup65

if.end:                                           ; preds = %lor.lhs.false3
  %call5 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #13
  %add.ptr6 = getelementptr i8, ptr %call5, i32 8
  %12 = call ptr @memmove(ptr %call5, ptr %add.ptr6, i32 %hdr_len)
  %add.ptr7 = getelementptr i8, ptr %call5, i32 %hdr_len
  %arrayidx = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 5
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %inc = add i8 %14, 1
  store i8 %inc, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc)
  %cmp11.not = icmp eq i8 %inc, 0
  br i1 %cmp11.not, label %while.cond, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond:                                       ; preds = %if.end
  %arrayidx.1 = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.1, align 1
  %inc.1 = add i8 %16, 1
  store i8 %inc.1, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.1)
  %cmp11.not.1 = icmp eq i8 %inc.1, 0
  br i1 %cmp11.not.1, label %while.cond.1, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond.1:                                     ; preds = %while.cond
  %arrayidx.2 = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2, align 1
  %inc.2 = add i8 %18, 1
  store i8 %inc.2, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.2)
  %cmp11.not.2 = icmp eq i8 %inc.2, 0
  br i1 %cmp11.not.2, label %while.cond.2, label %while.cond.1.while.end_crit_edge

while.cond.1.while.end_crit_edge:                 ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond.2:                                     ; preds = %while.cond.1
  %arrayidx.3 = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.3, align 1
  %inc.3 = add i8 %20, 1
  store i8 %inc.3, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.3)
  %cmp11.not.3 = icmp eq i8 %inc.3, 0
  br i1 %cmp11.not.3, label %while.cond.3, label %while.cond.2.while.end_crit_edge

while.cond.2.while.end_crit_edge:                 ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond.3:                                     ; preds = %while.cond.2
  %arrayidx.4 = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.4, align 1
  %inc.4 = add i8 %22, 1
  store i8 %inc.4, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.4)
  %cmp11.not.4 = icmp eq i8 %inc.4, 0
  br i1 %cmp11.not.4, label %while.cond.4, label %while.cond.3.while.end_crit_edge

while.cond.3.while.end_crit_edge:                 ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond.4:                                     ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.5 = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 0
  %23 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.5, align 1
  %inc.5 = add i8 %24, 1
  store i8 %inc.5, ptr %arrayidx.5, align 1
  br label %while.end

while.end:                                        ; preds = %while.cond.4, %while.cond.3.while.end_crit_edge, %while.cond.2.while.end_crit_edge, %while.cond.1.while.end_crit_edge, %while.cond.while.end_crit_edge, %if.end.while.end_crit_edge
  %tx_pn15 = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %incdec.ptr = getelementptr i8, ptr %add.ptr7, i32 1
  %27 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %add.ptr7, align 1
  %arrayidx18 = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx18, align 4
  %incdec.ptr19 = getelementptr i8, ptr %incdec.ptr, i32 1
  %30 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %incdec.ptr, align 1
  %incdec.ptr20 = getelementptr i8, ptr %incdec.ptr19, i32 1
  %31 = ptrtoint ptr %incdec.ptr19 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %incdec.ptr19, align 1
  %key_idx = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 7
  %32 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %key_idx, align 4
  %.tr = trunc i32 %33 to i8
  %34 = shl i8 %.tr, 6
  %conv21 = or i8 %34, 32
  %incdec.ptr22 = getelementptr i8, ptr %incdec.ptr20, i32 1
  %35 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv21, ptr %incdec.ptr20, align 1
  %arrayidx24 = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 3
  %36 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx24, align 1
  %incdec.ptr25 = getelementptr i8, ptr %incdec.ptr22, i32 1
  %38 = ptrtoint ptr %incdec.ptr22 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %incdec.ptr22, align 1
  %arrayidx27 = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx27, align 2
  %incdec.ptr28 = getelementptr i8, ptr %incdec.ptr25, i32 1
  %41 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %incdec.ptr25, align 1
  %arrayidx30 = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx30, align 1
  %incdec.ptr31 = getelementptr i8, ptr %incdec.ptr28, i32 1
  %44 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %incdec.ptr28, align 1
  %45 = ptrtoint ptr %tx_pn15 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tx_pn15, align 4
  %47 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %incdec.ptr31, align 1
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i, align 4
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load = load i8, ptr %add.ptr, align 2
  %bf.clear = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.then35, label %while.end.cleanup65_crit_edge

while.end.cleanup65_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup65

if.then35:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg) #13
  %51 = call ptr @memset(ptr %sg, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv) #13
  %52 = getelementptr inbounds [16 x i8], ptr %iv, i32 0, i32 1
  %53 = getelementptr inbounds [16 x i8], ptr %iv, i32 0, i32 2
  %54 = getelementptr inbounds [16 x i8], ptr %iv, i32 0, i32 8
  %55 = getelementptr inbounds i8, ptr %iv, i32 14
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 -1, ptr %55, align 1
  %57 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len, align 4
  %tfm = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 8
  %59 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tfm, align 4
  %reqsize.i.i = getelementptr inbounds %struct.crypto_aead, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reqsize.i.i, align 4
  %add.i = add i32 %62, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2592) #17
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.then35.cleanup_crit_edge, label %if.end42, !prof !46

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end42:                                         ; preds = %if.then35
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %60, i32 0, i32 3
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %sub = sub i32 %58, %hdr_len
  %sub38 = add i32 %sub, -8
  %tx_aad = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 9
  %64 = ptrtoint ptr %49 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %49, align 1
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #13
  %conv.i = zext i16 %66 to i32
  %and.i = and i32 %conv.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 768
  %67 = and i32 %conv.i, 140
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %67)
  %68 = icmp eq i32 %67, 136
  %aad_len.0.i = select i1 %cmp.i, i32 28, i32 22
  br i1 %68, label %if.then11.i, label %if.end42.if.end19.i_crit_edge

if.end42.if.end19.i_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

if.then11.i:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  %addr4.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %49, i32 0, i32 6
  %add.ptr.i = getelementptr %struct.rtl_80211_hdr_4addr, ptr %49, i32 1
  %spec.select.i = select i1 %cmp.i, ptr %add.ptr.i, ptr %addr4.i
  %69 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %spec.select.i, align 1
  %71 = and i8 %70, 15
  %add18.i = add nuw nsw i32 %aad_len.0.i, 2
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then11.i, %if.end42.if.end19.i_crit_edge
  %qc.0.i = phi i8 [ %71, %if.then11.i ], [ 0, %if.end42.if.end19.i_crit_edge ]
  %aad_len.1.i = phi i32 [ %add18.i, %if.then11.i ], [ %aad_len.0.i, %if.end42.if.end19.i_crit_edge ]
  %72 = ptrtoint ptr %iv to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %iv, align 1
  %73 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %qc.0.i, ptr %52, align 1
  %addr2.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %49, i32 0, i32 3
  %74 = call ptr @memcpy(ptr %53, ptr %addr2.i, i32 6)
  %75 = call ptr @memcpy(ptr %54, ptr %tx_pn15, i32 6)
  %76 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %49, align 1
  %78 = and i8 %77, -113
  %79 = ptrtoint ptr %tx_aad to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %tx_aad, align 1
  %arrayidx28.i = getelementptr i8, ptr %49, i32 1
  %80 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx28.i, align 1
  %82 = and i8 %81, -57
  %arrayidx32.i = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 9, i32 1
  %83 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx32.i, align 1
  %arrayidx33.i = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 9, i32 2
  %addr1.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %49, i32 0, i32 2
  %84 = call ptr @memcpy(ptr %arrayidx33.i, ptr %addr1.i, i32 6)
  %arrayidx34.i = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 9, i32 8
  %85 = call ptr @memcpy(ptr %arrayidx34.i, ptr %addr2.i, i32 6)
  %arrayidx36.i = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 9, i32 14
  %addr3.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %49, i32 0, i32 4
  %86 = call ptr @memcpy(ptr %arrayidx36.i, ptr %addr3.i, i32 6)
  %seq_ctl.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %49, i32 0, i32 5
  %87 = ptrtoint ptr %seq_ctl.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %seq_ctl.i, align 1
  %89 = and i8 %88, 15
  %arrayidx41.i = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 9, i32 20
  %90 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx41.i, align 1
  %arrayidx42.i = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 9, i32 21
  %91 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %arrayidx42.i, align 1
  %add.ptr43.i = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 9, i32 22
  %92 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 8)
  store i64 0, ptr %add.ptr43.i, align 1
  br i1 %cmp.i, label %if.then45.i, label %if.end19.i.if.end49.i_crit_edge

if.end19.i.if.end49.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

if.then45.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  %addr447.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %49, i32 0, i32 6
  %93 = call ptr @memcpy(ptr %add.ptr43.i, ptr %addr447.i, i32 6)
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then45.i, %if.end19.i.if.end49.i_crit_edge
  br i1 %68, label %if.then51.i, label %if.end49.i.ccmp_init_iv_and_aad.exit_crit_edge

if.end49.i.ccmp_init_iv_and_aad.exit_crit_edge:   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ccmp_init_iv_and_aad.exit

if.then51.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx53.i = getelementptr i8, ptr %tx_aad, i32 %aad_len.0.i
  %94 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %qc.0.i, ptr %arrayidx53.i, align 1
  br label %ccmp_init_iv_and_aad.exit

ccmp_init_iv_and_aad.exit:                        ; preds = %if.then51.i, %if.end49.i.ccmp_init_iv_and_aad.exit_crit_edge
  %call47 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 8) #13
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 2) #13
  %95 = ptrtoint ptr %tx_aad to i32
  %cmp.i117 = icmp ugt ptr %tx_aad, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i117, label %land.lhs.true.i, label %ccmp_init_iv_and_aad.exit.do.body5.i_crit_edge, !prof !47

ccmp_init_iv_and_aad.exit.do.body5.i_crit_edge:   ; preds = %ccmp_init_iv_and_aad.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %ccmp_init_iv_and_aad.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %96 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %96, %tx_aad
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !47

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %95, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %97 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i118 = add i32 %97, %shr.i
  %call.i = call i32 @pfn_valid(i32 noundef %add.i118) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !46

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %ccmp_init_iv_and_aad.exit.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #13, !srcloc !48
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %98 = load ptr, ptr @mem_map, align 4
  %add.ptr.i119 = getelementptr %struct.page, ptr %98, i32 %shr.i
  %99 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sg, align 4
  %101 = ptrtoint ptr %add.ptr.i119 to i32
  %and2.i.i.i = and i32 %101, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i120 = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i120, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !47

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #13, !srcloc !49
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !47

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #13, !srcloc !50
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i121 = and i32 %95, 4095
  %and.i.i.i = and i32 %100, 3
  %or.i.i.i = or i32 %and.i.i.i, %101
  %102 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or.i.i.i, ptr %sg, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %103 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %and.i121, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %104 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %aad_len.1.i, ptr %length.i.i, align 4
  %arrayidx50 = getelementptr inbounds [2 x %struct.scatterlist], ptr %sg, i32 0, i32 1
  %105 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data.i, align 4
  %add.ptr52 = getelementptr i8, ptr %106, i32 %hdr_len
  %add.ptr53 = getelementptr i8, ptr %add.ptr52, i32 8
  %107 = ptrtoint ptr %add.ptr53 to i32
  %cmp.i122 = icmp ugt ptr %add.ptr53, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i122, label %land.lhs.true.i124, label %sg_set_buf.exit.do.body5.i131_crit_edge, !prof !47

sg_set_buf.exit.do.body5.i131_crit_edge:          ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body5.i131

land.lhs.true.i124:                               ; preds = %sg_set_buf.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %108 = load ptr, ptr @high_memory, align 4
  %cmp1.i123 = icmp ugt ptr %108, %add.ptr53
  br i1 %cmp1.i123, label %land.rhs.i130, label %land.lhs.true.i124.do.body5.i131_crit_edge, !prof !47

land.lhs.true.i124.do.body5.i131_crit_edge:       ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body5.i131

land.rhs.i130:                                    ; preds = %land.lhs.true.i124
  %sub.i125 = add i32 %107, 1073741824
  %shr.i126 = lshr i32 %sub.i125, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %109 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i127 = add i32 %109, %shr.i126
  %call.i128 = call i32 @pfn_valid(i32 noundef %add.i127) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool.i129 = icmp eq i32 %call.i128, 0
  br i1 %tobool.i129, label %land.rhs.i130.do.body5.i131_crit_edge, label %do.end8.i135, !prof !46

land.rhs.i130.do.body5.i131_crit_edge:            ; preds = %land.rhs.i130
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body5.i131

do.body5.i131:                                    ; preds = %land.rhs.i130.do.body5.i131_crit_edge, %land.lhs.true.i124.do.body5.i131_crit_edge, %sg_set_buf.exit.do.body5.i131_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #13, !srcloc !48
  unreachable

do.end8.i135:                                     ; preds = %land.rhs.i130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %110 = load ptr, ptr @mem_map, align 4
  %add.ptr.i132 = getelementptr %struct.page, ptr %110, i32 %shr.i126
  %111 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx50, align 4
  %113 = ptrtoint ptr %add.ptr.i132 to i32
  %and2.i.i.i133 = and i32 %113, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i133)
  %tobool.not.i.i.i134 = icmp eq i32 %and2.i.i.i133, 0
  br i1 %tobool.not.i.i.i134, label %do.body11.i.i.i139, label %do.body5.i.i.i136, !prof !47

do.body5.i.i.i136:                                ; preds = %do.end8.i135
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #13, !srcloc !49
  unreachable

do.body11.i.i.i139:                               ; preds = %do.end8.i135
  %and.i.i.i.i137 = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i137)
  %tobool.i.not.i.i.i138 = icmp eq i32 %and.i.i.i.i137, 0
  br i1 %tobool.i.not.i.i.i138, label %sg_set_buf.exit146, label %do.body19.i.i.i140, !prof !47

do.body19.i.i.i140:                               ; preds = %do.body11.i.i.i139
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #13, !srcloc !50
  unreachable

sg_set_buf.exit146:                               ; preds = %do.body11.i.i.i139
  call void @__sanitizer_cov_trace_pc() #15
  %and.i141 = and i32 %107, 4095
  %and.i.i.i142 = and i32 %112, 3
  %or.i.i.i143 = or i32 %and.i.i.i142, %113
  %114 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or.i.i.i143, ptr %arrayidx50, align 4
  %offset1.i.i144 = getelementptr inbounds [2 x %struct.scatterlist], ptr %sg, i32 0, i32 1, i32 1
  %115 = ptrtoint ptr %offset1.i.i144 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %and.i141, ptr %offset1.i.i144, align 4
  %length.i.i145 = getelementptr inbounds [2 x %struct.scatterlist], ptr %sg, i32 0, i32 1, i32 2
  %116 = ptrtoint ptr %length.i.i145 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %sub, ptr %length.i.i145, align 4
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %117 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %118 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %119 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %flags4.i, align 4
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 1
  %120 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %aad_len.1.i, ptr %assoclen1.i, align 8
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 4
  %121 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %sg, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 5
  %122 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %sg, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 2
  %123 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %sub38, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 3
  %124 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %iv, ptr %iv4.i, align 32
  %call57 = call i32 @crypto_aead_encrypt(ptr noundef nonnull %call9.i.i) #13
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %sg_set_buf.exit146, %if.then35.cleanup_crit_edge
  %retval.0 = phi i32 [ %call57, %sg_set_buf.exit146 ], [ -12, %if.then35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg) #13
  br label %cleanup65

cleanup65:                                        ; preds = %cleanup, %while.end.cleanup65_crit_edge, %lor.lhs.false3.cleanup65_crit_edge, %skb_tailroom.exit.cleanup65_crit_edge, %lor.lhs.false.cleanup65_crit_edge, %entry.cleanup65_crit_edge
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ -1, %lor.lhs.false3.cleanup65_crit_edge ], [ -1, %skb_tailroom.exit.cleanup65_crit_edge ], [ -1, %entry.cleanup65_crit_edge ], [ 0, %while.end.cleanup65_crit_edge ], [ -1, %lor.lhs.false.cleanup65_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_ccmp_decrypt(ptr noundef %skb, i32 noundef %hdr_len, ptr noundef %priv) #2 align 64 {
entry:
  %pn = alloca [6 x i8], align 1
  %sg = alloca [2 x %struct.scatterlist], align 4
  %iv = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %pn) #13
  %0 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 5
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %add1 = add i32 %hdr_len, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add1)
  %cmp = icmp ult i32 %6, %add1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dot11RSNAStatsCCMPFormatErrors = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 4
  %7 = ptrtoint ptr %dot11RSNAStatsCCMPFormatErrors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dot11RSNAStatsCCMPFormatErrors, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %dot11RSNAStatsCCMPFormatErrors, align 4
  br label %cleanup192

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %add.ptr3 = getelementptr i8, ptr %10, i32 %hdr_len
  %arrayidx = getelementptr i8, ptr %add.ptr3, i32 3
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %13 = and i8 %12, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.then4, label %if.end20

if.then4:                                         ; preds = %if.end
  %call = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then4.if.end17_crit_edge, label %do.body7

if.then4.if.end17_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

do.body7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_ccmp_decrypt, %if.then12)) #13
          to label %if.end17 [label %if.then12], !srcloc !45

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  %14 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %addr2 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug343, ptr noundef %16, ptr noundef nonnull @.str.7, ptr noundef %addr2) #13
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %do.body7, %if.then4.if.end17_crit_edge
  %dot11RSNAStatsCCMPFormatErrors18 = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 4
  %17 = ptrtoint ptr %dot11RSNAStatsCCMPFormatErrors18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dot11RSNAStatsCCMPFormatErrors18, align 4
  %inc19 = add i32 %18, 1
  store i32 %inc19, ptr %dot11RSNAStatsCCMPFormatErrors18, align 4
  br label %cleanup192

if.end20:                                         ; preds = %if.end
  %19 = lshr i8 %12, 6
  %key_idx = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 7
  %20 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %key_idx, align 4
  %conv23 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv23)
  %cmp24.not = icmp eq i32 %21, %conv23
  br i1 %cmp24.not, label %if.end48, label %do.body28

do.body28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_ccmp_decrypt, %if.then40)) #13
          to label %cleanup192 [label %if.then40], !srcloc !45

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  %22 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %25 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %key_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug344, ptr noundef %24, ptr noundef nonnull @.str.8, i32 noundef %26, i32 noundef %conv23, ptr noundef %priv) #13
  br label %cleanup192

if.end48:                                         ; preds = %if.end20
  %key_set = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 1
  %27 = ptrtoint ptr %key_set to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %key_set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool49.not = icmp eq i32 %28, 0
  br i1 %tobool49.not, label %if.then50, label %if.end77

if.then50:                                        ; preds = %if.end48
  %call51 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then50.cleanup192_crit_edge, label %do.body55

if.then50.cleanup192_crit_edge:                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup192

do.body55:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_ccmp_decrypt, %if.then67)) #13
          to label %cleanup192 [label %if.then67], !srcloc !45

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #15
  %29 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %addr268 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug345, ptr noundef %31, ptr noundef nonnull @.str.9, ptr noundef %addr268, i32 noundef %21) #13
  br label %cleanup192

if.end77:                                         ; preds = %if.end48
  %arrayidx78 = getelementptr i8, ptr %add.ptr3, i32 7
  %32 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx78, align 1
  %34 = ptrtoint ptr %pn to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %pn, align 1
  %arrayidx80 = getelementptr i8, ptr %add.ptr3, i32 6
  %35 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx80, align 1
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %0, align 1
  %arrayidx82 = getelementptr i8, ptr %add.ptr3, i32 5
  %38 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx82, align 1
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %1, align 1
  %arrayidx84 = getelementptr i8, ptr %add.ptr3, i32 4
  %41 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx84, align 1
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %2, align 1
  %arrayidx86 = getelementptr i8, ptr %add.ptr3, i32 1
  %44 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx86, align 1
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %3, align 1
  %47 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr3, align 1
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %4, align 1
  %add.ptr90 = getelementptr i8, ptr %add.ptr3, i32 8
  %rx_pn = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 3
  %call93 = call i32 @memcmp(ptr noundef nonnull dereferenceable(6) %pn, ptr noundef dereferenceable(6) %rx_pn, i32 noundef 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 1
  br i1 %cmp94, label %if.then96, label %if.end126

if.then96:                                        ; preds = %if.end77
  %call97 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then96.if.end124_crit_edge, label %do.body101

if.then96.if.end124_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

do.body101:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_ccmp_decrypt, %if.then113)) #13
          to label %if.end124 [label %if.then113], !srcloc !45

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #15
  %50 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %addr2114 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %10, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug346, ptr noundef %52, ptr noundef nonnull @.str.10, ptr noundef %addr2114, ptr noundef %rx_pn, ptr noundef nonnull %pn) #13
  br label %if.end124

if.end124:                                        ; preds = %if.then113, %do.body101, %if.then96.if.end124_crit_edge
  %dot11RSNAStatsCCMPReplays = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 5
  %53 = ptrtoint ptr %dot11RSNAStatsCCMPReplays to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dot11RSNAStatsCCMPReplays, align 4
  %inc125 = add i32 %54, 1
  store i32 %inc125, ptr %dot11RSNAStatsCCMPReplays, align 4
  br label %cleanup192

if.end126:                                        ; preds = %if.end77
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load = load i8, ptr %add.ptr, align 2
  %bf.clear = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool127.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool127.not, label %if.then128, label %if.end126.if.end184_crit_edge

if.end126.if.end184_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184

if.then128:                                       ; preds = %if.end126
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg) #13
  %56 = call ptr @memset(ptr %sg, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv) #13
  %tfm = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 8
  %57 = call ptr @memset(ptr %iv, i32 255, i32 16)
  %58 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tfm, align 4
  %reqsize.i.i = getelementptr inbounds %struct.crypto_aead, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %reqsize.i.i, align 4
  %add.i = add i32 %61, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2592) #17
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.then128.cleanup.thread_crit_edge, label %if.end135, !prof !46

if.then128.cleanup.thread_crit_edge:              ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end135:                                        ; preds = %if.then128
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %59, i32 0, i32 3
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %sub = sub i32 %6, %hdr_len
  %sub131 = add i32 %sub, -8
  %rx_aad = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 10
  %call138 = call fastcc i32 @ccmp_init_iv_and_aad(ptr noundef %10, ptr noundef nonnull %pn, ptr noundef nonnull %iv, ptr noundef %rx_aad)
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 2) #13
  call fastcc void @sg_set_buf(ptr noundef nonnull %sg, ptr noundef %rx_aad, i32 noundef %call138)
  %arrayidx141 = getelementptr inbounds [2 x %struct.scatterlist], ptr %sg, i32 0, i32 1
  call fastcc void @sg_set_buf(ptr noundef %arrayidx141, ptr noundef %add.ptr90, i32 noundef %sub131)
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %65 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %flags4.i, align 4
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call138, ptr %assoclen1.i, align 8
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 4
  %67 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %sg, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 5
  %68 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %sg, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub131, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 3
  %70 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %iv, ptr %iv4.i, align 32
  %call145 = call i32 @crypto_aead_decrypt(ptr noundef nonnull %call9.i.i) #13
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %cleanup, label %if.then147

if.then147:                                       ; preds = %if.end135
  %call148 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.then147.if.end172_crit_edge, label %do.body152

if.then147.if.end172_crit_edge:                   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end172

do.body152:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_ccmp_decrypt, %if.then164)) #13
          to label %if.end172 [label %if.then164], !srcloc !45

if.then164:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #15
  %71 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  %addr2165 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %10, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug347, ptr noundef %73, ptr noundef nonnull @.str.11, ptr noundef %addr2165) #13
  br label %if.end172

if.end172:                                        ; preds = %if.then164, %do.body152, %if.then147.if.end172_crit_edge
  %dot11RSNAStatsCCMPDecryptErrors = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 6
  %74 = ptrtoint ptr %dot11RSNAStatsCCMPDecryptErrors to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dot11RSNAStatsCCMPDecryptErrors, align 4
  %inc173 = add i32 %75, 1
  store i32 %inc173, ptr %dot11RSNAStatsCCMPDecryptErrors, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end172, %if.then128.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -5, %if.end172 ], [ -12, %if.then128.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg) #13
  br label %cleanup192

cleanup:                                          ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #15
  %76 = call ptr @memcpy(ptr %rx_pn, ptr %pn, i32 6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg) #13
  br label %if.end184

if.end184:                                        ; preds = %cleanup, %if.end126.if.end184_crit_edge
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data, align 4
  %add.ptr186 = getelementptr i8, ptr %78, i32 8
  %79 = call ptr @memmove(ptr %add.ptr186, ptr %78, i32 %hdr_len)
  %call188 = call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #13
  %80 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len, align 4
  %sub190 = add i32 %81, -8
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub190) #13
  br label %cleanup192

cleanup192:                                       ; preds = %if.end184, %cleanup.thread, %if.end124, %if.then67, %do.body55, %if.then50.cleanup192_crit_edge, %if.then40, %do.body28, %if.end17, %if.then
  %retval.1 = phi i32 [ -1, %if.then ], [ -4, %if.end124 ], [ %21, %if.end184 ], [ -2, %if.end17 ], [ -6, %if.then40 ], [ -3, %if.then67 ], [ -3, %if.then50.cleanup192_crit_edge ], [ -6, %do.body28 ], [ -3, %do.body55 ], [ %retval.0.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %pn) #13
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_ccmp_set_key(ptr nocapture noundef readonly %key, i32 noundef %len, ptr noundef readonly %seq, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm1 = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %tfm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm1, align 4
  %key_idx = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 7
  %2 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_idx, align 4
  %4 = call ptr @memset(ptr %priv, i32 0, i32 116)
  store i32 %3, ptr %key_idx, align 4
  %5 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %len, label %entry.cleanup_crit_edge [
    i32 16, label %if.then
    i32 0, label %entry.if.end33_crit_edge
  ]

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  %6 = call ptr @memcpy(ptr %priv, ptr %key, i32 16)
  %key_set = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %key_set to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %key_set, align 4
  %tobool.not = icmp eq ptr %seq, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr i8, ptr %seq, i32 5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %rx_pn = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 3
  %10 = ptrtoint ptr %rx_pn to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %rx_pn, align 2
  %arrayidx6 = getelementptr i8, ptr %seq, i32 4
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr i8, ptr %seq, i32 3
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9, align 1
  %arrayidx11 = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx11, align 2
  %arrayidx12 = getelementptr i8, ptr %seq, i32 2
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx14, align 1
  %arrayidx15 = getelementptr i8, ptr %seq, i32 1
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx15, align 1
  %arrayidx17 = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx17, align 2
  %23 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %seq, align 1
  %arrayidx20 = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 3, i32 5
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx20, align 1
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %call = tail call i32 @crypto_aead_setauthsize(ptr noundef %1, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call24 = tail call i32 @crypto_aead_setkey(ptr noundef %1, ptr noundef %priv, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %lor.lhs.false.if.end33_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.end33:                                         ; preds = %lor.lhs.false.if.end33_crit_edge, %entry.if.end33_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ieee80211_ccmp_get_key(ptr nocapture noundef writeonly %key, i32 noundef %len, ptr noundef writeonly %seq, ptr nocapture noundef readonly %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %cmp = icmp slt i32 %len, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_set = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %key_set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %2 = call ptr @memcpy(ptr %key, ptr %priv, i32 16)
  %tobool4.not = icmp eq ptr %seq, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.then5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %tx_pn = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 2
  %arrayidx = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 5
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = ptrtoint ptr %seq to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %seq, align 1
  %arrayidx8 = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr i8, ptr %seq, i32 1
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx9, align 1
  %arrayidx11 = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx11, align 1
  %arrayidx12 = getelementptr i8, ptr %seq, i32 2
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx14, align 2
  %arrayidx15 = getelementptr i8, ptr %seq, i32 3
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx15, align 1
  %arrayidx17 = getelementptr %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 2, i32 1
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

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ieee80211_ccmp_print_stats(ptr noundef writeonly %p, ptr noundef %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %key_idx = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %key_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_idx, align 4
  %key_set = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %key_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_set, align 4
  %tx_pn = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 2
  %rx_pn = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 3
  %dot11RSNAStatsCCMPFormatErrors = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 4
  %4 = ptrtoint ptr %dot11RSNAStatsCCMPFormatErrors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dot11RSNAStatsCCMPFormatErrors, align 4
  %dot11RSNAStatsCCMPReplays = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 5
  %6 = ptrtoint ptr %dot11RSNAStatsCCMPReplays to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dot11RSNAStatsCCMPReplays, align 4
  %dot11RSNAStatsCCMPDecryptErrors = getelementptr inbounds %struct.ieee80211_ccmp_data, ptr %priv, i32 0, i32 6
  %8 = ptrtoint ptr %dot11RSNAStatsCCMPDecryptErrors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dot11RSNAStatsCCMPDecryptErrors, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p, ptr noundef nonnull @.str.12, i32 noundef %1, i32 noundef %3, ptr noundef %tx_pn, ptr noundef %rx_pn, i32 noundef %5, i32 noundef %7, i32 noundef %9)
  %add.ptr = getelementptr i8, ptr %p, i32 %call
  ret ptr %add.ptr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ccmp_init_iv_and_aad(ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %pn, ptr nocapture noundef writeonly %iv, ptr nocapture noundef writeonly %aad) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %hdr, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and)
  %cmp = icmp eq i32 %and, 768
  %3 = and i32 %conv, 140
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %3)
  %4 = icmp eq i32 %3, 136
  %aad_len.0 = select i1 %cmp, i32 28, i32 22
  br i1 %4, label %if.then11, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %addr4 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %hdr, i32 0, i32 6
  %add.ptr = getelementptr %struct.rtl_80211_hdr_4addr, ptr %hdr, i32 1
  %spec.select = select i1 %cmp, ptr %add.ptr, ptr %addr4
  %5 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %spec.select, align 1
  %7 = and i8 %6, 15
  %add18 = add nuw nsw i32 %aad_len.0, 2
  br label %if.end19

if.end19:                                         ; preds = %if.then11, %entry.if.end19_crit_edge
  %qc.0 = phi i8 [ %7, %if.then11 ], [ 0, %entry.if.end19_crit_edge ]
  %aad_len.1 = phi i32 [ %add18, %if.then11 ], [ %aad_len.0, %entry.if.end19_crit_edge ]
  %8 = ptrtoint ptr %iv to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %iv, align 1
  %arrayidx20 = getelementptr i8, ptr %iv, i32 1
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %qc.0, ptr %arrayidx20, align 1
  %add.ptr21 = getelementptr i8, ptr %iv, i32 2
  %addr2 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %hdr, i32 0, i32 3
  %10 = call ptr @memcpy(ptr %add.ptr21, ptr %addr2, i32 6)
  %add.ptr22 = getelementptr i8, ptr %iv, i32 8
  %11 = call ptr @memcpy(ptr %add.ptr22, ptr %pn, i32 6)
  %12 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hdr, align 1
  %14 = and i8 %13, -113
  %15 = ptrtoint ptr %aad to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %aad, align 1
  %arrayidx28 = getelementptr i8, ptr %hdr, i32 1
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx28, align 1
  %18 = and i8 %17, -57
  %arrayidx32 = getelementptr i8, ptr %aad, i32 1
  %19 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx32, align 1
  %arrayidx33 = getelementptr i8, ptr %aad, i32 2
  %addr1 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %hdr, i32 0, i32 2
  %20 = call ptr @memcpy(ptr %arrayidx33, ptr %addr1, i32 6)
  %arrayidx34 = getelementptr i8, ptr %aad, i32 8
  %21 = call ptr @memcpy(ptr %arrayidx34, ptr %addr2, i32 6)
  %arrayidx36 = getelementptr i8, ptr %aad, i32 14
  %addr3 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %hdr, i32 0, i32 4
  %22 = call ptr @memcpy(ptr %arrayidx36, ptr %addr3, i32 6)
  %seq_ctl = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %hdr, i32 0, i32 5
  %23 = ptrtoint ptr %seq_ctl to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %seq_ctl, align 1
  %25 = and i8 %24, 15
  %arrayidx41 = getelementptr i8, ptr %aad, i32 20
  %26 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx41, align 1
  %arrayidx42 = getelementptr i8, ptr %aad, i32 21
  %27 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx42, align 1
  %add.ptr43 = getelementptr i8, ptr %aad, i32 22
  %28 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 0, ptr %add.ptr43, align 1
  br i1 %cmp, label %if.then45, label %if.end19.if.end49_crit_edge

if.end19.if.end49_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then45:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %addr447 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %hdr, i32 0, i32 6
  %29 = call ptr @memcpy(ptr %add.ptr43, ptr %addr447, i32 6)
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.end19.if.end49_crit_edge
  br i1 %4, label %if.then51, label %if.end49.if.end54_crit_edge

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx53 = getelementptr i8, ptr %aad, i32 %aad_len.0
  %30 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %qc.0, ptr %arrayidx53, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end49.if.end54_crit_edge
  ret i32 %aad_len.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sg_set_buf(ptr nocapture noundef %sg, ptr noundef %buf, i32 noundef %buflen) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %buf to i32
  %cmp = icmp ugt ptr %buf, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true, label %entry.do.body5_crit_edge, !prof !47

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body5

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %cmp1 = icmp ugt ptr %1, %buf
  br i1 %cmp1, label %land.rhs, label %land.lhs.true.do.body5_crit_edge, !prof !47

land.lhs.true.do.body5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body5

land.rhs:                                         ; preds = %land.lhs.true
  %sub = add i32 %0, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %2, %shr
  %call = tail call i32 @pfn_valid(i32 noundef %add) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %land.rhs.do.body5_crit_edge, label %do.end8, !prof !46

land.rhs.do.body5_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body5

do.body5:                                         ; preds = %land.rhs.do.body5_crit_edge, %land.lhs.true.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #13, !srcloc !48
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
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #13, !srcloc !49
  unreachable

do.body11.i.i:                                    ; preds = %do.end8
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !47

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #13, !srcloc !50
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #15
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

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

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__UNIQUE_ID_author339, !1, !"__UNIQUE_ID_author339", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description340, !3, !"__UNIQUE_ID_description340", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_license341, !5, !"__UNIQUE_ID_license341", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c", i32 27, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c", i32 398, i32 12}
!8 = !{ptr @ieee80211_crypt_ccmp, !9, !"ieee80211_crypt_ccmp", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c", i32 397, i32 36}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c", i32 64, i32 32}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c", i32 66, i32 3}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ieee80211_ccmp_init.__UNIQUE_ID_ddebug342, !13, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c", i32 248, i32 4}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug343, !19, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c", i32 256, i32 3}
!24 = !{ptr @ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug344, !23, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c", i32 262, i32 4}
!27 = !{ptr @ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug345, !26, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c", i32 278, i32 4}
!30 = !{ptr @ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug346, !29, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c", i32 311, i32 5}
!33 = !{ptr @ieee80211_ccmp_decrypt.__UNIQUE_ID_ddebug347, !32, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c", i32 387, i32 18}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2148961515, i64 2148961520, i64 2148961533, i64 2148961577, i64 2148961611, i64 2148961632}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2154346255, i64 2154346747, i64 2154346292, i64 2154346348, i64 2154346382, i64 2154346406, i64 2154346447, i64 2154346468, i64 2154346496, i64 2154346530}
!49 = !{i64 2154339936, i64 2154340428, i64 2154339973, i64 2154340029, i64 2154340063, i64 2154340087, i64 2154340128, i64 2154340149, i64 2154340177, i64 2154340211}
!50 = !{i64 2154341546, i64 2154342038, i64 2154341583, i64 2154341639, i64 2154341673, i64 2154341697, i64 2154341738, i64 2154341759, i64 2154341787, i64 2154341821}
