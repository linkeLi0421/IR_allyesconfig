; ModuleID = '/llk/IR_all_yes/net/tls/tls_device_fallback.c_pt.bc'
source_filename = "../net/tls/tls_device_fallback.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tls_validate_xmit_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_tls_validate_xmit_skb\09\09\09\09"
module asm "\09.long\09__crc_tls_validate_xmit_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tls_validate_xmit_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22tls_validate_xmit_skb\22\09\09\09\09\09"
module asm "__kstrtabns_tls_validate_xmit_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tls_encrypt_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_tls_encrypt_skb\09\09\09\09"
module asm "\09.long\09__crc_tls_encrypt_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tls_encrypt_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22tls_encrypt_skb\22\09\09\09\09\09"
module asm "__kstrtabns_tls_encrypt_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.94 }
%struct.atomic_t = type { i32 }
%union.anon.94 = type { i32 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.197, %struct.anon.198, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.149, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.150, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.151, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.137, %union.anon.139, %union.anon.140, i16, i8, i8, i32, %union.anon.142, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.145, [0 x i32], %union.anon.146, i16, i16, %union.anon.147, %struct.refcount_struct, [0 x i32], %union.anon.148 }
%union.anon.137 = type { i64 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { i32 }
%union.anon.142 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { %struct.hlist_node }
%union.anon.147 = type { i32 }
%union.anon.148 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.149 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.150 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.151 = type { ptr }
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.23 }
%union.anon.23 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.197 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.198 = type { i32, i32, i32, i32 }
%struct.tls_context = type { %struct.tls_prot_info, i8, ptr, ptr, ptr, ptr, ptr, %struct.cipher_context, %struct.cipher_context, ptr, i16, i8, i8, %struct.mutex, i32, ptr, ptr, ptr, %union.tls_crypto_context, %union.tls_crypto_context, %struct.list_head, %struct.refcount_struct, %struct.callback_head }
%struct.tls_prot_info = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.cipher_context = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.tls_crypto_context = type { %union.anon.163 }
%union.anon.163 = type { %struct.tls12_crypto_info_aes_gcm_256 }
%struct.tls12_crypto_info_aes_gcm_256 = type { %struct.tls_crypto_info, [8 x i8], [32 x i8], [4 x i8], [8 x i8] }
%struct.tls_crypto_info = type { i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.168, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.168 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.169, %union.anon.170, [48 x i8], %union.anon.171, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.173, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.169 = type { ptr }
%union.anon.170 = type { i64 }
%union.anon.171 = type { %struct.anon.172 }
%struct.anon.172 = type { i32, ptr }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.175, i32, i32, i32, i16, i16, %union.anon.177, i32, %union.anon.178, %union.anon.179, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.175 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i32 }
%union.anon.179 = type { i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.page = type { i32, %union.anon.31, %union.anon.92, %struct.atomic_t, i32 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.92 = type { %struct.atomic_t }
%struct.anon.176 = type { i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tls12_crypto_info_aes_gcm_128 = type { %struct.tls_crypto_info, [8 x i8], [16 x i8], [4 x i8], [8 x i8] }
%struct.tls_offload_context_tx = type { ptr, %struct.spinlock, %struct.list_head, ptr, ptr, i64, i64, [17 x %struct.scatterlist], ptr, [0 x i8] }
%struct.tls_record_info = type { %struct.list_head, i32, i32, i32, [17 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }

@__kstrtab_tls_validate_xmit_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_tls_validate_xmit_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_tls_validate_xmit_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tls_validate_xmit_skb to i32), ptr @__kstrtab_tls_validate_xmit_skb, ptr @__kstrtabns_tls_validate_xmit_skb }, section "___ksymtab_gpl+tls_validate_xmit_skb", align 4
@__kstrtab_tls_encrypt_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_tls_encrypt_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_tls_encrypt_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tls_encrypt_skb to i32), ptr @__kstrtab_tls_encrypt_skb, ptr @__kstrtabns_tls_encrypt_skb }, section "___ksymtab_gpl+tls_encrypt_skb", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gcm(aes)\00", [23 x i8] zeroinitializer }, align 32
@tls_sw_fallback_init._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tls_sw_fallback_init = private unnamed_addr constant [21 x i8] c"tls_sw_fallback_init\00", align 1
@tls_sw_fallback_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.tls_sw_fallback_init, ptr @.str.3, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013crypto_alloc_aead failed rc=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net/tls/tls_device_fallback.c\00", [34 x i8] zeroinitializer }, align 32
@tls_sw_fallback_init._entry_ptr = internal global ptr @tls_sw_fallback_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@complete_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 455, i32 24 }
@___asan_gen_.9 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private constant [33 x i8] c"../net/tls/tls_device_fallback.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 458, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 1160, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 717, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_tls_encrypt_skb, ptr @__ksymtab_tls_validate_xmit_skb, ptr @tls_sw_fallback_init._entry, ptr @tls_sw_fallback_init._entry_ptr, ptr @.str, ptr @tls_sw_fallback_init._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_sw_fallback_init._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tls_sw_fallback_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tls_validate_xmit_skb(ptr nocapture noundef readonly %sk, ptr noundef readonly %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %netdev = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %cmp = icmp eq ptr %3, %dev
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.if.end_crit_edge, label %netif_is_bond_master.exit

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

netif_is_bond_master.exit:                        ; preds = %lor.lhs.false
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i, align 16
  %and1.i = and i64 %7, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.i.not = icmp eq i64 %and1.i, 0
  br i1 %tobool2.i.not, label %netif_is_bond_master.exit.if.end_crit_edge, label %netif_is_bond_master.exit.return_crit_edge

netif_is_bond_master.exit.return_crit_edge:       ; preds = %netif_is_bond_master.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

netif_is_bond_master.exit.if.end_crit_edge:       ; preds = %netif_is_bond_master.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %netif_is_bond_master.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %call2 = tail call fastcc ptr @tls_sw_fallback(ptr noundef %sk, ptr noundef %skb)
  br label %return

return:                                           ; preds = %if.end, %netif_is_bond_master.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ %skb, %netif_is_bond_master.exit.return_crit_edge ], [ %skb, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tls_sw_fallback(ptr nocapture noundef readonly %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %rcd_sn.addr.i.i.i = alloca i64, align 8
  %buf.i.i.i = alloca [13 x i8], align 1
  %sg_in.i.i.i = alloca [3 x %struct.scatterlist], align 4
  %sg_out.i.i.i = alloca [3 x %struct.scatterlist], align 4
  %out.i.i = alloca %struct.scatter_walk, align 4
  %in.i.i = alloca %struct.scatter_walk, align 4
  %sg_out = alloca [3 x %struct.scatterlist], align 4
  %resync_sgs = alloca i32, align 4
  %sync_size = alloca i32, align 4
  %rcd_sn = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %7 = lshr i16 %bf.load.i.i, 10
  %8 = and i16 %7, 60
  %mul.i.i = zext i16 %8 to i32
  %add = add i32 %sub.ptr.sub.i, %mul.i.i
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %9 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_tx.i = getelementptr inbounds %struct.tls_context, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv_ctx_tx.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %sub = sub i32 %14, %add
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %sg_out) #8
  %15 = call ptr @memset(ptr %sg_out, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resync_sgs) #8
  %16 = ptrtoint ptr %resync_sgs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %resync_sgs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sync_size) #8
  %17 = ptrtoint ptr %sync_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sync_size, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rcd_sn) #8
  %18 = ptrtoint ptr %rcd_sn to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -1, ptr %rcd_sn, align 8, !annotation !29
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %add)
  %tobool.not = icmp eq i32 %14, %add
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 2592, i32 noundef 700) #11
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.if.else_crit_edge, label %if.end7

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end7:                                          ; preds = %if.end
  tail call void @sg_init_table(ptr noundef nonnull %call7.i.i, i32 noundef 35) #8
  call void @sg_init_table(ptr noundef nonnull %sg_out, i32 noundef 3) #8
  %call8 = call fastcc i32 @fill_sg_in(ptr noundef nonnull %call7.i.i, ptr noundef %skb, ptr noundef %12, ptr noundef nonnull %rcd_sn, ptr noundef nonnull %sync_size, ptr noundef nonnull %resync_sgs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %20 = ptrtoint ptr %sync_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sync_size, align 4
  br i1 %tobool9.not, label %if.end16, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp = icmp sgt i32 %21, -1
  %sub11 = sub i32 0, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub11)
  %cmp12.not = icmp sgt i32 %sub, %sub11
  %or.cond = select i1 %cmp, i1 true, i1 %cmp12.not
  br i1 %or.cond, label %if.then10.put_sg_crit_edge, label %if.then13

if.then10.put_sg_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_sg

if.then13:                                        ; preds = %if.then10
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #8
  %22 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #8, !srcloc !30
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then13.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !31

if.then13.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then13
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %23 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.put_sg_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !32

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.put_sg_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_sg

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then13.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then13.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #8
  br label %put_sg

if.end16:                                         ; preds = %if.end7
  %24 = ptrtoint ptr %rcd_sn to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rcd_sn, align 8
  %26 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i, align 8
  %28 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i.i54 = zext i16 %29 to i32
  %add.ptr.i.i.i55 = getelementptr i8, ptr %27, i32 %conv.i.i.i54
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i55 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i55, i32 0, i32 4
  %32 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i.i.i = load i16, ptr %doff.i.i.i, align 4
  %33 = lshr i16 %bf.load.i.i.i, 10
  %34 = and i16 %33, 60
  %mul.i.i.i = zext i16 %34 to i32
  %add.i = add i32 %sub.ptr.sub.i.i, %mul.i.i.i
  %35 = ptrtoint ptr %priv_ctx_tx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv_ctx_tx.i, align 4
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %sub.i = sub i32 %38, %add.i
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 8
  %reqsize.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reqsize.i.i.i, align 4
  %add.i.i = add i32 %42, 128
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 2848) #12
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end16.put_sg_crit_edge, label %if.end.i

if.end16.put_sg_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_sg

if.end.i:                                         ; preds = %if.end16
  %base.i.i.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %40, i32 0, i32 3
  %tfm1.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %tfm1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %base.i.i.i.i.i, ptr %tfm1.i.i.i.i, align 16
  %assoclen1.i.i.i.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %assoclen1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 13, ptr %assoclen1.i.i.i.i, align 8
  %add5.i = add i32 %21, 41
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add5.i, i32 noundef 2592) #12
  %tobool7.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool7.not.i, label %if.end.i.free_req.i_crit_edge, label %if.end9.i

if.end.i.free_req.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_req.i

