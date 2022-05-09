; ModuleID = '/llk/IR_all_yes/net/mac802154/llsec.c_pt.bc'
source_filename = "../net/mac802154/llsec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee802154_llsec_params = type { i8, i32, i8, %struct.ieee802154_llsec_key_id, i64, i16, i64, i64, i16 }
%struct.ieee802154_llsec_key_id = type { i8, i8, %union.anon }
%union.anon = type { %struct.ieee802154_addr }
%struct.ieee802154_addr = type { i8, i16, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.mac802154_llsec = type { %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_table, [64 x %struct.hlist_head], [64 x %struct.hlist_head], %struct.rwlock_t }
%struct.ieee802154_llsec_table = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.ieee802154_llsec_device = type { %struct.list_head, i16, i16, i64, i32, i8, i8, %struct.list_head }
%struct.ieee802154_llsec_key_entry = type { %struct.list_head, %struct.ieee802154_llsec_key_id, ptr }
%struct.mac802154_llsec_key = type { %struct.ieee802154_llsec_key, [3 x ptr], ptr, %struct.kref }
%struct.ieee802154_llsec_key = type { i8, i32, [16 x i8] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.mac802154_llsec_device = type { %struct.ieee802154_llsec_device, %struct.hlist_node, %struct.hlist_node, %struct.spinlock, %struct.callback_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ieee802154_llsec_device_key = type { %struct.list_head, %struct.ieee802154_llsec_key_id, i32 }
%struct.mac802154_llsec_device_key = type { %struct.ieee802154_llsec_device_key, %struct.callback_head }
%struct.ieee802154_llsec_seclevel = type { %struct.list_head, i8, i8, i8, i32 }
%struct.mac802154_llsec_seclevel = type { %struct.ieee802154_llsec_seclevel, %struct.callback_head }
%struct.ieee802154_hdr = type { %struct.ieee802154_hdr_fc, i8, %struct.ieee802154_addr, %struct.ieee802154_addr, %struct.ieee802154_sechdr }
%struct.ieee802154_hdr_fc = type { i16 }
%struct.ieee802154_sechdr = type { i8, i8, i32, %union.anon.122 }
%union.anon.122 = type { i64 }
%struct.sk_buff = type { %union.anon.46, %union.anon.49, %union.anon.50, [48 x i8], %union.anon.51, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.53, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { ptr, ptr, %union.anon.48 }
%union.anon.48 = type { ptr }
%union.anon.49 = type { ptr }
%union.anon.50 = type { i64 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { i32, ptr }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.55, i32, i32, i32, i16, i16, %union.anon.57, i32, %union.anon.58, %union.anon.59, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.55 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i32 }
%union.anon.59 = type { i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }

@mac802154_llsec_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&sec->lock\00", [21 x i8] zeroinitializer }, align 32
@mac802154_llsec_dev_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&entry->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ccm(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctr(aes)\00", [23 x i8] zeroinitializer }, align 32
@llsec_dev_find_short.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/mac802154/llsec.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@llsec_dev_find_long.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llsec_devkey_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@llsec_lookup_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@llsec_lookup_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@llsec_lookup_dev.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@llsec_lookup_seclevel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.mac802154_llsec_encrypt = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 4, i32 8, i32 16, i32 0, i32 4, i32 8, i32 16], [36 x i8] zeroinitializer }, align 32
@switch.table.llsec_do_encrypt = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 4, i32 8, i32 16, i32 0, i32 4, i32 8, i32 16], [32 x i8] zeroinitializer }, align 32
@switch.table.llsec_do_decrypt = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 4, i32 8, i32 16, i32 0, i32 4, i32 8, i32 16], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 16, i64 65279, i64 65535]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 2, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 65279, i64 65535]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 38, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 369, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 130, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 141, i32 41 }
@___asan_gen_.42 = private constant [25 x i8] c"../net/mac802154/llsec.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 311, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 695, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 723, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [37 x i8] c"switch.table.mac802154_llsec_encrypt\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [30 x i8] c"switch.table.llsec_do_encrypt\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [30 x i8] c"switch.table.llsec_do_decrypt\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @mac802154_llsec_init.__key, ptr @.str, ptr @mac802154_llsec_dev_add.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @switch.table.mac802154_llsec_encrypt, ptr @switch.table.llsec_do_encrypt, ptr @switch.table.llsec_do_decrypt], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac802154_llsec_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac802154_llsec_dev_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mac802154_llsec_encrypt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.llsec_do_encrypt to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.llsec_do_decrypt to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mac802154_llsec_init(ptr noundef %sec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %sec, i32 0, i32 664)
  %default_key_source = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 4
  %1 = ptrtoint ptr %default_key_source to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %default_key_source, align 8
  %table = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 1
  %security_levels = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %security_levels to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %security_levels, ptr %security_levels, align 4
  %prev.i = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 1, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %security_levels, ptr %prev.i, align 4
  %devices = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %devices to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %devices, ptr %devices, align 4
  %prev.i11 = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 1, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %devices, ptr %prev.i11, align 4
  %6 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %table, ptr %table, align 4
  %prev.i12 = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %table, ptr %prev.i12, align 4
  %devices_short = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 2
  %lock = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 4
  %8 = call ptr @memset(ptr %devices_short, i32 0, i32 512)
  tail call void @__rwlock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @mac802154_llsec_init.__key) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mac802154_llsec_destroy(ptr noundef readonly %sec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 1
  %security_levels = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %security_levels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security_levels, align 8
  %cmp.not105 = icmp eq ptr %1, %security_levels
  br i1 %cmp.not105, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %sl.0106 = phi ptr [ %sn.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %sl.0106 to i32
  call void @__asan_load4_noabort(i32 %2)
  %sn.0 = load ptr, ptr %sl.0106, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sl.0106) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sl.0106, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %sl.0106 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sl.0106, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %sl.0106 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %sl.0106, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %sl.0106, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree_sensitive(ptr noundef %sl.0106) #10
  %cmp.not = icmp eq ptr %sn.0, %security_levels
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %devices = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %devices, align 8
  %cmp31.not108 = icmp eq ptr %12, %devices
  br i1 %cmp31.not108, label %for.end.for.end44_crit_edge, label %for.end.for.body33_crit_edge

for.end.for.body33_crit_edge:                     ; preds = %for.end
  br label %for.body33

for.end.for.end44_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end44

for.body33:                                       ; preds = %llsec_dev_free.exit.for.body33_crit_edge, %for.end.for.body33_crit_edge
  %dev.0109 = phi ptr [ %dn.0, %llsec_dev_free.exit.for.body33_crit_edge ], [ %12, %for.end.for.body33_crit_edge ]
  %13 = ptrtoint ptr %dev.0109 to i32
  call void @__asan_load4_noabort(i32 %13)
  %dn.0 = load ptr, ptr %dev.0109, align 8
  %call.i.i92 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dev.0109) #10
  br i1 %call.i.i92, label %if.end.i.i95, label %for.body33.list_del.exit97_crit_edge

for.body33.list_del.exit97_crit_edge:             ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit97

if.end.i.i95:                                     ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i93 = getelementptr inbounds %struct.list_head, ptr %dev.0109, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i93 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i93, align 4
  %16 = ptrtoint ptr %dev.0109 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.0109, align 4
  %prev1.i.i.i94 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i94, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit97

list_del.exit97:                                  ; preds = %if.end.i.i95, %for.body33.list_del.exit97_crit_edge
  %20 = ptrtoint ptr %dev.0109 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %dev.0109, align 4
  %prev.i96 = getelementptr inbounds %struct.list_head, ptr %dev.0109, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i96 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i96, align 4
  %keys.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev.0109, i32 0, i32 7
  %22 = ptrtoint ptr %keys.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %keys.i, align 8
  %cmp.not24.i = icmp eq ptr %23, %keys.i
  br i1 %cmp.not24.i, label %list_del.exit97.llsec_dev_free.exit_crit_edge, label %list_del.exit97.for.body.i_crit_edge

list_del.exit97.for.body.i_crit_edge:             ; preds = %list_del.exit97
  br label %for.body.i

list_del.exit97.llsec_dev_free.exit_crit_edge:    ; preds = %list_del.exit97
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_dev_free.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %list_del.exit97.for.body.i_crit_edge
  %pos.025.i = phi ptr [ %pn.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %23, %list_del.exit97.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %pos.025.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %pn.0.i = load ptr, ptr %pos.025.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.025.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.025.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %pos.025.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pos.025.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %31 = ptrtoint ptr %pos.025.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.025.i, align 4
  %prev.i.i98 = getelementptr inbounds %struct.list_head, ptr %pos.025.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i98 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i98, align 4
  tail call void @kfree_sensitive(ptr noundef %pos.025.i) #10
  %cmp.not.i = icmp eq ptr %pn.0.i, %keys.i
  br i1 %cmp.not.i, label %list_del.exit.i.llsec_dev_free.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del.exit.i.llsec_dev_free.exit_crit_edge:    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_dev_free.exit

llsec_dev_free.exit:                              ; preds = %list_del.exit.i.llsec_dev_free.exit_crit_edge, %list_del.exit97.llsec_dev_free.exit_crit_edge
  tail call void @kfree_sensitive(ptr noundef %dev.0109) #10
  %cmp31.not = icmp eq ptr %dn.0, %devices
  br i1 %cmp31.not, label %llsec_dev_free.exit.for.end44_crit_edge, label %llsec_dev_free.exit.for.body33_crit_edge

llsec_dev_free.exit.for.body33_crit_edge:         ; preds = %llsec_dev_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body33

llsec_dev_free.exit.for.end44_crit_edge:          ; preds = %llsec_dev_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end44

for.end44:                                        ; preds = %llsec_dev_free.exit.for.end44_crit_edge, %for.end.for.end44_crit_edge
  %33 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %table, align 8
  %cmp59.not110 = icmp eq ptr %34, %table
  br i1 %cmp59.not110, label %for.end44.for.end73_crit_edge, label %for.end44.for.body61_crit_edge

for.end44.for.body61_crit_edge:                   ; preds = %for.end44
  br label %for.body61

for.end44.for.end73_crit_edge:                    ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end73

for.body61:                                       ; preds = %list_del.exit104.for.body61_crit_edge, %for.end44.for.body61_crit_edge
  %key.0111 = phi ptr [ %kn.0, %list_del.exit104.for.body61_crit_edge ], [ %34, %for.end44.for.body61_crit_edge ]
  %35 = ptrtoint ptr %key.0111 to i32
  call void @__asan_load4_noabort(i32 %35)
  %kn.0 = load ptr, ptr %key.0111, align 8
  %key63 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %key.0111, i32 0, i32 2
  %36 = ptrtoint ptr %key63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %key63, align 8
  %call.i.i99 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %key.0111) #10
  br i1 %call.i.i99, label %if.end.i.i102, label %for.body61.list_del.exit104_crit_edge

for.body61.list_del.exit104_crit_edge:            ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit104

if.end.i.i102:                                    ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i100 = getelementptr inbounds %struct.list_head, ptr %key.0111, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i100 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i100, align 4
  %40 = ptrtoint ptr %key.0111 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %key.0111, align 4
  %prev1.i.i.i101 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i101, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit104

list_del.exit104:                                 ; preds = %if.end.i.i102, %for.body61.list_del.exit104_crit_edge
  %44 = ptrtoint ptr %key.0111 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %key.0111, align 4
  %prev.i103 = getelementptr inbounds %struct.list_head, ptr %key.0111, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i103, align 4
  tail call fastcc void @llsec_key_put(ptr noundef %37)
  tail call void @kfree_sensitive(ptr noundef %key.0111) #10
  %cmp59.not = icmp eq ptr %kn.0, %table
  br i1 %cmp59.not, label %list_del.exit104.for.end73_crit_edge, label %list_del.exit104.for.body61_crit_edge

list_del.exit104.for.body61_crit_edge:            ; preds = %list_del.exit104
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body61

list_del.exit104.for.end73_crit_edge:             ; preds = %list_del.exit104
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end73

for.end73:                                        ; preds = %list_del.exit104.for.end73_crit_edge, %for.end44.for.end73_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @llsec_key_put(ptr noundef %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.mac802154_llsec_key, ptr %key, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #10, !srcloc !44
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !45

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !46
  %tfm.i.i = getelementptr %struct.mac802154_llsec_key, ptr %key, i32 0, i32 1
  %1 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tfm.i.i, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %2, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %2, ptr noundef %base.i.i.i.i) #10
  %arrayidx.1.i.i = getelementptr %struct.mac802154_llsec_key, ptr %key, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.1.i.i, align 4
  %base.i.i.1.i.i = getelementptr inbounds %struct.crypto_aead, ptr %4, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %4, ptr noundef %base.i.i.1.i.i) #10
  %arrayidx.2.i.i = getelementptr %struct.mac802154_llsec_key, ptr %key, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.2.i.i, align 4
  %base.i.i.2.i.i = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %6, ptr noundef %base.i.i.2.i.i) #10
  %tfm0.i.i = getelementptr %struct.mac802154_llsec_key, ptr %key, i32 0, i32 2
  %7 = ptrtoint ptr %tfm0.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tfm0.i.i, align 4
  %base.i.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %8, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %8, ptr noundef %base.i.i.i.i.i) #10
  tail call void @kfree_sensitive(ptr noundef %key) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac802154_llsec_get_params(ptr noundef %sec, ptr nocapture noundef writeonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 4
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #10
  %0 = call ptr @memcpy(ptr %params, ptr %sec, i32 80)
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac802154_llsec_set_params(ptr noundef %sec, ptr nocapture noundef readonly %params, i32 noundef %changed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 4
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #10
  %and = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %params, align 8, !range !47
  %2 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %sec, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and4 = and i32 %changed, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %frame_counter = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 1
  %3 = ptrtoint ptr %frame_counter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %frame_counter, align 4
  %frame_counter8 = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 1
  %5 = ptrtoint ptr %frame_counter8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %frame_counter8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %and10 = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end15_crit_edge, label %if.then12

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %out_level = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %out_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %out_level, align 8
  %out_level14 = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 2
  %8 = ptrtoint ptr %out_level14 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %out_level14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %and16 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %out_key = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 3
  %out_key20 = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 3
  %9 = call ptr @memcpy(ptr %out_key, ptr %out_key20, i32 24)
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  %and22 = and i32 %changed, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end27_crit_edge, label %if.then24

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %default_key_source = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 4
  %10 = ptrtoint ptr %default_key_source to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %default_key_source, align 8
  %default_key_source26 = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 4
  %12 = ptrtoint ptr %default_key_source26 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %default_key_source26, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge
  %and28 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end33_crit_edge, label %if.then30

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %pan_id = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 5
  %13 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %pan_id, align 8
  %pan_id32 = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 5
  %15 = ptrtoint ptr %pan_id32 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %pan_id32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end27.if.end33_crit_edge
  %and34 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end39_crit_edge, label %if.then36

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %hwaddr = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 6
  %16 = ptrtoint ptr %hwaddr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %hwaddr, align 8
  %hwaddr38 = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 6
  %18 = ptrtoint ptr %hwaddr38 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %hwaddr38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge
  %and40 = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end45_crit_edge, label %if.then42

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %coord_hwaddr = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 7
  %19 = ptrtoint ptr %coord_hwaddr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %coord_hwaddr, align 8
  %coord_hwaddr44 = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 7
  %21 = ptrtoint ptr %coord_hwaddr44 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %coord_hwaddr44, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end39.if.end45_crit_edge
  %and46 = and i32 %changed, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.if.end51_crit_edge, label %if.then48

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %coord_shortaddr = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %params, i32 0, i32 8
  %22 = ptrtoint ptr %coord_shortaddr to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %coord_shortaddr, align 8
  %coord_shortaddr50 = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 8
  %24 = ptrtoint ptr %coord_shortaddr50 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %coord_shortaddr50, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end45.if.end51_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac802154_llsec_key_add(ptr noundef %sec, ptr nocapture noundef readonly %id, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key, align 4
  %2 = and i8 %1, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cmd_frame_ids = getelementptr inbounds %struct.ieee802154_llsec_key, ptr %key, i32 0, i32 1
  %3 = ptrtoint ptr %cmd_frame_ids to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd_frame_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %table = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 1
  %id11.i = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %id, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %id, i32 0, i32 2
  %pan_id1.i.i = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %id, i32 0, i32 2, i32 0, i32 1
  %6 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %id, i32 0, i32 2, i32 0, i32 2
  %key10 = getelementptr inbounds %struct.ieee802154_llsec_key, ptr %key, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %if.end7.for.cond_crit_edge, %if.end
  %pos.0.in = phi ptr [ %table, %if.end ], [ %pos.0, %if.end7.for.cond_crit_edge ]
  %7 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %pos.0 = load ptr, ptr %pos.0.in, align 8
  %cmp.not = icmp eq ptr %pos.0, %table
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %id5 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.0, i32 0, i32 1
  %8 = ptrtoint ptr %id5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id5, align 8
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %id, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp.not.i = icmp eq i8 %9, %11
  br i1 %cmp.not.i, label %if.end.i, label %for.body.if.end7_crit_edge

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp6.i = icmp eq i8 %9, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i
  %pan_id.i.i = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.0, i32 0, i32 1, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %pan_id.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pan_id.i.i, align 2
  %14 = ptrtoint ptr %pan_id1.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pan_id1.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp.not.i.i = icmp eq i16 %13, %15
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.then8.i.if.end7_crit_edge

if.then8.i.if.end7_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

lor.lhs.false.i.i:                                ; preds = %if.then8.i
  %16 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.0, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 8
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %5, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp7.not.i.i = icmp eq i8 %18, %20
  br i1 %cmp7.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.if.end7_crit_edge

lor.lhs.false.i.i.if.end7_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %21 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %if.end.i.i.cleanup_crit_edge [
    i8 3, label %land.lhs.true.i.i
    i8 2, label %land.lhs.true20.i.i
  ]

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %22 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.0, i32 0, i32 1, i32 2, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %22, align 8
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %26)
  %cmp13.not.i.i = icmp eq i64 %24, %26
  br i1 %cmp13.not.i.i, label %land.lhs.true.i.i.cleanup_crit_edge, label %land.lhs.true.i.i.if.end7_crit_edge

land.lhs.true.i.i.if.end7_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true20.i.i:                              ; preds = %if.end.i.i
  %27 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.0, i32 0, i32 1, i32 2, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %27, align 8
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %6, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %31)
  %cmp23.not.i.i = icmp eq i16 %29, %31
  br i1 %cmp23.not.i.i, label %land.lhs.true20.i.i.cleanup_crit_edge, label %land.lhs.true20.i.i.if.end7_crit_edge

land.lhs.true20.i.i.if.end7_crit_edge:            ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true20.i.i.cleanup_crit_edge:            ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %id.i = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.0, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %id.i, align 1
  %34 = ptrtoint ptr %id11.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %id11.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp13.not.i = icmp eq i8 %33, %35
  br i1 %cmp13.not.i, label %if.end16.i, label %if.end9.i.if.end7_crit_edge

if.end9.i.if.end7_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end16.i:                                       ; preds = %if.end9.i
  %36 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %9, label %if.end16.i.if.end7_crit_edge [
    i8 1, label %if.end16.i.cleanup_crit_edge
    i8 2, label %llsec_key_id_equal.exit
    i8 3, label %sw.bb22.i
  ]

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16.i.if.end7_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

sw.bb22.i:                                        ; preds = %if.end16.i
  %37 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.0, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %37, align 8
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %41)
  %cmp23.i = icmp eq i64 %39, %41
  br i1 %cmp23.i, label %sw.bb22.i.cleanup_crit_edge, label %sw.bb22.i.if.end7_crit_edge

