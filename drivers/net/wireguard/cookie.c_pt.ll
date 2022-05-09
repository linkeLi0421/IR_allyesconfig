; ModuleID = '/llk/IR_all_yes/drivers/net/wireguard/cookie.c_pt.bc'
source_filename = "../drivers/net/wireguard/cookie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cookie_checker = type { [32 x i8], [32 x i8], [32 x i8], i64, %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blake2s_state = type { [8 x i32], [2 x i32], [2 x i32], [64 x i8], i32, i32 }
%struct.wg_device = type { ptr, [124 x i8], %struct.crypt_queue, %struct.crypt_queue, %struct.crypt_queue, ptr, ptr, ptr, %struct.noise_static_identity, ptr, ptr, ptr, %struct.cookie_checker, ptr, ptr, %struct.allowedips, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16, [126 x i8] }
%struct.crypt_queue = type { %struct.ptr_ring, ptr, i32, [120 x i8] }
%struct.ptr_ring = type { i32, %struct.spinlock, [80 x i8], i32, i32, %struct.spinlock, [76 x i8], i32, i32, ptr, [116 x i8] }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.noise_static_identity = type { [32 x i8], [32 x i8], %struct.rw_semaphore, i8 }
%struct.allowedips = type { ptr, ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wg_peer = type { ptr, %struct.prev_queue, %struct.prev_queue, %struct.sk_buff_head, i32, i8, %struct.noise_keypairs, %struct.endpoint, %struct.dst_cache, %struct.rwlock_t, %struct.noise_handshake, %struct.atomic64_t, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cookie, %struct.hlist_node, i64, i64, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i16, i8, i8, %struct.timespec64, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.napi_struct, i64 }
%struct.prev_queue = type { ptr, ptr, ptr, %struct.anon.142, %struct.atomic_t }
%struct.anon.142 = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.noise_keypairs = type { ptr, ptr, ptr, %struct.spinlock }
%struct.endpoint = type { %union.anon.143, %union.anon.144 }
%union.anon.143 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%union.anon.144 = type { %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.noise_handshake = type { %struct.index_hashtable_entry, i32, i64, ptr, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, %struct.rw_semaphore }
%struct.index_hashtable_entry = type { ptr, %struct.hlist_node, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cookie = type { i64, i8, [16 x i8], i8, [16 x i8], [32 x i8], [32 x i8], %struct.rw_semaphore }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.timespec64 = type { i64, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.1, %union.anon.4, %union.anon.112, [48 x i8], %union.anon.113, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.115, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr, %union.anon.3 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.112 = type { i64 }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { i32, ptr }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.117, i32, i32, i32, i16, i16, %union.anon.119, i32, %union.anon.120, %union.anon.121, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.117 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i16 }
%struct.message_macs = type { [16 x i8], [16 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.141, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.141 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.message_handshake_cookie = type { %struct.message_header, i32, [24 x i8], [32 x i8] }
%struct.message_header = type { i32 }

@wg_cookie_checker_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&checker->secret_lock\00", [42 x i8] zeroinitializer }, align 32
@cookie_key_label = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cookie--", [24 x i8] zeroinitializer }, align 32
@mac1_key_label = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mac1----", [24 x i8] zeroinitializer }, align 32
@wg_cookie_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&cookie->lock\00", [18 x i8] zeroinitializer }, align 32
@wg_cookie_message_consume.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 57, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wireguard\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wg_cookie_message_consume\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/wireguard/cookie.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Could not decrypt invalid cookie response\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"wireguard: %s: Could not decrypt invalid cookie response\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/crypto/blake2s.h\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 22, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"cookie_key_label\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 30, i32 17 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"mac1_key_label\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 29, i32 17 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 72, i32 2 }
@___asan_gen_.39 = private constant [34 x i8] c"../drivers/net/wireguard/cookie.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 230, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [28 x i8] c"../include/crypto/blake2s.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 95, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @wg_cookie_checker_init.__key, ptr @.str, ptr @cookie_key_label, ptr @mac1_key_label, ptr @wg_cookie_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_cookie_checker_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cookie_key_label to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac1_key_label to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_cookie_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_cookie_checker_init(ptr noundef %checker, ptr noundef %wg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %secret_lock = getelementptr inbounds %struct.cookie_checker, ptr %checker, i32 0, i32 4
  tail call void @__init_rwsem(ptr noundef %secret_lock, ptr noundef nonnull @.str, ptr noundef nonnull @wg_cookie_checker_init.__key) #3
  %call.i.i = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #3
  %secret_birthdate = getelementptr inbounds %struct.cookie_checker, ptr %checker, i32 0, i32 3
  %0 = ptrtoint ptr %secret_birthdate to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call.i.i, ptr %secret_birthdate, align 8
  tail call void @get_random_bytes(ptr noundef %checker, i32 noundef 32) #3
  %device = getelementptr inbounds %struct.cookie_checker, ptr %checker, i32 0, i32 5
  %1 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %wg, ptr %device, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_cookie_checker_precompute_device_keys(ptr noundef %checker) local_unnamed_addr #0 align 64 {
entry:
  %blake.i21 = alloca %struct.blake2s_state, align 4
  %blake.i = alloca %struct.blake2s_state, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.cookie_checker, ptr %checker, i32 0, i32 5
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %has_identity = getelementptr inbounds %struct.wg_device, ptr %1, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %has_identity to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_identity, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then, !prof !29

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %static_identity = getelementptr inbounds %struct.wg_device, ptr %1, i32 0, i32 8
  %cookie_encryption_key = getelementptr inbounds %struct.cookie_checker, ptr %checker, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %blake.i) #3
  %4 = getelementptr inbounds i8, ptr %blake.i, i32 48
  %5 = call ptr @memset(ptr %4, i32 255, i32 64)
  %6 = ptrtoint ptr %blake.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1795745351, ptr %blake.i, align 4
  %arrayidx3.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1150833019, ptr %arrayidx3.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1013904242, ptr %arrayidx5.i.i.i, align 4
  %arrayidx7.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1521486534, ptr %arrayidx7.i.i.i, align 4
  %arrayidx9.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1359893119, ptr %arrayidx9.i.i.i, align 4
  %arrayidx11.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 5
  %11 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1694144372, ptr %arrayidx11.i.i.i, align 4
  %arrayidx13.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 528734635, ptr %arrayidx13.i.i.i, align 4
  %arrayidx15.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 7
  %13 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1541459225, ptr %arrayidx15.i.i.i, align 4
  %t.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i, i32 0, i32 1
  %buflen.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i, i32 0, i32 4
  %14 = ptrtoint ptr %buflen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %buflen.i.i.i, align 4
  %outlen22.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i, i32 0, i32 5
  %15 = call ptr @memset(ptr %t.i.i.i, i32 0, i32 16)
  %16 = ptrtoint ptr %outlen22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32, ptr %outlen22.i.i.i, align 4
  call void @blake2s_update(ptr noundef nonnull %blake.i, ptr noundef nonnull @cookie_key_label, i32 noundef 8) #3
  call void @blake2s_update(ptr noundef nonnull %blake.i, ptr noundef %static_identity, i32 noundef 32) #3
  call void @blake2s_final(ptr noundef nonnull %blake.i, ptr noundef %cookie_encryption_key) #3
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %blake.i) #3
  %message_mac1_key = getelementptr inbounds %struct.cookie_checker, ptr %checker, i32 0, i32 2
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 8
  %static_identity8 = getelementptr inbounds %struct.wg_device, ptr %18, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %blake.i21) #3
  %19 = getelementptr inbounds i8, ptr %blake.i21, i32 48
  %20 = call ptr @memset(ptr %19, i32 255, i32 64)
  %21 = ptrtoint ptr %blake.i21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1795745351, ptr %blake.i21, align 4
  %arrayidx3.i.i.i22 = getelementptr inbounds [8 x i32], ptr %blake.i21, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx3.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1150833019, ptr %arrayidx3.i.i.i22, align 4
  %arrayidx5.i.i.i23 = getelementptr inbounds [8 x i32], ptr %blake.i21, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx5.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1013904242, ptr %arrayidx5.i.i.i23, align 4
  %arrayidx7.i.i.i24 = getelementptr inbounds [8 x i32], ptr %blake.i21, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx7.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1521486534, ptr %arrayidx7.i.i.i24, align 4
  %arrayidx9.i.i.i25 = getelementptr inbounds [8 x i32], ptr %blake.i21, i32 0, i32 4
  %25 = ptrtoint ptr %arrayidx9.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1359893119, ptr %arrayidx9.i.i.i25, align 4
  %arrayidx11.i.i.i26 = getelementptr inbounds [8 x i32], ptr %blake.i21, i32 0, i32 5
  %26 = ptrtoint ptr %arrayidx11.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1694144372, ptr %arrayidx11.i.i.i26, align 4
  %arrayidx13.i.i.i27 = getelementptr inbounds [8 x i32], ptr %blake.i21, i32 0, i32 6
  %27 = ptrtoint ptr %arrayidx13.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 528734635, ptr %arrayidx13.i.i.i27, align 4
  %arrayidx15.i.i.i28 = getelementptr inbounds [8 x i32], ptr %blake.i21, i32 0, i32 7
  %28 = ptrtoint ptr %arrayidx15.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1541459225, ptr %arrayidx15.i.i.i28, align 4
  %t.i.i.i29 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i21, i32 0, i32 1
  %buflen.i.i.i30 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i21, i32 0, i32 4
  %29 = ptrtoint ptr %buflen.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %buflen.i.i.i30, align 4
  %outlen22.i.i.i31 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i21, i32 0, i32 5
  %30 = call ptr @memset(ptr %t.i.i.i29, i32 0, i32 16)
  %31 = ptrtoint ptr %outlen22.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 32, ptr %outlen22.i.i.i31, align 4
  call void @blake2s_update(ptr noundef nonnull %blake.i21, ptr noundef nonnull @mac1_key_label, i32 noundef 8) #3
  call void @blake2s_update(ptr noundef nonnull %blake.i21, ptr noundef %static_identity8, i32 noundef 32) #3
  call void @blake2s_final(ptr noundef nonnull %blake.i21, ptr noundef %message_mac1_key) #3
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %blake.i21) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %cookie_encryption_key11 = getelementptr inbounds %struct.cookie_checker, ptr %checker, i32 0, i32 1
  %32 = call ptr @memset(ptr %cookie_encryption_key11, i32 0, i32 64)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_cookie_checker_precompute_peer_keys(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  %blake.i10 = alloca %struct.blake2s_state, align 4
  %blake.i = alloca %struct.blake2s_state, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie_decryption_key = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 15, i32 5
  %remote_static = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10, i32 5
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %blake.i) #3
  %0 = getelementptr inbounds i8, ptr %blake.i, i32 48
  %1 = call ptr @memset(ptr %0, i32 255, i32 64)
  %2 = ptrtoint ptr %blake.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1795745351, ptr %blake.i, align 4
  %arrayidx3.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1150833019, ptr %arrayidx3.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1013904242, ptr %arrayidx5.i.i.i, align 4
  %arrayidx7.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1521486534, ptr %arrayidx7.i.i.i, align 4
  %arrayidx9.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1359893119, ptr %arrayidx9.i.i.i, align 4
  %arrayidx11.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 5
  %7 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1694144372, ptr %arrayidx11.i.i.i, align 4
  %arrayidx13.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 6
  %8 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 528734635, ptr %arrayidx13.i.i.i, align 4
  %arrayidx15.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 7
  %9 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1541459225, ptr %arrayidx15.i.i.i, align 4
  %t.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i, i32 0, i32 1
  %buflen.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i, i32 0, i32 4
  %10 = ptrtoint ptr %buflen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %buflen.i.i.i, align 4
  %outlen22.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i, i32 0, i32 5
  %11 = call ptr @memset(ptr %t.i.i.i, i32 0, i32 16)
  %12 = ptrtoint ptr %outlen22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %outlen22.i.i.i, align 4
  call void @blake2s_update(ptr noundef nonnull %blake.i, ptr noundef nonnull @cookie_key_label, i32 noundef 8) #3
  call void @blake2s_update(ptr noundef nonnull %blake.i, ptr noundef %remote_static, i32 noundef 32) #3
  call void @blake2s_final(ptr noundef nonnull %blake.i, ptr noundef %cookie_decryption_key) #3
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %blake.i) #3
  %message_mac1_key = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 15, i32 6
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %blake.i10) #3
  %13 = getelementptr inbounds i8, ptr %blake.i10, i32 48
  %14 = call ptr @memset(ptr %13, i32 255, i32 64)
  %15 = ptrtoint ptr %blake.i10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1795745351, ptr %blake.i10, align 4
  %arrayidx3.i.i.i11 = getelementptr inbounds [8 x i32], ptr %blake.i10, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx3.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1150833019, ptr %arrayidx3.i.i.i11, align 4
  %arrayidx5.i.i.i12 = getelementptr inbounds [8 x i32], ptr %blake.i10, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx5.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1013904242, ptr %arrayidx5.i.i.i12, align 4
  %arrayidx7.i.i.i13 = getelementptr inbounds [8 x i32], ptr %blake.i10, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx7.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1521486534, ptr %arrayidx7.i.i.i13, align 4
  %arrayidx9.i.i.i14 = getelementptr inbounds [8 x i32], ptr %blake.i10, i32 0, i32 4
  %19 = ptrtoint ptr %arrayidx9.i.i.i14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1359893119, ptr %arrayidx9.i.i.i14, align 4
  %arrayidx11.i.i.i15 = getelementptr inbounds [8 x i32], ptr %blake.i10, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx11.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1694144372, ptr %arrayidx11.i.i.i15, align 4
  %arrayidx13.i.i.i16 = getelementptr inbounds [8 x i32], ptr %blake.i10, i32 0, i32 6
  %21 = ptrtoint ptr %arrayidx13.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 528734635, ptr %arrayidx13.i.i.i16, align 4
  %arrayidx15.i.i.i17 = getelementptr inbounds [8 x i32], ptr %blake.i10, i32 0, i32 7
  %22 = ptrtoint ptr %arrayidx15.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1541459225, ptr %arrayidx15.i.i.i17, align 4
  %t.i.i.i18 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i10, i32 0, i32 1
  %buflen.i.i.i19 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i10, i32 0, i32 4
  %23 = ptrtoint ptr %buflen.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %buflen.i.i.i19, align 4
  %outlen22.i.i.i20 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i10, i32 0, i32 5
  %24 = call ptr @memset(ptr %t.i.i.i18, i32 0, i32 16)
  %25 = ptrtoint ptr %outlen22.i.i.i20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 32, ptr %outlen22.i.i.i20, align 4
  call void @blake2s_update(ptr noundef nonnull %blake.i10, ptr noundef nonnull @mac1_key_label, i32 noundef 8) #3
  call void @blake2s_update(ptr noundef nonnull %blake.i10, ptr noundef %remote_static, i32 noundef 32) #3
  call void @blake2s_final(ptr noundef nonnull %blake.i10, ptr noundef %message_mac1_key) #3
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %blake.i10) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_cookie_init(ptr noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %cookie, i32 0, i32 208)
  %lock = getelementptr inbounds %struct.cookie, ptr %cookie, i32 0, i32 7
  tail call void @__init_rwsem(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @wg_cookie_init.__key) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wg_cookie_validate_packet(ptr noundef %checker, ptr noundef %skb, i1 noundef zeroext %check_cookie) local_unnamed_addr #0 align 64 {