if.end9.i:                                        ; preds = %if.end.i
  %salt.i = getelementptr inbounds %struct.tls_context, ptr %10, i32 0, i32 18, i32 0, i32 0, i32 2, i32 16
  %45 = ptrtoint ptr %salt.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %salt.i, align 4
  %47 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %call9.i.i, align 128
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i, align 4
  %50 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i68.i = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast.i69.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i70.i = sub i32 %sub.ptr.lhs.cast.i68.i, %sub.ptr.rhs.cast.i69.i
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len, align 4
  %add14.i = add i32 %sub.ptr.sub.i70.i, %53
  %call.i.i = call ptr @__alloc_skb(i32 noundef %add14.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool16.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool16.not.i, label %if.end9.i.free_buf.i_crit_edge, label %if.end18.i

if.end9.i.free_buf.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_buf.i

if.end18.i:                                       ; preds = %if.end9.i
  %add.ptr10.i = getelementptr i8, ptr %call9.i.i, i32 12
  %add.ptr11.i = getelementptr i8, ptr %call9.i.i, i32 25
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  %56 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i73.i = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i74.i = ptrtoint ptr %57 to i32
  %sub.ptr.sub.i75.i = sub i32 %sub.ptr.lhs.cast.i73.i, %sub.ptr.rhs.cast.i74.i
  %data.i76.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %58 = ptrtoint ptr %data.i76.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i76.i, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %59, i32 %sub.ptr.sub.i75.i
  store ptr %add.ptr.i.i57, ptr %data.i76.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %60 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %61, i32 %sub.ptr.sub.i75.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %62 = ptrtoint ptr %add.ptr11.i to i32
  %cmp.i.i77.i = icmp ugt ptr %add.ptr11.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i77.i, label %land.lhs.true.i.i.i, label %if.end18.i.do.body5.i.i.i_crit_edge, !prof !32

if.end18.i.do.body5.i.i.i_crit_edge:              ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end18.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %63 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i.i = icmp ugt ptr %63, %add.ptr11.i
  br i1 %cmp1.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.do.body5.i.i.i_crit_edge, !prof !32

land.lhs.true.i.i.i.do.body5.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %sub.i.i.i = add i32 %62, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %64 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i.i = add i32 %64, %shr.i.i.i
  %call.i.i.i = call i32 @pfn_valid(i32 noundef %add.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.i.i.i, label %land.rhs.i.i.i.do.body5.i.i.i_crit_edge, label %do.end8.i.i.i, !prof !31

land.rhs.i.i.i.do.body5.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i.i.i

do.body5.i.i.i:                                   ; preds = %land.rhs.i.i.i.do.body5.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.body5.i.i.i_crit_edge, %if.end18.i.do.body5.i.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #8, !srcloc !33
  unreachable

do.end8.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %65 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i78.i = getelementptr %struct.page, ptr %65, i32 %shr.i.i.i
  %66 = ptrtoint ptr %sg_out to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sg_out, align 4
  %68 = ptrtoint ptr %add.ptr.i.i78.i to i32
  %and2.i.i.i.i.i = and i32 %68, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i)
  %tobool.not.i.i.i.i79.i = icmp eq i32 %and2.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i79.i, label %do.body11.i.i.i.i.i, label %do.body5.i.i.i.i.i, !prof !32

do.body5.i.i.i.i.i:                               ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !34
  unreachable

do.body11.i.i.i.i.i:                              ; preds = %do.end8.i.i.i
  %and.i.i.i.i.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %sg_set_buf.exit.i.i, label %do.body19.i.i.i.i.i, !prof !32

do.body19.i.i.i.i.i:                              ; preds = %do.body11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !35
  unreachable

sg_set_buf.exit.i.i:                              ; preds = %do.body11.i.i.i.i.i
  %and.i.i.i = and i32 %62, 3993
  %and.i.i.i.i.i = and i32 %67, 3
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, %68
  %69 = ptrtoint ptr %sg_out to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or.i.i.i.i.i, ptr %sg_out, align 4
  %offset1.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out, i32 0, i32 1
  %70 = ptrtoint ptr %offset1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and.i.i.i, ptr %offset1.i.i.i.i, align 4
  %length.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out, i32 0, i32 2
  %71 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %21, ptr %length.i.i.i.i, align 4
  %arrayidx1.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out, i32 1
  %72 = ptrtoint ptr %data.i76.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i76.i, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %73, i32 %add.i
  %74 = ptrtoint ptr %add.ptr.i81.i to i32
  %cmp.i1.i.i = icmp ugt ptr %add.ptr.i81.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i1.i.i, label %land.lhs.true.i3.i.i, label %sg_set_buf.exit.i.i.do.body5.i10.i.i_crit_edge, !prof !32

sg_set_buf.exit.i.i.do.body5.i10.i.i_crit_edge:   ; preds = %sg_set_buf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i10.i.i

land.lhs.true.i3.i.i:                             ; preds = %sg_set_buf.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %75 = load ptr, ptr @high_memory, align 4
  %cmp1.i2.i.i = icmp ugt ptr %75, %add.ptr.i81.i
  br i1 %cmp1.i2.i.i, label %land.rhs.i9.i.i, label %land.lhs.true.i3.i.i.do.body5.i10.i.i_crit_edge, !prof !32

land.lhs.true.i3.i.i.do.body5.i10.i.i_crit_edge:  ; preds = %land.lhs.true.i3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i10.i.i

land.rhs.i9.i.i:                                  ; preds = %land.lhs.true.i3.i.i
  %sub.i4.i.i = add i32 %74, 1073741824
  %shr.i5.i.i = lshr i32 %sub.i4.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %76 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i6.i.i = add i32 %76, %shr.i5.i.i
  %call.i7.i.i = call i32 @pfn_valid(i32 noundef %add.i6.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i)
  %tobool.i8.i.i = icmp eq i32 %call.i7.i.i, 0
  br i1 %tobool.i8.i.i, label %land.rhs.i9.i.i.do.body5.i10.i.i_crit_edge, label %do.end8.i14.i.i, !prof !31

land.rhs.i9.i.i.do.body5.i10.i.i_crit_edge:       ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i10.i.i

do.body5.i10.i.i:                                 ; preds = %land.rhs.i9.i.i.do.body5.i10.i.i_crit_edge, %land.lhs.true.i3.i.i.do.body5.i10.i.i_crit_edge, %sg_set_buf.exit.i.i.do.body5.i10.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #8, !srcloc !33
  unreachable

do.end8.i14.i.i:                                  ; preds = %land.rhs.i9.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %77 = load ptr, ptr @mem_map, align 4
  %add.ptr.i11.i.i = getelementptr %struct.page, ptr %77, i32 %shr.i5.i.i
  %78 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx1.i.i, align 4
  %80 = ptrtoint ptr %add.ptr.i11.i.i to i32
  %and2.i.i.i12.i.i = and i32 %80, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i12.i.i)
  %tobool.not.i.i.i13.i.i = icmp eq i32 %and2.i.i.i12.i.i, 0
  br i1 %tobool.not.i.i.i13.i.i, label %do.body11.i.i.i18.i.i, label %do.body5.i.i.i15.i.i, !prof !32

do.body5.i.i.i15.i.i:                             ; preds = %do.end8.i14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !34
  unreachable

do.body11.i.i.i18.i.i:                            ; preds = %do.end8.i14.i.i
  %and.i.i.i.i16.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i16.i.i)
  %tobool.i.not.i.i.i17.i.i = icmp eq i32 %and.i.i.i.i16.i.i, 0
  br i1 %tobool.i.not.i.i.i17.i.i, label %sg_set_buf.exit25.i.i, label %do.body19.i.i.i19.i.i, !prof !32

do.body19.i.i.i19.i.i:                            ; preds = %do.body11.i.i.i18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !35
  unreachable

sg_set_buf.exit25.i.i:                            ; preds = %do.body11.i.i.i18.i.i
  %and.i20.i.i = and i32 %74, 4095
  %and.i.i.i21.i.i = and i32 %79, 3
  %or.i.i.i22.i.i = or i32 %and.i.i.i21.i.i, %80
  %81 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or.i.i.i22.i.i, ptr %arrayidx1.i.i, align 4
  %offset1.i.i23.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out, i32 1, i32 1
  %82 = ptrtoint ptr %offset1.i.i23.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %and.i20.i.i, ptr %offset1.i.i23.i.i, align 4
  %length.i.i24.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out, i32 1, i32 2
  %83 = ptrtoint ptr %length.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %sub.i, ptr %length.i.i24.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr11.i, i32 %21
  %arrayidx3.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out, i32 2
  %84 = ptrtoint ptr %add.ptr2.i.i to i32
  %cmp.i26.i.i = icmp ugt ptr %add.ptr2.i.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i26.i.i, label %land.lhs.true.i28.i.i, label %sg_set_buf.exit25.i.i.do.body5.i35.i.i_crit_edge, !prof !32

sg_set_buf.exit25.i.i.do.body5.i35.i.i_crit_edge: ; preds = %sg_set_buf.exit25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i35.i.i

land.lhs.true.i28.i.i:                            ; preds = %sg_set_buf.exit25.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %85 = load ptr, ptr @high_memory, align 4
  %cmp1.i27.i.i = icmp ugt ptr %85, %add.ptr2.i.i
  br i1 %cmp1.i27.i.i, label %land.rhs.i34.i.i, label %land.lhs.true.i28.i.i.do.body5.i35.i.i_crit_edge, !prof !32

land.lhs.true.i28.i.i.do.body5.i35.i.i_crit_edge: ; preds = %land.lhs.true.i28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i35.i.i

land.rhs.i34.i.i:                                 ; preds = %land.lhs.true.i28.i.i
  %sub.i29.i.i = add i32 %84, 1073741824
  %shr.i30.i.i = lshr i32 %sub.i29.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %86 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i31.i.i = add i32 %86, %shr.i30.i.i
  %call.i32.i.i = call i32 @pfn_valid(i32 noundef %add.i31.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i.i)
  %tobool.i33.i.i = icmp eq i32 %call.i32.i.i, 0
  br i1 %tobool.i33.i.i, label %land.rhs.i34.i.i.do.body5.i35.i.i_crit_edge, label %do.end8.i39.i.i, !prof !31

land.rhs.i34.i.i.do.body5.i35.i.i_crit_edge:      ; preds = %land.rhs.i34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i35.i.i

do.body5.i35.i.i:                                 ; preds = %land.rhs.i34.i.i.do.body5.i35.i.i_crit_edge, %land.lhs.true.i28.i.i.do.body5.i35.i.i_crit_edge, %sg_set_buf.exit25.i.i.do.body5.i35.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #8, !srcloc !33
  unreachable

do.end8.i39.i.i:                                  ; preds = %land.rhs.i34.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %87 = load ptr, ptr @mem_map, align 4
  %add.ptr.i36.i.i = getelementptr %struct.page, ptr %87, i32 %shr.i30.i.i
  %88 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx3.i.i, align 4
  %90 = ptrtoint ptr %add.ptr.i36.i.i to i32
  %and2.i.i.i37.i.i = and i32 %90, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i37.i.i)
  %tobool.not.i.i.i38.i.i = icmp eq i32 %and2.i.i.i37.i.i, 0
  br i1 %tobool.not.i.i.i38.i.i, label %do.body11.i.i.i43.i.i, label %do.body5.i.i.i40.i.i, !prof !32

do.body5.i.i.i40.i.i:                             ; preds = %do.end8.i39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !34
  unreachable

do.body11.i.i.i43.i.i:                            ; preds = %do.end8.i39.i.i
  %and.i.i.i.i41.i.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i41.i.i)
  %tobool.i.not.i.i.i42.i.i = icmp eq i32 %and.i.i.i.i41.i.i, 0
  br i1 %tobool.i.not.i.i.i42.i.i, label %fill_sg_out.exit.i, label %do.body19.i.i.i44.i.i, !prof !32