sw.bb22.i.if.end7_crit_edge:                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

sw.bb22.i.cleanup_crit_edge:                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

llsec_key_id_equal.exit:                          ; preds = %if.end16.i
  %42 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.0, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp20.i = icmp eq i32 %44, %46
  br i1 %cmp20.i, label %llsec_key_id_equal.exit.cleanup_crit_edge, label %llsec_key_id_equal.exit.if.end7_crit_edge

llsec_key_id_equal.exit.if.end7_crit_edge:        ; preds = %llsec_key_id_equal.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

llsec_key_id_equal.exit.cleanup_crit_edge:        ; preds = %llsec_key_id_equal.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %llsec_key_id_equal.exit.if.end7_crit_edge, %sw.bb22.i.if.end7_crit_edge, %if.end16.i.if.end7_crit_edge, %if.end9.i.if.end7_crit_edge, %land.lhs.true20.i.i.if.end7_crit_edge, %land.lhs.true.i.i.if.end7_crit_edge, %lor.lhs.false.i.i.if.end7_crit_edge, %if.then8.i.if.end7_crit_edge, %for.body.if.end7_crit_edge
  %key8 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.0, i32 0, i32 2
  %47 = ptrtoint ptr %key8 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %key8, align 8
  %key9 = getelementptr inbounds %struct.ieee802154_llsec_key, ptr %48, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %key9, ptr noundef dereferenceable(16) %key10, i32 16) #13
  %tobool13.not = icmp eq i32 %bcmp, 0
  br i1 %tobool13.not, label %if.end15, label %if.end7.for.cond_crit_edge

if.end7.for.cond_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.end15:                                         ; preds = %if.end7
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %1)
  %cmp25.not = icmp eq i8 %50, %1
  br i1 %cmp25.not, label %lor.lhs.false, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end15
  %cmd_frame_ids28 = getelementptr inbounds %struct.ieee802154_llsec_key, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %cmd_frame_ids28 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cmd_frame_ids28, align 4
  %cmd_frame_ids29 = getelementptr inbounds %struct.ieee802154_llsec_key, ptr %key, i32 0, i32 1
  %53 = ptrtoint ptr %cmd_frame_ids29 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cmd_frame_ids29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp30.not = icmp eq i32 %52, %54
  br i1 %cmp30.not, label %lor.lhs.false.for.end_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %lor.lhs.false.for.end_crit_edge, %for.cond.for.end_crit_edge
  %mkey.0 = phi ptr [ %48, %lor.lhs.false.for.end_crit_edge ], [ null, %for.cond.for.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3520, i32 noundef 40) #14
  %tobool40.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool40.not, label %for.end.cleanup_crit_edge, label %if.end42

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %for.end
  %tobool43.not = icmp eq ptr %mkey.0, null
  br i1 %tobool43.not, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.end42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 44) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then44.fail_crit_edge, label %if.end.i81

if.then44.fail_crit_edge:                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end.i81:                                       ; preds = %if.then44
  %ref.i = getelementptr inbounds %struct.mac802154_llsec_key, ptr %call7.i.i.i, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #10
  %57 = ptrtoint ptr %ref.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 1, ptr %ref.i, align 8
  %58 = call ptr @memcpy(ptr %call7.i.i.i, ptr %key, i32 24)
  %call2.i = tail call ptr @crypto_alloc_aead(ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 128) #10
  %arrayidx.i = getelementptr %struct.mac802154_llsec_key, ptr %call7.i.i.i, i32 0, i32 1, i32 0
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call2.i, ptr %arrayidx.i, align 8
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i81.err_tfm.i_crit_edge, label %if.end7.i

if.end.i81.err_tfm.i_crit_edge:                   ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_tfm.i

for.cond.i:                                       ; preds = %if.end14.i
  %call2.1.i = tail call ptr @crypto_alloc_aead(ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 128) #10
  %arrayidx.1.i = getelementptr %struct.mac802154_llsec_key, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call2.1.i, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call2.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.cond.i.err_tfm.i_crit_edge, label %if.end7.1.i

for.cond.i.err_tfm.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_tfm.i

if.end7.1.i:                                      ; preds = %for.cond.i
  %call11.1.i = tail call i32 @crypto_aead_setkey(ptr noundef %call2.1.i, ptr noundef %key10, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1.i)
  %tobool12.not.1.i = icmp eq i32 %call11.1.i, 0
  br i1 %tobool12.not.1.i, label %if.end14.1.i, label %if.end7.1.i.err_tfm.i_crit_edge

if.end7.1.i.err_tfm.i_crit_edge:                  ; preds = %if.end7.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_tfm.i

if.end14.1.i:                                     ; preds = %if.end7.1.i
  %61 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.1.i, align 4
  %call18.1.i = tail call i32 @crypto_aead_setauthsize(ptr noundef %62, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.1.i)
  %tobool19.not.1.i = icmp eq i32 %call18.1.i, 0
  br i1 %tobool19.not.1.i, label %for.cond.1.i, label %if.end14.1.i.err_tfm.i_crit_edge

if.end14.1.i.err_tfm.i_crit_edge:                 ; preds = %if.end14.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_tfm.i

for.cond.1.i:                                     ; preds = %if.end14.1.i
  %call2.2.i = tail call ptr @crypto_alloc_aead(ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 128) #10
  %arrayidx.2.i = getelementptr %struct.mac802154_llsec_key, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %63 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call2.2.i, ptr %arrayidx.2.i, align 8
  %cmp.i.2.i = icmp ugt ptr %call2.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %for.cond.1.i.err_tfm.i_crit_edge, label %if.end7.2.i

for.cond.1.i.err_tfm.i_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_tfm.i

if.end7.2.i:                                      ; preds = %for.cond.1.i
  %call11.2.i = tail call i32 @crypto_aead_setkey(ptr noundef %call2.2.i, ptr noundef %key10, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.2.i)
  %tobool12.not.2.i = icmp eq i32 %call11.2.i, 0
  br i1 %tobool12.not.2.i, label %if.end14.2.i, label %if.end7.2.i.err_tfm.i_crit_edge

if.end7.2.i.err_tfm.i_crit_edge:                  ; preds = %if.end7.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_tfm.i

if.end14.2.i:                                     ; preds = %if.end7.2.i
  %64 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.2.i, align 8
  %call18.2.i = tail call i32 @crypto_aead_setauthsize(ptr noundef %65, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.2.i)
  %tobool19.not.2.i = icmp eq i32 %call18.2.i, 0
  br i1 %tobool19.not.2.i, label %for.cond.2.i, label %if.end14.2.i.err_tfm.i_crit_edge

if.end14.2.i.err_tfm.i_crit_edge:                 ; preds = %if.end14.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_tfm.i

for.cond.2.i:                                     ; preds = %if.end14.2.i
  %call22.i = tail call ptr @crypto_alloc_sync_skcipher(ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0) #10
  %tfm0.i = getelementptr inbounds %struct.mac802154_llsec_key, ptr %call7.i.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %tfm0.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call22.i, ptr %tfm0.i, align 4
  %cmp.i76.i = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76.i, label %for.cond.2.i.err_tfm.i_crit_edge, label %if.end26.i

for.cond.2.i.err_tfm.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_tfm.i

if.end7.i:                                        ; preds = %if.end.i81
  %call11.i = tail call i32 @crypto_aead_setkey(ptr noundef %call2.i, ptr noundef %key10, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end7.i.err_tfm.i_crit_edge

if.end7.i.err_tfm.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_tfm.i

if.end14.i:                                       ; preds = %if.end7.i
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i, align 8
  %call18.i = tail call i32 @crypto_aead_setauthsize(ptr noundef %68, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %for.cond.i, label %if.end14.i.err_tfm.i_crit_edge

if.end14.i.err_tfm.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_tfm.i

if.end26.i:                                       ; preds = %for.cond.2.i
  %call.i.i = tail call i32 @crypto_skcipher_setkey(ptr noundef %call22.i, ptr noundef %key10, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool31.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool31.not.i, label %if.end26.i.if.end50_crit_edge, label %err_tfm0.i

if.end26.i.if.end50_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

err_tfm0.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %tfm0.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tfm0.i, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %70, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %70, ptr noundef %base.i.i.i.i) #10
  br label %err_tfm.i

err_tfm.i:                                        ; preds = %err_tfm0.i, %if.end14.i.err_tfm.i_crit_edge, %if.end7.i.err_tfm.i_crit_edge, %for.cond.2.i.err_tfm.i_crit_edge, %if.end14.2.i.err_tfm.i_crit_edge, %if.end7.2.i.err_tfm.i_crit_edge, %for.cond.1.i.err_tfm.i_crit_edge, %if.end14.1.i.err_tfm.i_crit_edge, %if.end7.1.i.err_tfm.i_crit_edge, %for.cond.i.err_tfm.i_crit_edge, %if.end.i81.err_tfm.i_crit_edge
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i.i = icmp eq ptr %72, null
  %cmp.i77.i = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i77.i
  br i1 %spec.select.i.i, label %err_tfm.i.for.inc45.i_crit_edge, label %if.then41.i

err_tfm.i.for.inc45.i_crit_edge:                  ; preds = %err_tfm.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc45.i

if.then41.i:                                      ; preds = %err_tfm.i
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %72, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %72, ptr noundef %base.i.i.i) #10
  br label %for.inc45.i

for.inc45.i:                                      ; preds = %if.then41.i, %err_tfm.i.for.inc45.i_crit_edge
  %arrayidx39.1.i = getelementptr %struct.mac802154_llsec_key, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %arrayidx39.1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx39.1.i, align 4
  %tobool.not.i.1.i = icmp eq ptr %74, null
  %cmp.i77.1.i = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  %spec.select.i.1.i = or i1 %tobool.not.i.1.i, %cmp.i77.1.i
  br i1 %spec.select.i.1.i, label %for.inc45.i.for.inc45.1.i_crit_edge, label %if.then41.1.i

for.inc45.i.for.inc45.1.i_crit_edge:              ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc45.1.i

if.then41.1.i:                                    ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i.1.i = getelementptr inbounds %struct.crypto_aead, ptr %74, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %74, ptr noundef %base.i.i.1.i) #10
  br label %for.inc45.1.i

for.inc45.1.i:                                    ; preds = %if.then41.1.i, %for.inc45.i.for.inc45.1.i_crit_edge
  %arrayidx39.2.i = getelementptr %struct.mac802154_llsec_key, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %75 = ptrtoint ptr %arrayidx39.2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx39.2.i, align 8
  %tobool.not.i.2.i = icmp eq ptr %76, null
  %cmp.i77.2.i = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  %spec.select.i.2.i = or i1 %tobool.not.i.2.i, %cmp.i77.2.i
  br i1 %spec.select.i.2.i, label %for.inc45.1.i.for.inc45.2.i_crit_edge, label %if.then41.2.i

for.inc45.1.i.for.inc45.2.i_crit_edge:            ; preds = %for.inc45.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc45.2.i

if.then41.2.i:                                    ; preds = %for.inc45.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i.2.i = getelementptr inbounds %struct.crypto_aead, ptr %76, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %76, ptr noundef %base.i.i.2.i) #10
  br label %for.inc45.2.i

for.inc45.2.i:                                    ; preds = %if.then41.2.i, %for.inc45.1.i.for.inc45.2.i_crit_edge
  tail call void @kfree_sensitive(ptr noundef nonnull %call7.i.i.i) #10
  br label %fail

if.else:                                          ; preds = %if.end42
  %ref.i83 = getelementptr inbounds %struct.mac802154_llsec_key, ptr %mkey.0, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i83, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref.i83, i32 1, i32 3, i32 1) #10
  %77 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i83, ptr %ref.i83, i32 1, ptr elementtype(i32) %ref.i83) #10, !srcloc !48
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.else.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !49

if.else.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.else
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %78 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %.not.i.i.i.i.i = icmp sgt i32 %78, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end50_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !45

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end50_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.else.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.else.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i83, i32 noundef %.sink.i.i.i.i.i) #10
  br label %if.end50

if.end50:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end50_crit_edge, %if.end26.i.if.end50_crit_edge
  %mkey.1.ph = phi ptr [ %mkey.0, %if.end15.sink.split.i.i.i.i.i ], [ %mkey.0, %if.else.i.i.i.i.i.if.end50_crit_edge ], [ %call7.i.i.i, %if.end26.i.if.end50_crit_edge ]
  %id51 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %call7.i.i, i32 0, i32 1
  %79 = call ptr @memcpy(ptr %id51, ptr %id, i32 24)
  %key53 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %call7.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %key53 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %mkey.1.ph, ptr %key53, align 8
  %81 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %table, align 4
  %call.i.i84 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %table, ptr noundef %82) #10
  br i1 %call.i.i84, label %if.end.i.i85, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i85:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %call7.i.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %84 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %table, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !50
  %85 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %call7.i.i, ptr %table, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %86 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i.i, ptr %prev37.i.i, align 4
  br label %cleanup

fail:                                             ; preds = %for.inc45.2.i, %if.then44.fail_crit_edge
  tail call void @kfree_sensitive(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end.i.i85, %if.end50.cleanup_crit_edge, %for.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %llsec_key_id_equal.exit.cleanup_crit_edge, %sw.bb22.i.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %land.lhs.true20.i.i.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %fail ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -17, %lor.lhs.false.cleanup_crit_edge ], [ -17, %if.end15.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ], [ 0, %if.end.i.i85 ], [ -17, %llsec_key_id_equal.exit.cleanup_crit_edge ], [ -17, %sw.bb22.i.cleanup_crit_edge ], [ -17, %if.end16.i.cleanup_crit_edge ], [ -17, %land.lhs.true20.i.i.cleanup_crit_edge ], [ -17, %land.lhs.true.i.i.cleanup_crit_edge ], [ -17, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac802154_llsec_key_del(ptr noundef readonly %sec, ptr nocapture noundef readonly %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 1
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %pos.023 = load ptr, ptr %table, align 8
  %cmp.not24 = icmp eq ptr %pos.023, %table
  br i1 %cmp.not24, label %entry.cleanup13_crit_edge, label %for.body.lr.ph

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup13

for.body.lr.ph:                                   ; preds = %entry
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %key, align 8
  %id11.i = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %key, i32 0, i32 2
  %pan_id1.i.i = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %key, i32 0, i32 2, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %key, i32 0, i32 2, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp6.i = icmp eq i8 %2, 0
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %pos.025 = phi ptr [ %pos.023, %for.body.lr.ph ], [ %pos.0, %for.cond.backedge.for.body_crit_edge ]
  %id = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.025, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %2)
  %cmp.not.i = icmp eq i8 %6, %2
  br i1 %cmp.not.i, label %if.end.i, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

if.end.i:                                         ; preds = %for.body
  br i1 %cmp6.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i
  %pan_id.i.i = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.025, i32 0, i32 1, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %pan_id.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pan_id.i.i, align 2
  %9 = ptrtoint ptr %pan_id1.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pan_id1.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %10)
  %cmp.not.i.i = icmp eq i16 %8, %10
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.then8.i.for.cond.backedge_crit_edge

if.then8.i.for.cond.backedge_crit_edge:           ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

lor.lhs.false.i.i:                                ; preds = %if.then8.i
  %11 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.025, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp7.not.i.i = icmp eq i8 %13, %15
  br i1 %cmp7.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.for.cond.backedge_crit_edge

lor.lhs.false.i.i.for.cond.backedge_crit_edge:    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %16 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %13, label %if.end.i.i.if.then_crit_edge [
    i8 3, label %land.lhs.true.i.i
    i8 2, label %land.lhs.true20.i.i
  ]

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %17 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.025, i32 0, i32 1, i32 2, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp13.not.i.i = icmp eq i64 %19, %21
  br i1 %cmp13.not.i.i, label %land.lhs.true.i.i.if.then_crit_edge, label %land.lhs.true.i.i.for.cond.backedge_crit_edge

land.lhs.true.i.i.for.cond.backedge_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

land.lhs.true.i.i.if.then_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true20.i.i:                              ; preds = %if.end.i.i
  %22 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.025, i32 0, i32 1, i32 2, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %22, align 8
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %4, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp23.not.i.i = icmp eq i16 %24, %26
  br i1 %cmp23.not.i.i, label %land.lhs.true20.i.i.if.then_crit_edge, label %land.lhs.true20.i.i.for.cond.backedge_crit_edge