entry:
  %state.i.i35 = alloca %struct.blake2s_state, align 4
  %state.i.i = alloca %struct.blake2s_state, align 4
  %computed_mac = alloca [16 x i8], align 1
  %cookie = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %computed_mac) #3
  %4 = call ptr @memset(ptr %computed_mac, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cookie) #3
  %message_mac1_key = getelementptr inbounds %struct.cookie_checker, ptr %checker, i32 0, i32 2
  %sub.i = add i32 %3, -32
  %5 = call ptr @memset(ptr %cookie, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %state.i.i) #3
  %tobool.not.i.i = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.not.i.i = icmp ne i32 %sub.i, 0
  %or.cond.not.i.i = and i1 %tobool.not.i.i, %cmp.not.i.i
  %tobool8.not.i.i = icmp eq ptr %message_mac1_key, null
  %or.cond2.i.i = or i1 %tobool8.not.i.i, %or.cond.not.i.i
  br i1 %or.cond2.i.i, label %do.end.i.i, label %entry.compute_mac1.exit_crit_edge, !prof !30

entry.compute_mac1.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %compute_mac1.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 97, i32 noundef 9, ptr noundef null) #3
  br label %compute_mac1.exit

compute_mac1.exit:                                ; preds = %do.end.i.i, %entry.compute_mac1.exit_crit_edge
  %6 = getelementptr inbounds i8, ptr %state.i.i, i32 48
  %7 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1795737207, ptr %state.i.i, align 4
  %arrayidx3.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1150833019, ptr %arrayidx3.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1013904242, ptr %arrayidx5.i.i.i, align 4
  %arrayidx7.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1521486534, ptr %arrayidx7.i.i.i, align 4
  %arrayidx9.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1359893119, ptr %arrayidx9.i.i.i, align 4
  %arrayidx11.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1694144372, ptr %arrayidx11.i.i.i, align 4
  %arrayidx13.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 528734635, ptr %arrayidx13.i.i.i, align 4
  %arrayidx15.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1541459225, ptr %arrayidx15.i.i.i, align 4
  %t.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state.i.i, i32 0, i32 1
  %buflen.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state.i.i, i32 0, i32 4
  %outlen22.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state.i.i, i32 0, i32 5
  %15 = call ptr @memset(ptr %t.i.i.i, i32 0, i32 16)
  %16 = ptrtoint ptr %outlen22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %outlen22.i.i.i, align 4
  %17 = call ptr @memcpy(ptr %6, ptr %message_mac1_key, i32 32)
  %arrayidx24.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state.i.i, i32 0, i32 3, i32 32
  %18 = call ptr @memset(ptr %arrayidx24.i.i.i, i32 0, i32 32)
  %19 = ptrtoint ptr %buflen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 64, ptr %buflen.i.i.i, align 4
  call void @blake2s_update(ptr noundef nonnull %state.i.i, ptr noundef %1, i32 noundef %sub.i) #3
  call void @blake2s_final(ptr noundef nonnull %state.i.i, ptr noundef nonnull %computed_mac) #3
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %state.i.i) #3
  %call.i = call i32 @__crypto_memneq(ptr noundef nonnull %computed_mac, ptr noundef %add.ptr1, i32 noundef 16) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp ne i32 %call.i, 0
  %check_cookie.not = xor i1 %check_cookie, true
  %brmerge = or i1 %cmp.not.i.not, %check_cookie.not
  %not.cmp.not.i.not = xor i1 %cmp.not.i.not, true
  %.mux = zext i1 %not.cmp.not.i.not to i32
  br i1 %brmerge, label %compute_mac1.exit.out_crit_edge, label %if.end9