do.body19.i.i.i44.i.i:                            ; preds = %do.body11.i.i.i43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !35
  unreachable

fill_sg_out.exit.i:                               ; preds = %do.body11.i.i.i43.i.i
  %and.i45.i.i = and i32 %84, 4095
  %and.i.i.i46.i.i = and i32 %89, 3
  %or.i.i.i47.i.i = or i32 %and.i.i.i46.i.i, %90
  %91 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or.i.i.i47.i.i, ptr %arrayidx3.i.i, align 4
  %offset1.i.i48.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out, i32 2, i32 1
  %92 = ptrtoint ptr %offset1.i.i48.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %and.i45.i.i, ptr %offset1.i.i48.i.i, align 4
  %length.i.i49.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out, i32 2, i32 2
  %93 = ptrtoint ptr %length.i.i49.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 16, ptr %length.i.i49.i.i, align 4
  %add21.i = add i32 %sub.i, %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out.i.i) #8
  %94 = getelementptr inbounds %struct.scatter_walk, ptr %out.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.i.i) #8
  %95 = getelementptr inbounds %struct.scatter_walk, ptr %in.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call7.i.i, ptr %in.i.i, align 4
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call7.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %offset.i.i.i, align 4
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %95, align 4
  %100 = ptrtoint ptr %out.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %sg_out, ptr %out.i.i, align 4
  %101 = ptrtoint ptr %offset1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %offset1.i.i.i.i, align 4
  %103 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %94, align 4
  %104 = getelementptr inbounds [13 x i8], ptr %buf.i.i.i, i32 0, i32 3
  %105 = getelementptr inbounds [13 x i8], ptr %buf.i.i.i, i32 0, i32 4
  %106 = getelementptr inbounds [13 x i8], ptr %buf.i.i.i, i32 0, i32 5
  %rec_seq_size.i.i.i.i = getelementptr inbounds %struct.tls_prot_info, ptr %10, i32 0, i32 7
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %call9.i.i, i32 20
  %tag_size.i.i.i.i = getelementptr inbounds %struct.tls_prot_info, ptr %10, i32 0, i32 3
  %add.ptr.i.i82.i = getelementptr i8, ptr %call9.i.i, i32 4
  %107 = ptrtoint ptr %add.ptr10.i to i32
  %cmp.i.i.i83.i = icmp ugt ptr %add.ptr10.i, inttoptr (i32 -1073741825 to ptr)
  %sub.i15.i.i.i = add i32 %107, 1073741824
  %shr.i16.i.i.i = lshr i32 %sub.i15.i.i.i, 12
  %and.i.i.i.i = and i32 %107, 3980
  %offset1.i.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_in.i.i.i, i32 0, i32 1
  %length.i.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_in.i.i.i, i32 0, i32 2
  %offset1.i.i42.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out.i.i.i, i32 0, i32 1
  %length.i.i43.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out.i.i.i, i32 0, i32 2
  %add.ptr22.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_in.i.i.i, i32 1
  %offset1.i.i57.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_in.i.i.i, i32 1, i32 1
  %length.i.i58.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_in.i.i.i, i32 1, i32 2
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_in.i.i.i, i32 2
  %offset.i.i.i.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_in.i.i.i, i32 2, i32 1
  %length.i.i.i.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_in.i.i.i, i32 2, i32 2
  %add.ptr24.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out.i.i.i, i32 1
  %offset1.i.i74.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out.i.i.i, i32 1, i32 1
  %length.i.i75.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out.i.i.i, i32 1, i32 2
  %arrayidx.i.i.i79.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out.i.i.i, i32 2
  %offset.i.i.i.i80.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out.i.i.i, i32 2, i32 1
  %length.i.i.i.i81.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_out.i.i.i, i32 2, i32 2
  %src1.i.i.i.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i.i.i, i32 0, i32 4
  %dst2.i.i.i.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i.i.i, i32 0, i32 5
  %cryptlen3.i.i.i.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i.i.i, i32 0, i32 2
  %iv4.i.i.i.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i.i.i, i32 0, i32 3
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %land.rhs.i.i.do.body.i.i_crit_edge, %fill_sg_out.exit.i
  %len.addr.0.i.i = phi i32 [ %add21.i, %fill_sg_out.exit.i ], [ %len.addr.221.i.i, %land.rhs.i.i.do.body.i.i_crit_edge ]
  %rcd_sn.addr.0.i.i = phi i64 [ %25, %fill_sg_out.exit.i ], [ %inc.i.i, %land.rhs.i.i.do.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rcd_sn.addr.i.i.i)
  %108 = ptrtoint ptr %rcd_sn.addr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %rcd_sn.addr.0.i.i, ptr %rcd_sn.addr.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %buf.i.i.i) #8
  %109 = call ptr @memset(ptr %buf.i.i.i, i32 255, i32 13)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %sg_in.i.i.i) #8
  %110 = call ptr @memset(ptr %sg_in.i.i.i, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %sg_out.i.i.i) #8
  %111 = call ptr @memset(ptr %sg_out.i.i.i, i32 255, i32 60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %len.addr.0.i.i)
  %cmp.i.i84.i = icmp slt i32 %len.addr.0.i.i, 13
  %phi.cast1.i.i.i = and i32 %len.addr.0.i.i, 65535
  %cond.i.i.i = select i1 %cmp.i.i84.i, i32 %phi.cast1.i.i.i, i32 13
  call void @scatterwalk_copychunks(ptr noundef nonnull %buf.i.i.i, ptr noundef nonnull %in.i.i, i32 noundef %cond.i.i.i, i32 noundef 0) #8
  call void @scatterwalk_copychunks(ptr noundef nonnull %buf.i.i.i, ptr noundef nonnull %out.i.i, i32 noundef %cond.i.i.i, i32 noundef 1) #8
  %sub.i.i85.i = sub i32 %len.addr.0.i.i, %cond.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0.i.i, i32 %cond.i.i.i)
  %tobool.not.i.i86.i = icmp eq i32 %len.addr.0.i.i, %cond.i.i.i
  br i1 %tobool.not.i.i86.i, label %tls_enc_record.exit.thread.i.i, label %if.end.i.i88.i

tls_enc_record.exit.thread.i.i:                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %sg_out.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %sg_in.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %buf.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rcd_sn.addr.i.i.i)
  br label %land.rhs.i.i

if.end.i.i88.i:                                   ; preds = %do.body.i.i
  %112 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %95, align 4
  %114 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %in.i.i, align 4
  %offset4.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %offset4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %offset4.i.i.i.i, align 4
  %length.i.i.i87.i = getelementptr inbounds %struct.scatterlist, ptr %115, i32 0, i32 2
  %118 = ptrtoint ptr %length.i.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %length.i.i.i87.i, align 4
  %add.i.i.i.i58 = add i32 %119, %117
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %add.i.i.i.i58)
  %cmp.not.i.i.i.i = icmp ult i32 %113, %add.i.i.i.i58
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i88.i.scatterwalk_pagedone.exit.i.i.i_crit_edge, label %if.then6.i.i.i.i

if.end.i.i88.i.scatterwalk_pagedone.exit.i.i.i_crit_edge: ; preds = %if.end.i.i88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scatterwalk_pagedone.exit.i.i.i

if.then6.i.i.i.i:                                 ; preds = %if.end.i.i88.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i.i.i.i = call ptr @sg_next(ptr noundef %115) #8
  %120 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call8.i.i.i.i, ptr %in.i.i, align 4
  %offset.i.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call8.i.i.i.i, i32 0, i32 1
  %121 = ptrtoint ptr %offset.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %offset.i.i.i.i.i, align 4
  %123 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %95, align 4
  br label %scatterwalk_pagedone.exit.i.i.i

scatterwalk_pagedone.exit.i.i.i:                  ; preds = %if.then6.i.i.i.i, %if.end.i.i88.i.scatterwalk_pagedone.exit.i.i.i_crit_edge
  %124 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %out.i.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 4
  %and.i.i.i.i.i89.i = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i89.i)
  %tobool.i.not.i.i.i.i90.i = icmp eq i32 %and.i.i.i.i.i89.i, 0
  br i1 %tobool.i.not.i.i.i.i90.i, label %sg_page.exit.i.i.i.i, label %do.body2.i.i.i.i.i, !prof !32

do.body2.i.i.i.i.i:                               ; preds = %scatterwalk_pagedone.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !36
  unreachable

sg_page.exit.i.i.i.i:                             ; preds = %scatterwalk_pagedone.exit.i.i.i
  %and.i.i.i.i91.i = and i32 %127, -4
  %128 = inttoptr i32 %and.i.i.i.i91.i to ptr
  %129 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %94, align 4
  %sub.i.i.i92.i = add i32 %130, -1
  %shr.i.i.i.i = lshr i32 %sub.i.i.i92.i, 12
  %add.ptr.i.i.i93.i = getelementptr %struct.page, ptr %128, i32 %shr.i.i.i.i
  call void @flush_dcache_page(ptr noundef %add.ptr.i.i.i93.i) #8
  %131 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %94, align 4
  %133 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %out.i.i, align 4
  %offset4.i3.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %offset4.i3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %offset4.i3.i.i.i, align 4
  %length.i4.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %134, i32 0, i32 2
  %137 = ptrtoint ptr %length.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %length.i4.i.i.i, align 4
  %add.i5.i.i.i = add i32 %138, %136
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %add.i5.i.i.i)
  %cmp.not.i6.i.i.i = icmp ult i32 %132, %add.i5.i.i.i
  br i1 %cmp.not.i6.i.i.i, label %sg_page.exit.i.i.i.i.scatterwalk_pagedone.exit10.i.i.i_crit_edge, label %if.then6.i9.i.i.i

sg_page.exit.i.i.i.i.scatterwalk_pagedone.exit10.i.i.i_crit_edge: ; preds = %sg_page.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scatterwalk_pagedone.exit10.i.i.i

if.then6.i9.i.i.i:                                ; preds = %sg_page.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i7.i.i.i = call ptr @sg_next(ptr noundef %134) #8
  %139 = ptrtoint ptr %out.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call8.i7.i.i.i, ptr %out.i.i, align 4
  %offset.i.i8.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call8.i7.i.i.i, i32 0, i32 1
  %140 = ptrtoint ptr %offset.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %offset.i.i8.i.i.i, align 4
  %142 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %94, align 4
  br label %scatterwalk_pagedone.exit10.i.i.i

scatterwalk_pagedone.exit10.i.i.i:                ; preds = %if.then6.i9.i.i.i, %sg_page.exit.i.i.i.i.scatterwalk_pagedone.exit10.i.i.i_crit_edge
  %143 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %105, align 1
  %conv5.i.i.i = zext i8 %144 to i16
  %145 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %104, align 1
  %conv7.i.i.i = zext i8 %146 to i16
  %shl.i.i.i = shl nuw i16 %conv7.i.i.i, 8
  %or.i.i.i = or i16 %shl.i.i.i, %conv5.i.i.i
  %sub10.i.i.i = add i16 %or.i.i.i, -8
  %conv12.i.i.i = zext i16 %sub10.i.i.i to i32
  %sub13.i.i.i = add nsw i32 %conv12.i.i.i, -16
  %147 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %buf.i.i.i, align 1
  %149 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %150)
  %cmp.not.i11.i.i.i = icmp eq i16 %150, 772
  br i1 %cmp.not.i11.i.i.i, label %if.else.i.i.i.i59, label %if.then.i.i.i94.i