land.lhs.true20.i.i.for.cond.backedge_crit_edge:  ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

land.lhs.true20.i.i.if.then_crit_edge:            ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end9.i:                                        ; preds = %if.end.i
  %id.i = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.025, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %id.i, align 1
  %29 = ptrtoint ptr %id11.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %id11.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp13.not.i = icmp eq i8 %28, %30
  br i1 %cmp13.not.i, label %if.end16.i, label %if.end9.i.for.cond.backedge_crit_edge

if.end9.i.for.cond.backedge_crit_edge:            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

if.end16.i:                                       ; preds = %if.end9.i
  %31 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %2, label %if.end16.i.for.cond.backedge_crit_edge [
    i8 1, label %if.end16.i.if.then_crit_edge
    i8 2, label %sw.bb19.i
    i8 3, label %sw.bb22.i
  ]

if.end16.i.if.then_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end16.i.for.cond.backedge_crit_edge:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

sw.bb19.i:                                        ; preds = %if.end16.i
  %32 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.025, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp20.i = icmp eq i32 %34, %36
  br i1 %cmp20.i, label %sw.bb19.i.if.then_crit_edge, label %sw.bb19.i.for.cond.backedge_crit_edge

sw.bb19.i.for.cond.backedge_crit_edge:            ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

sw.bb19.i.if.then_crit_edge:                      ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb22.i:                                        ; preds = %if.end16.i
  %37 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.025, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %37, align 8
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %41)
  %cmp23.i = icmp eq i64 %39, %41
  br i1 %cmp23.i, label %sw.bb22.i.if.then_crit_edge, label %sw.bb22.i.for.cond.backedge_crit_edge

sw.bb22.i.for.cond.backedge_crit_edge:            ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

sw.bb22.i.if.then_crit_edge:                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.cond.backedge:                                ; preds = %sw.bb22.i.for.cond.backedge_crit_edge, %sw.bb19.i.for.cond.backedge_crit_edge, %if.end16.i.for.cond.backedge_crit_edge, %if.end9.i.for.cond.backedge_crit_edge, %land.lhs.true20.i.i.for.cond.backedge_crit_edge, %land.lhs.true.i.i.for.cond.backedge_crit_edge, %lor.lhs.false.i.i.for.cond.backedge_crit_edge, %if.then8.i.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %42 = ptrtoint ptr %pos.025 to i32
  call void @__asan_load4_noabort(i32 %42)
  %pos.0 = load ptr, ptr %pos.025, align 8
  %cmp.not = icmp eq ptr %pos.0, %table
  br i1 %cmp.not, label %for.cond.backedge.cleanup13_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.backedge.cleanup13_crit_edge:            ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup13

if.then:                                          ; preds = %sw.bb22.i.if.then_crit_edge, %sw.bb19.i.if.then_crit_edge, %if.end16.i.if.then_crit_edge, %land.lhs.true20.i.i.if.then_crit_edge, %land.lhs.true.i.i.if.then_crit_edge, %if.end.i.i.if.then_crit_edge
  %key4.le = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %pos.025, i32 0, i32 2
  %43 = ptrtoint ptr %key4.le to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %key4.le, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.025) #10
  br i1 %call.i.i, label %if.end.i.i19, label %if.then.list_del_rcu.exit_crit_edge

if.then.list_del_rcu.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i19:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.025, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %pos.025 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pos.025, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i19, %if.then.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.025, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @llsec_key_put(ptr noundef %44)
  br label %cleanup13

cleanup13:                                        ; preds = %list_del_rcu.exit, %for.cond.backedge.cleanup13_crit_edge, %entry.cleanup13_crit_edge
  %retval.2 = phi i32 [ 0, %list_del_rcu.exit ], [ -2, %entry.cleanup13_crit_edge ], [ -2, %for.cond.backedge.cleanup13_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac802154_llsec_dev_add(ptr noundef %sec, ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %short_addr = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %short_addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %short_addr, align 2
  %pan_id = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pan_id, align 8
  %conv.i = zext i16 %1 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %conv1.i = zext i16 %3 to i32
  %or.i = or i32 %shl.i, %conv1.i
  %hwaddr = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %hwaddr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %hwaddr, align 8
  %6 = and i16 %1, -257
  call void @__sanitizer_cov_trace_const_cmp2(i16 -257, i16 %6)
  %.not = icmp eq i16 %6, -257
  br i1 %.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %call1.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %land.lhs.true.do.end.i_crit_edge

land.lhs.true.do.end.i_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b53.i = load i1, ptr @llsec_dev_find_short.__warned, align 1
  br i1 %.b53.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @llsec_dev_find_short.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 311, ptr noundef nonnull @.str.5) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %land.lhs.true.do.end.i_crit_edge
  %mul.i.i.i = mul i32 %or.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 26
  %arrayidx.i = getelementptr %struct.mac802154_llsec, ptr %sec, i32 0, i32 2, i32 %shr.i.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %8, null
  %add.ptr.i = getelementptr i8, ptr %8, i32 -40
  %tobool14.not5761.i = icmp eq ptr %add.ptr.i, null
  %tobool14.not57.i = or i1 %tobool12.not.i, %tobool14.not5761.i
  br i1 %tobool14.not57.i, label %do.end.i.lor.lhs.false_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.lor.lhs.false_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %dev.058.i = phi ptr [ %add.ptr39.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %short_addr16.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev.058.i, i32 0, i32 2
  %9 = ptrtoint ptr %short_addr16.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %short_addr16.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %1)
  %cmp.i = icmp eq i16 %10, %1
  br i1 %cmp.i, label %land.lhs.true19.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true19.i:                                ; preds = %for.body.i
  %pan_id21.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev.058.i, i32 0, i32 1
  %11 = ptrtoint ptr %pan_id21.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pan_id21.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %3)
  %cmp24.i = icmp eq i16 %12, %3
  br i1 %cmp24.i, label %land.lhs.true19.i.cleanup_crit_edge, label %land.lhs.true19.i.for.inc.i_crit_edge

land.lhs.true19.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true19.i.cleanup_crit_edge:              ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i:                                        ; preds = %land.lhs.true19.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %bucket_s.i = getelementptr inbounds %struct.mac802154_llsec_device, ptr %dev.058.i, i32 0, i32 1
  %13 = ptrtoint ptr %bucket_s.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %bucket_s.i, align 8
  %tobool35.not.i = icmp eq ptr %14, null
  %add.ptr39.i = getelementptr i8, ptr %14, i32 -40
  %tobool14.not62.i = icmp eq ptr %add.ptr39.i, null
  %tobool14.not.i = or i1 %tobool35.not.i, %tobool14.not62.i
  br i1 %tobool14.not.i, label %for.inc.i.lor.lhs.false_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.lor.lhs.false_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.inc.i.lor.lhs.false_crit_edge, %do.end.i.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %15 = ptrtoint ptr %hwaddr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %hwaddr, align 8
  %call1.i51 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i51)
  %tobool.not.i52 = icmp eq i32 %call1.i51, 0
  br i1 %tobool.not.i52, label %land.lhs.true.i55, label %lor.lhs.false.do.end.i64_crit_edge

lor.lhs.false.do.end.i64_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i64

land.lhs.true.i55:                                ; preds = %lor.lhs.false
  %call2.i53 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i53)
  %tobool3.not.i54 = icmp eq i32 %call2.i53, 0
  br i1 %tobool3.not.i54, label %land.lhs.true.i55.do.end.i64_crit_edge, label %land.lhs.true4.i56

land.lhs.true.i55.do.end.i64_crit_edge:           ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i64

land.lhs.true4.i56:                               ; preds = %land.lhs.true.i55
  %.b43.i = load i1, ptr @llsec_dev_find_long.__warned, align 1
  br i1 %.b43.i, label %land.lhs.true4.i56.do.end.i64_crit_edge, label %if.then.i57

land.lhs.true4.i56.do.end.i64_crit_edge:          ; preds = %land.lhs.true4.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i64

if.then.i57:                                      ; preds = %land.lhs.true4.i56
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @llsec_dev_find_long.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 326, ptr noundef nonnull @.str.5) #10
  br label %do.end.i64

do.end.i64:                                       ; preds = %if.then.i57, %land.lhs.true4.i56.do.end.i64_crit_edge, %land.lhs.true.i55.do.end.i64_crit_edge, %lor.lhs.false.do.end.i64_crit_edge
  %conv.i58 = trunc i64 %16 to i32
  %mul.i.i.i59 = mul i32 %conv.i58, 1640531527
  %shr.i.i60 = lshr i32 %mul.i.i.i59, 26
  %arrayidx.i61 = getelementptr %struct.mac802154_llsec, ptr %sec, i32 0, i32 3, i32 %shr.i.i60
  %17 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx.i61, align 4
  %tobool12.not.i62 = icmp eq ptr %18, null
  %add.ptr.i63 = getelementptr i8, ptr %18, i32 -48
  %tobool14.not4750.i = icmp eq ptr %add.ptr.i63, null
  %tobool14.not47.i = or i1 %tobool12.not.i62, %tobool14.not4750.i
  br i1 %tobool14.not47.i, label %do.end.i64.if.end_crit_edge, label %do.end.i64.for.body.i66_crit_edge

do.end.i64.for.body.i66_crit_edge:                ; preds = %do.end.i64
  br label %for.body.i66

do.end.i64.if.end_crit_edge:                      ; preds = %do.end.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i66:                                     ; preds = %for.inc.i68.for.body.i66_crit_edge, %do.end.i64.for.body.i66_crit_edge
  %dev.048.i = phi ptr [ %add.ptr31.i, %for.inc.i68.for.body.i66_crit_edge ], [ %add.ptr.i63, %do.end.i64.for.body.i66_crit_edge ]
  %hwaddr16.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev.048.i, i32 0, i32 3
  %19 = ptrtoint ptr %hwaddr16.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %hwaddr16.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %16)
  %cmp.i65 = icmp eq i64 %20, %16
  br i1 %cmp.i65, label %for.body.i66.cleanup_crit_edge, label %for.inc.i68

for.body.i66.cleanup_crit_edge:                   ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i68:                                      ; preds = %for.body.i66
  %bucket_hw.i = getelementptr inbounds %struct.mac802154_llsec_device, ptr %dev.048.i, i32 0, i32 2
  %21 = ptrtoint ptr %bucket_hw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %bucket_hw.i, align 8
  %tobool27.not.i = icmp eq ptr %22, null
  %add.ptr31.i = getelementptr i8, ptr %22, i32 -48
  %tobool14.not51.i = icmp eq ptr %add.ptr31.i, null
  %tobool14.not.i67 = or i1 %tobool27.not.i, %tobool14.not51.i
  br i1 %tobool14.not.i67, label %for.inc.i68.if.end_crit_edge, label %for.inc.i68.for.body.i66_crit_edge

for.inc.i68.for.body.i66_crit_edge:               ; preds = %for.inc.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i66

for.inc.i68.if.end_crit_edge:                     ; preds = %for.inc.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %for.inc.i68.if.end_crit_edge, %do.end.i64.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3264, i32 noundef 112) #14
  %tobool12.not = icmp eq ptr %call7.i, null
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %24 = call ptr @memcpy(ptr %call7.i, ptr %dev, i32 40)
  %lock = getelementptr inbounds %struct.mac802154_llsec_device, ptr %call7.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mac802154_llsec_dev_add.__key, i16 noundef signext 3) #10
  %keys = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %call7.i, i32 0, i32 7
  %25 = ptrtoint ptr %keys to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %keys, ptr %keys, align 8
  %prev.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %call7.i, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %keys, ptr %prev.i, align 4
  %27 = ptrtoint ptr %short_addr to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %short_addr, align 2
  %29 = and i16 %28, -257
  call void @__sanitizer_cov_trace_const_cmp2(i16 -257, i16 %29)
  %.not84 = icmp eq i16 %29, -257
  %bucket_s25 = getelementptr inbounds %struct.mac802154_llsec_device, ptr %call7.i, i32 0, i32 1
  br i1 %.not84, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end14
  %mul.i.i = mul i32 %or.i, 1640531527
  %shr.i = lshr i32 %mul.i.i, 26
  %arrayidx = getelementptr %struct.mac802154_llsec, ptr %sec, i32 0, i32 2, i32 %shr.i
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %bucket_s25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %bucket_s25, align 8
  %pprev.i = getelementptr inbounds %struct.mac802154_llsec_device, ptr %call7.i, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %bucket_s25, ptr %arrayidx, align 4
  %tobool.not.i70 = icmp eq ptr %31, null
  br i1 %tobool.not.i70, label %if.then23.if.end26_crit_edge, label %do.body49.i

if.then23.if.end26_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

do.body49.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %31, i32 0, i32 1
  %35 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %bucket_s25, ptr %pprev51.i, align 4
  br label %if.end26

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %bucket_s25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %bucket_s25, align 8
  %pprev.i71 = getelementptr inbounds %struct.mac802154_llsec_device, ptr %call7.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %pprev.i71 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %pprev.i71, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %do.body49.i, %if.then23.if.end26_crit_edge
  %bucket_hw = getelementptr inbounds %struct.mac802154_llsec_device, ptr %call7.i, i32 0, i32 2
  %conv = trunc i64 %5 to i32
  %mul.i.i72 = mul i32 %conv, 1640531527
  %shr.i73 = lshr i32 %mul.i.i72, 26
  %arrayidx28 = getelementptr %struct.mac802154_llsec, ptr %sec, i32 0, i32 3, i32 %shr.i73
  %38 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx28, align 4
  %40 = ptrtoint ptr %bucket_hw to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %bucket_hw, align 8
  %pprev.i74 = getelementptr inbounds %struct.mac802154_llsec_device, ptr %call7.i, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %pprev.i74 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %arrayidx28, ptr %pprev.i74, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  %42 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %bucket_hw, ptr %arrayidx28, align 4
  %tobool.not.i75 = icmp eq ptr %39, null
  br i1 %tobool.not.i75, label %if.end26.hlist_add_head_rcu.exit78_crit_edge, label %do.body49.i77

if.end26.hlist_add_head_rcu.exit78_crit_edge:     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head_rcu.exit78

do.body49.i77:                                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i76 = getelementptr inbounds %struct.hlist_node, ptr %39, i32 0, i32 1
  %43 = ptrtoint ptr %pprev51.i76 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %bucket_hw, ptr %pprev51.i76, align 4
  br label %hlist_add_head_rcu.exit78

hlist_add_head_rcu.exit78:                        ; preds = %do.body49.i77, %if.end26.hlist_add_head_rcu.exit78_crit_edge
  %devices = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 1, i32 1
  %prev.i79 = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 1, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i79 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i79, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %45, ptr noundef %devices) #10
  br i1 %call.i.i, label %if.end.i.i, label %hlist_add_head_rcu.exit78.cleanup_crit_edge

hlist_add_head_rcu.exit78.cleanup_crit_edge:      ; preds = %hlist_add_head_rcu.exit78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %hlist_add_head_rcu.exit78
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %devices, ptr %call7.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !50
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %call7.i, ptr %45, align 4
  %49 = ptrtoint ptr %prev.i79 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i, ptr %prev.i79, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %hlist_add_head_rcu.exit78.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.i66.cleanup_crit_edge, %land.lhs.true19.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ 0, %hlist_add_head_rcu.exit78.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ -17, %for.body.i66.cleanup_crit_edge ], [ -17, %land.lhs.true19.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac802154_llsec_dev_del(ptr noundef %sec, i64 noundef %device_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b43.i = load i1, ptr @llsec_dev_find_long.__warned, align 1
  br i1 %.b43.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @llsec_dev_find_long.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 326, ptr noundef nonnull @.str.5) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %conv.i = trunc i64 %device_addr to i32
  %mul.i.i.i = mul i32 %conv.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 26
  %arrayidx.i = getelementptr %struct.mac802154_llsec, ptr %sec, i32 0, i32 3, i32 %shr.i.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -48
  %tobool14.not4750.i = icmp eq ptr %add.ptr.i, null
  %tobool14.not47.i = or i1 %tobool12.not.i, %tobool14.not4750.i
  br i1 %tobool14.not47.i, label %do.end.i.cleanup_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %dev.048.i = phi ptr [ %add.ptr31.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %hwaddr16.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev.048.i, i32 0, i32 3
  %2 = ptrtoint ptr %hwaddr16.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %hwaddr16.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %device_addr)
  %cmp.i = icmp eq i64 %3, %device_addr
  br i1 %cmp.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %bucket_hw.i = getelementptr inbounds %struct.mac802154_llsec_device, ptr %dev.048.i, i32 0, i32 2
  %4 = ptrtoint ptr %bucket_hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %bucket_hw.i, align 8
  %tobool27.not.i = icmp eq ptr %5, null
  %add.ptr31.i = getelementptr i8, ptr %5, i32 -48
  %tobool14.not51.i = icmp eq ptr %add.ptr31.i, null
  %tobool14.not.i = or i1 %tobool27.not.i, %tobool14.not51.i
  br i1 %tobool14.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %pprev.i.i.i = getelementptr inbounds %struct.mac802154_llsec_device, ptr %dev.048.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.not.i.i, label %if.end.hash_del_rcu.exit_crit_edge, label %if.then.i.i

if.end.hash_del_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %hash_del_rcu.exit

if.then.i.i:                                      ; preds = %if.end
  %bucket_s = getelementptr inbounds %struct.mac802154_llsec_device, ptr %dev.048.i, i32 0, i32 1
  %8 = ptrtoint ptr %bucket_s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bucket_s, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %7, align 4
  %tobool.not.i7.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i7.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %7, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %12 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del_rcu.exit

hash_del_rcu.exit:                                ; preds = %__hlist_del.exit.i.i, %if.end.hash_del_rcu.exit_crit_edge
  %pprev.i.i.i5 = getelementptr inbounds %struct.mac802154_llsec_device, ptr %dev.048.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %pprev.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pprev.i.i.i5, align 4
  %tobool.not.i.not.i.i6 = icmp eq ptr %14, null
  br i1 %tobool.not.i.not.i.i6, label %hash_del_rcu.exit.hash_del_rcu.exit12_crit_edge, label %if.then.i.i8

hash_del_rcu.exit.hash_del_rcu.exit12_crit_edge:  ; preds = %hash_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %hash_del_rcu.exit12

if.then.i.i8:                                     ; preds = %hash_del_rcu.exit
  %bucket_hw = getelementptr inbounds %struct.mac802154_llsec_device, ptr %dev.048.i, i32 0, i32 2
  %15 = ptrtoint ptr %bucket_hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bucket_hw, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %14, align 4
  %tobool.not.i7.i.i7 = icmp eq ptr %16, null
  br i1 %tobool.not.i7.i.i7, label %if.then.i.i8.__hlist_del.exit.i.i11_crit_edge, label %do.body13.i.i.i10

if.then.i.i8.__hlist_del.exit.i.i11_crit_edge:    ; preds = %if.then.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i11

do.body13.i.i.i10:                                ; preds = %if.then.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i9 = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %pprev14.i.i.i9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %14, ptr %pprev14.i.i.i9, align 4
  br label %__hlist_del.exit.i.i11

__hlist_del.exit.i.i11:                           ; preds = %do.body13.i.i.i10, %if.then.i.i8.__hlist_del.exit.i.i11_crit_edge
  %19 = ptrtoint ptr %pprev.i.i.i5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr null, ptr %pprev.i.i.i5, align 4
  br label %hash_del_rcu.exit12

hash_del_rcu.exit12:                              ; preds = %__hlist_del.exit.i.i11, %hash_del_rcu.exit.hash_del_rcu.exit12_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %dev.048.i) #10
  br i1 %call.i.i, label %if.end.i.i, label %hash_del_rcu.exit12.list_del_rcu.exit_crit_edge