compute_mac1.exit.out_crit_edge:                  ; preds = %compute_mac1.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end9:                                          ; preds = %compute_mac1.exit
  call fastcc void @make_cookie(ptr noundef nonnull %cookie, ptr noundef %skb, ptr noundef %checker)
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %add.i = add i32 %23, -16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %state.i.i35) #3
  %tobool.not.i.i36 = icmp eq ptr %21, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp.not.i.i37 = icmp ne i32 %add.i, 0
  %or.cond.not.i.i38 = and i1 %tobool.not.i.i36, %cmp.not.i.i37
  br i1 %or.cond.not.i.i38, label %do.end.i.i39, label %if.end9.compute_mac2.exit_crit_edge, !prof !30

if.end9.compute_mac2.exit_crit_edge:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %compute_mac2.exit

do.end.i.i39:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 97, i32 noundef 9, ptr noundef null) #3
  br label %compute_mac2.exit

compute_mac2.exit:                                ; preds = %do.end.i.i39, %if.end9.compute_mac2.exit_crit_edge
  %24 = getelementptr inbounds i8, ptr %state.i.i35, i32 48
  %25 = ptrtoint ptr %state.i.i35 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1795749495, ptr %state.i.i35, align 4
  %arrayidx3.i.i.i40 = getelementptr inbounds [8 x i32], ptr %state.i.i35, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx3.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1150833019, ptr %arrayidx3.i.i.i40, align 4
  %arrayidx5.i.i.i41 = getelementptr inbounds [8 x i32], ptr %state.i.i35, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx5.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1013904242, ptr %arrayidx5.i.i.i41, align 4
  %arrayidx7.i.i.i42 = getelementptr inbounds [8 x i32], ptr %state.i.i35, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx7.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1521486534, ptr %arrayidx7.i.i.i42, align 4
  %arrayidx9.i.i.i43 = getelementptr inbounds [8 x i32], ptr %state.i.i35, i32 0, i32 4
  %29 = ptrtoint ptr %arrayidx9.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1359893119, ptr %arrayidx9.i.i.i43, align 4
  %arrayidx11.i.i.i44 = getelementptr inbounds [8 x i32], ptr %state.i.i35, i32 0, i32 5
  %30 = ptrtoint ptr %arrayidx11.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1694144372, ptr %arrayidx11.i.i.i44, align 4
  %arrayidx13.i.i.i45 = getelementptr inbounds [8 x i32], ptr %state.i.i35, i32 0, i32 6
  %31 = ptrtoint ptr %arrayidx13.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 528734635, ptr %arrayidx13.i.i.i45, align 4
  %arrayidx15.i.i.i46 = getelementptr inbounds [8 x i32], ptr %state.i.i35, i32 0, i32 7
  %32 = ptrtoint ptr %arrayidx15.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1541459225, ptr %arrayidx15.i.i.i46, align 4
  %t.i.i.i47 = getelementptr inbounds %struct.blake2s_state, ptr %state.i.i35, i32 0, i32 1
  %buflen.i.i.i48 = getelementptr inbounds %struct.blake2s_state, ptr %state.i.i35, i32 0, i32 4
  %outlen22.i.i.i49 = getelementptr inbounds %struct.blake2s_state, ptr %state.i.i35, i32 0, i32 5
  %33 = call ptr @memset(ptr %t.i.i.i47, i32 0, i32 16)
  %34 = ptrtoint ptr %outlen22.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 16, ptr %outlen22.i.i.i49, align 4
  %35 = call ptr @memcpy(ptr %24, ptr %cookie, i32 16)
  %arrayidx24.i.i.i50 = getelementptr inbounds %struct.blake2s_state, ptr %state.i.i35, i32 0, i32 3, i32 16
  %36 = call ptr @memset(ptr %arrayidx24.i.i.i50, i32 0, i32 48)
  %37 = ptrtoint ptr %buflen.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 64, ptr %buflen.i.i.i48, align 4
  call void @blake2s_update(ptr noundef nonnull %state.i.i35, ptr noundef %21, i32 noundef %add.i) #3
  call void @blake2s_final(ptr noundef nonnull %state.i.i35, ptr noundef nonnull %computed_mac) #3
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %state.i.i35) #3
  %mac2 = getelementptr inbounds %struct.message_macs, ptr %add.ptr1, i32 0, i32 1
  %call.i51 = call i32 @__crypto_memneq(ptr noundef nonnull %computed_mac, ptr noundef %mac2, i32 noundef 16) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp.not.i52.not = icmp eq i32 %call.i51, 0
  br i1 %cmp.not.i52.not, label %if.end20, label %compute_mac2.exit.out_crit_edge