if.then.i.i.i94.i:                                ; preds = %scatterwalk_pagedone.exit10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %151 = ptrtoint ptr %rec_seq_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %rec_seq_size.i.i.i.i, align 2
  %conv2.i.i.i.i = zext i16 %152 to i32
  %153 = call ptr @memcpy(ptr %add.ptr10.i, ptr %rcd_sn.addr.i.i.i, i32 %conv2.i.i.i.i)
  br label %tls_make_aad.exit.i.i.i

if.else.i.i.i.i59:                                ; preds = %scatterwalk_pagedone.exit10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %154 = ptrtoint ptr %tag_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %tag_size.i.i.i.i, align 2
  %conv3.i.i.i.i = zext i16 %155 to i32
  %add.i13.i.i.i = add nsw i32 %sub13.i.i.i, %conv3.i.i.i.i
  br label %tls_make_aad.exit.i.i.i

tls_make_aad.exit.i.i.i:                          ; preds = %if.else.i.i.i.i59, %if.then.i.i.i94.i
  %size.addr.0.i.i.i.i = phi i32 [ %sub13.i.i.i, %if.then.i.i.i94.i ], [ %add.i13.i.i.i, %if.else.i.i.i.i59 ]
  %buf.addr.0.i.i.i.i = phi ptr [ %add.ptr.i12.i.i.i, %if.then.i.i.i94.i ], [ %add.ptr10.i, %if.else.i.i.i.i59 ]
  %156 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %157)
  %cmp6.i.i.i.i = icmp eq i16 %157, 772
  %spec.select.i.i.i.i = select i1 %cmp6.i.i.i.i, i8 23, i8 %148
  %158 = ptrtoint ptr %buf.addr.0.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %spec.select.i.i.i.i, ptr %buf.addr.0.i.i.i.i, align 1
  %arrayidx10.i.i.i.i = getelementptr i8, ptr %buf.addr.0.i.i.i.i, i32 1
  %159 = ptrtoint ptr %arrayidx10.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 3, ptr %arrayidx10.i.i.i.i, align 1
  %arrayidx11.i.i.i.i = getelementptr i8, ptr %buf.addr.0.i.i.i.i, i32 2
  %160 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 3, ptr %arrayidx11.i.i.i.i, align 1
  %shr.i14.i.i.i = lshr i32 %size.addr.0.i.i.i.i, 8
  %conv12.i.i.i.i = trunc i32 %shr.i14.i.i.i to i8
  %arrayidx13.i.i.i.i = getelementptr i8, ptr %buf.addr.0.i.i.i.i, i32 3
  %161 = ptrtoint ptr %arrayidx13.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv12.i.i.i.i, ptr %arrayidx13.i.i.i.i, align 1
  %conv14.i.i.i.i = trunc i32 %size.addr.0.i.i.i.i to i8
  %arrayidx15.i.i.i.i = getelementptr i8, ptr %buf.addr.0.i.i.i.i, i32 4
  %162 = ptrtoint ptr %arrayidx15.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv14.i.i.i.i, ptr %arrayidx15.i.i.i.i, align 1
  %163 = ptrtoint ptr %106 to i32
  call void @__asan_loadN_noabort(i32 %163, i32 8)
  %164 = load i64, ptr %106, align 1
  %165 = ptrtoint ptr %add.ptr.i.i82.i to i32
  call void @__asan_storeN_noabort(i32 %165, i32 8)
  store i64 %164, ptr %add.ptr.i.i82.i, align 4
  call void @sg_init_table(ptr noundef nonnull %sg_in.i.i.i, i32 noundef 3) #8
  call void @sg_init_table(ptr noundef nonnull %sg_out.i.i.i, i32 noundef 3) #8
  br i1 %cmp.i.i.i83.i, label %land.lhs.true.i.i.i.i, label %tls_make_aad.exit.i.i.i.do.body5.i.i.i.i_crit_edge, !prof !32

tls_make_aad.exit.i.i.i.do.body5.i.i.i.i_crit_edge: ; preds = %tls_make_aad.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %tls_make_aad.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %166 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i.i.i = icmp ugt ptr %166, %add.ptr10.i
  br i1 %cmp1.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.do.body5.i.i.i.i_crit_edge, !prof !32

land.lhs.true.i.i.i.i.do.body5.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %167 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i17.i.i.i = add i32 %167, %shr.i16.i.i.i
  %call.i.i.i.i = call i32 @pfn_valid(i32 noundef %add.i17.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.i.i.i.i, label %land.rhs.i.i.i.i.do.body5.i.i.i.i_crit_edge, label %do.end8.i.i.i.i, !prof !31

land.rhs.i.i.i.i.do.body5.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i.i.i.i

do.body5.i.i.i.i:                                 ; preds = %land.rhs.i.i.i.i.do.body5.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.do.body5.i.i.i.i_crit_edge, %tls_make_aad.exit.i.i.i.do.body5.i.i.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #8, !srcloc !33
  unreachable

do.end8.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %168 = load ptr, ptr @mem_map, align 4
  %add.ptr.i18.i.i.i = getelementptr %struct.page, ptr %168, i32 %shr.i16.i.i.i
  %169 = ptrtoint ptr %sg_in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %sg_in.i.i.i, align 4
  %171 = ptrtoint ptr %add.ptr.i18.i.i.i to i32
  %and2.i.i.i.i.i.i = and i32 %171, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and2.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %do.body11.i.i.i.i.i.i, label %do.body5.i.i.i.i.i.i, !prof !32

do.body5.i.i.i.i.i.i:                             ; preds = %do.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !34
  unreachable

do.body11.i.i.i.i.i.i:                            ; preds = %do.end8.i.i.i.i
  %and.i.i.i.i.i.i.i = and i32 %170, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.i.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i.i, label %land.lhs.true.i22.i.i.i, label %do.body19.i.i.i.i.i.i, !prof !32

do.body19.i.i.i.i.i.i:                            ; preds = %do.body11.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !35
  unreachable

land.lhs.true.i22.i.i.i:                          ; preds = %do.body11.i.i.i.i.i.i
  %and.i.i.i19.i.i.i = and i32 %170, 3
  %or.i.i.i.i.i.i = or i32 %and.i.i.i19.i.i.i, %171
  %172 = ptrtoint ptr %sg_in.i.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %or.i.i.i.i.i.i, ptr %sg_in.i.i.i, align 4
  %173 = ptrtoint ptr %offset1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %and.i.i.i.i, ptr %offset1.i.i.i.i.i, align 4
  %174 = ptrtoint ptr %length.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 13, ptr %length.i.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %175 = load ptr, ptr @high_memory, align 4
  %cmp1.i21.i.i.i = icmp ugt ptr %175, %add.ptr10.i
  br i1 %cmp1.i21.i.i.i, label %land.rhs.i28.i.i.i, label %land.lhs.true.i22.i.i.i.do.body5.i29.i.i.i_crit_edge, !prof !32

land.lhs.true.i22.i.i.i.do.body5.i29.i.i.i_crit_edge: ; preds = %land.lhs.true.i22.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i29.i.i.i

land.rhs.i28.i.i.i:                               ; preds = %land.lhs.true.i22.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %176 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i25.i.i.i = add i32 %176, %shr.i16.i.i.i
  %call.i26.i.i.i = call i32 @pfn_valid(i32 noundef %add.i25.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i.i)
  %tobool.i27.i.i.i = icmp eq i32 %call.i26.i.i.i, 0
  br i1 %tobool.i27.i.i.i, label %land.rhs.i28.i.i.i.do.body5.i29.i.i.i_crit_edge, label %do.end8.i33.i.i.i, !prof !31

land.rhs.i28.i.i.i.do.body5.i29.i.i.i_crit_edge:  ; preds = %land.rhs.i28.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i29.i.i.i

do.body5.i29.i.i.i:                               ; preds = %land.rhs.i28.i.i.i.do.body5.i29.i.i.i_crit_edge, %land.lhs.true.i22.i.i.i.do.body5.i29.i.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #8, !srcloc !33
  unreachable

do.end8.i33.i.i.i:                                ; preds = %land.rhs.i28.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %177 = load ptr, ptr @mem_map, align 4
  %add.ptr.i30.i.i.i = getelementptr %struct.page, ptr %177, i32 %shr.i16.i.i.i
  %178 = ptrtoint ptr %sg_out.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %sg_out.i.i.i, align 4
  %180 = ptrtoint ptr %add.ptr.i30.i.i.i to i32
  %and2.i.i.i31.i.i.i = and i32 %180, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i31.i.i.i)
  %tobool.not.i.i.i32.i.i.i = icmp eq i32 %and2.i.i.i31.i.i.i, 0
  br i1 %tobool.not.i.i.i32.i.i.i, label %do.body11.i.i.i37.i.i.i, label %do.body5.i.i.i34.i.i.i, !prof !32

do.body5.i.i.i34.i.i.i:                           ; preds = %do.end8.i33.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !34
  unreachable

do.body11.i.i.i37.i.i.i:                          ; preds = %do.end8.i33.i.i.i
  %and.i.i.i.i35.i.i.i = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i35.i.i.i)
  %tobool.i.not.i.i.i36.i.i.i = icmp eq i32 %and.i.i.i.i35.i.i.i, 0
  br i1 %tobool.i.not.i.i.i36.i.i.i, label %sg_set_buf.exit44.i.i.i, label %do.body19.i.i.i38.i.i.i, !prof !32

do.body19.i.i.i38.i.i.i:                          ; preds = %do.body11.i.i.i37.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !35
  unreachable

sg_set_buf.exit44.i.i.i:                          ; preds = %do.body11.i.i.i37.i.i.i
  %and.i.i.i40.i.i.i = and i32 %179, 3
  %or.i.i.i41.i.i.i = or i32 %and.i.i.i40.i.i.i, %180
  %181 = ptrtoint ptr %sg_out.i.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %or.i.i.i41.i.i.i, ptr %sg_out.i.i.i, align 4
  %182 = ptrtoint ptr %offset1.i.i42.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %and.i.i.i.i, ptr %offset1.i.i42.i.i.i, align 4
  %183 = ptrtoint ptr %length.i.i43.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 13, ptr %length.i.i43.i.i.i, align 4
  %184 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %in.i.i, align 4
  %186 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %95, align 4
  %188 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %185, align 4
  %and.i.i.i46.i.i.i = and i32 %189, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i46.i.i.i)
  %tobool.i.not.i.i47.i.i.i = icmp eq i32 %and.i.i.i46.i.i.i, 0
  br i1 %tobool.i.not.i.i47.i.i.i, label %sg_page.exit.i51.i.i.i, label %do.body2.i.i48.i.i.i, !prof !32

do.body2.i.i48.i.i.i:                             ; preds = %sg_set_buf.exit44.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !36
  unreachable

sg_page.exit.i51.i.i.i:                           ; preds = %sg_set_buf.exit44.i.i.i
  %190 = ptrtoint ptr %add.ptr22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %add.ptr22.i.i.i, align 4
  %and.i.i.i.i49.i.i.i = and i32 %191, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i49.i.i.i)
  %tobool.i.not.i.i.i50.i.i.i = icmp eq i32 %and.i.i.i.i49.i.i.i, 0
  br i1 %tobool.i.not.i.i.i50.i.i.i, label %sg_set_page.exit.i.i.i.i, label %do.body19.i.i.i52.i.i.i, !prof !32