hash_del_rcu.exit12.list_del_rcu.exit_crit_edge:  ; preds = %hash_del_rcu.exit12
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %hash_del_rcu.exit12
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dev.048.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %dev.048.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.048.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %hash_del_rcu.exit12.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dev.048.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %rcu = getelementptr inbounds %struct.mac802154_llsec_device, ptr %dev.048.i, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @llsec_dev_free_rcu) #10
  br label %cleanup

cleanup:                                          ; preds = %list_del_rcu.exit, %for.inc.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del_rcu.exit ], [ -2, %do.end.i.cleanup_crit_edge ], [ -2, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @llsec_dev_free_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %keys.i = getelementptr i8, ptr %rcu, i32 -68
  %0 = ptrtoint ptr %keys.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keys.i, align 8
  %cmp.not24.i = icmp eq ptr %1, %keys.i
  br i1 %cmp.not24.i, label %entry.llsec_dev_free.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.llsec_dev_free.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_dev_free.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %pos.025.i = phi ptr [ %pn.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %pos.025.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %pn.0.i = load ptr, ptr %pos.025.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.025.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.025.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %pos.025.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pos.025.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %pos.025.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.025.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.025.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree_sensitive(ptr noundef %pos.025.i) #10
  %cmp.not.i = icmp eq ptr %pn.0.i, %keys.i
  br i1 %cmp.not.i, label %list_del.exit.i.llsec_dev_free.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del.exit.i.llsec_dev_free.exit_crit_edge:    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_dev_free.exit

llsec_dev_free.exit:                              ; preds = %list_del.exit.i.llsec_dev_free.exit_crit_edge, %entry.llsec_dev_free.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %rcu, i32 -100
  tail call void @kfree_sensitive(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac802154_llsec_devkey_add(ptr noundef %sec, i64 noundef %dev_addr, ptr nocapture noundef readonly %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b43.i = load i1, ptr @llsec_dev_find_long.__warned, align 1
  br i1 %.b43.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @llsec_dev_find_long.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 326, ptr noundef nonnull @.str.5) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %conv.i = trunc i64 %dev_addr to i32
  %mul.i.i.i = mul i32 %conv.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 26
  %arrayidx.i = getelementptr %struct.mac802154_llsec, ptr %sec, i32 0, i32 3, i32 %shr.i.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -48
  %tobool14.not4750.i = icmp eq ptr %add.ptr.i, null
  %tobool14.not47.i = or i1 %tobool12.not.i, %tobool14.not4750.i
  br i1 %tobool14.not47.i, label %do.end.i.cleanup_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %dev.048.i = phi ptr [ %add.ptr31.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %hwaddr16.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev.048.i, i32 0, i32 3
  %2 = ptrtoint ptr %hwaddr16.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %hwaddr16.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %dev_addr)
  %cmp.i = icmp eq i64 %3, %dev_addr
  br i1 %cmp.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %bucket_hw.i = getelementptr inbounds %struct.mac802154_llsec_device, ptr %dev.048.i, i32 0, i32 2
  %4 = ptrtoint ptr %bucket_hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %bucket_hw.i, align 8
  %tobool27.not.i = icmp eq ptr %5, null
  %add.ptr31.i = getelementptr i8, ptr %5, i32 -48
  %tobool14.not51.i = icmp eq ptr %add.ptr31.i, null
  %tobool14.not.i = or i1 %tobool27.not.i, %tobool14.not51.i
  br i1 %tobool14.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %key_id = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %key, i32 0, i32 1
  %call1 = tail call fastcc ptr @llsec_devkey_find(ptr noundef nonnull %dev.048.i, ptr noundef %key_id)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 48) #14
  %tobool6.not = icmp eq ptr %call7.i, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %7 = call ptr @memcpy(ptr %call7.i, ptr %key, i32 40)
  %keys = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev.048.i, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev.048.i, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %9, ptr noundef %keys) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %keys, ptr %call7.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !50
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i, ptr %9, align 4
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ -2, %do.end.i.cleanup_crit_edge ], [ -2, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @llsec_devkey_find(ptr noundef %dev, ptr nocapture noundef readonly %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @llsec_devkey_find.__warned, align 1
  br i1 %.b31, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @llsec_devkey_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 410, ptr noundef nonnull @.str.5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %keys = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev, i32 0, i32 7
  %0 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %key, i32 0, i32 2
  %1 = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %key, i32 0, i32 2, i32 0, i32 2
  %2 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %2)
  %devkey.033 = load volatile ptr, ptr %keys, align 8
  %cmp.not34 = icmp eq ptr %devkey.033, %keys
  br i1 %cmp.not34, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %3 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %key, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp6.i = icmp eq i8 %4, 0
  %id.i = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %key, i32 0, i32 1
  %pan_id.i.i = getelementptr inbounds %struct.ieee802154_llsec_key_id, ptr %key, i32 0, i32 2, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %devkey.035 = phi ptr [ %devkey.033, %for.body.lr.ph ], [ %devkey.0, %for.cond.backedge.for.body_crit_edge ]
  %key_id = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %devkey.035, i32 0, i32 1
  %5 = ptrtoint ptr %key_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %key_id, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp.not.i = icmp eq i8 %4, %6
  br i1 %cmp.not.i, label %if.end.i, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

if.end.i:                                         ; preds = %for.body
  br i1 %cmp6.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i
  %7 = ptrtoint ptr %pan_id.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pan_id.i.i, align 2
  %pan_id1.i.i = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %devkey.035, i32 0, i32 1, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %pan_id1.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pan_id1.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %10)
  %cmp.not.i.i = icmp eq i16 %8, %10
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.then8.i.for.cond.backedge_crit_edge

if.then8.i.for.cond.backedge_crit_edge:           ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

lor.lhs.false.i.i:                                ; preds = %if.then8.i
  %11 = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %devkey.035, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %0, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %11, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp7.not.i.i = icmp eq i8 %13, %15
  br i1 %cmp7.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.for.cond.backedge_crit_edge

lor.lhs.false.i.i.for.cond.backedge_crit_edge:    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %16 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %13, label %if.end.i.i.cleanup_crit_edge [
    i8 3, label %land.lhs.true.i.i
    i8 2, label %land.lhs.true20.i.i
  ]

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %1, align 8
  %19 = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %devkey.035, i32 0, i32 1, i32 2, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %19, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %21)
  %cmp13.not.i.i = icmp eq i64 %18, %21
  br i1 %cmp13.not.i.i, label %land.lhs.true.i.i.cleanup_crit_edge, label %land.lhs.true.i.i.for.cond.backedge_crit_edge

land.lhs.true.i.i.for.cond.backedge_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true20.i.i:                              ; preds = %if.end.i.i
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %1, align 8
  %24 = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %devkey.035, i32 0, i32 1, i32 2, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %24, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %26)
  %cmp23.not.i.i = icmp eq i16 %23, %26
  br i1 %cmp23.not.i.i, label %land.lhs.true20.i.i.cleanup_crit_edge, label %land.lhs.true20.i.i.for.cond.backedge_crit_edge

land.lhs.true20.i.i.for.cond.backedge_crit_edge:  ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

land.lhs.true20.i.i.cleanup_crit_edge:            ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %27 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %id.i, align 1
  %id11.i = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %devkey.035, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %id11.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %id11.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp13.not.i = icmp eq i8 %28, %30
  br i1 %cmp13.not.i, label %if.end16.i, label %if.end9.i.for.cond.backedge_crit_edge

if.end9.i.for.cond.backedge_crit_edge:            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

if.end16.i:                                       ; preds = %if.end9.i
  %31 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %4, label %if.end16.i.for.cond.backedge_crit_edge [
    i8 1, label %if.end16.i.cleanup_crit_edge
    i8 2, label %sw.bb19.i
    i8 3, label %sw.bb22.i
  ]

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16.i.for.cond.backedge_crit_edge:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

sw.bb19.i:                                        ; preds = %if.end16.i
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %0, align 8
  %34 = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %devkey.035, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %36)
  %cmp20.i = icmp eq i32 %33, %36
  br i1 %cmp20.i, label %sw.bb19.i.cleanup_crit_edge, label %sw.bb19.i.for.cond.backedge_crit_edge

sw.bb19.i.for.cond.backedge_crit_edge:            ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

sw.bb19.i.cleanup_crit_edge:                      ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb22.i:                                        ; preds = %if.end16.i
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %0, align 8
  %39 = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %devkey.035, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %39, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %41)
  %cmp23.i = icmp eq i64 %38, %41
  br i1 %cmp23.i, label %sw.bb22.i.cleanup_crit_edge, label %sw.bb22.i.for.cond.backedge_crit_edge

sw.bb22.i.for.cond.backedge_crit_edge:            ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

sw.bb22.i.cleanup_crit_edge:                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.backedge:                                ; preds = %sw.bb22.i.for.cond.backedge_crit_edge, %sw.bb19.i.for.cond.backedge_crit_edge, %if.end16.i.for.cond.backedge_crit_edge, %if.end9.i.for.cond.backedge_crit_edge, %land.lhs.true20.i.i.for.cond.backedge_crit_edge, %land.lhs.true.i.i.for.cond.backedge_crit_edge, %lor.lhs.false.i.i.for.cond.backedge_crit_edge, %if.then8.i.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %42 = ptrtoint ptr %devkey.035 to i32
  call void @__asan_load4_noabort(i32 %42)
  %devkey.0 = load volatile ptr, ptr %devkey.035, align 8
  %cmp.not = icmp eq ptr %devkey.0, %keys
  br i1 %cmp.not, label %for.cond.backedge.cleanup_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.backedge.cleanup_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.cond.backedge.cleanup_crit_edge, %sw.bb22.i.cleanup_crit_edge, %sw.bb19.i.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %land.lhs.true20.i.i.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ %devkey.035, %if.end.i.i.cleanup_crit_edge ], [ %devkey.035, %land.lhs.true.i.i.cleanup_crit_edge ], [ %devkey.035, %land.lhs.true20.i.i.cleanup_crit_edge ], [ %devkey.035, %if.end16.i.cleanup_crit_edge ], [ %devkey.035, %sw.bb19.i.cleanup_crit_edge ], [ %devkey.035, %sw.bb22.i.cleanup_crit_edge ], [ null, %for.cond.backedge.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac802154_llsec_devkey_del(ptr noundef %sec, i64 noundef %dev_addr, ptr nocapture noundef readonly %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b43.i = load i1, ptr @llsec_dev_find_long.__warned, align 1
  br i1 %.b43.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @llsec_dev_find_long.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 326, ptr noundef nonnull @.str.5) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %conv.i = trunc i64 %dev_addr to i32
  %mul.i.i.i = mul i32 %conv.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 26
  %arrayidx.i = getelementptr %struct.mac802154_llsec, ptr %sec, i32 0, i32 3, i32 %shr.i.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -48
  %tobool14.not4750.i = icmp eq ptr %add.ptr.i, null
  %tobool14.not47.i = or i1 %tobool12.not.i, %tobool14.not4750.i
  br i1 %tobool14.not47.i, label %do.end.i.cleanup_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %dev.048.i = phi ptr [ %add.ptr31.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %hwaddr16.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev.048.i, i32 0, i32 3
  %2 = ptrtoint ptr %hwaddr16.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %hwaddr16.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %dev_addr)
  %cmp.i = icmp eq i64 %3, %dev_addr
  br i1 %cmp.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %bucket_hw.i = getelementptr inbounds %struct.mac802154_llsec_device, ptr %dev.048.i, i32 0, i32 2
  %4 = ptrtoint ptr %bucket_hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %bucket_hw.i, align 8
  %tobool27.not.i = icmp eq ptr %5, null
  %add.ptr31.i = getelementptr i8, ptr %5, i32 -48
  %tobool14.not51.i = icmp eq ptr %add.ptr31.i, null
  %tobool14.not.i = or i1 %tobool27.not.i, %tobool14.not51.i
  br i1 %tobool14.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %key_id = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %key, i32 0, i32 1
  %call1 = tail call fastcc ptr @llsec_devkey_find(ptr noundef nonnull %dev.048.i, ptr noundef %key_id)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call1) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.list_del_rcu.exit_crit_edge

if.end4.list_del_rcu.exit_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end4.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call1, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %rcu = getelementptr inbounds %struct.mac802154_llsec_device_key, ptr %call1, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 40 to ptr)) #10
  br label %cleanup

cleanup:                                          ; preds = %list_del_rcu.exit, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del_rcu.exit ], [ -2, %if.end.cleanup_crit_edge ], [ -2, %do.end.i.cleanup_crit_edge ], [ -2, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac802154_llsec_seclevel_add(ptr noundef %sec, ptr nocapture noundef readonly %sl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %security_levels.i = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %security_levels.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %pos.046.i = load ptr, ptr %security_levels.i, align 4
  %cmp.not47.i = icmp eq ptr %pos.046.i, %security_levels.i
  br i1 %cmp.not47.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %frame_type3.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl, i32 0, i32 1
  %1 = ptrtoint ptr %frame_type3.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %frame_type3.i, align 4
  %cmd_frame_id12.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl, i32 0, i32 2
  %device_override18.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl, i32 0, i32 3
  %sec_levels24.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp9.i = icmp eq i8 %2, 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.048.i = phi ptr [ %pos.046.i, %for.body.lr.ph.i ], [ %pos.0.i, %for.inc.i.for.body.i_crit_edge ]
  %frame_type.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %pos.048.i, i32 0, i32 1
  %3 = ptrtoint ptr %frame_type.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %frame_type.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %2)
  %cmp5.not.i = icmp eq i8 %4, %2
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  br i1 %cmp9.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.lhs.false16.i_crit_edge

lor.lhs.false.i.lor.lhs.false16.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false16.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %cmd_frame_id.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %pos.048.i, i32 0, i32 2
  %5 = ptrtoint ptr %cmd_frame_id.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cmd_frame_id.i, align 1
  %7 = ptrtoint ptr %cmd_frame_id12.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cmd_frame_id12.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp14.not.i = icmp eq i8 %6, %8
  br i1 %cmp14.not.i, label %land.lhs.true.i.lor.lhs.false16.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.lor.lhs.false16.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false16.i

lor.lhs.false16.i:                                ; preds = %land.lhs.true.i.lor.lhs.false16.i_crit_edge, %lor.lhs.false.i.lor.lhs.false16.i_crit_edge
  %device_override.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %pos.048.i, i32 0, i32 3
  %9 = ptrtoint ptr %device_override.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %device_override.i, align 2, !range !47
  %11 = ptrtoint ptr %device_override18.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %device_override18.i, align 2, !range !47
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp21.not.i = icmp eq i8 %10, %12
  br i1 %cmp21.not.i, label %lor.lhs.false23.i, label %lor.lhs.false16.i.for.inc.i_crit_edge

lor.lhs.false16.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false23.i:                                ; preds = %lor.lhs.false16.i
  %sec_levels.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %pos.048.i, i32 0, i32 4
  %13 = ptrtoint ptr %sec_levels.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sec_levels.i, align 4
  %15 = ptrtoint ptr %sec_levels24.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sec_levels24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp25.not.i = icmp eq i32 %14, %16
  br i1 %cmp25.not.i, label %llsec_find_seclevel.exit, label %lor.lhs.false23.i.for.inc.i_crit_edge

lor.lhs.false23.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false23.i.for.inc.i_crit_edge, %lor.lhs.false16.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %17 = ptrtoint ptr %pos.048.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %pos.0.i = load ptr, ptr %pos.048.i, align 4
  %cmp.not.i = icmp eq ptr %pos.0.i, %security_levels.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

llsec_find_seclevel.exit:                         ; preds = %lor.lhs.false23.i
  %tobool.not = icmp eq ptr %pos.048.i, null
  br i1 %tobool.not, label %llsec_find_seclevel.exit.if.end_crit_edge, label %llsec_find_seclevel.exit.cleanup_crit_edge

llsec_find_seclevel.exit.cleanup_crit_edge:       ; preds = %llsec_find_seclevel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

llsec_find_seclevel.exit.if.end_crit_edge:        ; preds = %llsec_find_seclevel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %llsec_find_seclevel.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 24) #14
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %19 = call ptr @memcpy(ptr %call7.i, ptr %sl, i32 16)
  %prev.i = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 1, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %21, ptr noundef %security_levels.i) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %security_levels.i, ptr %call7.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !50
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call7.i, ptr %21, align 4
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %llsec_find_seclevel.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %llsec_find_seclevel.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac802154_llsec_seclevel_del(ptr noundef readonly %sec, ptr nocapture noundef readonly %sl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %security_levels.i = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %security_levels.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %pos.046.i = load ptr, ptr %security_levels.i, align 4
  %cmp.not47.i = icmp eq ptr %pos.046.i, %security_levels.i
  br i1 %cmp.not47.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %frame_type3.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl, i32 0, i32 1
  %1 = ptrtoint ptr %frame_type3.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %frame_type3.i, align 4
  %cmd_frame_id12.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl, i32 0, i32 2
  %device_override18.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl, i32 0, i32 3
  %sec_levels24.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %sl, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp9.i = icmp eq i8 %2, 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.048.i = phi ptr [ %pos.046.i, %for.body.lr.ph.i ], [ %pos.0.i, %for.inc.i.for.body.i_crit_edge ]
  %frame_type.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %pos.048.i, i32 0, i32 1
  %3 = ptrtoint ptr %frame_type.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %frame_type.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %2)
  %cmp5.not.i = icmp eq i8 %4, %2
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  br i1 %cmp9.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.lhs.false16.i_crit_edge