compute_mac2.exit.out_crit_edge:                  ; preds = %compute_mac2.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end20:                                         ; preds = %compute_mac2.exit
  call void @__sanitizer_cov_trace_pc() #5
  %device = getelementptr inbounds %struct.cookie_checker, ptr %checker, i32 0, i32 5
  %38 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 128
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 127
  %42 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nd_net.i, align 4
  %call22 = call zeroext i1 @wg_ratelimiter_allow(ptr noundef %skb, ptr noundef %43) #3
  %spec.select = select i1 %call22, i32 3, i32 2
  br label %out

out:                                              ; preds = %if.end20, %compute_mac2.exit.out_crit_edge, %compute_mac1.exit.out_crit_edge
  %ret.0 = phi i32 [ %.mux, %compute_mac1.exit.out_crit_edge ], [ 1, %compute_mac2.exit.out_crit_edge ], [ %spec.select, %if.end20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cookie) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %computed_mac) #3
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @make_cookie(ptr noundef %cookie, ptr nocapture noundef readonly %skb, ptr noundef %checker) unnamed_addr #0 align 64 {
entry:
  %state = alloca %struct.blake2s_state, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %state) #3
  %secret_birthdate = getelementptr inbounds %struct.cookie_checker, ptr %checker, i32 0, i32 3
  %0 = ptrtoint ptr %secret_birthdate to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %secret_birthdate, align 8
  %add.i = add i64 %1, 120000000000
  %call.i.i.i = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #3
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call.i.i.i)
  %cmp.i.not = icmp sgt i64 %add.i, %call.i.i.i
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %secret_lock = getelementptr inbounds %struct.cookie_checker, ptr %checker, i32 0, i32 4
  tail call void @down_write(ptr noundef %secret_lock) #3
  %call.i.i = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #3
  %2 = ptrtoint ptr %secret_birthdate to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call.i.i, ptr %secret_birthdate, align 8
  tail call void @get_random_bytes(ptr noundef %checker, i32 noundef 32) #3
  tail call void @up_write(ptr noundef %secret_lock) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %secret_lock4 = getelementptr inbounds %struct.cookie_checker, ptr %checker, i32 0, i32 4
  tail call void @down_read(ptr noundef %secret_lock4) #3
  %tobool2.not.i = icmp eq ptr %checker, null
  br i1 %tobool2.not.i, label %do.end.i, label %if.end.blake2s_init_key.exit_crit_edge, !prof !29