do.body19.i.i.i52.i.i.i:                          ; preds = %sg_page.exit.i51.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !35
  unreachable

sg_set_page.exit.i.i.i.i:                         ; preds = %sg_page.exit.i51.i.i.i
  %offset2.i53.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %185, i32 0, i32 1
  %192 = ptrtoint ptr %offset2.i53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %offset2.i53.i.i.i, align 4
  %sub.neg.i.i.i.i = sub i32 %193, %187
  %length.i54.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %185, i32 0, i32 2
  %194 = ptrtoint ptr %length.i54.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %length.i54.i.i.i, align 4
  %sub3.i.i.i.i = add i32 %sub.neg.i.i.i.i, %195
  %and.i.i55.i.i.i = and i32 %189, -4
  %and.i.i12.i.i.i.i = and i32 %191, 3
  %or.i.i.i56.i.i.i = or i32 %and.i.i12.i.i.i.i, %and.i.i55.i.i.i
  %196 = ptrtoint ptr %add.ptr22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %or.i.i.i56.i.i.i, ptr %add.ptr22.i.i.i, align 4
  %197 = ptrtoint ptr %offset1.i.i57.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %187, ptr %offset1.i.i57.i.i.i, align 4
  %198 = ptrtoint ptr %length.i.i58.i.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %sub3.i.i.i.i, ptr %length.i.i58.i.i.i, align 4
  %call5.i.i.i.i = call ptr @sg_next(ptr noundef %185) #8
  %tobool.not.i.i.i.i95.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i95.i, label %if.else.i.i.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %sg_set_page.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %199 = ptrtoint ptr %offset.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %offset.i.i.i.i.i.i.i, align 4
  %200 = ptrtoint ptr %length.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %length.i.i.i.i.i.i.i, align 4
  %201 = ptrtoint ptr %call5.i.i.i.i to i32
  br label %chain_to_walk.exit.i.i.i

if.else.i.i.i.i.i:                                ; preds = %sg_set_page.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %202 = ptrtoint ptr %add.ptr22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %add.ptr22.i.i.i, align 4
  br label %chain_to_walk.exit.i.i.i

chain_to_walk.exit.i.i.i:                         ; preds = %if.else.i.i.i.i.i, %if.then.i.i.i.i.i
  %.sink1.i.i.i.i.i = phi i32 [ %203, %if.else.i.i.i.i.i ], [ %201, %if.then.i.i.i.i.i ]
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.else.i.i.i.i.i ], [ 1, %if.then.i.i.i.i.i ]
  %head.sink.i.i.i.i.i = phi ptr [ %add.ptr22.i.i.i, %if.else.i.i.i.i.i ], [ %arrayidx.i.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %or.i.i13.i.i.i.i = and i32 %.sink1.i.i.i.i.i, -4
  %and.i.i14.i.i.i.i = or i32 %or.i.i13.i.i.i.i, %.sink.i.i.i.i.i
  %204 = ptrtoint ptr %head.sink.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %and.i.i14.i.i.i.i, ptr %head.sink.i.i.i.i.i, align 4
  %205 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %out.i.i, align 4
  %207 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %94, align 4
  %209 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %206, align 4
  %and.i.i.i60.i.i.i = and i32 %210, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i60.i.i.i)
  %tobool.i.not.i.i61.i.i.i = icmp eq i32 %and.i.i.i60.i.i.i, 0
  br i1 %tobool.i.not.i.i61.i.i.i, label %sg_page.exit.i65.i.i.i, label %do.body2.i.i62.i.i.i, !prof !32

do.body2.i.i62.i.i.i:                             ; preds = %chain_to_walk.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !36
  unreachable

sg_page.exit.i65.i.i.i:                           ; preds = %chain_to_walk.exit.i.i.i
  %211 = ptrtoint ptr %add.ptr24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %add.ptr24.i.i.i, align 4
  %and.i.i.i.i63.i.i.i = and i32 %212, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i63.i.i.i)
  %tobool.i.not.i.i.i64.i.i.i = icmp eq i32 %and.i.i.i.i63.i.i.i, 0
  br i1 %tobool.i.not.i.i.i64.i.i.i, label %sg_set_page.exit.i78.i.i.i, label %do.body19.i.i.i66.i.i.i, !prof !32

do.body19.i.i.i66.i.i.i:                          ; preds = %sg_page.exit.i65.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !35
  unreachable

sg_set_page.exit.i78.i.i.i:                       ; preds = %sg_page.exit.i65.i.i.i
  %offset2.i67.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %206, i32 0, i32 1
  %213 = ptrtoint ptr %offset2.i67.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %offset2.i67.i.i.i, align 4
  %sub.neg.i68.i.i.i = sub i32 %214, %208
  %length.i69.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %206, i32 0, i32 2
  %215 = ptrtoint ptr %length.i69.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %length.i69.i.i.i, align 4
  %sub3.i70.i.i.i = add i32 %sub.neg.i68.i.i.i, %216
  %and.i.i71.i.i.i = and i32 %210, -4
  %and.i.i12.i72.i.i.i = and i32 %212, 3
  %or.i.i.i73.i.i.i = or i32 %and.i.i12.i72.i.i.i, %and.i.i71.i.i.i
  %217 = ptrtoint ptr %add.ptr24.i.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %or.i.i.i73.i.i.i, ptr %add.ptr24.i.i.i, align 4
  %218 = ptrtoint ptr %offset1.i.i74.i.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %208, ptr %offset1.i.i74.i.i.i, align 4
  %219 = ptrtoint ptr %length.i.i75.i.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %sub3.i70.i.i.i, ptr %length.i.i75.i.i.i, align 4
  %call5.i76.i.i.i = call ptr @sg_next(ptr noundef %206) #8
  %tobool.not.i.i77.i.i.i = icmp eq ptr %call5.i76.i.i.i, null
  br i1 %tobool.not.i.i77.i.i.i, label %if.else.i.i83.i.i.i, label %if.then.i.i82.i.i.i

if.then.i.i82.i.i.i:                              ; preds = %sg_set_page.exit.i78.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %220 = ptrtoint ptr %offset.i.i.i.i80.i.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 0, ptr %offset.i.i.i.i80.i.i.i, align 4
  %221 = ptrtoint ptr %length.i.i.i.i81.i.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 0, ptr %length.i.i.i.i81.i.i.i, align 4
  %222 = ptrtoint ptr %call5.i76.i.i.i to i32
  br label %chain_to_walk.exit89.i.i.i

if.else.i.i83.i.i.i:                              ; preds = %sg_set_page.exit.i78.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %223 = ptrtoint ptr %add.ptr24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %add.ptr24.i.i.i, align 4
  br label %chain_to_walk.exit89.i.i.i

chain_to_walk.exit89.i.i.i:                       ; preds = %if.else.i.i83.i.i.i, %if.then.i.i82.i.i.i
  %.sink1.i.i84.i.i.i = phi i32 [ %224, %if.else.i.i83.i.i.i ], [ %222, %if.then.i.i82.i.i.i ]
  %.sink.i.i85.i.i.i = phi i32 [ 2, %if.else.i.i83.i.i.i ], [ 1, %if.then.i.i82.i.i.i ]
  %head.sink.i.i86.i.i.i = phi ptr [ %add.ptr24.i.i.i, %if.else.i.i83.i.i.i ], [ %arrayidx.i.i.i79.i.i.i, %if.then.i.i82.i.i.i ]
  %or.i.i13.i87.i.i.i = and i32 %.sink1.i.i84.i.i.i, -4
  %and.i.i14.i88.i.i.i = or i32 %or.i.i13.i87.i.i.i, %.sink.i.i85.i.i.i
  %225 = ptrtoint ptr %head.sink.i.i86.i.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %and.i.i14.i88.i.i.i, ptr %head.sink.i.i86.i.i.i, align 4
  %sub26.i.i.i = sub i32 %sub.i.i85.i, %conv12.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub26.i.i.i)
  %cmp27.i.i96.i = icmp slt i32 %sub26.i.i.i, 0
  br i1 %cmp27.i.i96.i, label %if.end37.thread.i.i.i, label %if.end37.i.i.i

if.end37.thread.i.i.i:                            ; preds = %chain_to_walk.exit89.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %sub26.i.i.i)
  %cmp30.i.i97.i = icmp ult i32 %sub26.i.i.i, -16
  %226 = trunc i32 %sub.i.i85.i to i16
  %conv35.i.i.i = add i16 %226, 16
  %len.0.i.i.i = select i1 %cmp30.i.i97.i, i16 %conv35.i.i.i, i16 %sub10.i.i.i
  br label %tls_enc_record.exit.i.i

if.end37.i.i.i:                                   ; preds = %chain_to_walk.exit89.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i85.i, i32 %conv12.i.i.i)
  %tobool38.not.i.i.i = icmp eq i32 %sub.i.i85.i, %conv12.i.i.i
  br i1 %tobool38.not.i.i.i, label %if.end37.i.i.i.tls_enc_record.exit.i.i_crit_edge, label %if.then39.i.i.i

if.end37.i.i.i.tls_enc_record.exit.i.i_crit_edge: ; preds = %if.end37.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tls_enc_record.exit.i.i

if.then39.i.i.i:                                  ; preds = %if.end37.i.i.i
  call void @scatterwalk_copychunks(ptr noundef null, ptr noundef nonnull %in.i.i, i32 noundef %conv12.i.i.i, i32 noundef 2) #8
  %227 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %95, align 4
  %229 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %in.i.i, align 4
  %offset4.i91.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %230, i32 0, i32 1
  %231 = ptrtoint ptr %offset4.i91.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %offset4.i91.i.i.i, align 4
  %length.i92.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %230, i32 0, i32 2
  %233 = ptrtoint ptr %length.i92.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %length.i92.i.i.i, align 4
  %add.i93.i.i.i = add i32 %234, %232
  call void @__sanitizer_cov_trace_cmp4(i32 %228, i32 %add.i93.i.i.i)
  %cmp.not.i94.i.i.i = icmp ult i32 %228, %add.i93.i.i.i
  br i1 %cmp.not.i94.i.i.i, label %if.then39.i.i.i.scatterwalk_pagedone.exit99.i.i.i_crit_edge, label %if.then6.i98.i.i.i

if.then39.i.i.i.scatterwalk_pagedone.exit99.i.i.i_crit_edge: ; preds = %if.then39.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scatterwalk_pagedone.exit99.i.i.i

if.then6.i98.i.i.i:                               ; preds = %if.then39.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i96.i.i.i = call ptr @sg_next(ptr noundef %230) #8
  %235 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %call8.i96.i.i.i, ptr %in.i.i, align 4
  %offset.i.i97.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call8.i96.i.i.i, i32 0, i32 1
  %236 = ptrtoint ptr %offset.i.i97.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %offset.i.i97.i.i.i, align 4
  %238 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %237, ptr %95, align 4
  br label %scatterwalk_pagedone.exit99.i.i.i