lor.lhs.false.i.lor.lhs.false16.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false16.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %cmd_frame_id.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %pos.048.i, i32 0, i32 2
  %5 = ptrtoint ptr %cmd_frame_id.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cmd_frame_id.i, align 1
  %7 = ptrtoint ptr %cmd_frame_id12.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cmd_frame_id12.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp14.not.i = icmp eq i8 %6, %8
  br i1 %cmp14.not.i, label %land.lhs.true.i.lor.lhs.false16.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.lor.lhs.false16.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false16.i

lor.lhs.false16.i:                                ; preds = %land.lhs.true.i.lor.lhs.false16.i_crit_edge, %lor.lhs.false.i.lor.lhs.false16.i_crit_edge
  %device_override.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %pos.048.i, i32 0, i32 3
  %9 = ptrtoint ptr %device_override.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %device_override.i, align 2, !range !47
  %11 = ptrtoint ptr %device_override18.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %device_override18.i, align 2, !range !47
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp21.not.i = icmp eq i8 %10, %12
  br i1 %cmp21.not.i, label %lor.lhs.false23.i, label %lor.lhs.false16.i.for.inc.i_crit_edge

lor.lhs.false16.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false23.i:                                ; preds = %lor.lhs.false16.i
  %sec_levels.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %pos.048.i, i32 0, i32 4
  %13 = ptrtoint ptr %sec_levels.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sec_levels.i, align 4
  %15 = ptrtoint ptr %sec_levels24.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sec_levels24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp25.not.i = icmp eq i32 %14, %16
  br i1 %cmp25.not.i, label %llsec_find_seclevel.exit, label %lor.lhs.false23.i.for.inc.i_crit_edge

lor.lhs.false23.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false23.i.for.inc.i_crit_edge, %lor.lhs.false16.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %17 = ptrtoint ptr %pos.048.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %pos.0.i = load ptr, ptr %pos.048.i, align 4
  %cmp.not.i = icmp eq ptr %pos.0.i, %security_levels.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

llsec_find_seclevel.exit:                         ; preds = %lor.lhs.false23.i
  %tobool.not = icmp eq ptr %pos.048.i, null
  br i1 %tobool.not, label %llsec_find_seclevel.exit.cleanup_crit_edge, label %if.end

llsec_find_seclevel.exit.cleanup_crit_edge:       ; preds = %llsec_find_seclevel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %llsec_find_seclevel.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pos.048.i) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_rcu.exit_crit_edge

if.end.list_del_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.048.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %pos.048.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pos.048.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.048.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %rcu = getelementptr inbounds %struct.mac802154_llsec_seclevel, ptr %pos.048.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 16 to ptr)) #10
  br label %cleanup

cleanup:                                          ; preds = %list_del_rcu.exit, %llsec_find_seclevel.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del_rcu.exit ], [ -2, %llsec_find_seclevel.exit.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ -2, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac802154_llsec_encrypt(ptr noundef %sec, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %hdr = alloca %struct.ieee802154_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %hdr) #10
  %0 = call ptr @memset(ptr %hdr, i32 255, i32 56)
  %call = call i32 @ieee802154_hdr_pull(ptr noundef %skb, ptr noundef nonnull %hdr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %hdr, align 8
  %2 = and i16 %bf.load, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %2)
  %cmp1.not = icmp eq i16 %2, 256
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end.if.then14_crit_edge, label %lor.lhs.false7

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

lor.lhs.false7:                                   ; preds = %if.end
  %sec8 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4
  %4 = ptrtoint ptr %sec8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load9 = load i8, ptr %sec8, align 8
  %bf.clear10 = and i8 %bf.load9, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear10)
  %cmp12 = icmp eq i8 %bf.clear10, 0
  br i1 %cmp12, label %lor.lhs.false7.if.then14_crit_edge, label %if.end16

lor.lhs.false7.if.then14_crit_edge:               ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false7.if.then14_crit_edge, %if.end.if.then14_crit_edge
  %call15 = call ptr @skb_push(ptr noundef %skb, i32 noundef %call) #10
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false7
  %conv.i = zext i8 %bf.clear10 to i32
  %switch.tableidx = add nsw i32 %conv.i, -1
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.mac802154_llsec_encrypt, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %add = add nsw i32 %call, -126
  %add19 = add nsw i32 %add, %switch.load
  %8 = add i32 %add19, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %8)
  %cmp21 = icmp ult i32 %8, -128
  br i1 %cmp21, label %if.end16.cleanup_crit_edge, label %if.end24

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %9 = call i32 @llvm.read_register.i32(metadata !33) #10
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !52
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end24.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end24.rcu_read_lock.exit_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end24
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end24.rcu_read_lock.exit_crit_edge
  %lock = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 4
  call void @_raw_read_lock_bh(ptr noundef %lock) #10
  %13 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sec, align 8, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool25.not = icmp eq i8 %14, 0
  br i1 %tobool25.not, label %rcu_read_lock.exit.fail_read_crit_edge, label %if.end27

rcu_read_lock.exit.fail_read_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_read

if.end27:                                         ; preds = %rcu_read_lock.exit
  %dest = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3
  %call28 = call fastcc ptr @llsec_lookup_key(ptr noundef %sec, ptr noundef nonnull %hdr, ptr noundef %dest, ptr noundef null)
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end27.fail_read_crit_edge, label %if.end31

if.end27.fail_read_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_read

if.end31:                                         ; preds = %if.end27
  call void @_raw_read_unlock_bh(ptr noundef %lock) #10
  call void @_raw_write_lock_bh(ptr noundef %lock) #10
  %frame_counter = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 1
  %15 = ptrtoint ptr %frame_counter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frame_counter, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %frame_counter36 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %frame_counter36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %frame_counter36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp37 = icmp eq i32 %16, -1
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_write_unlock_bh(ptr noundef %lock) #10
  call fastcc void @llsec_key_put(ptr noundef nonnull %call28)
  br label %fail

if.end41:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %add42 = add nuw i32 %16, 1
  %19 = ptrtoint ptr %frame_counter to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add42, ptr %frame_counter, align 4
  call void @_raw_write_unlock_bh(ptr noundef %lock) #10
  call fastcc void @rcu_read_unlock()
  %call46 = call i32 @ieee802154_hdr_push(ptr noundef %skb, ptr noundef nonnull %hdr) #10
  %conv47 = trunc i32 %call46 to i16
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %20 = ptrtoint ptr %mac_len to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv47, ptr %mac_len, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i79 = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %25 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i79, ptr %mac_header.i, align 2
  %call48 = call fastcc i32 @llsec_do_encrypt(ptr noundef %skb, ptr noundef %sec, ptr noundef nonnull %hdr, ptr noundef nonnull %call28)
  call fastcc void @llsec_key_put(ptr noundef nonnull %call28)
  br label %cleanup

fail_read:                                        ; preds = %if.end27.fail_read_crit_edge, %rcu_read_lock.exit.fail_read_crit_edge
  %rc.0 = phi i32 [ -22, %rcu_read_lock.exit.fail_read_crit_edge ], [ -126, %if.end27.fail_read_crit_edge ]
  call void @_raw_read_unlock_bh(ptr noundef %lock) #10
  br label %fail

fail:                                             ; preds = %fail_read, %if.then39
  %rc.1 = phi i32 [ -75, %if.then39 ], [ %rc.0, %fail_read ]
  %call.i80 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i80, label %fail.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i83

fail.rcu_read_unlock.exit_crit_edge:              ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i83:                                ; preds = %fail
  %call1.i81 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81)
  %tobool.not.i82 = icmp eq i32 %call1.i81, 0
  br i1 %tobool.not.i82, label %land.lhs.true.i83.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i85

land.lhs.true.i83.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i85:                               ; preds = %land.lhs.true.i83
  %.b4.i84 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i84, label %land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge, label %if.then.i86

land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i86:                                      ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i86, %land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i83.rcu_read_unlock.exit_crit_edge, %fail.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  %26 = call i32 @llvm.read_register.i32(metadata !33) #10
  %and.i.i.i.i.i87 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i87 to ptr
  %preempt_count.i.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i88, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i88, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end41, %if.end16.cleanup_crit_edge, %if.then14, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then14 ], [ %rc.1, %rcu_read_unlock.exit ], [ %call48, %if.end41 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -90, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %hdr) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_hdr_pull(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @llsec_lookup_key(ptr noundef %sec, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %addr, ptr noundef writeonly %key_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %devaddr.sroa.0.0.copyload140 = load i8, ptr %addr, align 8
  %devaddr.sroa.8141.0.addr.sroa_idx = getelementptr inbounds i8, ptr %addr, i32 2
  %1 = ptrtoint ptr %devaddr.sroa.8141.0.addr.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %1)
  %devaddr.sroa.8141.0.copyload142 = load i16, ptr %devaddr.sroa.8141.0.addr.sroa_idx, align 2
  %devaddr.sroa.10144.0.addr.sroa_idx = getelementptr inbounds i8, ptr %addr, i32 8
  %2 = ptrtoint ptr %devaddr.sroa.10144.0.addr.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %2)
  %devaddr.sroa.10144.0.copyload145 = load i64, ptr %devaddr.sroa.10144.0.addr.sroa_idx, align 8
  %sec1 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4
  %3 = ptrtoint ptr %sec1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %sec1, align 8
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %cmp = icmp eq i8 %bf.clear, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %devaddr.sroa.0.0.copyload140)
  %cmp4 = icmp eq i8 %devaddr.sroa.0.0.copyload140, 0
  %or.cond = select i1 %cmp, i1 %cmp4, i1 false
  br i1 %or.cond, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load6 = load i16, ptr %hdr, align 8
  %5 = and i16 %bf.load6, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp10 = icmp eq i16 %5, 0
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %coord_hwaddr = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 7
  %6 = ptrtoint ptr %coord_hwaddr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %coord_hwaddr, align 8
  br label %do.body

if.else:                                          ; preds = %if.then
  %coord_shortaddr.i = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 8
  %8 = ptrtoint ptr %coord_shortaddr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %coord_shortaddr.i, align 8
  %pan_id.i = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 5
  %10 = ptrtoint ptr %pan_id.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pan_id.i, align 8
  %12 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %9, label %if.else9.i [
    i16 -1, label %if.else.cleanup109_crit_edge
    i16 -257, label %if.then7.i
  ]

if.else.cleanup109_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

if.then7.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %coord_hwaddr.i = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 7
  %13 = ptrtoint ptr %coord_hwaddr.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %coord_hwaddr.i, align 8
  br label %do.body

if.else9.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %devaddr.sroa.10144.8.insert.ext = zext i16 %9 to i64
  %devaddr.sroa.10144.8.insert.shift = shl nuw i64 %devaddr.sroa.10144.8.insert.ext, 48
  %devaddr.sroa.10144.8.insert.mask = and i64 %devaddr.sroa.10144.0.copyload145, 281474976710655
  %devaddr.sroa.10144.8.insert.insert = or i64 %devaddr.sroa.10144.8.insert.shift, %devaddr.sroa.10144.8.insert.mask
  br label %do.body

do.body:                                          ; preds = %if.else9.i, %if.then7.i, %if.then12, %entry.do.body_crit_edge
  %devaddr.sroa.10144.2 = phi i64 [ %7, %if.then12 ], [ %devaddr.sroa.10144.0.copyload145, %entry.do.body_crit_edge ], [ %14, %if.then7.i ], [ %devaddr.sroa.10144.8.insert.insert, %if.else9.i ]
  %devaddr.sroa.8141.0 = phi i16 [ %devaddr.sroa.8141.0.copyload142, %if.then12 ], [ %devaddr.sroa.8141.0.copyload142, %entry.do.body_crit_edge ], [ %11, %if.then7.i ], [ %11, %if.else9.i ]
  %devaddr.sroa.0.1 = phi i8 [ 3, %if.then12 ], [ %devaddr.sroa.0.0.copyload140, %entry.do.body_crit_edge ], [ 3, %if.then7.i ], [ 2, %if.else9.i ]
  %call19 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %land.lhs.true20, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true20:                                  ; preds = %do.body
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end_crit_edge:                 ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b136 = load i1, ptr @llsec_lookup_key.__warned, align 1
  br i1 %.b136, label %land.lhs.true23.do.end_crit_edge, label %if.then25

land.lhs.true23.do.end_crit_edge:                 ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @llsec_lookup_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 562, ptr noundef nonnull @.str.5) #10
  br label %do.end

do.end:                                           ; preds = %if.then25, %land.lhs.true23.do.end_crit_edge, %land.lhs.true20.do.end_crit_edge, %do.body.do.end_crit_edge
  %table = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 1
  %15 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %15)
  %key_entry.0154 = load volatile ptr, ptr %table, align 8
  %cmp33.not155 = icmp eq ptr %key_entry.0154, %table
  br i1 %cmp33.not155, label %do.end.cleanup109_crit_edge, label %for.body.lr.ph

do.end.cleanup109_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

for.body.lr.ph:                                   ; preds = %do.end
  %16 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load39 = load i16, ptr %hdr, align 8
  %bf.lshr40 = lshr i16 %bf.load39, 8
  %bf.clear41 = and i16 %bf.lshr40, 7
  %conv42 = zext i16 %bf.clear41 to i32
  %shl = shl nuw nsw i32 1, %conv42
  %key_id64 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 1
  %trunc = trunc i8 %bf.lshr to i2
  %17 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 3
  %devaddr.sroa.10144.8.extract.shift = lshr i64 %devaddr.sroa.10144.2, 48
  %devaddr.sroa.10144.8.extract.trunc = trunc i64 %devaddr.sroa.10144.8.extract.shift to i16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %key_entry.0156 = phi ptr [ %key_entry.0154, %for.body.lr.ph ], [ %key_entry.0, %for.inc.for.body_crit_edge ]
  %id35 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %key_entry.0156, i32 0, i32 1
  %key36 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %key_entry.0156, i32 0, i32 2
  %18 = ptrtoint ptr %key36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %key36, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 4
  %conv37 = zext i8 %21 to i32
  %and = and i32 %shl, %conv37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %for.body.for.inc_crit_edge, label %if.end45

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end45:                                         ; preds = %for.body
  %22 = ptrtoint ptr %id35 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %id35, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %bf.clear)
  %cmp49.not = icmp eq i8 %23, %bf.clear
  br i1 %cmp49.not, label %if.end52, label %if.end45.for.inc_crit_edge

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end52:                                         ; preds = %if.end45
  br i1 %cmp, label %if.then56, label %if.else60

if.then56:                                        ; preds = %if.end52
  %pan_id1.i = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %key_entry.0156, i32 0, i32 1, i32 2, i32 0, i32 1
  %24 = ptrtoint ptr %pan_id1.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pan_id1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %devaddr.sroa.8141.0, i16 %25)
  %cmp.not.i = icmp eq i16 %devaddr.sroa.8141.0, %25
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then56.for.inc_crit_edge

if.then56.for.inc_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %if.then56
  %26 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %key_entry.0156, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %devaddr.sroa.0.1, i8 %28)
  %cmp7.not.i = icmp eq i8 %devaddr.sroa.0.1, %28
  br i1 %cmp7.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc_crit_edge

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i:                                         ; preds = %lor.lhs.false.i
  %29 = zext i8 %devaddr.sroa.0.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %devaddr.sroa.0.1, label %if.end.i.found_crit_edge [
    i8 3, label %land.lhs.true.i
    i8 2, label %land.lhs.true20.i
  ]

if.end.i.found_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

land.lhs.true.i:                                  ; preds = %if.end.i
  %30 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %key_entry.0156, i32 0, i32 1, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %30, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %devaddr.sroa.10144.2, i64 %32)
  %cmp13.not.i = icmp eq i64 %devaddr.sroa.10144.2, %32
  br i1 %cmp13.not.i, label %land.lhs.true.i.found_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.i.found_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

land.lhs.true20.i:                                ; preds = %if.end.i
  %33 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %key_entry.0156, i32 0, i32 1, i32 2, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %devaddr.sroa.10144.8.extract.trunc)
  %cmp23.not.i = icmp eq i16 %35, %devaddr.sroa.10144.8.extract.trunc
  br i1 %cmp23.not.i, label %land.lhs.true20.i.found_crit_edge, label %land.lhs.true20.i.for.inc_crit_edge

land.lhs.true20.i.for.inc_crit_edge:              ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true20.i.found_crit_edge:                ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

if.else60:                                        ; preds = %if.end52
  %id61 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %key_entry.0156, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %id61 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %id61, align 1
  %38 = ptrtoint ptr %key_id64 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %key_id64, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp66.not = icmp eq i8 %37, %39
  br i1 %cmp66.not, label %if.end69, label %if.else60.for.inc_crit_edge