if.end.blake2s_init_key.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %blake2s_init_key.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 81, i32 noundef 9, ptr noundef null) #3
  br label %blake2s_init_key.exit

blake2s_init_key.exit:                            ; preds = %do.end.i, %if.end.blake2s_init_key.exit_crit_edge
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1795737207, ptr %state, align 4
  %arrayidx3.i.i = getelementptr inbounds [8 x i32], ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1150833019, ptr %arrayidx3.i.i, align 4
  %arrayidx5.i.i = getelementptr inbounds [8 x i32], ptr %state, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1013904242, ptr %arrayidx5.i.i, align 4
  %arrayidx7.i.i = getelementptr inbounds [8 x i32], ptr %state, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1521486534, ptr %arrayidx7.i.i, align 4
  %arrayidx9.i.i = getelementptr inbounds [8 x i32], ptr %state, i32 0, i32 4
  %7 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1359893119, ptr %arrayidx9.i.i, align 4
  %arrayidx11.i.i = getelementptr inbounds [8 x i32], ptr %state, i32 0, i32 5
  %8 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1694144372, ptr %arrayidx11.i.i, align 4
  %arrayidx13.i.i = getelementptr inbounds [8 x i32], ptr %state, i32 0, i32 6
  %9 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 528734635, ptr %arrayidx13.i.i, align 4
  %arrayidx15.i.i = getelementptr inbounds [8 x i32], ptr %state, i32 0, i32 7
  %10 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1541459225, ptr %arrayidx15.i.i, align 4
  %t.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state, i32 0, i32 1
  %buflen.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state, i32 0, i32 4
  %outlen22.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state, i32 0, i32 5
  %11 = call ptr @memset(ptr %t.i.i, i32 0, i32 16)
  %12 = ptrtoint ptr %outlen22.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16, ptr %outlen22.i.i, align 4
  %buf.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state, i32 0, i32 3
  %13 = call ptr @memcpy(ptr %buf.i.i, ptr %checker, i32 32)
  %arrayidx24.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state, i32 0, i32 3, i32 32
  %14 = call ptr @memset(ptr %arrayidx24.i.i, i32 0, i32 32)
  %15 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 64, ptr %buflen.i.i, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %16 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %protocol, align 8
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i16 %17, label %blake2s_init_key.exit.if.end18_crit_edge [
    i16 2048, label %if.then8
    i16 -31011, label %if.then14
  ]

blake2s_init_key.exit.if.end18_crit_edge:         ; preds = %blake2s_init_key.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.then8:                                         ; preds = %blake2s_init_key.exit
  call void @__sanitizer_cov_trace_pc() #5
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %21 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %22 to i32
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  call void @blake2s_update(ptr noundef nonnull %state, ptr noundef %saddr, i32 noundef 4) #3
  br label %if.end18