scatterwalk_pagedone.exit99.i.i.i:                ; preds = %if.then6.i98.i.i.i, %if.then39.i.i.i.scatterwalk_pagedone.exit99.i.i.i_crit_edge
  call void @scatterwalk_copychunks(ptr noundef null, ptr noundef nonnull %out.i.i, i32 noundef %conv12.i.i.i, i32 noundef 2) #8
  %239 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %out.i.i, align 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %240, align 4
  %and.i.i.i100.i.i.i = and i32 %242, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i100.i.i.i)
  %tobool.i.not.i.i101.i.i.i = icmp eq i32 %and.i.i.i100.i.i.i, 0
  br i1 %tobool.i.not.i.i101.i.i.i, label %sg_page.exit.i109.i.i.i, label %do.body2.i.i103.i.i.i, !prof !32

do.body2.i.i103.i.i.i:                            ; preds = %scatterwalk_pagedone.exit99.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !36
  unreachable

sg_page.exit.i109.i.i.i:                          ; preds = %scatterwalk_pagedone.exit99.i.i.i
  %and.i.i104.i.i.i = and i32 %242, -4
  %243 = inttoptr i32 %and.i.i104.i.i.i to ptr
  %244 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %94, align 4
  %sub.i106.i.i.i = add i32 %245, -1
  %shr.i107.i.i.i = lshr i32 %sub.i106.i.i.i, 12
  %add.ptr.i108.i.i.i = getelementptr %struct.page, ptr %243, i32 %shr.i107.i.i.i
  call void @flush_dcache_page(ptr noundef %add.ptr.i108.i.i.i) #8
  %246 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %94, align 4
  %248 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %out.i.i, align 4
  %offset4.i111.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %249, i32 0, i32 1
  %250 = ptrtoint ptr %offset4.i111.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %offset4.i111.i.i.i, align 4
  %length.i112.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %249, i32 0, i32 2
  %252 = ptrtoint ptr %length.i112.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %length.i112.i.i.i, align 4
  %add.i113.i.i.i = add i32 %253, %251
  call void @__sanitizer_cov_trace_cmp4(i32 %247, i32 %add.i113.i.i.i)
  %cmp.not.i114.i.i.i = icmp ult i32 %247, %add.i113.i.i.i
  br i1 %cmp.not.i114.i.i.i, label %sg_page.exit.i109.i.i.i.tls_enc_record.exit.i.i_crit_edge, label %if.then6.i118.i.i.i

sg_page.exit.i109.i.i.i.tls_enc_record.exit.i.i_crit_edge: ; preds = %sg_page.exit.i109.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tls_enc_record.exit.i.i

if.then6.i118.i.i.i:                              ; preds = %sg_page.exit.i109.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i116.i.i.i = call ptr @sg_next(ptr noundef %249) #8
  %254 = ptrtoint ptr %out.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %call8.i116.i.i.i, ptr %out.i.i, align 4
  %offset.i.i117.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call8.i116.i.i.i, i32 0, i32 1
  %255 = ptrtoint ptr %offset.i.i117.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %offset.i.i117.i.i.i, align 4
  %257 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %256, ptr %94, align 4
  br label %tls_enc_record.exit.i.i

tls_enc_record.exit.i.i:                          ; preds = %if.then6.i118.i.i.i, %sg_page.exit.i109.i.i.i.tls_enc_record.exit.i.i_crit_edge, %if.end37.i.i.i.tls_enc_record.exit.i.i_crit_edge, %if.end37.thread.i.i.i
  %len.addr.1.i.i = phi i32 [ 0, %if.end37.thread.i.i.i ], [ %sub26.i.i.i, %if.end37.i.i.i.tls_enc_record.exit.i.i_crit_edge ], [ %sub26.i.i.i, %sg_page.exit.i109.i.i.i.tls_enc_record.exit.i.i_crit_edge ], [ %sub26.i.i.i, %if.then6.i118.i.i.i ]
  %len.1122.i.i.i = phi i16 [ %len.0.i.i.i, %if.end37.thread.i.i.i ], [ %sub10.i.i.i, %if.end37.i.i.i.tls_enc_record.exit.i.i_crit_edge ], [ %sub10.i.i.i, %sg_page.exit.i109.i.i.i.tls_enc_record.exit.i.i_crit_edge ], [ %sub10.i.i.i, %if.then6.i118.i.i.i ]
  %sub44.i.i.i = add i16 %len.1122.i.i.i, -16
  %conv48.i.i.i = zext i16 %sub44.i.i.i to i32
  %258 = ptrtoint ptr %src1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %sg_in.i.i.i, ptr %src1.i.i.i.i, align 4
  %259 = ptrtoint ptr %dst2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %sg_out.i.i.i, ptr %dst2.i.i.i.i, align 8
  %260 = ptrtoint ptr %cryptlen3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %conv48.i.i.i, ptr %cryptlen3.i.i.i.i, align 4
  %261 = ptrtoint ptr %iv4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %call9.i.i, ptr %iv4.i.i.i.i, align 32
  %call.i.i98.i = call i32 @crypto_aead_encrypt(ptr noundef nonnull %call9.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %sg_out.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %sg_in.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %buf.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rcd_sn.addr.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98.i)
  %cmp.i99.i = icmp eq i32 %call.i.i98.i, 0
  br i1 %cmp.i99.i, label %tls_enc_record.exit.i.i.land.rhs.i.i_crit_edge, label %tls_enc_record.exit.i.i.do.end.i.i_crit_edge

tls_enc_record.exit.i.i.do.end.i.i_crit_edge:     ; preds = %tls_enc_record.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

tls_enc_record.exit.i.i.land.rhs.i.i_crit_edge:   ; preds = %tls_enc_record.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %tls_enc_record.exit.i.i.land.rhs.i.i_crit_edge, %tls_enc_record.exit.thread.i.i
  %len.addr.221.i.i = phi i32 [ %sub.i.i85.i, %tls_enc_record.exit.thread.i.i ], [ %len.addr.1.i.i, %tls_enc_record.exit.i.i.land.rhs.i.i_crit_edge ]
  %inc.i.i = add i64 %rcd_sn.addr.0.i.i, 1
  %tobool.not.i100.i = icmp eq i32 %len.addr.221.i.i, 0
  br i1 %tobool.not.i100.i, label %land.rhs.i.i.do.end.i.i_crit_edge, label %land.rhs.i.i.do.body.i.i_crit_edge

land.rhs.i.i.do.body.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

land.rhs.i.i.do.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i.do.end.i.i_crit_edge, %tls_enc_record.exit.i.i.do.end.i.i_crit_edge
  %retval.0.i22.i.i = phi i32 [ %call.i.i98.i, %tls_enc_record.exit.i.i.do.end.i.i_crit_edge ], [ 0, %land.rhs.i.i.do.end.i.i_crit_edge ]
  %262 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %out.i.i, align 4
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %263, align 4
  %and.i.i.i.i4.i.i = and i32 %265, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i4.i.i)
  %tobool.i.not.i.i.i5.i.i = icmp eq i32 %and.i.i.i.i4.i.i, 0
  br i1 %tobool.i.not.i.i.i5.i.i, label %tls_enc_records.exit.i, label %do.body2.i.i.i7.i.i, !prof !32

do.body2.i.i.i7.i.i:                              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !36
  unreachable

tls_enc_records.exit.i:                           ; preds = %do.end.i.i
  %and.i.i.i8.i.i = and i32 %265, -4
  %266 = inttoptr i32 %and.i.i.i8.i.i to ptr
  %267 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %94, align 4
  %sub.i.i10.i.i = add i32 %268, -1
  %shr.i.i11.i.i = lshr i32 %sub.i.i10.i.i, 12
  %add.ptr.i.i12.i.i = getelementptr %struct.page, ptr %266, i32 %shr.i.i11.i.i
  call void @flush_dcache_page(ptr noundef %add.ptr.i.i12.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i22.i.i)
  %cmp.i = icmp slt i32 %retval.0.i22.i.i, 0
  br i1 %cmp.i, label %free_nskb.i, label %if.end24.i

if.end24.i:                                       ; preds = %tls_enc_records.exit.i
  %269 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %269, align 4
  call void @skb_copy_header(ptr noundef nonnull %call.i.i, ptr noundef %skb) #8
  %272 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %len, align 4
  %call.i101.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %273) #8
  %274 = ptrtoint ptr %data.i76.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %data.i76.i, align 4
  %276 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %data.i, align 4
  %278 = call ptr @memcpy(ptr %275, ptr %277, i32 %add.i)
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %279 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %destructor.i.i, align 4
  %destructor2.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 4, i32 0, i32 1
  %281 = ptrtoint ptr %destructor2.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %280, ptr %destructor2.i.i, align 4
  %282 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %271, ptr %282, align 4
  store ptr null, ptr %destructor.i.i, align 4
  %284 = ptrtoint ptr %269 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr null, ptr %269, align 4
  %head.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %285 = ptrtoint ptr %head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %head.i.i.i.i.i, align 8
  %transport_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 19
  %287 = ptrtoint ptr %transport_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %transport_header.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %288 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %286, i32 %conv.i.i.i.i.i
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %289 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %len.i.i.i, align 4
  %sub.i.i103.i = sub i32 %290, %add.i
  %ip_summed.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %291 = ptrtoint ptr %ip_summed.i.i.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %bf.load.i.i104.i = load i16, ptr %ip_summed.i.i.i, align 8
  %292 = and i16 %bf.load.i.i104.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %292)
  %cmp.i.i105.i = icmp eq i16 %292, 1536
  br i1 %cmp.i.i105.i, label %if.end24.i.update_chksum.exit.i.i_crit_edge, label %if.end.i.i106.i, !prof !32

if.end24.i.update_chksum.exit.i.i_crit_edge:      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_chksum.exit.i.i

if.end.i.i106.i:                                  ; preds = %if.end24.i
  %bf.set.i.i.i = or i16 %bf.load.i.i104.i, 1536
  %293 = ptrtoint ptr %ip_summed.i.i.i to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 %bf.set.i.i.i, ptr %ip_summed.i.i.i, align 8
  %294 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 5
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_store2_noabort(i32 %295)
  store i16 %288, ptr %294, align 8
  %csum_offset.i.i.i = getelementptr inbounds %struct.anon.176, ptr %294, i32 0, i32 1
  %296 = ptrtoint ptr %csum_offset.i.i.i to i32
  call void @__asan_store2_noabort(i32 %296)
  store i16 16, ptr %csum_offset.i.i.i, align 2
  %297 = ptrtoint ptr %282 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %282, align 4
  %skc_family.i.i.i = getelementptr inbounds %struct.sock_common, ptr %298, i32 0, i32 3
  %299 = ptrtoint ptr %skc_family.i.i.i to i32
  call void @__asan_load2_noabort(i32 %299)
  %300 = load i16, ptr %skc_family.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %300)
  %cmp9.i.i.i = icmp eq i16 %300, 10
  %network_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %301 = ptrtoint ptr %network_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %network_header.i.i.i.i.i, align 4
  %conv.i.i43.i.i.i = zext i16 %302 to i32
  %add.ptr.i.i44.i.i.i = getelementptr i8, ptr %286, i32 %conv.i.i43.i.i.i
  br i1 %cmp9.i.i.i, label %if.then11.i.i.i, label %if.else.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i106.i
  call void @__sanitizer_cov_trace_pc() #10
  %saddr.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i44.i.i.i, i32 0, i32 5
  %daddr.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i44.i.i.i, i32 0, i32 6
  %call.i.i.i107.i = call i32 @__csum_ipv6_magic(ptr noundef %saddr.i.i.i, ptr noundef %daddr.i.i.i, i32 noundef %sub.i.i103.i, i32 noundef 6, i32 noundef 0) #8
  %303 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i.i107.i) #13, !srcloc !37
  br label %cleanup.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i106.i
  call void @__sanitizer_cov_trace_pc() #10
  %saddr17.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i44.i.i.i, i32 0, i32 8
  %304 = ptrtoint ptr %saddr17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %saddr17.i.i.i, align 4
  %daddr18.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i44.i.i.i, i32 0, i32 9
  %306 = ptrtoint ptr %daddr18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %daddr18.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %sub.i.i103.i, 6
  %308 = call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %307, i32 %305, i32 %add.i.i.i.i.i) #13, !srcloc !38
  %309 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %308) #13, !srcloc !37
  br label %cleanup.sink.split.i.i.i