if.else60.for.inc_crit_edge:                      ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end69:                                         ; preds = %if.else60
  %40 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.17)
  switch i2 %trunc, label %if.end69.for.inc_crit_edge [
    i2 1, label %if.end69.found_crit_edge
    i2 -2, label %land.lhs.true76
    i2 -1, label %land.lhs.true84
  ]

if.end69.found_crit_edge:                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

if.end69.for.inc_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true76:                                  ; preds = %if.end69
  %41 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %key_entry.0156, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %44 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %17, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp78 = icmp eq i32 %43, %45
  br i1 %cmp78, label %land.lhs.true76.found_crit_edge, label %land.lhs.true76.for.inc_crit_edge

land.lhs.true76.for.inc_crit_edge:                ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true76.found_crit_edge:                  ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

land.lhs.true84:                                  ; preds = %if.end69
  %46 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, ptr %key_entry.0156, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %46, align 8
  %49 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %17, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %50)
  %cmp86 = icmp eq i64 %48, %50
  br i1 %cmp86, label %land.lhs.true84.found_crit_edge, label %land.lhs.true84.for.inc_crit_edge

land.lhs.true84.for.inc_crit_edge:                ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true84.found_crit_edge:                  ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc:                                          ; preds = %land.lhs.true84.for.inc_crit_edge, %land.lhs.true76.for.inc_crit_edge, %if.end69.for.inc_crit_edge, %if.else60.for.inc_crit_edge, %land.lhs.true20.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %if.then56.for.inc_crit_edge, %if.end45.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %51 = ptrtoint ptr %key_entry.0156 to i32
  call void @__asan_load4_noabort(i32 %51)
  %key_entry.0 = load volatile ptr, ptr %key_entry.0156, align 8
  %cmp33.not = icmp eq ptr %key_entry.0, %table
  br i1 %cmp33.not, label %for.inc.cleanup109_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup109_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

found:                                            ; preds = %land.lhs.true84.found_crit_edge, %land.lhs.true76.found_crit_edge, %if.end69.found_crit_edge, %land.lhs.true20.i.found_crit_edge, %land.lhs.true.i.found_crit_edge, %if.end.i.found_crit_edge
  %tobool104.not = icmp eq ptr %key_id, null
  br i1 %tobool104.not, label %found.if.end107_crit_edge, label %if.then105

found.if.end107_crit_edge:                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

if.then105:                                       ; preds = %found
  call void @__sanitizer_cov_trace_pc() #12
  %52 = call ptr @memcpy(ptr %key_id, ptr %id35, i32 24)
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %found.if.end107_crit_edge
  %ref.i = getelementptr inbounds %struct.mac802154_llsec_key, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #10
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #10, !srcloc !48
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end107.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !49

if.end107.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end107
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %54 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %.not.i.i.i.i.i = icmp sgt i32 %54, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup109_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !45

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup109_crit_edge:           ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end107.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end107.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %cleanup109

cleanup109:                                       ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup109_crit_edge, %for.inc.cleanup109_crit_edge, %do.end.cleanup109_crit_edge, %if.else.cleanup109_crit_edge
  %retval.0 = phi ptr [ null, %if.else.cleanup109_crit_edge ], [ %19, %if.else.i.i.i.i.i.cleanup109_crit_edge ], [ %19, %if.end15.sink.split.i.i.i.i.i ], [ null, %do.end.cleanup109_crit_edge ], [ null, %for.inc.cleanup109_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_hdr_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @llsec_do_encrypt(ptr noundef %skb, ptr nocapture noundef readonly %sec, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %key) unnamed_addr #0 align 64 {
entry:
  %iv.i9 = alloca [16 x i8], align 1
  %sg.i = alloca %struct.scatterlist, align 4
  %iv.i = alloca [16 x i8], align 1
  %src.i = alloca %struct.scatterlist, align 4
  %__req_desc.i = alloca [512 x i8], align 128
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sec1 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4
  %0 = ptrtoint ptr %sec1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sec1, align 8
  %bf.clear = and i8 %bf.load, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.clear)
  %cmp = icmp eq i8 %bf.clear, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv.i) #10
  %1 = getelementptr inbounds [16 x i8], ptr %iv.i, i32 0, i32 1
  %2 = getelementptr inbounds [16 x i8], ptr %iv.i, i32 0, i32 9
  %3 = getelementptr inbounds [16 x i8], ptr %iv.i, i32 0, i32 13
  %4 = getelementptr inbounds [16 x i8], ptr %iv.i, i32 0, i32 14
  %5 = getelementptr inbounds [16 x i8], ptr %iv.i, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src.i) #10
  %6 = call ptr @memset(ptr %src.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__req_desc.i) #10
  %7 = call ptr @memset(ptr %__req_desc.i, i32 255, i32 512)
  %hwaddr.i = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 6
  %8 = ptrtoint ptr %hwaddr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %hwaddr.i, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #10
  %frame_counter1.i.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %frame_counter1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frame_counter1.i.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  %14 = ptrtoint ptr %iv.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %iv.i, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %10, ptr %1, align 1
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %13, ptr %2, align 1
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %3, align 1
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %4, align 1
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %5, align 1
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %22 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %23 to i32
  %add.ptr.i14.i = getelementptr i8, ptr %21, i32 %conv.i.i
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %24 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mac_len.i, align 4
  %conv.i = zext i16 %25 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i14.i, i32 %conv.i
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %26 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @sg_init_one(ptr noundef nonnull %src.i, ptr noundef %add.ptr.i, i32 noundef %sub.ptr.sub.i) #10
  %tfm0.i = getelementptr inbounds %struct.mac802154_llsec_key, ptr %key, i32 0, i32 2
  %28 = ptrtoint ptr %tfm0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tfm0.i, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %29, i32 0, i32 2
  %tfm1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 4, i32 3
  %30 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 32
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 4, i32 2
  %32 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 4, i32 4
  %33 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %flags4.i.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 2
  %34 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %src.i, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 3
  %35 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %src.i, ptr %dst2.i.i, align 4
  %36 = ptrtoint ptr %__req_desc.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub.ptr.sub.i, ptr %__req_desc.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 1
  %37 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %iv.i, ptr %iv4.i.i, align 4
  %call5.i = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %__req_desc.i) #10
  %38 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tfm1.i.i.i, align 32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %39, i32 -128
  %40 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %add.i.i = add i32 %41, 128
  %42 = call ptr @memset(ptr %__req_desc.i, i32 0, i32 %add.i.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__req_desc.i) #10, !srcloc !54
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__req_desc.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv.i) #10
  br label %return

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv.i9) #10
  %43 = getelementptr inbounds [16 x i8], ptr %iv.i9, i32 0, i32 1
  %44 = getelementptr inbounds [16 x i8], ptr %iv.i9, i32 0, i32 9
  %45 = getelementptr inbounds [16 x i8], ptr %iv.i9, i32 0, i32 13
  %46 = getelementptr inbounds [16 x i8], ptr %iv.i9, i32 0, i32 14
  %47 = getelementptr inbounds [16 x i8], ptr %iv.i9, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #10
  %48 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  %conv.i.i12 = zext i8 %bf.clear to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.llsec_do_encrypt, i32 0, i32 %conv.i.i12
  %49 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load = load i32, ptr %switch.gep, align 4
  %hwaddr.i13 = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 6
  %50 = ptrtoint ptr %hwaddr.i13 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %hwaddr.i13, align 8
  %52 = tail call i64 @llvm.bswap.i64(i64 %51) #10
  %frame_counter1.i.i14 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 2
  %53 = ptrtoint ptr %frame_counter1.i.i14 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %frame_counter1.i.i14, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #10
  %56 = ptrtoint ptr %iv.i9 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %iv.i9, align 1
  %57 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %52, ptr %43, align 1
  %58 = ptrtoint ptr %44 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %55, ptr %44, align 1
  %59 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %bf.clear, ptr %45, align 1
  %60 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %46, align 1
  %61 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %47, align 1
  %arrayidx.i.i = getelementptr %struct.mac802154_llsec_key, ptr %key, i32 0, i32 1, i32 0
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %switch.load)
  %cmp1.i.i = icmp eq i32 %65, %switch.load
  br i1 %cmp1.i.i, label %if.else.if.end8.i.i.i_crit_edge, label %for.cond.i.i

if.else.if.end8.i.i.i_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

for.cond.i.i:                                     ; preds = %if.else
  %arrayidx.1.i.i = getelementptr %struct.mac802154_llsec_key, ptr %key, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.1.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %switch.load)
  %cmp1.1.i.i = icmp eq i32 %69, %switch.load
  br i1 %cmp1.1.i.i, label %for.cond.i.i.if.end8.i.i.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.if.end8.i.i.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %arrayidx.2.i.i = getelementptr %struct.mac802154_llsec_key, ptr %key, i32 0, i32 1, i32 2
  %70 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.2.i.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %switch.load)
  %cmp1.2.i.i = icmp eq i32 %73, %switch.load
  br i1 %cmp1.2.i.i, label %for.cond.1.i.i.if.end8.i.i.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.if.end8.i.i.i_crit_edge:           ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/mac802154/llsec.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 644, 0\0A.popsection", ""() #10, !srcloc !55
  unreachable

if.end8.i.i.i:                                    ; preds = %for.cond.1.i.i.if.end8.i.i.i_crit_edge, %for.cond.i.i.if.end8.i.i.i_crit_edge, %if.else.if.end8.i.i.i_crit_edge
  %.lcssa.i.i = phi ptr [ %63, %if.else.if.end8.i.i.i_crit_edge ], [ %67, %for.cond.i.i.if.end8.i.i.i_crit_edge ], [ %71, %for.cond.1.i.i.if.end8.i.i.i_crit_edge ]
  %reqsize.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %.lcssa.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %reqsize.i.i.i, align 4
  %add.i.i15 = add i32 %75, 128
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i15, i32 noundef 2592) #15
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.llsec_do_encrypt_auth.exit_crit_edge, label %if.end.i, !prof !49

if.end8.i.i.i.llsec_do_encrypt_auth.exit_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_do_encrypt_auth.exit

if.end.i:                                         ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i.i.i16 = getelementptr inbounds %struct.crypto_aead, ptr %.lcssa.i.i, i32 0, i32 3
  %tfm1.i.i.i17 = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 3
  %76 = ptrtoint ptr %tfm1.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %base.i.i.i.i16, ptr %tfm1.i.i.i17, align 16
  %mac_len.i18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %77 = ptrtoint ptr %mac_len.i18 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %mac_len.i18, align 4
  %conv.i19 = zext i16 %78 to i32
  %head.i.i20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %79 = ptrtoint ptr %head.i.i20 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %head.i.i20, align 8
  %mac_header.i.i21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %81 = ptrtoint ptr %mac_header.i.i21 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %mac_header.i.i21, align 2
  %conv.i48.i = zext i16 %82 to i32
  %add.ptr.i49.i = getelementptr i8, ptr %80, i32 %conv.i48.i
  %add.ptr.i22 = getelementptr i8, ptr %add.ptr.i49.i, i32 %conv.i19
  %tail.i.i23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %83 = ptrtoint ptr %tail.i.i23 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tail.i.i23, align 8
  %sub.ptr.lhs.cast.i24 = ptrtoint ptr %84 to i32
  %sub.ptr.rhs.cast.i25 = ptrtoint ptr %add.ptr.i22 to i32
  %sub.ptr.sub.i26 = sub i32 %sub.ptr.lhs.cast.i24, %sub.ptr.rhs.cast.i25
  %call9.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %switch.load) #10
  %85 = ptrtoint ptr %head.i.i20 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %head.i.i20, align 8
  %87 = ptrtoint ptr %mac_header.i.i21 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %mac_header.i.i21, align 2
  %conv.i52.i = zext i16 %88 to i32
  %add.ptr.i53.i = getelementptr i8, ptr %86, i32 %conv.i52.i
  %add.i = add i32 %sub.ptr.sub.i26, %conv.i19
  %add11.i = add i32 %add.i, %switch.load
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef %add.ptr.i53.i, i32 noundef %add11.i) #10
  %89 = ptrtoint ptr %sec1 to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load.i = load i8, ptr %sec1, align 8
  %90 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool14.not.i = icmp eq i8 %90, 0
  %spec.select.i = select i1 %tobool14.not.i, i32 %add.i, i32 %conv.i19
  %spec.select45.i = select i1 %tobool14.not.i, i32 0, i32 %sub.ptr.sub.i26
  %complete.i.i27 = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %complete.i.i27 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %complete.i.i27, align 8
  %data2.i.i28 = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 2
  %92 = ptrtoint ptr %data2.i.i28 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %data2.i.i28, align 4
  %flags4.i.i29 = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 4
  %93 = ptrtoint ptr %flags4.i.i29 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %flags4.i.i29, align 4
  %src1.i.i30 = getelementptr inbounds %struct.aead_request, ptr %call9.i.i.i, i32 0, i32 4
  %94 = ptrtoint ptr %src1.i.i30 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %sg.i, ptr %src1.i.i30, align 4
  %dst2.i.i31 = getelementptr inbounds %struct.aead_request, ptr %call9.i.i.i, i32 0, i32 5
  %95 = ptrtoint ptr %dst2.i.i31 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %sg.i, ptr %dst2.i.i31, align 8
  %cryptlen3.i.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i.i, i32 0, i32 2
  %96 = ptrtoint ptr %cryptlen3.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %spec.select45.i, ptr %cryptlen3.i.i, align 4
  %iv4.i.i32 = getelementptr inbounds %struct.aead_request, ptr %call9.i.i.i, i32 0, i32 3
  %97 = ptrtoint ptr %iv4.i.i32 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %iv.i9, ptr %iv4.i.i32, align 32
  %assoclen1.i.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %assoclen1.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %spec.select.i, ptr %assoclen1.i.i, align 8
  %call19.i = call i32 @crypto_aead_encrypt(ptr noundef nonnull %call9.i.i.i) #10
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i.i) #10
  br label %llsec_do_encrypt_auth.exit

llsec_do_encrypt_auth.exit:                       ; preds = %if.end.i, %if.end8.i.i.i.llsec_do_encrypt_auth.exit_crit_edge
  %retval.0.i = phi i32 [ %call19.i, %if.end.i ], [ -12, %if.end8.i.i.i.llsec_do_encrypt_auth.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv.i9) #10
  br label %return

return:                                           ; preds = %llsec_do_encrypt_auth.exit, %if.then
  %retval.0 = phi i32 [ %call5.i, %if.then ], [ %retval.0.i, %llsec_do_encrypt_auth.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac802154_llsec_decrypt(ptr noundef %sec, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %hdr = alloca %struct.ieee802154_hdr, align 8
  %key_id = alloca %struct.ieee802154_llsec_key_id, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %hdr) #10
  %0 = call ptr @memset(ptr %hdr, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %key_id) #10
  %1 = call ptr @memset(ptr %key_id, i32 255, i32 24)
  %call = call i32 @ieee802154_hdr_peek(ptr noundef %skb, ptr noundef nonnull %hdr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %hdr, align 8
  %3 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %4 = and i16 %bf.load, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp7 = icmp eq i16 %4, 0
  br i1 %cmp7, label %if.end2.cleanup_crit_edge, label %if.end10

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end2
  %lock = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 4
  call void @_raw_read_lock_bh(ptr noundef %lock) #10
  %5 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sec, align 8, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool11.not = icmp eq i8 %6, 0
  call void @_raw_read_unlock_bh(ptr noundef %lock) #10
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %7 = call i32 @llvm.read_register.i32(metadata !33) #10
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !52
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end14.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end14.rcu_read_lock.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end14
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end14.rcu_read_lock.exit_crit_edge
  %source = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2
  %call16 = call fastcc ptr @llsec_lookup_key(ptr noundef %sec, ptr noundef nonnull %hdr, ptr noundef %source, ptr noundef nonnull %key_id)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %rcu_read_lock.exit.fail_crit_edge, label %if.end19

rcu_read_lock.exit.fail_crit_edge:                ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end19:                                         ; preds = %rcu_read_lock.exit
  %11 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %11)
  %devaddr.sroa.0.0.copyload153.i = load i8, ptr %source, align 8
  %devaddr.sroa.7154.0.addr.sroa_idx.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 1
  %devaddr.sroa.10158.0.addr.sroa_idx.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %devaddr.sroa.10158.0.addr.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %devaddr.sroa.10158.0.copyload159.i = load i64, ptr %devaddr.sroa.10158.0.addr.sroa_idx.i, align 8
  %extract188.i = lshr i64 %devaddr.sroa.10158.0.copyload159.i, 48
  %extract.t189.i = trunc i64 %extract188.i to i16
  %13 = zext i8 %devaddr.sroa.0.0.copyload153.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %devaddr.sroa.0.0.copyload153.i, label %if.end19.if.else.i_crit_edge [
    i8 0, label %land.lhs.true.i89
    i8 2, label %if.end19.if.then8.i_crit_edge
  ]

if.end19.if.then8.i_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.end19.if.else.i_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i89:                                ; preds = %if.end19
  %coord_shortaddr.i.i = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 8
  %14 = ptrtoint ptr %coord_shortaddr.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %coord_shortaddr.i.i, align 8
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %15, label %if.end.thread.i [
    i16 -1, label %land.lhs.true.i89.fail_dev_crit_edge
    i16 -257, label %if.end.thread179.i
  ]

land.lhs.true.i89.fail_dev_crit_edge:             ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_dev

if.end.thread179.i:                               ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #12
  %coord_hwaddr.i.i = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 7
  %17 = ptrtoint ptr %coord_hwaddr.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %coord_hwaddr.i.i, align 8
  br label %if.else.i

if.end.thread.i:                                  ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #12
  %pan_id.i.i = getelementptr inbounds %struct.ieee802154_llsec_params, ptr %sec, i32 0, i32 5
  br label %if.then8.i

if.then8.i:                                       ; preds = %if.end.thread.i, %if.end19.if.then8.i_crit_edge
  %devaddr.sroa.7154.0178.in.i = phi ptr [ %pan_id.i.i, %if.end.thread.i ], [ %devaddr.sroa.7154.0.addr.sroa_idx.i, %if.end19.if.then8.i_crit_edge ]
  %devaddr.sroa.10158.2177.off48.i = phi i16 [ %15, %if.end.thread.i ], [ %extract.t189.i, %if.end19.if.then8.i_crit_edge ]
  %19 = ptrtoint ptr %devaddr.sroa.7154.0178.in.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %devaddr.sroa.7154.0178.i = load i16, ptr %devaddr.sroa.7154.0178.in.i, align 2
  %conv.i.i = zext i16 %devaddr.sroa.10158.2177.off48.i to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 16
  %conv1.i.i = zext i16 %devaddr.sroa.7154.0178.i to i32
  %or.i.i = or i32 %shl.i.i, %conv1.i.i
  %call10.i = call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i90 = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i90, label %land.lhs.true11.i, label %if.then8.i.do.end.i_crit_edge

if.then8.i.do.end.i_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true11.i:                                ; preds = %if.then8.i
  %call12.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.do.end.i_crit_edge, label %land.lhs.true14.i

land.lhs.true11.i.do.end.i_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true14.i:                                ; preds = %land.lhs.true11.i
  %.b144.i = load i1, ptr @llsec_lookup_dev.__warned, align 1
  br i1 %.b144.i, label %land.lhs.true14.i.do.end.i_crit_edge, label %if.then16.i

land.lhs.true14.i.do.end.i_crit_edge:             ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then16.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @llsec_lookup_dev.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 789, ptr noundef nonnull @.str.5) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then16.i, %land.lhs.true14.i.do.end.i_crit_edge, %land.lhs.true11.i.do.end.i_crit_edge, %if.then8.i.do.end.i_crit_edge
  %mul.i.i.i = mul i32 %or.i.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 26
  %arrayidx.i = getelementptr %struct.mac802154_llsec, ptr %sec, i32 0, i32 2, i32 %shr.i.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool24.not.i = icmp eq ptr %21, null
  %add.ptr.i = getelementptr i8, ptr %21, i32 -40
  %tobool26.not192202.i = icmp eq ptr %add.ptr.i, null
  %tobool26.not192.i = or i1 %tobool24.not.i, %tobool26.not192202.i
  br i1 %tobool26.not192.i, label %do.end.i.fail_dev_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.fail_dev_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_dev

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %dev.0193.i = phi ptr [ %add.ptr53.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %pan_id28.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev.0193.i, i32 0, i32 1
  %22 = ptrtoint ptr %pan_id28.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pan_id28.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %devaddr.sroa.7154.0178.i)
  %cmp32.i = icmp eq i16 %23, %devaddr.sroa.7154.0178.i
  br i1 %cmp32.i, label %land.lhs.true34.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true34.i:                                ; preds = %for.body.i
  %short_addr.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev.0193.i, i32 0, i32 2
  %24 = ptrtoint ptr %short_addr.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %short_addr.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %devaddr.sroa.10158.2177.off48.i)
  %cmp38.i = icmp eq i16 %25, %devaddr.sroa.10158.2177.off48.i
  br i1 %cmp38.i, label %land.lhs.true34.i.if.end24_crit_edge, label %land.lhs.true34.i.for.inc.i_crit_edge