if.then14:                                        ; preds = %blake2s_init_key.exit
  call void @__sanitizer_cov_trace_pc() #5
  %head.i.i32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i32, align 8
  %network_header.i.i33 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %25 = ptrtoint ptr %network_header.i.i33 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %network_header.i.i33, align 4
  %conv.i.i34 = zext i16 %26 to i32
  %add.ptr.i.i35 = getelementptr i8, ptr %24, i32 %conv.i.i34
  %saddr16 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i35, i32 0, i32 5
  call void @blake2s_update(ptr noundef nonnull %state, ptr noundef %saddr16, i32 noundef 16) #3
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.then8, %blake2s_init_key.exit.if.end18_crit_edge
  %head.i.i36 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %27 = ptrtoint ptr %head.i.i36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i36, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %29 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i37 = zext i16 %30 to i32
  %add.ptr.i.i38 = getelementptr i8, ptr %28, i32 %conv.i.i37
  call void @blake2s_update(ptr noundef nonnull %state, ptr noundef %add.ptr.i.i38, i32 noundef 2) #3
  call void @blake2s_final(ptr noundef nonnull %state, ptr noundef %cookie) #3
  call void @up_read(ptr noundef %secret_lock4) #3
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %state) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wg_ratelimiter_allow(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_cookie_add_mac_to_packet(ptr noundef %message, i32 noundef %len, ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  %state.i.i38 = alloca %struct.blake2s_state, align 4
  %state.i.i = alloca %struct.blake2s_state, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %message, i32 %len
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -32
  %lock = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 15, i32 7
  tail call void @down_write(ptr noundef %lock) #3
  %message_mac1_key = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 15, i32 6
  %sub.i = add i32 %len, -32
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %state.i.i) #3
  %tobool.not.i.i = icmp eq ptr %message, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.not.i.i = icmp ne i32 %sub.i, 0
  %or.cond.not.i.i = and i1 %tobool.not.i.i, %cmp.not.i.i
  %tobool1.not.i.i = icmp eq ptr %add.ptr1, null
  %or.cond1.i.i = or i1 %tobool1.not.i.i, %or.cond.not.i.i
  %tobool8.not.i.i = icmp eq ptr %message_mac1_key, null
  %or.cond2.i.i = or i1 %tobool8.not.i.i, %or.cond1.i.i
  br i1 %or.cond2.i.i, label %do.end.i.i, label %entry.compute_mac1.exit_crit_edge, !prof !30

entry.compute_mac1.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %compute_mac1.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 97, i32 noundef 9, ptr noundef null) #3
  br label %compute_mac1.exit

compute_mac1.exit:                                ; preds = %do.end.i.i, %entry.compute_mac1.exit_crit_edge
  %0 = getelementptr inbounds i8, ptr %state.i.i, i32 48
  %1 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1795737207, ptr %state.i.i, align 4
  %arrayidx3.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1150833019, ptr %arrayidx3.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1013904242, ptr %arrayidx5.i.i.i, align 4
  %arrayidx7.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1521486534, ptr %arrayidx7.i.i.i, align 4
  %arrayidx9.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1359893119, ptr %arrayidx9.i.i.i, align 4
  %arrayidx11.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1694144372, ptr %arrayidx11.i.i.i, align 4
  %arrayidx13.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 528734635, ptr %arrayidx13.i.i.i, align 4
  %arrayidx15.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1541459225, ptr %arrayidx15.i.i.i, align 4
  %t.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state.i.i, i32 0, i32 1
  %buflen.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state.i.i, i32 0, i32 4
  %outlen22.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state.i.i, i32 0, i32 5
  %9 = call ptr @memset(ptr %t.i.i.i, i32 0, i32 16)
  %10 = ptrtoint ptr %outlen22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %outlen22.i.i.i, align 4
  %11 = call ptr @memcpy(ptr %0, ptr %message_mac1_key, i32 32)
  %arrayidx24.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state.i.i, i32 0, i32 3, i32 32
  %12 = call ptr @memset(ptr %arrayidx24.i.i.i, i32 0, i32 32)
  %13 = ptrtoint ptr %buflen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 64, ptr %buflen.i.i.i, align 4
  call void @blake2s_update(ptr noundef nonnull %state.i.i, ptr noundef %message, i32 noundef %sub.i) #3
  call void @blake2s_final(ptr noundef nonnull %state.i.i, ptr noundef %add.ptr1) #3
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %state.i.i) #3
  %last_mac1_sent = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 15, i32 4
  %14 = call ptr @memcpy(ptr %last_mac1_sent, ptr %add.ptr1, i32 16)
  %have_sent_mac1 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 15, i32 3
  %15 = ptrtoint ptr %have_sent_mac1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %have_sent_mac1, align 1
  call void @up_write(ptr noundef %lock) #3
  call void @down_read(ptr noundef %lock) #3
  %is_valid = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 15, i32 1
  %16 = ptrtoint ptr %is_valid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_valid, align 8, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %compute_mac1.exit.if.else_crit_edge, label %land.lhs.true