cleanup.sink.split.i.i.i:                         ; preds = %if.else.i.i.i, %if.then11.i.i.i
  %.sink.i.i.i = phi i32 [ %303, %if.then11.i.i.i ], [ %309, %if.else.i.i.i ]
  %neg.i.i.i.i.i = xor i32 %.sink.i.i.i, -1
  %shr.i.i.i.i.i = lshr i32 %neg.i.i.i.i.i, 16
  %conv.i.i45.i.i.i = trunc i32 %shr.i.i.i.i.i to i16
  %neg.i.i.i = xor i16 %conv.i.i45.i.i.i, -1
  %check.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i.i.i, i32 0, i32 6
  %310 = ptrtoint ptr %check.i.i.i to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 %neg.i.i.i, ptr %check.i.i.i, align 4
  br label %update_chksum.exit.i.i

update_chksum.exit.i.i:                           ; preds = %cleanup.sink.split.i.i.i, %if.end24.i.update_chksum.exit.i.i_crit_edge
  %311 = ptrtoint ptr %destructor2.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %destructor2.i.i, align 4
  %cmp.i108.i = icmp eq ptr %312, @sock_efree
  br i1 %cmp.i108.i, label %update_chksum.exit.i.i.complete_skb.exit.i_crit_edge, label %if.end.i109.i

update_chksum.exit.i.i.complete_skb.exit.i_crit_edge: ; preds = %update_chksum.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete_skb.exit.i

if.end.i109.i:                                    ; preds = %update_chksum.exit.i.i
  %truesize.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 20
  %313 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %truesize.i.i, align 8
  %truesize5.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %315 = ptrtoint ptr %truesize5.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %truesize5.i.i, align 8
  %sub.i.i = sub i32 %314, %316
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp6.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.else.i.i, !prof !32

if.then8.i.i:                                     ; preds = %if.end.i109.i
  %sub9.i.i = sub i32 0, %sub.i.i
  %sk_wmem_alloc.i.i = getelementptr inbounds %struct.sock, ptr %271, i32 0, i32 23
  %call.i.i.i.i.i.i60 = call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  call void @llvm.prefetch.p0(ptr %sk_wmem_alloc.i.i, i32 1, i32 3, i32 1) #8
  %317 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc.i.i, ptr %sk_wmem_alloc.i.i, i32 %sub9.i.i, ptr elementtype(i32) %sk_wmem_alloc.i.i) #8, !srcloc !40
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %317, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i.i.i, i32 %sub9.i.i)
  %cmp.i.i.i110.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, %sub9.i.i
  br i1 %cmp.i.i.i110.i, label %land.rhs.i112.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then8.i.i
  %sub.i.i.i111.i = add i32 %asmresult.i.i.i.i.i.i.i, %sub.i.i
  %318 = or i32 %sub.i.i.i111.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %318)
  %.not.i.i.i.i61 = icmp sgt i32 %318, -1
  br i1 %.not.i.i.i.i61, label %if.end5.i.i.i.i.complete_skb.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !32

if.end5.i.i.i.i.complete_skb.exit.i_crit_edge:    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete_skb.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc.i.i, i32 noundef 3) #8
  br label %complete_skb.exit.i

land.rhs.i112.i:                                  ; preds = %if.then8.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !41
  %.b83.i.i = load i1, ptr @complete_skb.__already_done, align 1
  br i1 %.b83.i.i, label %land.rhs.i112.i.complete_skb.exit.i_crit_edge, label %if.then25.i.i, !prof !32

land.rhs.i112.i.complete_skb.exit.i_crit_edge:    ; preds = %land.rhs.i112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete_skb.exit.i

if.then25.i.i:                                    ; preds = %land.rhs.i112.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @complete_skb.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 218, i32 noundef 9, ptr noundef null) #8
  br label %complete_skb.exit.i

if.else.i.i:                                      ; preds = %if.end.i109.i
  call void @__sanitizer_cov_trace_cmp4(i32 %314, i32 %316)
  %tobool55.not.i.i = icmp eq i32 %314, %316
  br i1 %tobool55.not.i.i, label %if.else.i.i.complete_skb.exit.i_crit_edge, label %if.then56.i.i

if.else.i.i.complete_skb.exit.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete_skb.exit.i

if.then56.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sk_wmem_alloc57.i.i = getelementptr inbounds %struct.sock, ptr %271, i32 0, i32 23
  call fastcc void @refcount_add(i32 noundef %sub.i.i, ptr noundef %sk_wmem_alloc57.i.i) #8
  br label %complete_skb.exit.i

complete_skb.exit.i:                              ; preds = %if.then56.i.i, %if.else.i.i.complete_skb.exit.i_crit_edge, %if.then25.i.i, %land.rhs.i112.i.complete_skb.exit.i_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.complete_skb.exit.i_crit_edge, %update_chksum.exit.i.i.complete_skb.exit.i_crit_edge
  %prev.i = getelementptr inbounds %struct.anon, ptr %call.i.i, i32 0, i32 1
  %319 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %call.i.i, ptr %prev.i, align 4
  br label %free_buf.i

free_buf.i:                                       ; preds = %free_nskb.i, %complete_skb.exit.i, %if.end9.i.free_buf.i_crit_edge
  %nskb.0.i = phi ptr [ null, %free_nskb.i ], [ %call.i.i, %complete_skb.exit.i ], [ null, %if.end9.i.free_buf.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %free_req.i

free_req.i:                                       ; preds = %free_buf.i, %if.end.i.free_req.i_crit_edge
  %nskb.1.i = phi ptr [ %nskb.0.i, %free_buf.i ], [ null, %if.end.i.free_req.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #8
  br label %put_sg

free_nskb.i:                                      ; preds = %tls_enc_records.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %free_buf.i

put_sg:                                           ; preds = %free_req.i, %if.end16.put_sg_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.put_sg_crit_edge, %if.then10.put_sg_crit_edge
  %nskb.0 = phi ptr [ null, %if.then10.put_sg_crit_edge ], [ %skb, %if.else.i.i.i.i.put_sg_crit_edge ], [ %skb, %if.end15.sink.split.i.i.i.i ], [ %nskb.1.i, %free_req.i ], [ null, %if.end16.put_sg_crit_edge ]
  %320 = ptrtoint ptr %resync_sgs to i32
  call void @__asan_load4_noabort(i32 %320)
  %resync_sgs.promoted = load i32, ptr %resync_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resync_sgs.promoted)
  %tobool19.not77 = icmp eq i32 %resync_sgs.promoted, 0
  br i1 %tobool19.not77, label %put_sg.free_orig_crit_edge, label %put_sg.while.body_crit_edge

put_sg.while.body_crit_edge:                      ; preds = %put_sg
  br label %while.body

put_sg.free_orig_crit_edge:                       ; preds = %put_sg
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_orig

while.body:                                       ; preds = %put_page.exit.while.body_crit_edge, %put_sg.while.body_crit_edge
  %dec7578 = phi i32 [ %dec, %put_page.exit.while.body_crit_edge ], [ %resync_sgs.promoted, %put_sg.while.body_crit_edge ]
  %dec = add i32 %dec7578, -1
  %arrayidx = getelementptr %struct.scatterlist, ptr %call7.i.i, i32 %dec
  %321 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %arrayidx, align 4
  %and.i.i = and i32 %322, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !32

do.body2.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !36
  unreachable

sg_page.exit:                                     ; preds = %while.body
  %and.i = and i32 %322, -4
  %323 = inttoptr i32 %and.i to ptr
  %324 = getelementptr inbounds %struct.page, ptr %323, i32 0, i32 1
  %325 = ptrtoint ptr %324 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load volatile i32, ptr %324, align 4
  %and.i.i62 = and i32 %326, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i62)
  %tobool.not.i.i63 = icmp eq i32 %and.i.i62, 0
  br i1 %tobool.not.i.i63, label %sg_page.exit._compound_head.exit.i_crit_edge, label %if.then.i.i65, !prof !32

sg_page.exit._compound_head.exit.i_crit_edge:     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i

if.then.i.i65:                                    ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i64 = add i32 %326, -1
  %.pre = inttoptr i32 %sub.i.i64 to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i65, %sg_page.exit._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %323, %sg_page.exit._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i65 ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %327 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %cmp.i.i.i.i67 = icmp eq i32 %328, 0
  br i1 %cmp.i.i.i.i67, label %if.then.i.i.i.i68, label %do.end5.i.i.i.i, !prof !31

if.then.i.i.i.i68:                                ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.5) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !42
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %329 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %329, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@tls_sw_fallback, %if.then.i.i.i.i.i70)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i70], !srcloc !46

if.then.i.i.i.i.i70:                              ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i69 = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i69) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i70, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %.pre-phi) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %tobool19.not = icmp eq i32 %dec, 0
  br i1 %tobool19.not, label %put_page.exit.free_orig_crit_edge, label %put_page.exit.while.body_crit_edge

put_page.exit.while.body_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

put_page.exit.free_orig_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_orig

free_orig:                                        ; preds = %put_page.exit.free_orig_crit_edge, %put_sg.free_orig_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %tobool21.not = icmp eq ptr %nskb.0, null
  br i1 %tobool21.not, label %free_orig.if.else_crit_edge, label %if.then22

free_orig.if.else_crit_edge:                      ; preds = %free_orig
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then22:                                        ; preds = %free_orig
  call void @__sanitizer_cov_trace_pc() #10
  call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup

if.else:                                          ; preds = %free_orig.if.else_crit_edge, %if.end.if.else_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then22, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %skb, %entry.cleanup_crit_edge ], [ null, %if.else ], [ %nskb.0, %if.then22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rcd_sn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sync_size) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resync_sgs) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %sg_out) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tls_validate_xmit_skb_sw(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %dev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tls_sw_fallback(ptr noundef %sk, ptr noundef %skb)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tls_encrypt_skb(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call fastcc ptr @tls_sw_fallback(ptr noundef %2, ptr noundef %skb)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tls_sw_fallback_init(ptr nocapture noundef readnone %sk, ptr nocapture noundef %offload_ctx, ptr noundef %crypto_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_aead(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 128) #8
  %0 = ptrtoint ptr %offload_ctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %offload_ctx, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @tls_sw_fallback_init._rs, ptr noundef nonnull @__func__.tls_sw_fallback_init) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %1) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %2 = ptrtoint ptr %offload_ctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %offload_ctx, align 8
  br label %cleanup

if.end9:                                          ; preds = %entry
  %key10 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %crypto_info, i32 0, i32 2
  %call12 = tail call i32 @crypto_aead_setkey(ptr noundef %call, ptr noundef %key10, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.free_aead_crit_edge

if.end9.free_aead_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_aead

if.end15:                                         ; preds = %if.end9
  %3 = ptrtoint ptr %offload_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %offload_ctx, align 8
  %call17 = tail call i32 @crypto_aead_setauthsize(ptr noundef %4, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %if.end15.free_aead_crit_edge

if.end15.free_aead_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_aead

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

free_aead:                                        ; preds = %if.end15.free_aead_crit_edge, %if.end9.free_aead_crit_edge
  %rc.0 = phi i32 [ %call12, %if.end9.free_aead_crit_edge ], [ %call17, %if.end15.free_aead_crit_edge ]
  %5 = ptrtoint ptr %offload_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %offload_ctx, align 8
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %6, ptr noundef %base.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_aead, %if.end15.cleanup_crit_edge, %if.end
  %retval.0 = phi i32 [ 0, %if.end15.cleanup_crit_edge ], [ %1, %if.end ], [ %rc.0, %free_aead ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill_sg_in(ptr noundef %sg_in, ptr noundef %skb, ptr noundef %ctx, ptr noundef %rcd_sn, ptr nocapture noundef writeonly %sync_size, ptr nocapture noundef writeonly %resync_sgs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %7 = lshr i16 %bf.load.i.i, 10
  %8 = and i16 %7, 60
  %mul.i.i = zext i16 %8 to i32
  %add = add i32 %sub.ptr.sub.i, %mul.i.i
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %sub = sub i32 %10, %add
  %seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seq, align 4
  %lock = getelementptr inbounds %struct.tls_offload_context_tx, ptr %ctx, i32 0, i32 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call8 = tail call ptr @tls_get_record(ptr noundef %ctx, i32 noundef %12, ptr noundef %rcd_sn) #8
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %end_seq.i = getelementptr inbounds %struct.tls_record_info, ptr %call8, i32 0, i32 1
  %13 = ptrtoint ptr %end_seq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end_seq.i, align 4
  %len.i = getelementptr inbounds %struct.tls_record_info, ptr %call8, i32 0, i32 2
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  %sub.i.neg = sub i32 %16, %14
  %sub11 = add i32 %sub.i.neg, %12
  %17 = ptrtoint ptr %sync_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub11, ptr %sync_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11)
  %cmp12 = icmp slt i32 %sub11, 0
  br i1 %cmp12, label %if.then14, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11)
  %cmp2292.not = icmp eq i32 %sub11, 0
  br i1 %cmp2292.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then14:                                        ; preds = %if.end
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #8
  br i1 %cmp.i, label %if.then14.cleanup_crit_edge, label %if.then19

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %sync_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %sync_size, align 4
  br label %cleanup

for.body:                                         ; preds = %if.end34.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.094 = phi i32 [ %inc, %if.end34.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %remaining.093 = phi i32 [ %sub28, %if.end34.for.body_crit_edge ], [ %sub11, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tls_record_info, ptr %call8, i32 0, i32 4, i32 %i.094
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %23 = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !32

if.then.i.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = add i32 %25, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %22 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %26, %if.end.i.i.i ]
  %27 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %28 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  %add.i.i.i = add i32 %29, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, 128
  br i1 %cmp.i.i.i, label %if.then.i1.i.i, label %do.end5.i.i.i, !prof !31

if.then.i1.i.i:                                   ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = inttoptr i32 %retval.0.i.i.i to ptr
  tail call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.4) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #8, !srcloc !47
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit.i.i
  %call.i.i.i.i9.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@fill_sg_in, %if.then.i.i.i.i.i)) #8
          to label %__skb_frag_ref.exit [label %if.then.i.i.i.i.i], !srcloc !46

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__page_ref_mod(ptr noundef %27, i32 noundef 1) #8
  br label %__skb_frag_ref.exit

__skb_frag_ref.exit:                              ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i
  %add.ptr = getelementptr %struct.scatterlist, ptr %sg_in, i32 %i.094
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %bv_len.i = getelementptr %struct.tls_record_info, ptr %call8, i32 0, i32 4, i32 %i.094, i32 1
  %34 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bv_len.i, align 4
  %bv_offset.i = getelementptr %struct.tls_record_info, ptr %call8, i32 0, i32 4, i32 %i.094, i32 2
  %36 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bv_offset.i, align 4
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr, align 4
  %40 = ptrtoint ptr %33 to i32
  %and2.i.i = and i32 %40, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !32

do.body5.i.i:                                     ; preds = %__skb_frag_ref.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !34
  unreachable

do.body11.i.i:                                    ; preds = %__skb_frag_ref.exit
  %and.i.i.i85 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i85)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i85, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !32

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !35
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %39, 3
  %or.i.i = or i32 %and.i.i, %40
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i.i, ptr %add.ptr, align 4
  %offset1.i = getelementptr %struct.scatterlist, ptr %sg_in, i32 %i.094, i32 1
  %42 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %37, ptr %offset1.i, align 4
  %length.i = getelementptr %struct.scatterlist, ptr %sg_in, i32 %i.094, i32 2
  %43 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %35, ptr %length.i, align 4
  %44 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bv_len.i, align 4
  %sub28 = sub i32 %remaining.093, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub28)
  %cmp29 = icmp slt i32 %sub28, 0
  br i1 %cmp29, label %if.end34.thread, label %if.end34

if.end34.thread:                                  ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length.i, align 4
  %add33 = add i32 %47, %sub28
  store i32 %add33, ptr %length.i, align 4
  %inc99 = add i32 %i.094, 1
  br label %for.end

if.end34:                                         ; preds = %sg_set_page.exit
  %inc = add i32 %i.094, 1
  %cmp22.not = icmp eq i32 %sub28, 0
  br i1 %cmp22.not, label %if.end34.for.end_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end34.for.end_crit_edge, %if.end34.thread, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc99, %if.end34.thread ], [ %inc, %if.end34.for.end_crit_edge ]
  %48 = ptrtoint ptr %resync_sgs to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %i.0.lcssa, ptr %resync_sgs, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #8
  %arrayidx36 = getelementptr %struct.scatterlist, ptr %sg_in, i32 %i.0.lcssa
  %call37 = tail call i32 @skb_to_sgvec(ptr noundef %skb, ptr noundef %arrayidx36, i32 noundef %add, i32 noundef %sub) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  %. = select i1 %cmp38, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then19, %if.then14.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then19 ], [ -22, %if.then14.cleanup_crit_edge ], [ %., %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tls_get_record(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_to_sgvec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_copychunks(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_copy_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_add(i32 noundef %i, ptr noundef %r) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 %i, ptr elementtype(i32) %r) #8, !srcloc !30
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool1.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool1.not.i, label %entry.if.end15.sink.split.i_crit_edge, label %if.else.i, !prof !31

entry.if.end15.sink.split.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i

if.else.i:                                        ; preds = %entry
  %add.i = add i32 %asmresult.i.i.i, %i
  %1 = or i32 %add.i, %asmresult.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i = icmp sgt i32 %1, -1
  br i1 %.not.i, label %if.else.i.__refcount_add.exit_crit_edge, label %if.else.i.if.end15.sink.split.i_crit_edge, !prof !32

if.else.i.if.end15.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i

if.else.i.__refcount_add.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__refcount_add.exit

if.end15.sink.split.i:                            ; preds = %if.else.i.if.end15.sink.split.i_crit_edge, %entry.if.end15.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 2, %entry.if.end15.sink.split.i_crit_edge ], [ 1, %if.else.i.if.end15.sink.split.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef %.sink.i) #8
  br label %__refcount_add.exit

__refcount_add.exit:                              ; preds = %if.end15.sink.split.i, %if.else.i.__refcount_add.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__ksymtab_tls_validate_xmit_skb, !1, !"__ksymtab_tls_validate_xmit_skb", i1 false, i1 false}
!1 = !{!"../net/tls/tls_device_fallback.c", i32 432, i32 1}
!2 = !{ptr @__ksymtab_tls_encrypt_skb, !3, !"__ksymtab_tls_encrypt_skb", i1 false, i1 false}
!3 = !{!"../net/tls/tls_device_fallback.c", i32 445, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/tls/tls_device_fallback.c", i32 455, i32 24}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/tls/tls_device_fallback.c", i32 458, i32 3}
!8 = !{ptr @tls_sw_fallback_init._rs, !7, !"_rs", i1 false, i1 false}
!9 = !{ptr @__func__.tls_sw_fallback_init, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @tls_sw_fallback_init._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @tls_sw_fallback_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../net/tls/tls_device_fallback.c", i32 218, i32 3}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/mm.h", i32 717, i32 2}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
!30 = !{i64 2148211886, i64 2148211918, i64 2148211947, i64 2148211981, i64 2148212012, i64 2148212035}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2154416130, i64 2154416622, i64 2154416167, i64 2154416223, i64 2154416257, i64 2154416281, i64 2154416322, i64 2154416343, i64 2154416371, i64 2154416405}
!34 = !{i64 2154409811, i64 2154410303, i64 2154409848, i64 2154409904, i64 2154409938, i64 2154409962, i64 2154410003, i64 2154410024, i64 2154410052, i64 2154410086}
!35 = !{i64 2154411421, i64 2154411913, i64 2154411458, i64 2154411514, i64 2154411548, i64 2154411572, i64 2154411613, i64 2154411634, i64 2154411662, i64 2154411696}
!36 = !{i64 2154413369, i64 2154413861, i64 2154413406, i64 2154413462, i64 2154413496, i64 2154413520, i64 2154413561, i64 2154413582, i64 2154413610, i64 2154413644}
!37 = !{i64 6531543}
!38 = !{i64 6532645, i64 6532686, i64 6532731}
!39 = !{i64 2148299887}
!40 = !{i64 2148214351, i64 2148214383, i64 2148214412, i64 2148214446, i64 2148214477, i64 2148214500}
!41 = !{i64 2148893839}
!42 = !{i64 2153452129, i64 2153452612, i64 2153452166, i64 2153452222, i64 2153452256, i64 2153452280, i64 2153452321, i64 2153452342, i64 2153452370, i64 2153452404}
!43 = !{i64 2148298808}
!44 = !{i64 2148213541, i64 2148213573, i64 2148213602, i64 2148213636, i64 2148213667, i64 2148213690}
!45 = !{i64 2148299037}
!46 = !{i64 2148752104, i64 2148752109, i64 2148752122, i64 2148752166, i64 2148752200, i64 2148752221}
!47 = !{i64 2153476102, i64 2153476586, i64 2153476139, i64 2153476195, i64 2153476229, i64 2153476253, i64 2153476294, i64 2153476315, i64 2153476343, i64 2153476377}
!48 = !{i64 2148210356, i64 2148210382, i64 2148210411, i64 2148210445, i64 2148210476, i64 2148210499}