land.lhs.true34.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true34.i.if.end24_crit_edge:             ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

for.inc.i:                                        ; preds = %land.lhs.true34.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %bucket_s.i = getelementptr inbounds %struct.mac802154_llsec_device, ptr %dev.0193.i, i32 0, i32 1
  %26 = ptrtoint ptr %bucket_s.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %bucket_s.i, align 8
  %tobool49.not.i = icmp eq ptr %27, null
  %add.ptr53.i = getelementptr i8, ptr %27, i32 -40
  %tobool26.not206.i = icmp eq ptr %add.ptr53.i, null
  %tobool26.not.i = or i1 %tobool49.not.i, %tobool26.not206.i
  br i1 %tobool26.not.i, label %for.inc.i.fail_dev_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.fail_dev_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_dev

if.else.i:                                        ; preds = %if.end.thread179.i, %if.end19.if.else.i_crit_edge
  %devaddr.sroa.10158.2184.i = phi i64 [ %18, %if.end.thread179.i ], [ %devaddr.sroa.10158.0.copyload159.i, %if.end19.if.else.i_crit_edge ]
  %call60.i = call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %land.lhs.true62.i, label %if.else.i.do.end70.i_crit_edge

if.else.i.do.end70.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70.i

land.lhs.true62.i:                                ; preds = %if.else.i
  %call63.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %land.lhs.true62.i.do.end70.i_crit_edge, label %land.lhs.true65.i

land.lhs.true62.i.do.end70.i_crit_edge:           ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70.i

land.lhs.true65.i:                                ; preds = %land.lhs.true62.i
  %.b142143.i = load i1, ptr @llsec_lookup_dev.__warned.9, align 1
  br i1 %.b142143.i, label %land.lhs.true65.i.do.end70.i_crit_edge, label %if.then67.i

land.lhs.true65.i.do.end70.i_crit_edge:           ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70.i

if.then67.i:                                      ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @llsec_lookup_dev.__warned.9, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 798, ptr noundef nonnull @.str.5) #10
  br label %do.end70.i

do.end70.i:                                       ; preds = %if.then67.i, %land.lhs.true65.i.do.end70.i_crit_edge, %land.lhs.true62.i.do.end70.i_crit_edge, %if.else.i.do.end70.i_crit_edge
  %conv76.i = trunc i64 %devaddr.sroa.10158.2184.i to i32
  %mul.i.i150.i = mul i32 %conv76.i, 1640531527
  %shr.i151.i = lshr i32 %mul.i.i150.i, 26
  %arrayidx78.i = getelementptr %struct.mac802154_llsec, ptr %sec, i32 0, i32 3, i32 %shr.i151.i
  %28 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %arrayidx78.i, align 4
  %tobool82.not.i = icmp eq ptr %29, null
  %add.ptr86.i = getelementptr i8, ptr %29, i32 -48
  %tobool91.not196203.i = icmp eq ptr %add.ptr86.i, null
  %tobool91.not196.i = or i1 %tobool82.not.i, %tobool91.not196203.i
  br i1 %tobool91.not196.i, label %do.end70.i.fail_dev_crit_edge, label %do.end70.i.for.body92.i_crit_edge

do.end70.i.for.body92.i_crit_edge:                ; preds = %do.end70.i
  br label %for.body92.i

do.end70.i.fail_dev_crit_edge:                    ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_dev

for.body92.i:                                     ; preds = %for.inc98.i.for.body92.i_crit_edge, %do.end70.i.for.body92.i_crit_edge
  %dev.1197.i = phi ptr [ %add.ptr111.i, %for.inc98.i.for.body92.i_crit_edge ], [ %add.ptr86.i, %do.end70.i.for.body92.i_crit_edge ]
  %hwaddr.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev.1197.i, i32 0, i32 3
  %30 = ptrtoint ptr %hwaddr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %hwaddr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %devaddr.sroa.10158.2184.i)
  %cmp94.i = icmp eq i64 %31, %devaddr.sroa.10158.2184.i
  br i1 %cmp94.i, label %for.body92.i.if.end24_crit_edge, label %for.inc98.i

for.body92.i.if.end24_crit_edge:                  ; preds = %for.body92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

for.inc98.i:                                      ; preds = %for.body92.i
  %bucket_hw.i = getelementptr inbounds %struct.mac802154_llsec_device, ptr %dev.1197.i, i32 0, i32 2
  %32 = ptrtoint ptr %bucket_hw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %bucket_hw.i, align 8
  %tobool107.not.i = icmp eq ptr %33, null
  %add.ptr111.i = getelementptr i8, ptr %33, i32 -48
  %tobool91.not207.i = icmp eq ptr %add.ptr111.i, null
  %tobool91.not.i = or i1 %tobool107.not.i, %tobool91.not207.i
  br i1 %tobool91.not.i, label %for.inc98.i.fail_dev_crit_edge, label %for.inc98.i.for.body92.i_crit_edge

for.inc98.i.for.body92.i_crit_edge:               ; preds = %for.inc98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body92.i

for.inc98.i.fail_dev_crit_edge:                   ; preds = %for.inc98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_dev

if.end24:                                         ; preds = %for.body92.i.if.end24_crit_edge, %land.lhs.true34.i.if.end24_crit_edge
  %retval.2.i = phi ptr [ %dev.1197.i, %for.body92.i.if.end24_crit_edge ], [ %dev.0193.i, %land.lhs.true34.i.if.end24_crit_edge ]
  %34 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load26 = load i16, ptr %hdr, align 8
  %bf.lshr27 = lshr i16 %bf.load26, 8
  %35 = trunc i16 %bf.lshr27 to i8
  %conv29 = and i8 %35, 7
  %call.i91 = call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i92 = icmp eq i32 %call.i91, 0
  br i1 %tobool.not.i92, label %land.lhs.true.i94, label %if.end24.do.end.i96_crit_edge

if.end24.do.end.i96_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i96

land.lhs.true.i94:                                ; preds = %if.end24
  %call1.i93 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i93)
  %tobool2.not.i = icmp eq i32 %call1.i93, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i94.do.end.i96_crit_edge, label %land.lhs.true3.i

land.lhs.true.i94.do.end.i96_crit_edge:           ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i96

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i94
  %.b1.i = load i1, ptr @llsec_lookup_seclevel.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true3.i.do.end.i96_crit_edge, label %if.then.i95

land.lhs.true3.i.do.end.i96_crit_edge:            ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i96

if.then.i95:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @llsec_lookup_seclevel.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 814, ptr noundef nonnull @.str.5) #10
  br label %do.end.i96

do.end.i96:                                       ; preds = %if.then.i95, %land.lhs.true3.i.do.end.i96_crit_edge, %land.lhs.true.i94.do.end.i96_crit_edge, %if.end24.do.end.i96_crit_edge
  %security_levels.i = getelementptr inbounds %struct.mac802154_llsec, ptr %sec, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %security_levels.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %level.03.i = load volatile ptr, ptr %security_levels.i, align 4
  %cmp.not4.i = icmp eq ptr %level.03.i, %security_levels.i
  br i1 %cmp.not4.i, label %do.end.i96.fail_dev_crit_edge, label %for.body.lr.ph.i

do.end.i96.fail_dev_crit_edge:                    ; preds = %do.end.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_dev

for.body.lr.ph.i:                                 ; preds = %do.end.i96
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv29)
  %cmp17.not.i = icmp eq i8 %conv29, 3
  br label %for.body.i97

for.body.i97:                                     ; preds = %for.inc.i98.for.body.i97_crit_edge, %for.body.lr.ph.i
  %level.05.i = phi ptr [ %level.03.i, %for.body.lr.ph.i ], [ %level.0.i, %for.inc.i98.for.body.i97_crit_edge ]
  %frame_type11.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %level.05.i, i32 0, i32 1
  %37 = ptrtoint ptr %frame_type11.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %frame_type11.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %conv29)
  %cmp13.i = icmp eq i8 %38, %conv29
  br i1 %cmp13.i, label %land.lhs.true15.i, label %for.body.i97.for.inc.i98_crit_edge

for.body.i97.for.inc.i98_crit_edge:               ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i98

land.lhs.true15.i:                                ; preds = %for.body.i97
  br i1 %cmp17.not.i, label %lor.lhs.false.i, label %land.lhs.true15.i.if.end34_crit_edge

land.lhs.true15.i.if.end34_crit_edge:             ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

lor.lhs.false.i:                                  ; preds = %land.lhs.true15.i
  %cmd_frame_id19.i = getelementptr inbounds %struct.ieee802154_llsec_seclevel, ptr %level.05.i, i32 0, i32 2
  %39 = ptrtoint ptr %cmd_frame_id19.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cmd_frame_id19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp22.i = icmp eq i8 %40, 0
  br i1 %cmp22.i, label %lor.lhs.false.i.if.end34_crit_edge, label %lor.lhs.false.i.for.inc.i98_crit_edge

lor.lhs.false.i.for.inc.i98_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i98

lor.lhs.false.i.if.end34_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

for.inc.i98:                                      ; preds = %lor.lhs.false.i.for.inc.i98_crit_edge, %for.body.i97.for.inc.i98_crit_edge
  %41 = ptrtoint ptr %level.05.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %level.0.i = load volatile ptr, ptr %level.05.i, align 4
  %cmp.not.i = icmp eq ptr %level.0.i, %security_levels.i
  br i1 %cmp.not.i, label %for.inc.i98.fail_dev_crit_edge, label %for.inc.i98.for.body.i97_crit_edge

for.inc.i98.for.body.i97_crit_edge:               ; preds = %for.inc.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i97

for.inc.i98.fail_dev_crit_edge:                   ; preds = %for.inc.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_dev

if.end34:                                         ; preds = %lor.lhs.false.i.if.end34_crit_edge, %land.lhs.true15.i.if.end34_crit_edge
  %seclevel.sroa.4.0.level.05.i.sroa_idx = getelementptr inbounds i8, ptr %level.05.i, i32 10
  %42 = ptrtoint ptr %seclevel.sroa.4.0.level.05.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %42)
  %seclevel.sroa.4.0.copyload109 = load i8, ptr %seclevel.sroa.4.0.level.05.i.sroa_idx, align 2
  %seclevel.sroa.5110.0.level.05.i.sroa_idx = getelementptr inbounds i8, ptr %level.05.i, i32 12
  %43 = ptrtoint ptr %seclevel.sroa.5110.0.level.05.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %43)
  %seclevel.sroa.5110.0.copyload111 = load i32, ptr %seclevel.sroa.5110.0.level.05.i.sroa_idx, align 4
  %sec35 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4
  %44 = ptrtoint ptr %sec35 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load36 = load i8, ptr %sec35, align 8
  %bf.clear37 = and i8 %bf.load36, 7
  %conv38 = zext i8 %bf.clear37 to i32
  %shl = shl nuw nsw i32 1, %conv38
  %and = and i32 %shl, %seclevel.sroa.5110.0.copyload111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear37)
  %cmp44 = icmp ne i8 %bf.clear37, 0
  %or.cond = select i1 %tobool39.not, i1 true, i1 %cmp44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %seclevel.sroa.4.0.copyload109)
  %tobool47.not = icmp eq i8 %seclevel.sroa.4.0.copyload109, 0
  %or.cond119 = select i1 %or.cond, i1 true, i1 %tobool47.not
  br i1 %or.cond119, label %if.end34.if.end53_crit_edge, label %land.lhs.true49

if.end34.if.end53_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true49:                                  ; preds = %if.end34
  %seclevel_exempt = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %retval.2.i, i32 0, i32 5
  %45 = ptrtoint ptr %seclevel_exempt to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %seclevel_exempt, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool51.not = icmp eq i8 %46, 0
  br i1 %tobool51.not, label %land.lhs.true49.fail_dev_crit_edge, label %land.lhs.true49.if.end53_crit_edge

land.lhs.true49.if.end53_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true49.fail_dev_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_dev

if.end53:                                         ; preds = %land.lhs.true49.if.end53_crit_edge, %if.end34.if.end53_crit_edge
  %frame_counter = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 2
  %47 = ptrtoint ptr %frame_counter to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %frame_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp55 = icmp eq i32 %48, -1
  br i1 %cmp55, label %if.end53.fail_dev_crit_edge, label %if.end58

if.end53.fail_dev_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_dev

if.end58:                                         ; preds = %if.end53
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %call59 = call fastcc i32 @llsec_update_devkey_info(ptr noundef nonnull %retval.2.i, ptr noundef nonnull %key_id, i32 noundef %49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.fail_dev_crit_edge

if.end58.fail_dev_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_dev

if.end62:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %hwaddr = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %retval.2.i, i32 0, i32 3
  %50 = ptrtoint ptr %hwaddr to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %hwaddr, align 8
  call fastcc void @rcu_read_unlock()
  %call64 = call fastcc i32 @llsec_do_decrypt(ptr noundef %skb, ptr noundef nonnull %hdr, ptr noundef nonnull %call16, i64 noundef %51)
  call fastcc void @llsec_key_put(ptr noundef nonnull %call16)
  br label %cleanup

fail_dev:                                         ; preds = %if.end58.fail_dev_crit_edge, %if.end53.fail_dev_crit_edge, %land.lhs.true49.fail_dev_crit_edge, %for.inc.i98.fail_dev_crit_edge, %do.end.i96.fail_dev_crit_edge, %for.inc98.i.fail_dev_crit_edge, %do.end70.i.fail_dev_crit_edge, %for.inc.i.fail_dev_crit_edge, %do.end.i.fail_dev_crit_edge, %land.lhs.true.i89.fail_dev_crit_edge
  %err.0 = phi i32 [ %call59, %if.end58.fail_dev_crit_edge ], [ -22, %land.lhs.true49.fail_dev_crit_edge ], [ -75, %if.end53.fail_dev_crit_edge ], [ -22, %land.lhs.true.i89.fail_dev_crit_edge ], [ -22, %do.end70.i.fail_dev_crit_edge ], [ -22, %do.end.i.fail_dev_crit_edge ], [ -22, %do.end.i96.fail_dev_crit_edge ], [ -22, %for.inc.i98.fail_dev_crit_edge ], [ -22, %for.inc98.i.fail_dev_crit_edge ], [ -22, %for.inc.i.fail_dev_crit_edge ]
  call fastcc void @llsec_key_put(ptr noundef nonnull %call16)
  br label %fail

fail:                                             ; preds = %fail_dev, %rcu_read_lock.exit.fail_crit_edge
  %err.1 = phi i32 [ %err.0, %fail_dev ], [ -126, %rcu_read_lock.exit.fail_crit_edge ]
  %call.i99 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i99, label %fail.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i102

fail.rcu_read_unlock.exit_crit_edge:              ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i102:                               ; preds = %fail
  %call1.i100 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i100)
  %tobool.not.i101 = icmp eq i32 %call1.i100, 0
  br i1 %tobool.not.i101, label %land.lhs.true.i102.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i104