compute_mac1.exit.if.else_crit_edge:              ; preds = %compute_mac1.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %compute_mac1.exit
  %latest_cookie = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 15
  %18 = ptrtoint ptr %latest_cookie to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %latest_cookie, align 8
  %add.i = add i64 %19, 115000000000
  %call.i.i.i = call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #3
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call.i.i.i)
  %cmp.i.not = icmp sgt i64 %add.i, %call.i.i.i
  br i1 %cmp.i.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %mac2 = getelementptr inbounds %struct.message_macs, ptr %add.ptr1, i32 0, i32 1
  %cookie = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 15, i32 2
  %add.i39 = add i32 %len, -16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %state.i.i38) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i39)
  %cmp.not.i.i41 = icmp ne i32 %add.i39, 0
  %or.cond.not.i.i42 = and i1 %tobool.not.i.i, %cmp.not.i.i41
  %tobool1.not.i.i43 = icmp eq ptr %mac2, null
  %or.cond1.i.i44 = or i1 %or.cond.not.i.i42, %tobool1.not.i.i43
  %tobool8.not.i.i45 = icmp eq ptr %cookie, null
  %or.cond2.i.i46 = or i1 %tobool8.not.i.i45, %or.cond1.i.i44
  br i1 %or.cond2.i.i46, label %do.end.i.i47, label %if.then.compute_mac2.exit_crit_edge, !prof !30

if.then.compute_mac2.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %compute_mac2.exit

do.end.i.i47:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 97, i32 noundef 9, ptr noundef null) #3
  br label %compute_mac2.exit

compute_mac2.exit:                                ; preds = %do.end.i.i47, %if.then.compute_mac2.exit_crit_edge
  %20 = getelementptr inbounds i8, ptr %state.i.i38, i32 48
  %21 = ptrtoint ptr %state.i.i38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1795749495, ptr %state.i.i38, align 4
  %arrayidx3.i.i.i48 = getelementptr inbounds [8 x i32], ptr %state.i.i38, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx3.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1150833019, ptr %arrayidx3.i.i.i48, align 4
  %arrayidx5.i.i.i49 = getelementptr inbounds [8 x i32], ptr %state.i.i38, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx5.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1013904242, ptr %arrayidx5.i.i.i49, align 4
  %arrayidx7.i.i.i50 = getelementptr inbounds [8 x i32], ptr %state.i.i38, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx7.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1521486534, ptr %arrayidx7.i.i.i50, align 4
  %arrayidx9.i.i.i51 = getelementptr inbounds [8 x i32], ptr %state.i.i38, i32 0, i32 4
  %25 = ptrtoint ptr %arrayidx9.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1359893119, ptr %arrayidx9.i.i.i51, align 4
  %arrayidx11.i.i.i52 = getelementptr inbounds [8 x i32], ptr %state.i.i38, i32 0, i32 5
  %26 = ptrtoint ptr %arrayidx11.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1694144372, ptr %arrayidx11.i.i.i52, align 4
  %arrayidx13.i.i.i53 = getelementptr inbounds [8 x i32], ptr %state.i.i38, i32 0, i32 6
  %27 = ptrtoint ptr %arrayidx13.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 528734635, ptr %arrayidx13.i.i.i53, align 4
  %arrayidx15.i.i.i54 = getelementptr inbounds [8 x i32], ptr %state.i.i38, i32 0, i32 7
  %28 = ptrtoint ptr %arrayidx15.i.i.i54 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1541459225, ptr %arrayidx15.i.i.i54, align 4
  %t.i.i.i55 = getelementptr inbounds %struct.blake2s_state, ptr %state.i.i38, i32 0, i32 1
  %buflen.i.i.i56 = getelementptr inbounds %struct.blake2s_state, ptr %state.i.i38, i32 0, i32 4
  %outlen22.i.i.i57 = getelementptr inbounds %struct.blake2s_state, ptr %state.i.i38, i32 0, i32 5
  %29 = call ptr @memset(ptr %t.i.i.i55, i32 0, i32 16)
  %30 = ptrtoint ptr %outlen22.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16, ptr %outlen22.i.i.i57, align 4
  %31 = call ptr @memcpy(ptr %20, ptr %cookie, i32 16)
  %arrayidx24.i.i.i58 = getelementptr inbounds %struct.blake2s_state, ptr %state.i.i38, i32 0, i32 3, i32 16
  %32 = call ptr @memset(ptr %arrayidx24.i.i.i58, i32 0, i32 48)
  %33 = ptrtoint ptr %buflen.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 64, ptr %buflen.i.i.i56, align 4
  call void @blake2s_update(ptr noundef nonnull %state.i.i38, ptr noundef %message, i32 noundef %add.i39) #3
  call void @blake2s_final(ptr noundef nonnull %state.i.i38, ptr noundef %mac2) #3
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %state.i.i38) #3
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %compute_mac1.exit.if.else_crit_edge
  %mac218 = getelementptr inbounds %struct.message_macs, ptr %add.ptr1, i32 0, i32 1
  %34 = call ptr @memset(ptr %mac218, i32 0, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.else, %compute_mac2.exit
  call void @up_read(ptr noundef %lock) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_cookie_message_create(ptr noundef %dst, ptr nocapture noundef readonly %skb, i32 noundef %index, ptr noundef %checker) local_unnamed_addr #0 align 64 {
entry:
  %cookie = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cookie) #3
  %4 = call ptr @memset(ptr %cookie, i32 255, i32 16)
  %5 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 50331648, ptr %dst, align 4
  %receiver_index = getelementptr inbounds %struct.message_handshake_cookie, ptr %dst, i32 0, i32 1
  %6 = ptrtoint ptr %receiver_index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %index, ptr %receiver_index, align 4
  %nonce = getelementptr inbounds %struct.message_handshake_cookie, ptr %dst, i32 0, i32 2
  %call.i = tail call i32 @wait_for_random_bytes() #3
  tail call void @get_random_bytes(ptr noundef %nonce, i32 noundef 24) #3
  call fastcc void @make_cookie(ptr noundef nonnull %cookie, ptr noundef %skb, ptr noundef %checker)
  %encrypted_cookie = getelementptr inbounds %struct.message_handshake_cookie, ptr %dst, i32 0, i32 3
  %cookie_encryption_key = getelementptr inbounds %struct.cookie_checker, ptr %checker, i32 0, i32 1
  call void @xchacha20poly1305_encrypt(ptr noundef %encrypted_cookie, ptr noundef nonnull %cookie, i32 noundef 16, ptr noundef %add.ptr1, i32 noundef 16, ptr noundef %nonce, ptr noundef %cookie_encryption_key) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cookie) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchacha20poly1305_encrypt(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_cookie_message_consume(ptr noundef %src, ptr nocapture noundef readonly %wg) local_unnamed_addr #0 align 64 {
entry:
  %peer = alloca ptr, align 4
  %cookie = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %peer) #3
  %0 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %peer, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cookie) #3
  %index_hashtable = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 14
  %1 = call ptr @memset(ptr %cookie, i32 255, i32 16)
  %2 = ptrtoint ptr %index_hashtable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %index_hashtable, align 4
  %receiver_index = getelementptr inbounds %struct.message_handshake_cookie, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %receiver_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %receiver_index, align 4
  %call = call ptr @wg_index_hashtable_lookup(ptr noundef %3, i32 noundef 3, i32 noundef %5, ptr noundef nonnull %peer) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !29

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peer, align 4
  %lock = getelementptr inbounds %struct.wg_peer, ptr %7, i32 0, i32 15, i32 7
  call void @down_read(ptr noundef %lock) #3
  %8 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peer, align 4
  %have_sent_mac1 = getelementptr inbounds %struct.wg_peer, ptr %9, i32 0, i32 15, i32 3
  %10 = ptrtoint ptr %have_sent_mac1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %have_sent_mac1, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %if.then14, label %if.end17, !prof !29

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %lock16 = getelementptr inbounds %struct.wg_peer, ptr %9, i32 0, i32 15, i32 7
  call void @up_read(ptr noundef %lock16) #3
  br label %out