land.lhs.true.i102.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i104:                              ; preds = %land.lhs.true.i102
  %.b4.i103 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i103, label %land.lhs.true2.i104.rcu_read_unlock.exit_crit_edge, label %if.then.i105

land.lhs.true2.i104.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i105:                                     ; preds = %land.lhs.true2.i104
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i105, %land.lhs.true2.i104.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i102.rcu_read_unlock.exit_crit_edge, %fail.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  %52 = call i32 @llvm.read_register.i32(metadata !33) #10
  %and.i.i.i.i.i106 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i106 to ptr
  %preempt_count.i.i.i.i107 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i107, align 4
  %sub.i.i.i = add i32 %55, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i107, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end62, %if.end10.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %rcu_read_unlock.exit ], [ %call64, %if.end62 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %key_id) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %hdr) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_hdr_peek(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @llsec_update_devkey_info(ptr noundef %dev, ptr nocapture noundef readonly %in_key, i32 noundef %frame_counter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %key_mode = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %key_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call fastcc ptr @llsec_devkey_find(ptr noundef %dev, ptr noundef %in_key)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.cleanup40_crit_edge, label %if.end4thread-pre-split

if.then.cleanup40_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

if.end4thread-pre-split:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %key_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %.pr = load i8, ptr %key_mode, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.end4thread-pre-split, %entry.if.end4_crit_edge
  %3 = phi i8 [ %.pr, %if.end4thread-pre-split ], [ %1, %entry.if.end4_crit_edge ]
  %devkey.0 = phi ptr [ %call, %if.end4thread-pre-split ], [ null, %entry.if.end4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp8 = icmp eq i8 %3, 2
  br i1 %cmp8, label %if.then10, label %if.end4.if.end16_crit_edge

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then10:                                        ; preds = %if.end4
  %call.i = tail call fastcc ptr @llsec_devkey_find(ptr noundef %dev, ptr noundef %in_key) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then10.if.end16_crit_edge

if.then10.if.end16_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then.i:                                        ; preds = %if.then10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 48) #14
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.then.i.cleanup40_crit_edge, label %if.end.i

if.then.i.cleanup40_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

if.end.i:                                         ; preds = %if.then.i
  %key_id.i = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %call7.i.i.i, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %key_id.i, ptr %in_key, i32 24)
  %lock.i = getelementptr inbounds %struct.mac802154_llsec_device, ptr %dev, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %call5.i = tail call fastcc ptr @llsec_devkey_find(ptr noundef %dev, ptr noundef %in_key) #10
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end.i
  %keys.i = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev, i32 0, i32 7
  %6 = ptrtoint ptr %keys.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %keys.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %keys.i, ptr noundef %7) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then7.i.if.end10.i_crit_edge

if.then7.i.if.end10.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.end.i.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %call7.i.i.i, align 8
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %keys.i, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !50
  %10 = ptrtoint ptr %keys.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i.i.i, ptr %keys.i, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i, ptr %prev37.i.i.i, align 4
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_sensitive(ptr noundef nonnull %call7.i.i.i) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.end.i.i.i, %if.then7.i.if.end10.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %if.end16

if.end16:                                         ; preds = %if.end10.i, %if.then10.if.end16_crit_edge, %if.end4.if.end16_crit_edge
  %lock = getelementptr inbounds %struct.mac802154_llsec_device, ptr %dev, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %tobool17.not = icmp eq ptr %devkey.0, null
  br i1 %tobool17.not, label %land.lhs.true, label %land.lhs.true23.critedge

land.lhs.true:                                    ; preds = %if.end16
  %frame_counter19 = getelementptr inbounds %struct.ieee802154_llsec_device, ptr %dev, i32 0, i32 4
  %12 = ptrtoint ptr %frame_counter19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_counter19, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %frame_counter)
  %cmp20 = icmp ugt i32 %13, %frame_counter
  br i1 %cmp20, label %land.lhs.true.cleanup40.sink.split_crit_edge, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true.cleanup40.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40.sink.split

land.lhs.true23.critedge:                         ; preds = %if.end16
  %frame_counter25 = getelementptr inbounds %struct.ieee802154_llsec_device_key, ptr %devkey.0, i32 0, i32 2
  %14 = ptrtoint ptr %frame_counter25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_counter25, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %frame_counter)
  %cmp26 = icmp ugt i32 %15, %frame_counter
  br i1 %cmp26, label %land.lhs.true23.critedge.cleanup40.sink.split_crit_edge, label %land.lhs.true23.critedge.if.end38_crit_edge

land.lhs.true23.critedge.if.end38_crit_edge:      ; preds = %land.lhs.true23.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true23.critedge.cleanup40.sink.split_crit_edge: ; preds = %land.lhs.true23.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40.sink.split

if.end38:                                         ; preds = %land.lhs.true23.critedge.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge
  %frame_counter19.sink = phi ptr [ %frame_counter25, %land.lhs.true23.critedge.if.end38_crit_edge ], [ %frame_counter19, %land.lhs.true.if.end38_crit_edge ]
  %add35 = add i32 %frame_counter, 1
  %16 = ptrtoint ptr %frame_counter19.sink to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add35, ptr %frame_counter19.sink, align 8
  br label %cleanup40.sink.split

cleanup40.sink.split:                             ; preds = %if.end38, %land.lhs.true23.critedge.cleanup40.sink.split_crit_edge, %land.lhs.true.cleanup40.sink.split_crit_edge
  %retval.1.ph = phi i32 [ 0, %if.end38 ], [ -22, %land.lhs.true23.critedge.cleanup40.sink.split_crit_edge ], [ -22, %land.lhs.true.cleanup40.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup40

cleanup40:                                        ; preds = %cleanup40.sink.split, %if.then.i.cleanup40_crit_edge, %if.then.cleanup40_crit_edge
  %retval.1 = phi i32 [ -2, %if.then.cleanup40_crit_edge ], [ -12, %if.then.i.cleanup40_crit_edge ], [ %retval.1.ph, %cleanup40.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @llsec_do_decrypt(ptr noundef %skb, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %key, i64 noundef %dev_addr) unnamed_addr #0 align 64 {
entry:
  %iv.i1 = alloca [16 x i8], align 1
  %sg.i = alloca %struct.scatterlist, align 4
  %iv.i = alloca [16 x i8], align 1
  %src.i = alloca %struct.scatterlist, align 4
  %__req_desc.i = alloca [512 x i8], align 128
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sec1 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4
  %0 = ptrtoint ptr %sec1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sec1, align 8
  %bf.clear = and i8 %bf.load, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.clear)
  %cmp = icmp eq i8 %bf.clear, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv.i) #10
  %1 = getelementptr inbounds [16 x i8], ptr %iv.i, i32 0, i32 1
  %2 = getelementptr inbounds [16 x i8], ptr %iv.i, i32 0, i32 9
  %3 = getelementptr inbounds [16 x i8], ptr %iv.i, i32 0, i32 13
  %4 = getelementptr inbounds [16 x i8], ptr %iv.i, i32 0, i32 14
  %5 = getelementptr inbounds [16 x i8], ptr %iv.i, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src.i) #10
  %6 = call ptr @memset(ptr %src.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__req_desc.i) #10
  %7 = call ptr @memset(ptr %__req_desc.i, i32 255, i32 512)
  %8 = tail call i64 @llvm.bswap.i64(i64 %dev_addr) #10
  %frame_counter1.i.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %frame_counter1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frame_counter1.i.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  %12 = ptrtoint ptr %iv.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %iv.i, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %8, ptr %1, align 1
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %11, ptr %2, align 1
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %3, align 1
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %4, align 1
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %5, align 1
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %20 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %21 to i32
  %add.ptr.i1.i = getelementptr i8, ptr %19, i32 %conv.i.i
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %22 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mac_len.i, align 4
  %conv.i = zext i16 %23 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i1.i, i32 %conv.i
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @sg_init_one(ptr noundef nonnull %src.i, ptr noundef %add.ptr.i, i32 noundef %sub.ptr.sub.i) #10
  %tfm0.i = getelementptr inbounds %struct.mac802154_llsec_key, ptr %key, i32 0, i32 2
  %26 = ptrtoint ptr %tfm0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tfm0.i, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %27, i32 0, i32 2
  %tfm1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 32
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 4, i32 4
  %31 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %flags4.i.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 2
  %32 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %src.i, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 3
  %33 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %src.i, ptr %dst2.i.i, align 4
  %34 = ptrtoint ptr %__req_desc.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.ptr.sub.i, ptr %__req_desc.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 1
  %35 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %iv.i, ptr %iv4.i.i, align 4
  %call5.i = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %__req_desc.i) #10
  %36 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tfm1.i.i.i, align 32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %37, i32 -128
  %38 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %add.i.i = add i32 %39, 128
  %40 = call ptr @memset(ptr %__req_desc.i, i32 0, i32 %add.i.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__req_desc.i) #10, !srcloc !54
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__req_desc.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv.i) #10
  br label %return

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv.i1) #10
  %41 = getelementptr inbounds [16 x i8], ptr %iv.i1, i32 0, i32 1
  %42 = getelementptr inbounds [16 x i8], ptr %iv.i1, i32 0, i32 9
  %43 = getelementptr inbounds [16 x i8], ptr %iv.i1, i32 0, i32 13
  %44 = getelementptr inbounds [16 x i8], ptr %iv.i1, i32 0, i32 14
  %45 = getelementptr inbounds [16 x i8], ptr %iv.i1, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #10
  %46 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  %conv.i.i4 = zext i8 %bf.clear to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.llsec_do_decrypt, i32 0, i32 %conv.i.i4
  %47 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %47)
  %switch.load = load i32, ptr %switch.gep, align 4
  %48 = tail call i64 @llvm.bswap.i64(i64 %dev_addr) #10
  %frame_counter1.i.i5 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 2
  %49 = ptrtoint ptr %frame_counter1.i.i5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %frame_counter1.i.i5, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #10
  %52 = ptrtoint ptr %iv.i1 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %iv.i1, align 1
  %53 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %48, ptr %41, align 1
  %54 = ptrtoint ptr %42 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %51, ptr %42, align 1
  %55 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %bf.clear, ptr %43, align 1
  %56 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %44, align 1
  %57 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %45, align 1
  %arrayidx.i.i = getelementptr %struct.mac802154_llsec_key, ptr %key, i32 0, i32 1, i32 0
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %switch.load)
  %cmp1.i.i = icmp eq i32 %61, %switch.load
  br i1 %cmp1.i.i, label %if.else.if.end8.i.i.i_crit_edge, label %for.cond.i.i

if.else.if.end8.i.i.i_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

for.cond.i.i:                                     ; preds = %if.else
  %arrayidx.1.i.i = getelementptr %struct.mac802154_llsec_key, ptr %key, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.1.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %switch.load)
  %cmp1.1.i.i = icmp eq i32 %65, %switch.load
  br i1 %cmp1.1.i.i, label %for.cond.i.i.if.end8.i.i.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.if.end8.i.i.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %arrayidx.2.i.i = getelementptr %struct.mac802154_llsec_key, ptr %key, i32 0, i32 1, i32 2
  %66 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.2.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %switch.load)
  %cmp1.2.i.i = icmp eq i32 %69, %switch.load
  br i1 %cmp1.2.i.i, label %for.cond.1.i.i.if.end8.i.i.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.if.end8.i.i.i_crit_edge:           ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/mac802154/llsec.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 644, 0\0A.popsection", ""() #10, !srcloc !55
  unreachable

if.end8.i.i.i:                                    ; preds = %for.cond.1.i.i.if.end8.i.i.i_crit_edge, %for.cond.i.i.if.end8.i.i.i_crit_edge, %if.else.if.end8.i.i.i_crit_edge
  %.lcssa.i.i = phi ptr [ %59, %if.else.if.end8.i.i.i_crit_edge ], [ %63, %for.cond.i.i.if.end8.i.i.i_crit_edge ], [ %67, %for.cond.1.i.i.if.end8.i.i.i_crit_edge ]
  %reqsize.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %.lcssa.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %reqsize.i.i.i, align 4
  %add.i.i6 = add i32 %71, 128
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i6, i32 noundef 2592) #15
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.llsec_do_decrypt_auth.exit_crit_edge, label %if.end.i, !prof !49

if.end8.i.i.i.llsec_do_decrypt_auth.exit_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llsec_do_decrypt_auth.exit

if.end.i:                                         ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i.i.i7 = getelementptr inbounds %struct.crypto_aead, ptr %.lcssa.i.i, i32 0, i32 3
  %tfm1.i.i.i8 = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %tfm1.i.i.i8 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %base.i.i.i.i7, ptr %tfm1.i.i.i8, align 16
  %mac_len.i9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %73 = ptrtoint ptr %mac_len.i9 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %mac_len.i9, align 4
  %conv.i10 = zext i16 %74 to i32
  %head.i.i11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %75 = ptrtoint ptr %head.i.i11 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %head.i.i11, align 8
  %mac_header.i.i12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %77 = ptrtoint ptr %mac_header.i.i12 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %mac_header.i.i12, align 2
  %conv.i3.i = zext i16 %78 to i32
  %add.ptr.i4.i = getelementptr i8, ptr %76, i32 %conv.i3.i
  %add.ptr.i13 = getelementptr i8, ptr %add.ptr.i4.i, i32 %conv.i10
  %tail.i.i14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %79 = ptrtoint ptr %tail.i.i14 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tail.i.i14, align 8
  %sub.ptr.lhs.cast.i15 = ptrtoint ptr %80 to i32
  %sub.ptr.rhs.cast.i16 = ptrtoint ptr %add.ptr.i13 to i32
  %sub.ptr.sub.i17 = sub i32 %sub.ptr.lhs.cast.i15, %sub.ptr.rhs.cast.i16
  %add.i = add i32 %sub.ptr.sub.i17, %conv.i10
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef %add.ptr.i4.i, i32 noundef %add.i) #10
  %81 = ptrtoint ptr %sec1 to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load.i = load i8, ptr %sec1, align 8
  %82 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool12.not.i = icmp eq i8 %82, 0
  %sub.i = sub i32 %sub.ptr.sub.i17, %switch.load
  %datalen.0.i = select i1 %tobool12.not.i, i32 %switch.load, i32 %sub.ptr.sub.i17
  %add14.i = select i1 %tobool12.not.i, i32 %sub.i, i32 0
  %assoclen.0.i = add i32 %add14.i, %conv.i10
  %complete.i.i18 = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %complete.i.i18 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %complete.i.i18, align 8
  %data2.i.i19 = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 2
  %84 = ptrtoint ptr %data2.i.i19 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %data2.i.i19, align 4
  %flags4.i.i20 = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 4
  %85 = ptrtoint ptr %flags4.i.i20 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %flags4.i.i20, align 4
  %src1.i.i21 = getelementptr inbounds %struct.aead_request, ptr %call9.i.i.i, i32 0, i32 4
  %86 = ptrtoint ptr %src1.i.i21 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %sg.i, ptr %src1.i.i21, align 4
  %dst2.i.i22 = getelementptr inbounds %struct.aead_request, ptr %call9.i.i.i, i32 0, i32 5
  %87 = ptrtoint ptr %dst2.i.i22 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %sg.i, ptr %dst2.i.i22, align 8
  %cryptlen3.i.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i.i, i32 0, i32 2
  %88 = ptrtoint ptr %cryptlen3.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %datalen.0.i, ptr %cryptlen3.i.i, align 4
  %iv4.i.i23 = getelementptr inbounds %struct.aead_request, ptr %call9.i.i.i, i32 0, i32 3
  %89 = ptrtoint ptr %iv4.i.i23 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %iv.i1, ptr %iv4.i.i23, align 32
  %assoclen1.i.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %assoclen1.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %assoclen.0.i, ptr %assoclen1.i.i, align 8
  %call17.i = call i32 @crypto_aead_decrypt(ptr noundef nonnull %call9.i.i.i) #10
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i.i) #10
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %91 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len.i, align 4
  %sub18.i = sub i32 %92, %switch.load
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub18.i) #10
  br label %llsec_do_decrypt_auth.exit

llsec_do_decrypt_auth.exit:                       ; preds = %if.end.i, %if.end8.i.i.i.llsec_do_decrypt_auth.exit_crit_edge
  %retval.0.i = phi i32 [ %call17.i, %if.end.i ], [ -12, %if.end8.i.i.i.llsec_do_decrypt_auth.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv.i1) #10
  br label %return

return:                                           ; preds = %llsec_do_decrypt_auth.exit, %if.then
  %retval.0 = phi i32 [ %call5.i, %if.then ], [ %retval.0.i, %llsec_do_decrypt_auth.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_sync_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !16, !18, !20, !21, !22, !24, !26, !27, !29, !31}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @mac802154_llsec_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/mac802154/llsec.c", i32 38, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mac802154_llsec_dev_add.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../net/mac802154/llsec.c", i32 369, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/mac802154/llsec.c", i32 130, i32 35}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/mac802154/llsec.c", i32 141, i32 41}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/mac802154/llsec.c", i32 311, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../net/mac802154/llsec.c", i32 326, i32 2}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../net/mac802154/llsec.c", i32 410, i32 2}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/mac802154/llsec.c", i32 562, i32 2}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/mac802154/llsec.c", i32 788, i32 3}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/mac802154/llsec.c", i32 797, i32 3}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/mac802154/llsec.c", i32 814, i32 2}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2148604226}
!44 = !{i64 2148518666, i64 2148518698, i64 2148518727, i64 2148518761, i64 2148518792, i64 2148518815}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2149617061}
!47 = !{i8 0, i8 2}
!48 = !{i64 2148516201, i64 2148516233, i64 2148516262, i64 2148516296, i64 2148516327, i64 2148516350}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 2149427002}
!51 = !{i64 2149503221}
!52 = !{i64 2149401610}
!53 = !{i64 2149401876}
!54 = !{i64 2149094952}
!55 = !{i64 2156603732, i64 2156604218, i64 2156603769, i64 2156603825, i64 2156603859, i64 2156603883, i64 2156603924, i64 2156603945, i64 2156603973, i64 2156604007}