if.end17:                                         ; preds = %if.end
  %encrypted_cookie = getelementptr inbounds %struct.message_handshake_cookie, ptr %src, i32 0, i32 3
  %last_mac1_sent = getelementptr inbounds %struct.wg_peer, ptr %9, i32 0, i32 15, i32 4
  %nonce = getelementptr inbounds %struct.message_handshake_cookie, ptr %src, i32 0, i32 2
  %cookie_decryption_key = getelementptr inbounds %struct.wg_peer, ptr %9, i32 0, i32 15, i32 5
  %call24 = call zeroext i1 @xchacha20poly1305_decrypt(ptr noundef nonnull %cookie, ptr noundef %encrypted_cookie, i32 noundef 32, ptr noundef %last_mac1_sent, i32 noundef 16, ptr noundef %nonce, ptr noundef %cookie_decryption_key) #3
  %12 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %peer, align 4
  %lock26 = getelementptr inbounds %struct.wg_peer, ptr %13, i32 0, i32 15, i32 7
  call void @up_read(ptr noundef %lock26) #3
  br i1 %call24, label %if.then28, label %do.body

if.then28:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %peer, align 4
  %lock30 = getelementptr inbounds %struct.wg_peer, ptr %15, i32 0, i32 15, i32 7
  call void @down_write(ptr noundef %lock30) #3
  %16 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %peer, align 4
  %cookie32 = getelementptr inbounds %struct.wg_peer, ptr %17, i32 0, i32 15, i32 2
  %18 = call ptr @memcpy(ptr %cookie32, ptr %cookie, i32 16)
  %call.i.i = call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #3
  %19 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %peer, align 4
  %latest_cookie36 = getelementptr inbounds %struct.wg_peer, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %latest_cookie36 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call.i.i, ptr %latest_cookie36, align 8
  %is_valid = getelementptr inbounds %struct.wg_peer, ptr %20, i32 0, i32 15, i32 1
  %22 = ptrtoint ptr %is_valid to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %is_valid, align 8
  %have_sent_mac139 = getelementptr inbounds %struct.wg_peer, ptr %20, i32 0, i32 15, i32 3
  %23 = ptrtoint ptr %have_sent_mac139 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %have_sent_mac139, align 1
  %lock41 = getelementptr inbounds %struct.wg_peer, ptr %20, i32 0, i32 15, i32 7
  call void @up_write(ptr noundef %lock41) #3
  br label %out

do.body:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_cookie_message_consume.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_cookie_message_consume, %out)) #3
          to label %land.lhs.true [label %out], !srcloc !31

land.lhs.true:                                    ; preds = %do.body
  %call53 = call i32 @net_ratelimit() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true.out_crit_edge, label %if.then55

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.then55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %wg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wg, align 128
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_cookie_message_consume.descriptor, ptr noundef nonnull @.str.6, ptr noundef %25) #3
  br label %out

out:                                              ; preds = %if.then55, %land.lhs.true.out_crit_edge, %do.body, %if.then28, %if.then14
  %26 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %peer, align 4
  call void @wg_peer_put(ptr noundef %27) #3
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cookie) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %peer) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_index_hashtable_lookup(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchacha20poly1305_decrypt(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_peer_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_coarse_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blake2s_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blake2s_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_random_bytes() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @wg_cookie_checker_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireguard/cookie.c", i32 22, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @wg_cookie_init.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/wireguard/cookie.c", i32 72, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireguard/cookie.c", i32 230, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @wg_cookie_message_consume.descriptor, !7, !"descriptor", i1 false, i1 false}
!12 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cookie_key_label, !14, !"cookie_key_label", i1 false, i1 false}
!14 = !{!"../drivers/net/wireguard/cookie.c", i32 30, i32 17}
!15 = !{ptr @mac1_key_label, !16, !"mac1_key_label", i1 false, i1 false}
!16 = !{!"../drivers/net/wireguard/cookie.c", i32 29, i32 17}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/crypto/blake2s.h", i32 95, i32 2}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i8 0, i8 2}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{!"branch_weights", i32 2002, i32 2000}
!31 = !{i64 2148739081, i64 2148739086, i64 2148739099, i64 2148739143, i64 2148739177, i64 2148739198}
