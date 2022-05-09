; ModuleID = '/llk/IR_all_yes/drivers/net/wireguard/allowedips.c_pt.bc'
source_filename = "../drivers/net/wireguard/allowedips.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.allowedips = type { ptr, ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.allowedips_node = type { ptr, [2 x ptr], i8, i8, i8, i8, [16 x i8], i32, %union.anon.147, [4 x i8] }
%union.anon.147 = type { %struct.list_head }
%struct.wg_peer = type { ptr, %struct.prev_queue, %struct.prev_queue, %struct.sk_buff_head, i32, i8, %struct.noise_keypairs, %struct.endpoint, %struct.dst_cache, %struct.rwlock_t, %struct.noise_handshake, %struct.atomic64_t, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cookie, %struct.hlist_node, i64, i64, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i16, i8, i8, %struct.timespec64, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.napi_struct, i64 }
%struct.prev_queue = type { ptr, ptr, ptr, %struct.anon.143, %struct.atomic_t }
%struct.anon.143 = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.noise_keypairs = type { ptr, ptr, ptr, %struct.spinlock }
%struct.endpoint = type { %union.anon.144, %union.anon.145 }
%union.anon.144 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%union.anon.145 = type { %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.noise_handshake = type { %struct.index_hashtable_entry, i32, i64, ptr, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, %struct.rw_semaphore }
%struct.index_hashtable_entry = type { ptr, %struct.hlist_node, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.sk_buff = type { %union.anon, %union.anon.126, %union.anon.127, [48 x i8], %union.anon.128, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.130, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.126 = type { ptr }
%union.anon.127 = type { i64 }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, ptr }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.132, i32, i32, i32, i16, i16, %union.anon.134, i32, %union.anon.135, %union.anon.136, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.132 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }

@wg_allowedips_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/net/wireguard/allowedips.c\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@wg_allowedips_free.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wg_allowedips_remove_by_peer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wg_allowedips_remove_by_peer.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"allowedips_node\00", [16 x i8] zeroinitializer }, align 32
@node_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mutex.wait_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mutex\00", [26 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"&mutex\00", [25 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wireguard: allowedips self-test malloc: FAIL\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wg_allowedips_selftest\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireguard/selftest/allowedips.c\00", [52 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr = internal global ptr @wg_allowedips_selftest._entry, section ".printk_index", align 4
@wg_allowedips_selftest._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016wireguard: allowedips self-test %zu: FAIL\0A\00", [51 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.13 = internal global ptr @wg_allowedips_selftest._entry.11, section ".printk_index", align 4
@wg_allowedips_selftest._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.15 = internal global ptr @wg_allowedips_selftest._entry.14, section ".printk_index", align 4
@wg_allowedips_selftest._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.17 = internal global ptr @wg_allowedips_selftest._entry.16, section ".printk_index", align 4
@wg_allowedips_selftest._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.19 = internal global ptr @wg_allowedips_selftest._entry.18, section ".printk_index", align 4
@wg_allowedips_selftest._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.21 = internal global ptr @wg_allowedips_selftest._entry.20, section ".printk_index", align 4
@wg_allowedips_selftest._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.23 = internal global ptr @wg_allowedips_selftest._entry.22, section ".printk_index", align 4
@wg_allowedips_selftest._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.25 = internal global ptr @wg_allowedips_selftest._entry.24, section ".printk_index", align 4
@wg_allowedips_selftest._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.27 = internal global ptr @wg_allowedips_selftest._entry.26, section ".printk_index", align 4
@wg_allowedips_selftest._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.29 = internal global ptr @wg_allowedips_selftest._entry.28, section ".printk_index", align 4
@wg_allowedips_selftest._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.31 = internal global ptr @wg_allowedips_selftest._entry.30, section ".printk_index", align 4
@wg_allowedips_selftest._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.33 = internal global ptr @wg_allowedips_selftest._entry.32, section ".printk_index", align 4
@wg_allowedips_selftest._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.35 = internal global ptr @wg_allowedips_selftest._entry.34, section ".printk_index", align 4
@wg_allowedips_selftest._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.37 = internal global ptr @wg_allowedips_selftest._entry.36, section ".printk_index", align 4
@wg_allowedips_selftest._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.39 = internal global ptr @wg_allowedips_selftest._entry.38, section ".printk_index", align 4
@wg_allowedips_selftest._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.41 = internal global ptr @wg_allowedips_selftest._entry.40, section ".printk_index", align 4
@wg_allowedips_selftest._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.43 = internal global ptr @wg_allowedips_selftest._entry.42, section ".printk_index", align 4
@wg_allowedips_selftest._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.45 = internal global ptr @wg_allowedips_selftest._entry.44, section ".printk_index", align 4
@wg_allowedips_selftest._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.47 = internal global ptr @wg_allowedips_selftest._entry.46, section ".printk_index", align 4
@wg_allowedips_selftest._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.49 = internal global ptr @wg_allowedips_selftest._entry.48, section ".printk_index", align 4
@wg_allowedips_selftest._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.51 = internal global ptr @wg_allowedips_selftest._entry.50, section ".printk_index", align 4
@wg_allowedips_selftest._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.53 = internal global ptr @wg_allowedips_selftest._entry.52, section ".printk_index", align 4
@wg_allowedips_selftest._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.55 = internal global ptr @wg_allowedips_selftest._entry.54, section ".printk_index", align 4
@wg_allowedips_selftest._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.57 = internal global ptr @wg_allowedips_selftest._entry.56, section ".printk_index", align 4
@wg_allowedips_selftest._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.59 = internal global ptr @wg_allowedips_selftest._entry.58, section ".printk_index", align 4
@wg_allowedips_selftest._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.61 = internal global ptr @wg_allowedips_selftest._entry.60, section ".printk_index", align 4
@wg_allowedips_selftest._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.63 = internal global ptr @wg_allowedips_selftest._entry.62, section ".printk_index", align 4
@wg_allowedips_selftest._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.65 = internal global ptr @wg_allowedips_selftest._entry.64, section ".printk_index", align 4
@wg_allowedips_selftest._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.67 = internal global ptr @wg_allowedips_selftest._entry.66, section ".printk_index", align 4
@wg_allowedips_selftest._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.69 = internal global ptr @wg_allowedips_selftest._entry.68, section ".printk_index", align 4
@wg_allowedips_selftest._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.71 = internal global ptr @wg_allowedips_selftest._entry.70, section ".printk_index", align 4
@wg_allowedips_selftest._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.73 = internal global ptr @wg_allowedips_selftest._entry.72, section ".printk_index", align 4
@wg_allowedips_selftest._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.75 = internal global ptr @wg_allowedips_selftest._entry.74, section ".printk_index", align 4
@wg_allowedips_selftest._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.77 = internal global ptr @wg_allowedips_selftest._entry.76, section ".printk_index", align 4
@wg_allowedips_selftest._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.79 = internal global ptr @wg_allowedips_selftest._entry.78, section ".printk_index", align 4
@wg_allowedips_selftest._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.81 = internal global ptr @wg_allowedips_selftest._entry.80, section ".printk_index", align 4
@wg_allowedips_selftest._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.83 = internal global ptr @wg_allowedips_selftest._entry.82, section ".printk_index", align 4
@wg_allowedips_selftest._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.85 = internal global ptr @wg_allowedips_selftest._entry.84, section ".printk_index", align 4
@wg_allowedips_selftest._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.87 = internal global ptr @wg_allowedips_selftest._entry.86, section ".printk_index", align 4
@wg_allowedips_selftest._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.89 = internal global ptr @wg_allowedips_selftest._entry.88, section ".printk_index", align 4
@wg_allowedips_selftest._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.91 = internal global ptr @wg_allowedips_selftest._entry.90, section ".printk_index", align 4
@wg_allowedips_selftest._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.93 = internal global ptr @wg_allowedips_selftest._entry.92, section ".printk_index", align 4
@wg_allowedips_selftest._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.9, ptr @.str.10, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016wireguard: allowedips self-tests: pass\0A\00", [54 x i8] zeroinitializer }, align 32
@wg_allowedips_selftest._entry_ptr.96 = internal global ptr @wg_allowedips_selftest._entry.94, section ".printk_index", align 4
@add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@add.__warned.97 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@node_placement.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@node_placement.__warned.98 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.99 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@lookup.__warned.100 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@find_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.103 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ip4.ip = internal global { %struct.in_addr, [28 x i8] } zeroinitializer, align 32
@ip6.ip = internal global { %struct.in6_addr, [16 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 128]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 128]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 128]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 128]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 128]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 263, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 376, i32 15 }
@___asan_gen_.119 = private unnamed_addr constant [11 x i8] c"node_cache\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 9, i32 27 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 499, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 504, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 509, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 548, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 549, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 550, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 551, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 552, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 553, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 554, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 555, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 556, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 557, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 558, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 559, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 560, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 561, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 562, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 563, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 564, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 565, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 566, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 567, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 568, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 569, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 570, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 571, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 572, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 573, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 574, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 575, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 583, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 584, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 585, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 586, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 587, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 594, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 641, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 642, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 643, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 644, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 645, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 646, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 647, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 653, i32 3 }
@___asan_gen_.279 = private constant [38 x i8] c"../drivers/net/wireguard/allowedips.c\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 136, i32 19 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 749, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 760, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 427, i32 24 }
@___asan_gen_.293 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [47 x i8] c"../drivers/net/wireguard/selftest/allowedips.c\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 439, i32 25 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @wg_allowedips_selftest._entry, ptr @wg_allowedips_selftest._entry.11, ptr @wg_allowedips_selftest._entry.14, ptr @wg_allowedips_selftest._entry.16, ptr @wg_allowedips_selftest._entry.18, ptr @wg_allowedips_selftest._entry.20, ptr @wg_allowedips_selftest._entry.22, ptr @wg_allowedips_selftest._entry.24, ptr @wg_allowedips_selftest._entry.26, ptr @wg_allowedips_selftest._entry.28, ptr @wg_allowedips_selftest._entry.30, ptr @wg_allowedips_selftest._entry.32, ptr @wg_allowedips_selftest._entry.34, ptr @wg_allowedips_selftest._entry.36, ptr @wg_allowedips_selftest._entry.38, ptr @wg_allowedips_selftest._entry.40, ptr @wg_allowedips_selftest._entry.42, ptr @wg_allowedips_selftest._entry.44, ptr @wg_allowedips_selftest._entry.46, ptr @wg_allowedips_selftest._entry.48, ptr @wg_allowedips_selftest._entry.50, ptr @wg_allowedips_selftest._entry.52, ptr @wg_allowedips_selftest._entry.54, ptr @wg_allowedips_selftest._entry.56, ptr @wg_allowedips_selftest._entry.58, ptr @wg_allowedips_selftest._entry.60, ptr @wg_allowedips_selftest._entry.62, ptr @wg_allowedips_selftest._entry.64, ptr @wg_allowedips_selftest._entry.66, ptr @wg_allowedips_selftest._entry.68, ptr @wg_allowedips_selftest._entry.70, ptr @wg_allowedips_selftest._entry.72, ptr @wg_allowedips_selftest._entry.74, ptr @wg_allowedips_selftest._entry.76, ptr @wg_allowedips_selftest._entry.78, ptr @wg_allowedips_selftest._entry.80, ptr @wg_allowedips_selftest._entry.82, ptr @wg_allowedips_selftest._entry.84, ptr @wg_allowedips_selftest._entry.86, ptr @wg_allowedips_selftest._entry.88, ptr @wg_allowedips_selftest._entry.90, ptr @wg_allowedips_selftest._entry.92, ptr @wg_allowedips_selftest._entry.94, ptr @wg_allowedips_selftest._entry_ptr, ptr @wg_allowedips_selftest._entry_ptr.13, ptr @wg_allowedips_selftest._entry_ptr.15, ptr @wg_allowedips_selftest._entry_ptr.17, ptr @wg_allowedips_selftest._entry_ptr.19, ptr @wg_allowedips_selftest._entry_ptr.21, ptr @wg_allowedips_selftest._entry_ptr.23, ptr @wg_allowedips_selftest._entry_ptr.25, ptr @wg_allowedips_selftest._entry_ptr.27, ptr @wg_allowedips_selftest._entry_ptr.29, ptr @wg_allowedips_selftest._entry_ptr.31, ptr @wg_allowedips_selftest._entry_ptr.33, ptr @wg_allowedips_selftest._entry_ptr.35, ptr @wg_allowedips_selftest._entry_ptr.37, ptr @wg_allowedips_selftest._entry_ptr.39, ptr @wg_allowedips_selftest._entry_ptr.41, ptr @wg_allowedips_selftest._entry_ptr.43, ptr @wg_allowedips_selftest._entry_ptr.45, ptr @wg_allowedips_selftest._entry_ptr.47, ptr @wg_allowedips_selftest._entry_ptr.49, ptr @wg_allowedips_selftest._entry_ptr.51, ptr @wg_allowedips_selftest._entry_ptr.53, ptr @wg_allowedips_selftest._entry_ptr.55, ptr @wg_allowedips_selftest._entry_ptr.57, ptr @wg_allowedips_selftest._entry_ptr.59, ptr @wg_allowedips_selftest._entry_ptr.61, ptr @wg_allowedips_selftest._entry_ptr.63, ptr @wg_allowedips_selftest._entry_ptr.65, ptr @wg_allowedips_selftest._entry_ptr.67, ptr @wg_allowedips_selftest._entry_ptr.69, ptr @wg_allowedips_selftest._entry_ptr.71, ptr @wg_allowedips_selftest._entry_ptr.73, ptr @wg_allowedips_selftest._entry_ptr.75, ptr @wg_allowedips_selftest._entry_ptr.77, ptr @wg_allowedips_selftest._entry_ptr.79, ptr @wg_allowedips_selftest._entry_ptr.81, ptr @wg_allowedips_selftest._entry_ptr.83, ptr @wg_allowedips_selftest._entry_ptr.85, ptr @wg_allowedips_selftest._entry_ptr.87, ptr @wg_allowedips_selftest._entry_ptr.89, ptr @wg_allowedips_selftest._entry_ptr.91, ptr @wg_allowedips_selftest._entry_ptr.93, ptr @wg_allowedips_selftest._entry_ptr.96, ptr @.str, ptr @.str.1, ptr @.str.4, ptr @node_cache, ptr @.str.5, ptr @.str.6, ptr @wg_allowedips_selftest.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.95, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @ip4.ip, ptr @ip6.ip], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_allowedips_selftest._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip4.ip to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6.ip to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @wg_allowedips_init(ptr nocapture noundef writeonly %table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %root6 = getelementptr inbounds %struct.allowedips, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %root6 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %root6, align 4
  %1 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %table, align 8
  %seq = getelementptr inbounds %struct.allowedips, ptr %table, i32 0, i32 2
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1, ptr %seq, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_allowedips_free(ptr noundef %table, ptr noundef %lock) local_unnamed_addr #1 align 64 {
entry:
  %old4 = alloca ptr, align 4
  %old6 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old4)
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 8
  %2 = ptrtoint ptr %old4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %old4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old6)
  %root6 = getelementptr inbounds %struct.allowedips, ptr %table, i32 0, i32 1
  %3 = ptrtoint ptr %root6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %root6, align 4
  %5 = ptrtoint ptr %old6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %old6, align 4
  %seq = getelementptr inbounds %struct.allowedips, ptr %table, i32 0, i32 2
  %6 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %seq, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %seq, align 8
  %8 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %table, align 8
  store volatile ptr null, ptr %root6, align 4
  %9 = ptrtoint ptr %old4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %old4.0.old4.0.old4.0. = load volatile ptr, ptr %old4, align 4
  %tobool.not = icmp eq ptr %old4.0.old4.0.old4.0., null
  br i1 %tobool.not, label %entry.if.end38_crit_edge, label %if.then

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then:                                          ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %land.lhs.true, label %if.then.do.end36_crit_edge

if.then.do.end36_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36

land.lhs.true:                                    ; preds = %if.then
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true.do.end36_crit_edge, label %land.lhs.true32

land.lhs.true.do.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36

land.lhs.true32:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @wg_allowedips_free.__warned, align 1
  br i1 %.b73, label %land.lhs.true32.do.end36_crit_edge, label %if.then34

land.lhs.true32.do.end36_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @wg_allowedips_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 264, ptr noundef nonnull @.str.1) #11
  br label %do.end36

do.end36:                                         ; preds = %if.then34, %land.lhs.true32.do.end36_crit_edge, %land.lhs.true.do.end36_crit_edge, %if.then.do.end36_crit_edge
  %10 = ptrtoint ptr %old4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %old4.0.old4.0.old4.0.65 = load ptr, ptr %old4, align 4
  tail call fastcc void @root_remove_peer_lists(ptr noundef %old4.0.old4.0.old4.0.65)
  %11 = getelementptr inbounds %struct.allowedips_node, ptr %old4.0.old4.0.old4.0.65, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %11, ptr noundef nonnull @root_free_rcu) #11
  br label %if.end38

if.end38:                                         ; preds = %do.end36, %entry.if.end38_crit_edge
  %12 = ptrtoint ptr %old6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %old6.0.old6.0.old6.0. = load volatile ptr, ptr %old6, align 4
  %tobool44.not = icmp eq ptr %old6.0.old6.0.old6.0., null
  br i1 %tobool44.not, label %if.end38.if.end61_crit_edge, label %if.then45

if.end38.if.end61_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then45:                                        ; preds = %if.end38
  %dep_map48 = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 5
  %call.i74 = tail call i32 @lock_is_held_type(ptr noundef %dep_map48, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool50.not = icmp eq i32 %call.i74, 0
  br i1 %tobool50.not, label %land.lhs.true51, label %if.then45.do.end59_crit_edge

if.then45.do.end59_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end59

land.lhs.true51:                                  ; preds = %if.then45
  %call52 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true51.do.end59_crit_edge, label %land.lhs.true54

land.lhs.true51.do.end59_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end59

land.lhs.true54:                                  ; preds = %land.lhs.true51
  %.b7172 = load i1, ptr @wg_allowedips_free.__warned.2, align 1
  br i1 %.b7172, label %land.lhs.true54.do.end59_crit_edge, label %if.then56

land.lhs.true54.do.end59_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end59

if.then56:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @wg_allowedips_free.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 271, ptr noundef nonnull @.str.1) #11
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %land.lhs.true54.do.end59_crit_edge, %land.lhs.true51.do.end59_crit_edge, %if.then45.do.end59_crit_edge
  %13 = ptrtoint ptr %old6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %old6.0.old6.0.old6.0.64 = load ptr, ptr %old6, align 4
  tail call fastcc void @root_remove_peer_lists(ptr noundef %old6.0.old6.0.old6.0.64)
  %14 = getelementptr inbounds %struct.allowedips_node, ptr %old6.0.old6.0.old6.0.64, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %14, ptr noundef nonnull @root_free_rcu) #11
  br label %if.end61

if.end61:                                         ; preds = %do.end59, %if.end38.if.end61_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old4)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @root_remove_peer_lists(ptr noundef %root) unnamed_addr #1 align 64 {
entry:
  %p.addr.i11 = alloca ptr, align 4
  %p.addr.i = alloca ptr, align 4
  %stack = alloca [128 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %stack) #11
  %0 = getelementptr inbounds i8, ptr %stack, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 508)
  %2 = ptrtoint ptr %stack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %root, ptr %stack, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %entry
  %len.026 = phi i32 [ 1, %entry ], [ %len.2, %if.end.land.rhs_crit_edge ]
  %dec = add i32 %len.026, -1
  %arrayidx = getelementptr [128 x ptr], ptr %stack, i32 0, i32 %dec
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %bit = getelementptr inbounds %struct.allowedips_node, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.addr.i)
  %7 = ptrtoint ptr %p.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %p.addr.i, align 4
  %p.addr.i.0.p.addr.i.0.p.addr.0.p.addr.0.p.addr.0..i = load volatile ptr, ptr %p.addr.i, align 4
  %tobool.not.i = icmp eq ptr %p.addr.i.0.p.addr.i.0.p.addr.0.p.addr.0.p.addr.0..i, null
  br i1 %tobool.not.i, label %while.body.push_rcu.exit_crit_edge, label %if.then.i

while.body.push_rcu.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %push_rcu.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %dec)
  %cmp.i = icmp ugt i32 %dec, 127
  br i1 %cmp.i, label %do.end13.i, label %if.then.i.if.end.i_crit_edge, !prof !189

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end13.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end13.i, %if.then.i.if.end.i_crit_edge
  %8 = ptrtoint ptr %p.addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %p.addr.i.0.p.addr.i.0.p.addr.0.p.addr.0.p.addr.0.34.i = load volatile ptr, ptr %p.addr.i, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %p.addr.i.0.p.addr.i.0.p.addr.0.p.addr.0.p.addr.0.34.i, ptr %arrayidx, align 4
  br label %push_rcu.exit

push_rcu.exit:                                    ; preds = %if.end.i, %while.body.push_rcu.exit_crit_edge
  %len.1 = phi i32 [ %dec, %while.body.push_rcu.exit_crit_edge ], [ %len.026, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.addr.i)
  %arrayidx4 = getelementptr %struct.allowedips_node, ptr %4, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.addr.i11)
  %12 = ptrtoint ptr %p.addr.i11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %p.addr.i11, align 4
  %p.addr.i11.0.p.addr.i11.0.p.addr.0.p.addr.0.p.addr.0..i12 = load volatile ptr, ptr %p.addr.i11, align 4
  %tobool.not.i13 = icmp eq ptr %p.addr.i11.0.p.addr.i11.0.p.addr.0.p.addr.0.p.addr.0..i12, null
  br i1 %tobool.not.i13, label %push_rcu.exit.push_rcu.exit21_crit_edge, label %if.then.i15

push_rcu.exit.push_rcu.exit21_crit_edge:          ; preds = %push_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %push_rcu.exit21

if.then.i15:                                      ; preds = %push_rcu.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %len.1)
  %cmp.i14 = icmp ugt i32 %len.1, 127
  br i1 %cmp.i14, label %do.end13.i16, label %if.then.i15.if.end.i20_crit_edge, !prof !189

if.then.i15.if.end.i20_crit_edge:                 ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i20

do.end13.i16:                                     ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i20

if.end.i20:                                       ; preds = %do.end13.i16, %if.then.i15.if.end.i20_crit_edge
  %13 = ptrtoint ptr %p.addr.i11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %p.addr.i11.0.p.addr.i11.0.p.addr.0.p.addr.0.p.addr.0.34.i17 = load volatile ptr, ptr %p.addr.i11, align 4
  %inc.i18 = add i32 %len.1, 1
  %arrayidx.i19 = getelementptr ptr, ptr %stack, i32 %len.1
  %14 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %p.addr.i11.0.p.addr.i11.0.p.addr.0.p.addr.0.p.addr.0.34.i17, ptr %arrayidx.i19, align 4
  br label %push_rcu.exit21

push_rcu.exit21:                                  ; preds = %if.end.i20, %push_rcu.exit.push_rcu.exit21_crit_edge
  %len.2 = phi i32 [ %len.1, %push_rcu.exit.push_rcu.exit21_crit_edge ], [ %inc.i18, %if.end.i20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.addr.i11)
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %4, align 8
  %tobool6.not = icmp eq ptr %16, null
  br i1 %tobool6.not, label %push_rcu.exit21.if.end_crit_edge, label %if.then

push_rcu.exit21.if.end_crit_edge:                 ; preds = %push_rcu.exit21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %push_rcu.exit21
  %17 = getelementptr inbounds %struct.allowedips_node, ptr %4, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %17) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.allowedips_node, ptr %4, i32 0, i32 8, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  %prev.i = getelementptr inbounds %struct.allowedips_node, ptr %4, i32 0, i32 8, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %push_rcu.exit21.if.end_crit_edge
  %cmp.not = icmp eq i32 %len.2, 0
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.rhs.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %stack) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @root_free_rcu(ptr noundef %rcu) #1 align 64 {
entry:
  %p.addr.i8 = alloca ptr, align 4
  %p.addr.i = alloca ptr, align 4
  %stack = alloca [128 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %stack) #11
  %0 = getelementptr inbounds i8, ptr %stack, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 508)
  %add.ptr = getelementptr i8, ptr %rcu, i32 -36
  %2 = ptrtoint ptr %stack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %stack, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %push_rcu.exit18.land.rhs_crit_edge, %entry
  %len.023 = phi i32 [ 1, %entry ], [ %len.2, %push_rcu.exit18.land.rhs_crit_edge ]
  %dec = add i32 %len.023, -1
  %arrayidx = getelementptr [128 x ptr], ptr %stack, i32 0, i32 %dec
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %bit = getelementptr inbounds %struct.allowedips_node, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.addr.i)
  %7 = ptrtoint ptr %p.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %p.addr.i, align 4
  %p.addr.i.0.p.addr.i.0.p.addr.0.p.addr.0.p.addr.0..i = load volatile ptr, ptr %p.addr.i, align 4
  %tobool.not.i = icmp eq ptr %p.addr.i.0.p.addr.i.0.p.addr.0.p.addr.0.p.addr.0..i, null
  br i1 %tobool.not.i, label %while.body.push_rcu.exit_crit_edge, label %if.then.i

while.body.push_rcu.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %push_rcu.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %dec)
  %cmp.i = icmp ugt i32 %dec, 127
  br i1 %cmp.i, label %do.end13.i, label %if.then.i.if.end.i_crit_edge, !prof !189

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end13.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end13.i, %if.then.i.if.end.i_crit_edge
  %8 = ptrtoint ptr %p.addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %p.addr.i.0.p.addr.i.0.p.addr.0.p.addr.0.p.addr.0.34.i = load volatile ptr, ptr %p.addr.i, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %p.addr.i.0.p.addr.i.0.p.addr.0.p.addr.0.p.addr.0.34.i, ptr %arrayidx, align 4
  br label %push_rcu.exit

push_rcu.exit:                                    ; preds = %if.end.i, %while.body.push_rcu.exit_crit_edge
  %len.1 = phi i32 [ %dec, %while.body.push_rcu.exit_crit_edge ], [ %len.023, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.addr.i)
  %arrayidx4 = getelementptr %struct.allowedips_node, ptr %4, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.addr.i8)
  %12 = ptrtoint ptr %p.addr.i8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %p.addr.i8, align 4
  %p.addr.i8.0.p.addr.i8.0.p.addr.0.p.addr.0.p.addr.0..i9 = load volatile ptr, ptr %p.addr.i8, align 4
  %tobool.not.i10 = icmp eq ptr %p.addr.i8.0.p.addr.i8.0.p.addr.0.p.addr.0.p.addr.0..i9, null
  br i1 %tobool.not.i10, label %push_rcu.exit.push_rcu.exit18_crit_edge, label %if.then.i12

push_rcu.exit.push_rcu.exit18_crit_edge:          ; preds = %push_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %push_rcu.exit18

if.then.i12:                                      ; preds = %push_rcu.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %len.1)
  %cmp.i11 = icmp ugt i32 %len.1, 127
  br i1 %cmp.i11, label %do.end13.i13, label %if.then.i12.if.end.i17_crit_edge, !prof !189

if.then.i12.if.end.i17_crit_edge:                 ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i17

do.end13.i13:                                     ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i17

if.end.i17:                                       ; preds = %do.end13.i13, %if.then.i12.if.end.i17_crit_edge
  %13 = ptrtoint ptr %p.addr.i8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %p.addr.i8.0.p.addr.i8.0.p.addr.0.p.addr.0.p.addr.0.34.i14 = load volatile ptr, ptr %p.addr.i8, align 4
  %inc.i15 = add i32 %len.1, 1
  %arrayidx.i16 = getelementptr ptr, ptr %stack, i32 %len.1
  %14 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %p.addr.i8.0.p.addr.i8.0.p.addr.0.p.addr.0.p.addr.0.34.i14, ptr %arrayidx.i16, align 4
  br label %push_rcu.exit18

push_rcu.exit18:                                  ; preds = %if.end.i17, %push_rcu.exit.push_rcu.exit18_crit_edge
  %len.2 = phi i32 [ %len.1, %push_rcu.exit.push_rcu.exit18_crit_edge ], [ %inc.i15, %if.end.i17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.addr.i8)
  %15 = load ptr, ptr @node_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef nonnull %4) #11
  %cmp.not = icmp eq i32 %len.2, 0
  br i1 %cmp.not, label %push_rcu.exit18.while.end_crit_edge, label %push_rcu.exit18.land.rhs_crit_edge

push_rcu.exit18.land.rhs_crit_edge:               ; preds = %push_rcu.exit18
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

push_rcu.exit18.while.end_crit_edge:              ; preds = %push_rcu.exit18
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %push_rcu.exit18.while.end_crit_edge, %land.rhs.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %stack) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wg_allowedips_insert_v4(ptr noundef %table, ptr nocapture noundef readonly %ip, i8 noundef zeroext %cidr, ptr noundef %peer, ptr noundef %lock) local_unnamed_addr #1 align 64 {
entry:
  %key = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key) #11
  %seq = getelementptr inbounds %struct.allowedips, ptr %table, i32 0, i32 2
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %seq, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %seq, align 8
  %2 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ip, align 4
  %4 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %key, align 4
  %call = call fastcc i32 @add(ptr noundef %table, i8 noundef zeroext 32, ptr noundef nonnull %key, i8 noundef zeroext %cidr, ptr noundef %peer, ptr noundef %lock)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add(ptr noundef %trie, i8 noundef zeroext %bits, ptr nocapture noundef readonly %key, i8 noundef zeroext %cidr, ptr noundef %peer, ptr noundef %lock) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp1(i8 %cidr, i8 %bits)
  %cmp = icmp ugt i8 %cidr, %bits
  %tobool.not = icmp eq ptr %peer, null
  %spec.select = or i1 %cmp, %tobool.not
  br i1 %spec.select, label %entry.cleanup179_crit_edge, label %if.end, !prof !189

entry.cleanup179_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup179

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %trie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %trie, align 4
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %if.then8, label %if.end33

if.then8:                                         ; preds = %if.end
  %2 = load ptr, ptr @node_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3520) #11
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.then8.cleanup179_crit_edge, label %do.body25, !prof !189

if.then8.cleanup179_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup179

do.body25:                                        ; preds = %if.then8
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %peer, ptr %call.i, align 8
  %4 = getelementptr inbounds %struct.allowedips_node, ptr %call.i, i32 0, i32 8
  %allowedips_list = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 32
  %prev.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 32, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %4, ptr noundef %6, ptr noundef %allowedips_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.body25.list_add_tail.exit_crit_edge

do.body25.list_add_tail.exit_crit_edge:           ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %allowedips_list, ptr %4, align 4
  %prev3.i.i = getelementptr inbounds %struct.allowedips_node, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 8
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %4, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body25.list_add_tail.exit_crit_edge
  %cidr1.i = getelementptr inbounds %struct.allowedips_node, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %cidr1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %cidr, ptr %cidr1.i, align 4
  %div15.i = lshr i8 %cidr, 3
  %bit_at_a.i = getelementptr inbounds %struct.allowedips_node, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %bit_at_a.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %div15.i, ptr %bit_at_a.i, align 1
  %13 = and i8 %cidr, 7
  %14 = xor i8 %13, 7
  %bit_at_b.i = getelementptr inbounds %struct.allowedips_node, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %bit_at_b.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %bit_at_b.i, align 2
  %bitlen.i = getelementptr inbounds %struct.allowedips_node, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %bitlen.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %bits, ptr %bitlen.i, align 1
  %bits5.i = getelementptr inbounds %struct.allowedips_node, ptr %call.i, i32 0, i32 6
  %17 = lshr i8 %bits, 3
  %div7.i = zext i8 %17 to i32
  %18 = call ptr @memcpy(ptr %bits5.i, ptr %key, i32 %div7.i)
  %19 = ptrtoint ptr %trie to i32
  %or.i = or i32 %19, 2
  %parent_bit_packed.i = getelementptr inbounds %struct.allowedips_node, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %parent_bit_packed.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %parent_bit_packed.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !190
  %21 = ptrtoint ptr %trie to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call.i, ptr %trie, align 4
  br label %cleanup179

if.end33:                                         ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 5
  %call.i.i239 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i239)
  %tobool.not.i = icmp eq i32 %call.i.i239, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end33.land.lhs.true6.lr.ph.i_crit_edge

if.end33.land.lhs.true6.lr.ph.i_crit_edge:        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true6.lr.ph.i

land.lhs.true.i:                                  ; preds = %if.end33
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.land.lhs.true6.lr.ph.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.land.lhs.true6.lr.ph.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true6.lr.ph.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b47.i = load i1, ptr @node_placement.__warned, align 1
  br i1 %.b47.i, label %land.lhs.true3.i.land.lhs.true6.lr.ph.i_crit_edge, label %if.then.i

land.lhs.true3.i.land.lhs.true6.lr.ph.i_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true6.lr.ph.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @node_placement.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 150, ptr noundef nonnull @.str.1) #11
  br label %land.lhs.true6.lr.ph.i

land.lhs.true6.lr.ph.i:                           ; preds = %if.then.i, %land.lhs.true3.i.land.lhs.true6.lr.ph.i_crit_edge, %land.lhs.true.i.land.lhs.true6.lr.ph.i_crit_edge, %if.end33.land.lhs.true6.lr.ph.i_crit_edge
  %arrayidx13.i.i.i = getelementptr i8, ptr %key, i32 8
  %cidr7.i360 = getelementptr inbounds %struct.allowedips_node, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %cidr7.i360 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cidr7.i360, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %cidr)
  %cmp.not.i361 = icmp ugt i8 %23, %cidr
  br i1 %cmp.not.i361, label %land.lhs.true6.lr.ph.i.if.end76_crit_edge, label %land.lhs.true6.lr.ph.i.land.rhs.i_crit_edge

land.lhs.true6.lr.ph.i.land.rhs.i_crit_edge:      ; preds = %land.lhs.true6.lr.ph.i
  br label %land.rhs.i

land.lhs.true6.lr.ph.i.if.end76_crit_edge:        ; preds = %land.lhs.true6.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

land.lhs.true6.i:                                 ; preds = %do.end31.i
  %cidr7.i = getelementptr inbounds %struct.allowedips_node, ptr %53, i32 0, i32 2
  %24 = ptrtoint ptr %cidr7.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cidr7.i, align 4
  %cmp.not.i = icmp ugt i8 %25, %cidr
  br i1 %cmp.not.i, label %land.lhs.true6.i.if.end76_crit_edge, label %land.lhs.true6.i.land.rhs.i_crit_edge

land.lhs.true6.i.land.rhs.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

land.lhs.true6.i.if.end76_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

land.rhs.i:                                       ; preds = %land.lhs.true6.i.land.rhs.i_crit_edge, %land.lhs.true6.lr.ph.i.land.rhs.i_crit_edge
  %26 = phi i8 [ %25, %land.lhs.true6.i.land.rhs.i_crit_edge ], [ %23, %land.lhs.true6.lr.ph.i.land.rhs.i_crit_edge ]
  %parent.050.i363 = phi ptr [ %node.051.i362, %land.lhs.true6.i.land.rhs.i_crit_edge ], [ null, %land.lhs.true6.lr.ph.i.land.rhs.i_crit_edge ]
  %node.051.i362 = phi ptr [ %53, %land.lhs.true6.i.land.rhs.i_crit_edge ], [ %1, %land.lhs.true6.lr.ph.i.land.rhs.i_crit_edge ]
  %27 = zext i8 %bits to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bits, label %land.rhs.i.prefix_matches.exit.i_crit_edge [
    i8 32, label %if.then.i.i.i
    i8 -128, label %if.then7.i.i.i
  ]

land.rhs.i.prefix_matches.exit.i_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %prefix_matches.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %bits2.i.i.i = getelementptr inbounds %struct.allowedips_node, ptr %node.051.i362, i32 0, i32 6
  %28 = ptrtoint ptr %bits2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bits2.i.i.i, align 8
  %30 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %key, align 4
  %xor.i.i.i = xor i32 %31, %29
  %32 = tail call i32 @llvm.ctlz.i32(i32 %xor.i.i.i, i1 false) #11, !range !191
  %33 = trunc i32 %32 to i8
  br label %prefix_matches.exit.i

if.then7.i.i.i:                                   ; preds = %land.rhs.i
  %bits8.i.i.i = getelementptr inbounds %struct.allowedips_node, ptr %node.051.i362, i32 0, i32 6
  %34 = ptrtoint ptr %bits8.i.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %bits8.i.i.i, align 8
  %36 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %key, align 8
  %xor10.i.i.i = xor i64 %37, %35
  %arrayidx12.i.i.i = getelementptr %struct.allowedips_node, ptr %node.051.i362, i32 0, i32 6, i32 8
  %38 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx12.i.i.i, align 8
  %40 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx13.i.i.i, align 8
  %xor14.i.i.i = xor i64 %41, %39
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %xor10.i.i.i)
  %tobool.not.i24.i.i.i = icmp eq i64 %xor10.i.i.i, 0
  br i1 %tobool.not.i24.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i

cond.true.i.i.i.i:                                ; preds = %if.then7.i.i.i
  %shr.i.i.i.i.i = lshr i64 %xor10.i.i.i, 32
  %conv.i.i.i.i.i = trunc i64 %shr.i.i.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %conv.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %cond.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i.i.i, i1 true) #11, !range !191
  %add.i.i.neg.i.i.i = or i32 %42, -64
  br label %fls64.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %cond.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i.i.i.i.i = trunc i64 %xor10.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i.i.i)
  %tobool.not.i5.i.i.i.i.i = icmp eq i32 %conv1.i.i.i.i.i, 0
  %43 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i.i.i, i1 true) #11, !range !191
  %sub.i6.i.i.neg.i.i.i = or i32 %43, -32
  %cond.i7.i.i.neg.i.i.i = select i1 %tobool.not.i5.i.i.i.i.i, i32 0, i32 %sub.i6.i.i.neg.i.i.i
  br label %fls64.exit.i.i.i.i

fls64.exit.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.neg.i.i.i = phi i32 [ %add.i.i.neg.i.i.i, %if.then.i.i.i.i.i ], [ %cond.i7.i.i.neg.i.i.i, %if.end.i.i.i.i.i ]
  %add.i.neg.i.i.i = add nsw i32 %retval.0.i.i.neg.i.i.i, -64
  br label %fls128.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %if.then7.i.i.i
  %shr.i3.i.i.i.i = lshr i64 %xor14.i.i.i, 32
  %conv.i4.i.i.i.i = trunc i64 %shr.i3.i.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i4.i.i.i.i)
  %tobool.not.i5.i.i.i.i = icmp eq i32 %conv.i4.i.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i.i, label %if.end.i12.i.i.i.i, label %if.then.i7.i.i.i.i

if.then.i7.i.i.i.i:                               ; preds = %cond.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = tail call i32 @llvm.ctlz.i32(i32 %conv.i4.i.i.i.i, i1 true) #11, !range !191
  %add.i6.i.neg.i.i.i = or i32 %44, -64
  br label %fls128.exit.i.i.i

if.end.i12.i.i.i.i:                               ; preds = %cond.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i.i.i.i = trunc i64 %xor14.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i8.i.i.i.i)
  %tobool.not.i5.i9.i.i.i.i = icmp eq i32 %conv1.i8.i.i.i.i, 0
  %45 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i8.i.i.i.i, i1 true) #11, !range !191
  %sub.i6.i10.i.neg.i.i.i = or i32 %45, -32
  %cond.i7.i11.i.neg.i.i.i = select i1 %tobool.not.i5.i9.i.i.i.i, i32 0, i32 %sub.i6.i10.i.neg.i.i.i
  br label %fls128.exit.i.i.i

fls128.exit.i.i.i:                                ; preds = %if.end.i12.i.i.i.i, %if.then.i7.i.i.i.i, %fls64.exit.i.i.i.i
  %cond.i25.neg.i.i.i = phi i32 [ %add.i.neg.i.i.i, %fls64.exit.i.i.i.i ], [ %add.i6.i.neg.i.i.i, %if.then.i7.i.i.i.i ], [ %cond.i7.i11.i.neg.i.i.i, %if.end.i12.i.i.i.i ]
  %.neg.i.i.i = trunc i32 %cond.i25.neg.i.i.i to i8
  %conv17.i.i.i = xor i8 %.neg.i.i.i, -128
  br label %prefix_matches.exit.i

prefix_matches.exit.i:                            ; preds = %fls128.exit.i.i.i, %if.then.i.i.i, %land.rhs.i.prefix_matches.exit.i_crit_edge
  %retval.0.i.i.i = phi i8 [ %33, %if.then.i.i.i ], [ %conv17.i.i.i, %fls128.exit.i.i.i ], [ 0, %land.rhs.i.prefix_matches.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i.i, i8 %26)
  %cmp.i.not.i = icmp ult i8 %retval.0.i.i.i, %26
  br i1 %cmp.i.not.i, label %prefix_matches.exit.i.if.end76_crit_edge, label %while.body.i

prefix_matches.exit.i.if.end76_crit_edge:         ; preds = %prefix_matches.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

while.body.i:                                     ; preds = %prefix_matches.exit.i
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %cidr)
  %cmp15.i = icmp eq i8 %26, %cidr
  br i1 %cmp15.i, label %do.body36, label %do.body19.i

do.body19.i:                                      ; preds = %while.body.i
  %call.i48.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %tobool22.not.i = icmp eq i32 %call.i48.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true23.i, label %do.body19.i.do.end31.i_crit_edge

do.body19.i.do.end31.i_crit_edge:                 ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31.i

land.lhs.true23.i:                                ; preds = %do.body19.i
  %call24.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true23.i.do.end31.i_crit_edge, label %land.lhs.true26.i

land.lhs.true23.i.do.end31.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31.i

land.lhs.true26.i:                                ; preds = %land.lhs.true23.i
  %.b4546.i = load i1, ptr @node_placement.__warned.98, align 1
  br i1 %.b4546.i, label %land.lhs.true26.i.do.end31.i_crit_edge, label %if.then28.i

land.lhs.true26.i.do.end31.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31.i

if.then28.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @node_placement.__warned.98, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 160, ptr noundef nonnull @.str.1) #11
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then28.i, %land.lhs.true26.i.do.end31.i_crit_edge, %land.lhs.true23.i.do.end31.i_crit_edge, %do.body19.i.do.end31.i_crit_edge
  %bit_at_a.i.i = getelementptr inbounds %struct.allowedips_node, ptr %node.051.i362, i32 0, i32 3
  %46 = ptrtoint ptr %bit_at_a.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bit_at_a.i.i, align 1
  %idxprom.i.i = zext i8 %47 to i32
  %arrayidx.i.i = getelementptr i8, ptr %key, i32 %idxprom.i.i
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %49 to i32
  %bit_at_b.i.i = getelementptr inbounds %struct.allowedips_node, ptr %node.051.i362, i32 0, i32 4
  %50 = ptrtoint ptr %bit_at_b.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bit_at_b.i.i, align 2
  %conv1.i.i = zext i8 %51 to i32
  %shr.i.i = lshr i32 %conv.i.i, %conv1.i.i
  %conv2.i.i = and i32 %shr.i.i, 1
  %arrayidx.i = getelementptr %struct.allowedips_node, ptr %node.051.i362, i32 0, i32 1, i32 %conv2.i.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %53, null
  br i1 %tobool5.not.i, label %do.end31.i.if.end76_crit_edge, label %land.lhs.true6.i

do.end31.i.if.end76_crit_edge:                    ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

do.body36:                                        ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !192
  %54 = ptrtoint ptr %node.051.i362 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %peer, ptr %node.051.i362, align 8
  %55 = getelementptr inbounds %struct.allowedips_node, ptr %node.051.i362, i32 0, i32 8
  %allowedips_list75 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 32
  %call.i.i240 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %55) #11
  br i1 %call.i.i240, label %if.end.i.i241, label %do.body36.__list_del_entry.exit.i_crit_edge

do.body36.__list_del_entry.exit.i_crit_edge:      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i241:                                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.allowedips_node, ptr %node.051.i362, i32 0, i32 8, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %55, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i241, %do.body36.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 32, i32 1
  %62 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %55, ptr noundef %63, ptr noundef %allowedips_list75) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.cleanup179_crit_edge

__list_del_entry.exit.i.cleanup179_crit_edge:     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup179

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %55, ptr %prev.i2.i, align 4
  %65 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %allowedips_list75, ptr %55, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.allowedips_node, ptr %node.051.i362, i32 0, i32 8, i32 0, i32 1
  %66 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev3.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %55, ptr %63, align 4
  br label %cleanup179

if.end76:                                         ; preds = %do.end31.i.if.end76_crit_edge, %prefix_matches.exit.i.if.end76_crit_edge, %land.lhs.true6.i.if.end76_crit_edge, %land.lhs.true6.lr.ph.i.if.end76_crit_edge
  %parent.1.i.ph = phi ptr [ null, %land.lhs.true6.lr.ph.i.if.end76_crit_edge ], [ %node.051.i362, %do.end31.i.if.end76_crit_edge ], [ %node.051.i362, %land.lhs.true6.i.if.end76_crit_edge ], [ %parent.050.i363, %prefix_matches.exit.i.if.end76_crit_edge ]
  %68 = load ptr, ptr @node_cache, align 4
  %call.i242 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %68, i32 noundef 3520) #11
  %tobool78.not = icmp eq ptr %call.i242, null
  br i1 %tobool78.not, label %if.end76.cleanup179_crit_edge, label %do.body94, !prof !189

if.end76.cleanup179_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup179

do.body94:                                        ; preds = %if.end76
  %69 = ptrtoint ptr %call.i242 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %peer, ptr %call.i242, align 8
  %70 = getelementptr inbounds %struct.allowedips_node, ptr %call.i242, i32 0, i32 8
  %allowedips_list102 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 32
  %prev.i243 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 32, i32 1
  %71 = ptrtoint ptr %prev.i243 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i243, align 4
  %call.i.i244 = tail call zeroext i1 @__list_add_valid(ptr noundef %70, ptr noundef %72, ptr noundef %allowedips_list102) #11
  br i1 %call.i.i244, label %if.end.i.i246, label %do.body94.list_add_tail.exit247_crit_edge

do.body94.list_add_tail.exit247_crit_edge:        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit247

if.end.i.i246:                                    ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %prev.i243 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev.i243, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %allowedips_list102, ptr %70, align 4
  %prev3.i.i245 = getelementptr inbounds %struct.allowedips_node, ptr %call.i242, i32 0, i32 8, i32 0, i32 1
  %75 = ptrtoint ptr %prev3.i.i245 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev3.i.i245, align 8
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %70, ptr %72, align 4
  br label %list_add_tail.exit247

list_add_tail.exit247:                            ; preds = %if.end.i.i246, %do.body94.list_add_tail.exit247_crit_edge
  %cidr1.i248 = getelementptr inbounds %struct.allowedips_node, ptr %call.i242, i32 0, i32 2
  %77 = ptrtoint ptr %cidr1.i248 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %cidr, ptr %cidr1.i248, align 4
  %div15.i249 = lshr i8 %cidr, 3
  %bit_at_a.i250 = getelementptr inbounds %struct.allowedips_node, ptr %call.i242, i32 0, i32 3
  %78 = ptrtoint ptr %bit_at_a.i250 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %div15.i249, ptr %bit_at_a.i250, align 1
  %79 = and i8 %cidr, 7
  %80 = xor i8 %79, 7
  %bit_at_b.i251 = getelementptr inbounds %struct.allowedips_node, ptr %call.i242, i32 0, i32 4
  %81 = ptrtoint ptr %bit_at_b.i251 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %bit_at_b.i251, align 2
  %bitlen.i252 = getelementptr inbounds %struct.allowedips_node, ptr %call.i242, i32 0, i32 5
  %82 = ptrtoint ptr %bitlen.i252 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %bits, ptr %bitlen.i252, align 1
  %bits5.i253 = getelementptr inbounds %struct.allowedips_node, ptr %call.i242, i32 0, i32 6
  %83 = lshr i8 %bits, 3
  %div7.i254 = zext i8 %83 to i32
  %84 = call ptr @memcpy(ptr %bits5.i253, ptr %key, i32 %div7.i254)
  %tobool103.not = icmp eq ptr %parent.1.i.ph, null
  br i1 %tobool103.not, label %do.body105, label %if.else118

do.body105:                                       ; preds = %list_add_tail.exit247
  %call.i255 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %tobool107.not = icmp eq i32 %call.i255, 0
  br i1 %tobool107.not, label %land.lhs.true108, label %do.body105.do.end116_crit_edge

do.body105.do.end116_crit_edge:                   ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end116

land.lhs.true108:                                 ; preds = %do.body105
  %call109 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %land.lhs.true108.do.end116_crit_edge, label %land.lhs.true111

land.lhs.true108.do.end116_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end116

land.lhs.true111:                                 ; preds = %land.lhs.true108
  %.b237 = load i1, ptr @add.__warned, align 1
  br i1 %.b237, label %land.lhs.true111.do.end116_crit_edge, label %if.then113

land.lhs.true111.do.end116_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end116

if.then113:                                       ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 210, ptr noundef nonnull @.str.1) #11
  br label %do.end116

do.end116:                                        ; preds = %if.then113, %land.lhs.true111.do.end116_crit_edge, %land.lhs.true108.do.end116_crit_edge, %do.body105.do.end116_crit_edge
  %85 = ptrtoint ptr %trie to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %trie, align 4
  br label %if.end141

if.else118:                                       ; preds = %list_add_tail.exit247
  %bit_at_a.i256 = getelementptr inbounds %struct.allowedips_node, ptr %parent.1.i.ph, i32 0, i32 3
  %87 = ptrtoint ptr %bit_at_a.i256 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bit_at_a.i256, align 1
  %idxprom.i = zext i8 %88 to i32
  %arrayidx.i257 = getelementptr i8, ptr %key, i32 %idxprom.i
  %89 = ptrtoint ptr %arrayidx.i257 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i257, align 1
  %conv.i = zext i8 %90 to i32
  %bit_at_b.i258 = getelementptr inbounds %struct.allowedips_node, ptr %parent.1.i.ph, i32 0, i32 4
  %91 = ptrtoint ptr %bit_at_b.i258 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bit_at_b.i258, align 2
  %conv1.i = zext i8 %92 to i32
  %shr.i = lshr i32 %conv.i, %conv1.i
  %conv2.i = and i32 %shr.i, 1
  %call.i259 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259)
  %tobool123.not = icmp eq i32 %call.i259, 0
  br i1 %tobool123.not, label %land.lhs.true124, label %if.else118.do.end132_crit_edge

if.else118.do.end132_crit_edge:                   ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end132

land.lhs.true124:                                 ; preds = %if.else118
  %call125 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %land.lhs.true124.do.end132_crit_edge, label %land.lhs.true127

land.lhs.true124.do.end132_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end132

land.lhs.true127:                                 ; preds = %land.lhs.true124
  %.b236238 = load i1, ptr @add.__warned.97, align 1
  br i1 %.b236238, label %land.lhs.true127.do.end132_crit_edge, label %if.then129

land.lhs.true127.do.end132_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end132

if.then129:                                       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @add.__warned.97, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 213, ptr noundef nonnull @.str.1) #11
  br label %do.end132

do.end132:                                        ; preds = %if.then129, %land.lhs.true127.do.end132_crit_edge, %land.lhs.true124.do.end132_crit_edge, %if.else118.do.end132_crit_edge
  %arrayidx = getelementptr %struct.allowedips_node, ptr %parent.1.i.ph, i32 0, i32 1, i32 %conv2.i
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx, align 4
  %tobool135.not = icmp eq ptr %94, null
  br i1 %tobool135.not, label %if.then136, label %do.end132.if.end141_crit_edge

do.end132.if.end141_crit_edge:                    ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end141

if.then136:                                       ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %arrayidx to i32
  %or.i261 = or i32 %conv2.i, %95
  %parent_bit_packed.i262 = getelementptr inbounds %struct.allowedips_node, ptr %call.i242, i32 0, i32 7
  %96 = ptrtoint ptr %parent_bit_packed.i262 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or.i261, ptr %parent_bit_packed.i262, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !190
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %call.i242, ptr %arrayidx, align 4
  br label %cleanup179

if.end141:                                        ; preds = %do.end132.if.end141_crit_edge, %do.end116
  %down.0 = phi ptr [ %86, %do.end116 ], [ %94, %do.end132.if.end141_crit_edge ]
  %98 = zext i8 %bits to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %bits, label %if.end141.common_bits.exit_crit_edge [
    i8 32, label %if.then.i263
    i8 -128, label %if.then7.i
  ]

if.end141.common_bits.exit_crit_edge:             ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %common_bits.exit

if.then.i263:                                     ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  %bits2.i = getelementptr inbounds %struct.allowedips_node, ptr %down.0, i32 0, i32 6
  %99 = ptrtoint ptr %bits2.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bits2.i, align 8
  %101 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %key, align 4
  %xor.i = xor i32 %102, %100
  %103 = tail call i32 @llvm.ctlz.i32(i32 %xor.i, i1 false) #11, !range !191
  %104 = trunc i32 %103 to i8
  br label %common_bits.exit

if.then7.i:                                       ; preds = %if.end141
  %bits8.i = getelementptr inbounds %struct.allowedips_node, ptr %down.0, i32 0, i32 6
  %105 = ptrtoint ptr %bits8.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %bits8.i, align 8
  %107 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %key, align 8
  %xor10.i = xor i64 %108, %106
  %arrayidx12.i = getelementptr %struct.allowedips_node, ptr %down.0, i32 0, i32 6, i32 8
  %109 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %arrayidx12.i, align 8
  %111 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %arrayidx13.i.i.i, align 8
  %xor14.i = xor i64 %112, %110
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %xor10.i)
  %tobool.not.i24.i = icmp eq i64 %xor10.i, 0
  br i1 %tobool.not.i24.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %if.then7.i
  %shr.i.i.i = lshr i64 %xor10.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i265, label %if.then.i.i.i264

if.then.i.i.i264:                                 ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %113 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i, i1 true) #11, !range !191
  %add.i.i.neg.i = or i32 %113, -64
  br label %fls64.exit.i.i

if.end.i.i.i265:                                  ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i.i.i = trunc i64 %xor10.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %conv1.i.i.i, 0
  %114 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i, i1 true) #11, !range !191
  %sub.i6.i.i.neg.i = or i32 %114, -32
  %cond.i7.i.i.neg.i = select i1 %tobool.not.i5.i.i.i, i32 0, i32 %sub.i6.i.i.neg.i
  br label %fls64.exit.i.i

fls64.exit.i.i:                                   ; preds = %if.end.i.i.i265, %if.then.i.i.i264
  %retval.0.i.i.neg.i = phi i32 [ %add.i.i.neg.i, %if.then.i.i.i264 ], [ %cond.i7.i.i.neg.i, %if.end.i.i.i265 ]
  %add.i.neg.i = add nsw i32 %retval.0.i.i.neg.i, -64
  br label %fls128.exit.i

cond.false.i.i:                                   ; preds = %if.then7.i
  %shr.i3.i.i = lshr i64 %xor14.i, 32
  %conv.i4.i.i = trunc i64 %shr.i3.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %if.end.i12.i.i, label %if.then.i7.i.i

if.then.i7.i.i:                                   ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %115 = tail call i32 @llvm.ctlz.i32(i32 %conv.i4.i.i, i1 true) #11, !range !191
  %add.i6.i.neg.i = or i32 %115, -64
  br label %fls128.exit.i

if.end.i12.i.i:                                   ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i.i = trunc i64 %xor14.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i8.i.i)
  %tobool.not.i5.i9.i.i = icmp eq i32 %conv1.i8.i.i, 0
  %116 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i8.i.i, i1 true) #11, !range !191
  %sub.i6.i10.i.neg.i = or i32 %116, -32
  %cond.i7.i11.i.neg.i = select i1 %tobool.not.i5.i9.i.i, i32 0, i32 %sub.i6.i10.i.neg.i
  br label %fls128.exit.i

fls128.exit.i:                                    ; preds = %if.end.i12.i.i, %if.then.i7.i.i, %fls64.exit.i.i
  %cond.i25.neg.i = phi i32 [ %add.i.neg.i, %fls64.exit.i.i ], [ %add.i6.i.neg.i, %if.then.i7.i.i ], [ %cond.i7.i11.i.neg.i, %if.end.i12.i.i ]
  %.neg.i = trunc i32 %cond.i25.neg.i to i8
  %conv17.i = xor i8 %.neg.i, -128
  br label %common_bits.exit

common_bits.exit:                                 ; preds = %fls128.exit.i, %if.then.i263, %if.end141.common_bits.exit_crit_edge
  %retval.0.i = phi i8 [ %104, %if.then.i263 ], [ %conv17.i, %fls128.exit.i ], [ 0, %if.end141.common_bits.exit_crit_edge ]
  %117 = tail call i8 @llvm.umin.i8(i8 %retval.0.i, i8 %cidr)
  %118 = ptrtoint ptr %cidr1.i248 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %cidr1.i248, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %119, i8 %117)
  %cmp154 = icmp eq i8 %119, %117
  br i1 %cmp154, label %if.then156, label %if.end161

if.then156:                                       ; preds = %common_bits.exit
  %bits.i = getelementptr inbounds %struct.allowedips_node, ptr %down.0, i32 0, i32 6
  %120 = ptrtoint ptr %bit_at_a.i250 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %bit_at_a.i250, align 1
  %idxprom.i.i267 = zext i8 %121 to i32
  %arrayidx.i.i268 = getelementptr i8, ptr %bits.i, i32 %idxprom.i.i267
  %122 = ptrtoint ptr %arrayidx.i.i268 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx.i.i268, align 1
  %conv.i.i269 = zext i8 %123 to i32
  %124 = ptrtoint ptr %bit_at_b.i251 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %bit_at_b.i251, align 2
  %conv1.i.i271 = zext i8 %125 to i32
  %shr.i.i272 = lshr i32 %conv.i.i269, %conv1.i.i271
  %conv2.i.i273 = and i32 %shr.i.i272, 1
  %arrayidx.i274 = getelementptr %struct.allowedips_node, ptr %call.i242, i32 0, i32 1, i32 %conv2.i.i273
  %126 = ptrtoint ptr %arrayidx.i274 to i32
  %or.i.i = or i32 %conv2.i.i273, %126
  %parent_bit_packed.i.i = getelementptr inbounds %struct.allowedips_node, ptr %down.0, i32 0, i32 7
  %127 = ptrtoint ptr %parent_bit_packed.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %or.i.i, ptr %parent_bit_packed.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !190
  %128 = ptrtoint ptr %arrayidx.i274 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %down.0, ptr %arrayidx.i274, align 4
  br i1 %tobool103.not, label %if.then158, label %if.else159

if.then158:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  %129 = ptrtoint ptr %trie to i32
  %or.i275 = or i32 %129, 2
  %parent_bit_packed.i276 = getelementptr inbounds %struct.allowedips_node, ptr %call.i242, i32 0, i32 7
  %130 = ptrtoint ptr %parent_bit_packed.i276 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or.i275, ptr %parent_bit_packed.i276, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !190
  %131 = ptrtoint ptr %trie to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %call.i242, ptr %trie, align 4
  br label %cleanup179

if.else159:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  %bit_at_a.i.i278 = getelementptr inbounds %struct.allowedips_node, ptr %parent.1.i.ph, i32 0, i32 3
  %132 = ptrtoint ptr %bit_at_a.i.i278 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %bit_at_a.i.i278, align 1
  %idxprom.i.i279 = zext i8 %133 to i32
  %arrayidx.i.i280 = getelementptr i8, ptr %bits5.i253, i32 %idxprom.i.i279
  %134 = ptrtoint ptr %arrayidx.i.i280 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.i.i280, align 1
  %conv.i.i281 = zext i8 %135 to i32
  %bit_at_b.i.i282 = getelementptr inbounds %struct.allowedips_node, ptr %parent.1.i.ph, i32 0, i32 4
  %136 = ptrtoint ptr %bit_at_b.i.i282 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %bit_at_b.i.i282, align 2
  %conv1.i.i283 = zext i8 %137 to i32
  %shr.i.i284 = lshr i32 %conv.i.i281, %conv1.i.i283
  %conv2.i.i285 = and i32 %shr.i.i284, 1
  %arrayidx.i286 = getelementptr %struct.allowedips_node, ptr %parent.1.i.ph, i32 0, i32 1, i32 %conv2.i.i285
  %138 = ptrtoint ptr %arrayidx.i286 to i32
  %or.i.i287 = or i32 %conv2.i.i285, %138
  %parent_bit_packed.i.i288 = getelementptr inbounds %struct.allowedips_node, ptr %call.i242, i32 0, i32 7
  %139 = ptrtoint ptr %parent_bit_packed.i.i288 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %or.i.i287, ptr %parent_bit_packed.i.i288, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !190
  %140 = ptrtoint ptr %arrayidx.i286 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %call.i242, ptr %arrayidx.i286, align 4
  br label %cleanup179

if.end161:                                        ; preds = %common_bits.exit
  %141 = load ptr, ptr @node_cache, align 4
  %call.i289 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %141, i32 noundef 3520) #11
  %tobool163.not = icmp eq ptr %call.i289, null
  br i1 %tobool163.not, label %if.then172, label %if.end173, !prof !189

if.then172:                                       ; preds = %if.end161
  %call.i.i290 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %70) #11
  br i1 %call.i.i290, label %if.end.i.i293, label %if.then172.list_del.exit_crit_edge

if.then172.list_del.exit_crit_edge:               ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i293:                                    ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i291 = getelementptr inbounds %struct.allowedips_node, ptr %call.i242, i32 0, i32 8, i32 0, i32 1
  %142 = ptrtoint ptr %prev.i.i291 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %prev.i.i291, align 8
  %144 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %70, align 4
  %prev1.i.i.i292 = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %prev1.i.i.i292 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %143, ptr %prev1.i.i.i292, align 4
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %145, ptr %143, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i293, %if.then172.list_del.exit_crit_edge
  %148 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr inttoptr (i32 256 to ptr), ptr %70, align 4
  %prev.i294 = getelementptr inbounds %struct.allowedips_node, ptr %call.i242, i32 0, i32 8, i32 0, i32 1
  %149 = ptrtoint ptr %prev.i294 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i294, align 8
  %150 = load ptr, ptr @node_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %150, ptr noundef nonnull %call.i242) #11
  br label %cleanup179

if.end173:                                        ; preds = %if.end161
  %151 = getelementptr inbounds %struct.allowedips_node, ptr %call.i289, i32 0, i32 8
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %151, ptr %151, align 4
  %prev.i296 = getelementptr inbounds %struct.allowedips_node, ptr %call.i289, i32 0, i32 8, i32 0, i32 1
  %153 = ptrtoint ptr %prev.i296 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %151, ptr %prev.i296, align 8
  %cidr1.i297 = getelementptr inbounds %struct.allowedips_node, ptr %call.i289, i32 0, i32 2
  %154 = ptrtoint ptr %cidr1.i297 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %117, ptr %cidr1.i297, align 4
  %div15.i298 = lshr i8 %117, 3
  %bit_at_a.i299 = getelementptr inbounds %struct.allowedips_node, ptr %call.i289, i32 0, i32 3
  %155 = ptrtoint ptr %bit_at_a.i299 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %div15.i298, ptr %bit_at_a.i299, align 1
  %156 = and i8 %117, 7
  %157 = xor i8 %156, 7
  %bit_at_b.i300 = getelementptr inbounds %struct.allowedips_node, ptr %call.i289, i32 0, i32 4
  %158 = ptrtoint ptr %bit_at_b.i300 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %bit_at_b.i300, align 2
  %bitlen.i301 = getelementptr inbounds %struct.allowedips_node, ptr %call.i289, i32 0, i32 5
  %159 = ptrtoint ptr %bitlen.i301 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %bits, ptr %bitlen.i301, align 1
  %bits5.i302 = getelementptr inbounds %struct.allowedips_node, ptr %call.i289, i32 0, i32 6
  %160 = call ptr @memcpy(ptr %bits5.i302, ptr %bits5.i253, i32 %div7.i254)
  %bits.i304 = getelementptr inbounds %struct.allowedips_node, ptr %down.0, i32 0, i32 6
  %idxprom.i.i306 = zext i8 %div15.i298 to i32
  %arrayidx.i.i307 = getelementptr i8, ptr %bits.i304, i32 %idxprom.i.i306
  %161 = ptrtoint ptr %arrayidx.i.i307 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx.i.i307, align 1
  %conv.i.i308 = zext i8 %162 to i32
  %conv1.i.i310 = zext i8 %157 to i32
  %shr.i.i311 = lshr i32 %conv.i.i308, %conv1.i.i310
  %conv2.i.i312 = and i32 %shr.i.i311, 1
  %arrayidx.i313 = getelementptr %struct.allowedips_node, ptr %call.i289, i32 0, i32 1, i32 %conv2.i.i312
  %163 = ptrtoint ptr %arrayidx.i313 to i32
  %or.i.i314 = or i32 %conv2.i.i312, %163
  %parent_bit_packed.i.i315 = getelementptr inbounds %struct.allowedips_node, ptr %down.0, i32 0, i32 7
  %164 = ptrtoint ptr %parent_bit_packed.i.i315 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %or.i.i314, ptr %parent_bit_packed.i.i315, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !190
  %165 = ptrtoint ptr %arrayidx.i313 to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile ptr %down.0, ptr %arrayidx.i313, align 4
  %166 = ptrtoint ptr %bit_at_a.i299 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %bit_at_a.i299, align 1
  %idxprom.i.i318 = zext i8 %167 to i32
  %arrayidx.i.i319 = getelementptr i8, ptr %bits5.i253, i32 %idxprom.i.i318
  %168 = ptrtoint ptr %arrayidx.i.i319 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx.i.i319, align 1
  %conv.i.i320 = zext i8 %169 to i32
  %170 = ptrtoint ptr %bit_at_b.i300 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %bit_at_b.i300, align 2
  %conv1.i.i322 = zext i8 %171 to i32
  %shr.i.i323 = lshr i32 %conv.i.i320, %conv1.i.i322
  %conv2.i.i324 = and i32 %shr.i.i323, 1
  %arrayidx.i325 = getelementptr %struct.allowedips_node, ptr %call.i289, i32 0, i32 1, i32 %conv2.i.i324
  %172 = ptrtoint ptr %arrayidx.i325 to i32
  %or.i.i326 = or i32 %conv2.i.i324, %172
  %parent_bit_packed.i.i327 = getelementptr inbounds %struct.allowedips_node, ptr %call.i242, i32 0, i32 7
  %173 = ptrtoint ptr %parent_bit_packed.i.i327 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %or.i.i326, ptr %parent_bit_packed.i.i327, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !190
  %174 = ptrtoint ptr %arrayidx.i325 to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile ptr %call.i242, ptr %arrayidx.i325, align 4
  br i1 %tobool103.not, label %if.then176, label %if.else177

if.then176:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  %175 = ptrtoint ptr %trie to i32
  %or.i328 = or i32 %175, 2
  %parent_bit_packed.i329 = getelementptr inbounds %struct.allowedips_node, ptr %call.i289, i32 0, i32 7
  %176 = ptrtoint ptr %parent_bit_packed.i329 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %or.i328, ptr %parent_bit_packed.i329, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !190
  %177 = ptrtoint ptr %trie to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile ptr %call.i289, ptr %trie, align 4
  br label %cleanup179

if.else177:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  %bit_at_a.i.i331 = getelementptr inbounds %struct.allowedips_node, ptr %parent.1.i.ph, i32 0, i32 3
  %178 = ptrtoint ptr %bit_at_a.i.i331 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %bit_at_a.i.i331, align 1
  %idxprom.i.i332 = zext i8 %179 to i32
  %arrayidx.i.i333 = getelementptr i8, ptr %bits5.i302, i32 %idxprom.i.i332
  %180 = ptrtoint ptr %arrayidx.i.i333 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx.i.i333, align 1
  %conv.i.i334 = zext i8 %181 to i32
  %bit_at_b.i.i335 = getelementptr inbounds %struct.allowedips_node, ptr %parent.1.i.ph, i32 0, i32 4
  %182 = ptrtoint ptr %bit_at_b.i.i335 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %bit_at_b.i.i335, align 2
  %conv1.i.i336 = zext i8 %183 to i32
  %shr.i.i337 = lshr i32 %conv.i.i334, %conv1.i.i336
  %conv2.i.i338 = and i32 %shr.i.i337, 1
  %arrayidx.i339 = getelementptr %struct.allowedips_node, ptr %parent.1.i.ph, i32 0, i32 1, i32 %conv2.i.i338
  %184 = ptrtoint ptr %arrayidx.i339 to i32
  %or.i.i340 = or i32 %conv2.i.i338, %184
  %parent_bit_packed.i.i341 = getelementptr inbounds %struct.allowedips_node, ptr %call.i289, i32 0, i32 7
  %185 = ptrtoint ptr %parent_bit_packed.i.i341 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %or.i.i340, ptr %parent_bit_packed.i.i341, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !190
  %186 = ptrtoint ptr %arrayidx.i339 to i32
  call void @__asan_store4_noabort(i32 %186)
  store volatile ptr %call.i289, ptr %arrayidx.i339, align 4
  br label %cleanup179

cleanup179:                                       ; preds = %if.else177, %if.then176, %list_del.exit, %if.else159, %if.then158, %if.then136, %if.end76.cleanup179_crit_edge, %if.end.i.i.i, %__list_del_entry.exit.i.cleanup179_crit_edge, %list_add_tail.exit, %if.then8.cleanup179_crit_edge, %entry.cleanup179_crit_edge
  %retval.1 = phi i32 [ -12, %list_del.exit ], [ 0, %list_add_tail.exit ], [ -22, %entry.cleanup179_crit_edge ], [ -12, %if.then8.cleanup179_crit_edge ], [ -12, %if.end76.cleanup179_crit_edge ], [ 0, %if.then136 ], [ 0, %if.else159 ], [ 0, %if.then158 ], [ 0, %if.else177 ], [ 0, %if.then176 ], [ 0, %__list_del_entry.exit.i.cleanup179_crit_edge ], [ 0, %if.end.i.i.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wg_allowedips_insert_v6(ptr noundef %table, ptr nocapture noundef readonly %ip, i8 noundef zeroext %cidr, ptr noundef %peer, ptr noundef %lock) local_unnamed_addr #1 align 64 {
entry:
  %key = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key) #11
  %0 = getelementptr inbounds [16 x i8], ptr %key, i32 0, i32 8
  %seq = getelementptr inbounds %struct.allowedips, ptr %table, i32 0, i32 2
  %1 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %seq, align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr %seq, align 8
  %3 = ptrtoint ptr %ip to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ip, align 8
  %5 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %key, align 8
  %arrayidx7.i = getelementptr i64, ptr %ip, i32 1
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx7.i, align 8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %0, align 8
  %root6 = getelementptr inbounds %struct.allowedips, ptr %table, i32 0, i32 1
  %call = call fastcc i32 @add(ptr noundef %root6, i8 noundef zeroext -128, ptr noundef nonnull %key, i8 noundef zeroext %cidr, ptr noundef %peer, ptr noundef %lock)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_allowedips_remove_by_peer(ptr nocapture noundef %table, ptr noundef %peer, ptr noundef %lock) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %allowedips_list = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 32
  %0 = ptrtoint ptr %allowedips_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %allowedips_list, align 4
  %cmp.i.not = icmp eq ptr %1, %allowedips_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.allowedips, ptr %table, i32 0, i32 2
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %seq, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %seq, align 8
  %4 = ptrtoint ptr %allowedips_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %allowedips_list, align 4
  %cmp.not167 = icmp eq ptr %5, %allowedips_list
  br i1 %cmp.not167, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %dep_map = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in168 = phi ptr [ %5, %for.body.lr.ph ], [ %.pn170, %for.inc.for.body_crit_edge ]
  %node.0169 = getelementptr i8, ptr %.pn.in168, i32 -36
  %6 = ptrtoint ptr %.pn.in168 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn170 = load ptr, ptr %.pn.in168, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in168) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in168, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in168 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in168, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in168 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %.pn.in168, ptr %.pn.in168, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in168, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %.pn.in168, ptr %prev.i3.i, align 4
  %15 = ptrtoint ptr %node.0169 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr null, ptr %node.0169, align 8
  %bit = getelementptr i8, ptr %.pn.in168, i32 -32
  %16 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bit, align 4
  %tobool18.not = icmp eq ptr %17, null
  br i1 %tobool18.not, label %list_del_init.exit.do.body24_crit_edge, label %land.lhs.true

list_del_init.exit.do.body24_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body24

land.lhs.true:                                    ; preds = %list_del_init.exit
  %arrayidx20 = getelementptr i8, ptr %.pn.in168, i32 -28
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx20, align 4
  %tobool21.not = icmp eq ptr %19, null
  br i1 %tobool21.not, label %land.lhs.true.do.body24_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.do.body24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body24

do.body24:                                        ; preds = %land.lhs.true.do.body24_crit_edge, %list_del_init.exit.do.body24_crit_edge
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool26.not = icmp eq i32 %call.i, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %do.body24.do.end35_crit_edge

do.body24.do.end35_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end35

land.lhs.true27:                                  ; preds = %do.body24
  %call28 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true27.do.end35_crit_edge, label %land.lhs.true30

land.lhs.true27.do.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end35

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %.b161 = load i1, ptr @wg_allowedips_remove_by_peer.__warned, align 1
  br i1 %.b161, label %land.lhs.true30.do.end35_crit_edge, label %if.then32

land.lhs.true30.do.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end35

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @wg_allowedips_remove_by_peer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 315, ptr noundef nonnull @.str.1) #11
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %land.lhs.true30.do.end35_crit_edge, %land.lhs.true27.do.end35_crit_edge, %do.body24.do.end35_crit_edge
  %20 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %bit, align 4
  %tobool45.not = icmp eq ptr %21, null
  %lnot.ext = zext i1 %tobool45.not to i32
  %arrayidx47 = getelementptr %struct.allowedips_node, ptr %node.0169, i32 0, i32 1, i32 %lnot.ext
  %22 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx47, align 4
  %tobool48.not = icmp eq ptr %23, null
  br i1 %tobool48.not, label %do.end35.if.end51_crit_edge, label %if.then49

do.end35.if.end51_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then49:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #13
  %parent_bit_packed = getelementptr i8, ptr %.pn.in168, i32 -4
  %24 = ptrtoint ptr %parent_bit_packed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %parent_bit_packed, align 8
  %parent_bit_packed50 = getelementptr inbounds %struct.allowedips_node, ptr %23, i32 0, i32 7
  %26 = ptrtoint ptr %parent_bit_packed50 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %parent_bit_packed50, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %do.end35.if.end51_crit_edge
  %parent_bit_packed52 = getelementptr i8, ptr %.pn.in168, i32 -4
  %27 = ptrtoint ptr %parent_bit_packed52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %parent_bit_packed52, align 8
  %and = and i32 %28, -4
  %29 = inttoptr i32 %and to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %23, ptr %29, align 4
  %31 = load i32, ptr %parent_bit_packed52, align 8
  %and54 = shl i32 %31, 2
  %32 = and i32 %and54, 4
  %idx.neg = sub nuw nsw i32 -4, %32
  %add.ptr55 = getelementptr i8, ptr %29, i32 %idx.neg
  %33 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %bit, align 4
  %tobool63.not = icmp eq ptr %34, null
  br i1 %tobool63.not, label %land.lhs.true64, label %if.end51.for.inc.sink.split_crit_edge

if.end51.for.inc.sink.split_crit_edge:            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

land.lhs.true64:                                  ; preds = %if.end51
  %arrayidx70 = getelementptr i8, ptr %.pn.in168, i32 -28
  %35 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %arrayidx70, align 4
  %tobool72.not = icmp eq ptr %36, null
  %and75 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %cmp76.not.not = icmp eq i32 %and75, 0
  %or.cond = select i1 %tobool72.not, i1 %cmp76.not.not, i1 false
  br i1 %or.cond, label %land.end, label %land.lhs.true64.for.inc.sink.split_crit_edge

land.lhs.true64.for.inc.sink.split_crit_edge:     ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

land.end:                                         ; preds = %land.lhs.true64
  %37 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %add.ptr55, align 8
  %tobool83.not = icmp eq ptr %38, null
  br i1 %tobool83.not, label %do.body88, label %land.end.for.inc.sink.split_crit_edge

land.end.for.inc.sink.split_crit_edge:            ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

do.body88:                                        ; preds = %land.end
  %call.i163 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %tobool91.not = icmp eq i32 %call.i163, 0
  br i1 %tobool91.not, label %land.lhs.true92, label %do.body88.if.end112_crit_edge

do.body88.if.end112_crit_edge:                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

land.lhs.true92:                                  ; preds = %do.body88
  %call93 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %land.lhs.true92.if.end112_crit_edge, label %land.lhs.true95

land.lhs.true92.if.end112_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

land.lhs.true95:                                  ; preds = %land.lhs.true92
  %.b159160 = load i1, ptr @wg_allowedips_remove_by_peer.__warned.3, align 1
  br i1 %.b159160, label %land.lhs.true95.if.end112_crit_edge, label %if.then97

land.lhs.true95.if.end112_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.then97:                                        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @wg_allowedips_remove_by_peer.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 329, ptr noundef nonnull @.str.1) #11
  br label %if.end112

if.end112:                                        ; preds = %if.then97, %land.lhs.true95.if.end112_crit_edge, %land.lhs.true92.if.end112_crit_edge, %do.body88.if.end112_crit_edge
  %bit102 = getelementptr inbounds %struct.allowedips_node, ptr %add.ptr55, i32 0, i32 1
  %39 = ptrtoint ptr %parent_bit_packed52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %parent_bit_packed52, align 8
  %and104 = and i32 %40, 1
  %41 = xor i32 %and104, 1
  %arrayidx108 = getelementptr [2 x ptr], ptr %bit102, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx108, align 4
  tail call void @call_rcu(ptr noundef %.pn.in168, ptr noundef nonnull @node_free_rcu) #11
  %tobool113.not = icmp eq ptr %43, null
  br i1 %tobool113.not, label %if.end112.if.end117_crit_edge, label %if.then114

if.end112.if.end117_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

if.then114:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  %parent_bit_packed115 = getelementptr inbounds %struct.allowedips_node, ptr %add.ptr55, i32 0, i32 7
  %44 = ptrtoint ptr %parent_bit_packed115 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %parent_bit_packed115, align 8
  %parent_bit_packed116 = getelementptr inbounds %struct.allowedips_node, ptr %43, i32 0, i32 7
  %46 = ptrtoint ptr %parent_bit_packed116 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %parent_bit_packed116, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %if.end112.if.end117_crit_edge
  %parent_bit_packed118 = getelementptr inbounds %struct.allowedips_node, ptr %add.ptr55, i32 0, i32 7
  %47 = ptrtoint ptr %parent_bit_packed118 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %parent_bit_packed118, align 8
  %and119 = and i32 %48, -4
  %49 = inttoptr i32 %and119 to ptr
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %43, ptr %49, align 4
  %51 = getelementptr inbounds %struct.allowedips_node, ptr %add.ptr55, i32 0, i32 8
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.end117, %land.end.for.inc.sink.split_crit_edge, %land.lhs.true64.for.inc.sink.split_crit_edge, %if.end51.for.inc.sink.split_crit_edge
  %.pn.in168.sink = phi ptr [ %51, %if.end117 ], [ %.pn.in168, %land.end.for.inc.sink.split_crit_edge ], [ %.pn.in168, %land.lhs.true64.for.inc.sink.split_crit_edge ], [ %.pn.in168, %if.end51.for.inc.sink.split_crit_edge ]
  tail call void @call_rcu(ptr noundef %.pn.in168.sink, ptr noundef nonnull @node_free_rcu) #11
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %land.lhs.true.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn170, %allowedips_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @node_free_rcu(ptr noundef %rcu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @node_cache, align 4
  %add.ptr = getelementptr i8, ptr %rcu, i32 -36
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @wg_allowedips_read_node(ptr nocapture noundef readonly %node, ptr nocapture noundef %ip, ptr nocapture noundef writeonly %cidr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cidr1 = getelementptr inbounds %struct.allowedips_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %cidr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cidr1, align 4
  %conv = zext i8 %1 to i32
  %sub = add nuw nsw i32 %conv, 7
  %div28 = lshr i32 %sub, 3
  %bits = getelementptr inbounds %struct.allowedips_node, ptr %node, i32 0, i32 6
  %bitlen = getelementptr inbounds %struct.allowedips_node, ptr %node, i32 0, i32 5
  %2 = ptrtoint ptr %bitlen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bitlen, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.105)
  switch i8 %3, label %entry.swap_endian.exit_crit_edge [
    i8 32, label %if.then.i
    i8 -128, label %if.then5.i
  ]

entry.swap_endian.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %swap_endian.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bits, align 4
  %7 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ip, align 4
  br label %swap_endian.exit

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %bits to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bits, align 8
  %10 = ptrtoint ptr %ip to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %ip, align 8
  %arrayidx7.i = getelementptr %struct.allowedips_node, ptr %node, i32 0, i32 6, i32 8
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx7.i, align 8
  %arrayidx8.i = getelementptr i64, ptr %ip, i32 1
  %13 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %arrayidx8.i, align 8
  br label %swap_endian.exit

swap_endian.exit:                                 ; preds = %if.then5.i, %if.then.i, %entry.swap_endian.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %ip, i32 %div28
  %14 = ptrtoint ptr %bitlen to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bitlen, align 1
  %16 = lshr i8 %15, 3
  %div4 = zext i8 %16 to i32
  %sub5 = sub nsw i32 %div4, %div28
  %17 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub5)
  %18 = ptrtoint ptr %cidr1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cidr1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %swap_endian.exit.if.end_crit_edge, label %if.then

swap_endian.exit.if.end_crit_edge:                ; preds = %swap_endian.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %swap_endian.exit
  call void @__sanitizer_cov_trace_pc() #13
  %20 = sub i8 0, %19
  %21 = and i8 %20, 7
  %shl = shl nsw i8 -1, %21
  %sub10 = add nsw i32 %div28, -1
  %arrayidx = getelementptr i8, ptr %ip, i32 %sub10
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %and = and i8 %23, %shl
  store i8 %and, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %swap_endian.exit.if.end_crit_edge
  %24 = ptrtoint ptr %cidr1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cidr1, align 4
  %26 = ptrtoint ptr %cidr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %cidr, align 1
  %27 = ptrtoint ptr %bitlen to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bitlen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %28)
  %cmp = icmp eq i8 %28, 32
  %cond = select i1 %cmp, i32 2, i32 10
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wg_allowedips_lookup_dst(ptr nocapture noundef readonly %table, ptr nocapture noundef readonly %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.106)
  switch i16 %1, label %entry.return_crit_edge [
    i16 2048, label %if.then
    i16 -31011, label %if.then7
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %table, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %call2 = tail call fastcc ptr @lookup(ptr noundef %4, i8 noundef zeroext 32, ptr noundef %daddr)
  br label %return

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %root6 = getelementptr inbounds %struct.allowedips, ptr %table, i32 0, i32 1
  %9 = ptrtoint ptr %root6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %root6, align 4
  %head.i.i16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i16, align 8
  %network_header.i.i17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header.i.i17 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i.i17, align 4
  %conv.i.i18 = zext i16 %14 to i32
  %add.ptr.i.i19 = getelementptr i8, ptr %12, i32 %conv.i.i18
  %daddr9 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i19, i32 0, i32 6
  %call10 = tail call fastcc ptr @lookup(ptr noundef %10, i8 noundef zeroext -128, ptr noundef %daddr9)
  br label %return

return:                                           ; preds = %if.then7, %if.then, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call2, %if.then ], [ %call10, %if.then7 ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lookup(ptr noundef %root, i8 noundef zeroext %bits, ptr nocapture noundef readonly %be_ip) unnamed_addr #1 align 64 {
entry:
  %root.addr = alloca ptr, align 4
  %ip = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %root.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %root, ptr %root.addr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ip) #11
  %1 = getelementptr inbounds [16 x i8], ptr %ip, i32 0, i32 8
  %2 = call ptr @memset(ptr %ip, i32 255, i32 16)
  %3 = zext i8 %bits to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.107)
  switch i8 %bits, label %entry.swap_endian.exit_crit_edge [
    i8 32, label %if.then.i
    i8 -128, label %if.then5.i
  ]

entry.swap_endian.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %swap_endian.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %be_ip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %be_ip, align 4
  %6 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ip, align 8
  br label %swap_endian.exit

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %be_ip to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %be_ip, align 8
  %9 = ptrtoint ptr %ip to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %ip, align 8
  %arrayidx7.i = getelementptr i64, ptr %be_ip, i32 1
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx7.i, align 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %1, align 8
  br label %swap_endian.exit

swap_endian.exit:                                 ; preds = %if.then5.i, %if.then.i, %entry.swap_endian.exit_crit_edge
  tail call fastcc void @local_bh_disable() #11
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %swap_endian.exit.retry.preheader_crit_edge, label %land.lhs.true.i

swap_endian.exit.retry.preheader_crit_edge:       ; preds = %swap_endian.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry.preheader

land.lhs.true.i:                                  ; preds = %swap_endian.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.retry.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.retry.preheader_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.retry.preheader_crit_edge, label %if.then.i42

land.lhs.true2.i.retry.preheader_crit_edge:       ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry.preheader

if.then.i42:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 750, ptr noundef nonnull @.str.102) #11
  br label %retry.preheader

retry.preheader:                                  ; preds = %if.then.i42, %land.lhs.true2.i.retry.preheader_crit_edge, %land.lhs.true.i.retry.preheader_crit_edge, %swap_endian.exit.retry.preheader_crit_edge
  br label %retry

retry:                                            ; preds = %do.end29.retry_crit_edge, %retry.preheader
  %13 = ptrtoint ptr %root.addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %root.addr.0.root.addr.0.root.addr.0. = load volatile ptr, ptr %root.addr, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %retry.do.end7_crit_edge

retry.do.end7_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true:                                    ; preds = %retry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b41 = load i1, ptr @lookup.__warned, align 1
  br i1 %.b41, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 136, ptr noundef nonnull @.str.99) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %retry.do.end7_crit_edge
  %tobool.not33.i = icmp eq ptr %root.addr.0.root.addr.0.root.addr.0., null
  br i1 %tobool.not33.i, label %do.end7.if.end35_crit_edge, label %do.end7.land.rhs.i_crit_edge

do.end7.land.rhs.i_crit_edge:                     ; preds = %do.end7
  br label %land.rhs.i

do.end7.if.end35_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.rhs.i:                                       ; preds = %do.end22.i.land.rhs.i_crit_edge, %do.end7.land.rhs.i_crit_edge
  %node.035.i = phi ptr [ %44, %do.end22.i.land.rhs.i_crit_edge ], [ %root.addr.0.root.addr.0.root.addr.0., %do.end7.land.rhs.i_crit_edge ]
  %found.034.i = phi ptr [ %spec.select.i, %do.end22.i.land.rhs.i_crit_edge ], [ null, %do.end7.land.rhs.i_crit_edge ]
  %14 = zext i8 %bits to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.108)
  switch i8 %bits, label %land.rhs.i.prefix_matches.exit.i_crit_edge [
    i8 32, label %if.then.i.i.i
    i8 -128, label %if.then7.i.i.i
  ]

land.rhs.i.prefix_matches.exit.i_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %prefix_matches.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %bits2.i.i.i = getelementptr inbounds %struct.allowedips_node, ptr %node.035.i, i32 0, i32 6
  %15 = ptrtoint ptr %bits2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bits2.i.i.i, align 8
  %17 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ip, align 8
  %xor.i.i.i = xor i32 %18, %16
  %19 = tail call i32 @llvm.ctlz.i32(i32 %xor.i.i.i, i1 false) #11, !range !191
  %20 = trunc i32 %19 to i8
  br label %prefix_matches.exit.i

if.then7.i.i.i:                                   ; preds = %land.rhs.i
  %bits8.i.i.i = getelementptr inbounds %struct.allowedips_node, ptr %node.035.i, i32 0, i32 6
  %21 = ptrtoint ptr %bits8.i.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bits8.i.i.i, align 8
  %23 = ptrtoint ptr %ip to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ip, align 8
  %xor10.i.i.i = xor i64 %24, %22
  %arrayidx12.i.i.i = getelementptr %struct.allowedips_node, ptr %node.035.i, i32 0, i32 6, i32 8
  %25 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx12.i.i.i, align 8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %1, align 8
  %xor14.i.i.i = xor i64 %28, %26
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %xor10.i.i.i)
  %tobool.not.i24.i.i.i = icmp eq i64 %xor10.i.i.i, 0
  br i1 %tobool.not.i24.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i

cond.true.i.i.i.i:                                ; preds = %if.then7.i.i.i
  %shr.i.i.i.i.i = lshr i64 %xor10.i.i.i, 32
  %conv.i.i.i.i.i = trunc i64 %shr.i.i.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %conv.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %cond.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i.i.i, i1 true) #11, !range !191
  %add.i.i.neg.i.i.i = or i32 %29, -64
  br label %fls64.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %cond.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i.i.i.i.i = trunc i64 %xor10.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i.i.i)
  %tobool.not.i5.i.i.i.i.i = icmp eq i32 %conv1.i.i.i.i.i, 0
  %30 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i.i.i, i1 true) #11, !range !191
  %sub.i6.i.i.neg.i.i.i = or i32 %30, -32
  %cond.i7.i.i.neg.i.i.i = select i1 %tobool.not.i5.i.i.i.i.i, i32 0, i32 %sub.i6.i.i.neg.i.i.i
  br label %fls64.exit.i.i.i.i

fls64.exit.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.neg.i.i.i = phi i32 [ %add.i.i.neg.i.i.i, %if.then.i.i.i.i.i ], [ %cond.i7.i.i.neg.i.i.i, %if.end.i.i.i.i.i ]
  %add.i.neg.i.i.i = add nsw i32 %retval.0.i.i.neg.i.i.i, -64
  br label %fls128.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %if.then7.i.i.i
  %shr.i3.i.i.i.i = lshr i64 %xor14.i.i.i, 32
  %conv.i4.i.i.i.i = trunc i64 %shr.i3.i.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i4.i.i.i.i)
  %tobool.not.i5.i.i.i.i = icmp eq i32 %conv.i4.i.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i.i, label %if.end.i12.i.i.i.i, label %if.then.i7.i.i.i.i

if.then.i7.i.i.i.i:                               ; preds = %cond.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = tail call i32 @llvm.ctlz.i32(i32 %conv.i4.i.i.i.i, i1 true) #11, !range !191
  %add.i6.i.neg.i.i.i = or i32 %31, -64
  br label %fls128.exit.i.i.i

if.end.i12.i.i.i.i:                               ; preds = %cond.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i.i.i.i = trunc i64 %xor14.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i8.i.i.i.i)
  %tobool.not.i5.i9.i.i.i.i = icmp eq i32 %conv1.i8.i.i.i.i, 0
  %32 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i8.i.i.i.i, i1 true) #11, !range !191
  %sub.i6.i10.i.neg.i.i.i = or i32 %32, -32
  %cond.i7.i11.i.neg.i.i.i = select i1 %tobool.not.i5.i9.i.i.i.i, i32 0, i32 %sub.i6.i10.i.neg.i.i.i
  br label %fls128.exit.i.i.i

fls128.exit.i.i.i:                                ; preds = %if.end.i12.i.i.i.i, %if.then.i7.i.i.i.i, %fls64.exit.i.i.i.i
  %cond.i25.neg.i.i.i = phi i32 [ %add.i.neg.i.i.i, %fls64.exit.i.i.i.i ], [ %add.i6.i.neg.i.i.i, %if.then.i7.i.i.i.i ], [ %cond.i7.i11.i.neg.i.i.i, %if.end.i12.i.i.i.i ]
  %.neg.i.i.i = trunc i32 %cond.i25.neg.i.i.i to i8
  %conv17.i.i.i = xor i8 %.neg.i.i.i, -128
  br label %prefix_matches.exit.i

prefix_matches.exit.i:                            ; preds = %fls128.exit.i.i.i, %if.then.i.i.i, %land.rhs.i.prefix_matches.exit.i_crit_edge
  %retval.0.i.i.i = phi i8 [ %20, %if.then.i.i.i ], [ %conv17.i.i.i, %fls128.exit.i.i.i ], [ 0, %land.rhs.i.prefix_matches.exit.i_crit_edge ]
  %cidr.i.i = getelementptr inbounds %struct.allowedips_node, ptr %node.035.i, i32 0, i32 2
  %33 = ptrtoint ptr %cidr.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cidr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i.i, i8 %34)
  %cmp.i.not.i = icmp ult i8 %retval.0.i.i.i, %34
  br i1 %cmp.i.not.i, label %prefix_matches.exit.i.find_node.exit_crit_edge, label %while.body.i

prefix_matches.exit.i.find_node.exit_crit_edge:   ; preds = %prefix_matches.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_node.exit

while.body.i:                                     ; preds = %prefix_matches.exit.i
  %35 = ptrtoint ptr %node.035.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %node.035.i, align 8
  %tobool2.not.i = icmp eq ptr %36, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %found.034.i, ptr %node.035.i
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %bits)
  %cmp.i = icmp eq i8 %34, %bits
  br i1 %cmp.i, label %while.body.i.find_node.exit_crit_edge, label %if.end6.i

while.body.i.find_node.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_node.exit

if.end6.i:                                        ; preds = %while.body.i
  %bit_at_a.i.i = getelementptr inbounds %struct.allowedips_node, ptr %node.035.i, i32 0, i32 3
  %37 = ptrtoint ptr %bit_at_a.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bit_at_a.i.i, align 1
  %idxprom.i.i = zext i8 %38 to i32
  %arrayidx.i.i = getelementptr i8, ptr %ip, i32 %idxprom.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %40 to i32
  %bit_at_b.i.i = getelementptr inbounds %struct.allowedips_node, ptr %node.035.i, i32 0, i32 4
  %41 = ptrtoint ptr %bit_at_b.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bit_at_b.i.i, align 2
  %conv1.i.i = zext i8 %42 to i32
  %shr.i.i = lshr i32 %conv.i.i, %conv1.i.i
  %conv2.i.i = and i32 %shr.i.i, 1
  %arrayidx.i = getelementptr %struct.allowedips_node, ptr %node.035.i, i32 0, i32 1, i32 %conv2.i.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %arrayidx.i, align 4
  %call13.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true.i43, label %if.end6.i.do.end22.i_crit_edge

if.end6.i.do.end22.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22.i

land.lhs.true.i43:                                ; preds = %if.end6.i
  %call15.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i43.do.end22.i_crit_edge, label %land.lhs.true17.i

land.lhs.true.i43.do.end22.i_crit_edge:           ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22.i

land.lhs.true17.i:                                ; preds = %land.lhs.true.i43
  %.b32.i = load i1, ptr @find_node.__warned, align 1
  br i1 %.b32.i, label %land.lhs.true17.i.do.end22.i_crit_edge, label %if.then19.i

land.lhs.true17.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22.i

if.then19.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @find_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 118, ptr noundef nonnull @.str.99) #11
  br label %do.end22.i

do.end22.i:                                       ; preds = %if.then19.i, %land.lhs.true17.i.do.end22.i_crit_edge, %land.lhs.true.i43.do.end22.i_crit_edge, %if.end6.i.do.end22.i_crit_edge
  %tobool.not.i44 = icmp eq ptr %44, null
  br i1 %tobool.not.i44, label %do.end22.i.find_node.exit_crit_edge, label %do.end22.i.land.rhs.i_crit_edge

do.end22.i.land.rhs.i_crit_edge:                  ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

do.end22.i.find_node.exit_crit_edge:              ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_node.exit

find_node.exit:                                   ; preds = %do.end22.i.find_node.exit_crit_edge, %while.body.i.find_node.exit_crit_edge, %prefix_matches.exit.i.find_node.exit_crit_edge
  %found.2.i = phi ptr [ %spec.select.i, %do.end22.i.find_node.exit_crit_edge ], [ %spec.select.i, %while.body.i.find_node.exit_crit_edge ], [ %found.034.i, %prefix_matches.exit.i.find_node.exit_crit_edge ]
  %tobool11.not = icmp eq ptr %found.2.i, null
  br i1 %tobool11.not, label %find_node.exit.if.end35_crit_edge, label %if.then12

find_node.exit.if.end35_crit_edge:                ; preds = %find_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then12:                                        ; preds = %find_node.exit
  %45 = ptrtoint ptr %found.2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %found.2.i, align 8
  %call19 = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %if.then12.do.end29_crit_edge

if.then12.do.end29_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

land.lhs.true21:                                  ; preds = %if.then12
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true21.do.end29_crit_edge, label %land.lhs.true24

land.lhs.true21.do.end29_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %.b3940 = load i1, ptr @lookup.__warned.100, align 1
  br i1 %.b3940, label %land.lhs.true24.do.end29_crit_edge, label %if.then26

land.lhs.true24.do.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @lookup.__warned.100, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.99) #11
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %land.lhs.true24.do.end29_crit_edge, %land.lhs.true21.do.end29_crit_edge, %if.then12.do.end29_crit_edge
  %call31 = tail call ptr @wg_peer_get_maybe_zero(ptr noundef %46) #11
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %do.end29.retry_crit_edge, label %do.end29.if.end35_crit_edge

do.end29.if.end35_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end29.retry_crit_edge:                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry

if.end35:                                         ; preds = %do.end29.if.end35_crit_edge, %find_node.exit.if.end35_crit_edge, %do.end7.if.end35_crit_edge
  %peer.1 = phi ptr [ %call31, %do.end29.if.end35_crit_edge ], [ null, %find_node.exit.if.end35_crit_edge ], [ null, %do.end7.if.end35_crit_edge ]
  %call.i45 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i45, label %if.end35.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i48

if.end35.rcu_read_unlock_bh.exit_crit_edge:       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i48:                                ; preds = %if.end35
  %call1.i46 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock_bh.exit

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.101, i32 noundef 761, ptr noundef nonnull @.str.103) #11
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i48.rcu_read_unlock_bh.exit_crit_edge, %if.end35.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #11
  tail call fastcc void @local_bh_enable() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ip) #11
  ret ptr %peer.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wg_allowedips_lookup_src(ptr nocapture noundef readonly %table, ptr nocapture noundef readonly %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.109)
  switch i16 %1, label %entry.return_crit_edge [
    i16 2048, label %if.then
    i16 -31011, label %if.then7
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %table, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %call2 = tail call fastcc ptr @lookup(ptr noundef %4, i8 noundef zeroext 32, ptr noundef %saddr)
  br label %return

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %root6 = getelementptr inbounds %struct.allowedips, ptr %table, i32 0, i32 1
  %9 = ptrtoint ptr %root6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %root6, align 4
  %head.i.i16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i16, align 8
  %network_header.i.i17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header.i.i17 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i.i17, align 4
  %conv.i.i18 = zext i16 %14 to i32
  %add.ptr.i.i19 = getelementptr i8, ptr %12, i32 %conv.i.i18
  %saddr9 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i19, i32 0, i32 5
  %call10 = tail call fastcc ptr @lookup(ptr noundef %10, i8 noundef zeroext -128, ptr noundef %saddr9)
  br label %return

return:                                           ; preds = %if.then7, %if.then, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call2, %if.then ], [ %call10, %if.then7 ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wg_allowedips_slab_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef 48, i32 noundef 8, i32 noundef 0, ptr noundef null) #11
  store ptr %call, ptr @node_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  %cond = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_allowedips_slab_uninit() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcu_barrier() #11
  %0 = load ptr, ptr @node_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wg_allowedips_selftest() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  %key.i1417 = alloca [16 x i8], align 8
  %key.i1412 = alloca [16 x i8], align 8
  %key.i1408 = alloca [4 x i8], align 4
  %key.i1403 = alloca [16 x i8], align 8
  %key.i1399 = alloca [4 x i8], align 4
  %key.i1392 = alloca [16 x i8], align 8
  %key.i1388 = alloca [4 x i8], align 4
  %key.i1384 = alloca [4 x i8], align 4
  %key.i1378 = alloca [4 x i8], align 4
  %key.i1374 = alloca [4 x i8], align 4
  %key.i1370 = alloca [4 x i8], align 4
  %key.i1366 = alloca [4 x i8], align 4
  %key.i1362 = alloca [4 x i8], align 4
  %key.i1358 = alloca [4 x i8], align 4
  %key.i1354 = alloca [4 x i8], align 4
  %key.i1350 = alloca [4 x i8], align 4
  %key.i1346 = alloca [4 x i8], align 4
  %key.i1342 = alloca [4 x i8], align 4
  %key.i1338 = alloca [4 x i8], align 4
  %key.i1334 = alloca [4 x i8], align 4
  %key.i1330 = alloca [4 x i8], align 4
  %key.i1325 = alloca [16 x i8], align 8
  %key.i1320 = alloca [16 x i8], align 8
  %key.i1315 = alloca [16 x i8], align 8
  %key.i1310 = alloca [16 x i8], align 8
  %key.i1305 = alloca [16 x i8], align 8
  %key.i1300 = alloca [16 x i8], align 8
  %key.i1295 = alloca [16 x i8], align 8
  %key.i1291 = alloca [4 x i8], align 4
  %key.i1286 = alloca [16 x i8], align 8
  %key.i1281 = alloca [16 x i8], align 8
  %key.i1277 = alloca [4 x i8], align 4
  %key.i1273 = alloca [4 x i8], align 4
  %key.i1269 = alloca [4 x i8], align 4
  %key.i1265 = alloca [4 x i8], align 4
  %key.i = alloca [4 x i8], align 4
  %t = alloca %struct.allowedips, align 8
  %mutex = alloca %struct.mutex, align 4
  %ip = alloca %struct.in6_addr, align 8
  %cidr = alloca i8, align 1
  %ip822 = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @init_peer() #14
  %call1 = tail call fastcc ptr @init_peer() #14
  %call2 = tail call fastcc ptr @init_peer() #14
  %call3 = tail call fastcc ptr @init_peer() #14
  %call4 = tail call fastcc ptr @init_peer() #14
  %call5 = tail call fastcc ptr @init_peer() #14
  %call6 = tail call fastcc ptr @init_peer() #14
  %call7 = tail call fastcc ptr @init_peer() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %t) #11
  %0 = getelementptr inbounds %struct.allowedips, ptr %t, i32 0, i32 1
  %1 = getelementptr inbounds %struct.allowedips, ptr %t, i32 0, i32 2
  %2 = call ptr @memset(ptr %t, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %mutex) #11
  %3 = ptrtoint ptr %mutex to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %mutex, align 4
  %wait_lock = getelementptr inbounds %struct.mutex, ptr %mutex, i32 0, i32 1
  %4 = ptrtoint ptr %wait_lock to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait_lock, align 4
  %magic = getelementptr inbounds %struct.mutex, ptr %mutex, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -559067475, ptr %magic, align 4
  %owner_cpu = getelementptr inbounds %struct.mutex, ptr %mutex, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %owner_cpu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %owner_cpu, align 4
  %owner8 = getelementptr inbounds %struct.mutex, ptr %mutex, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %owner8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %owner8, align 4
  %dep_map = getelementptr inbounds %struct.mutex, ptr %mutex, i32 0, i32 1, i32 4
  %8 = call ptr @memset(ptr %dep_map, i32 0, i32 28)
  %name = getelementptr inbounds %struct.mutex, ptr %mutex, i32 0, i32 1, i32 4, i32 2
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.5, ptr %name, align 4
  %wait_type_inner = getelementptr inbounds %struct.mutex, ptr %mutex, i32 0, i32 1, i32 4, i32 4
  %10 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %wait_type_inner, align 1
  %osq = getelementptr inbounds %struct.mutex, ptr %mutex, i32 0, i32 2
  %11 = ptrtoint ptr %osq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %osq, align 4
  %wait_list = getelementptr inbounds %struct.mutex, ptr %mutex, i32 0, i32 3
  %12 = ptrtoint ptr %wait_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %wait_list, ptr %wait_list, align 4
  %prev = getelementptr inbounds %struct.mutex, ptr %mutex, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %wait_list, ptr %prev, align 4
  %magic11 = getelementptr inbounds %struct.mutex, ptr %mutex, i32 0, i32 4
  %14 = ptrtoint ptr %magic11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %mutex, ptr %magic11, align 4
  %dep_map12 = getelementptr inbounds %struct.mutex, ptr %mutex, i32 0, i32 5
  %15 = call ptr @memset(ptr %dep_map12, i32 0, i32 28)
  %name13 = getelementptr inbounds %struct.mutex, ptr %mutex, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %name13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.6, ptr %name13, align 4
  %wait_type_inner14 = getelementptr inbounds %struct.mutex, ptr %mutex, i32 0, i32 5, i32 4
  %17 = ptrtoint ptr %wait_type_inner14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %wait_type_inner14, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ip) #11
  %18 = getelementptr inbounds [4 x i32], ptr %ip, i32 0, i32 2
  %19 = call ptr @memset(ptr %ip, i32 255, i32 16)
  call void @__mutex_init(ptr noundef nonnull %mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @wg_allowedips_selftest.__key) #11
  call void @mutex_lock_nested(ptr noundef nonnull %mutex, i32 noundef 0) #11
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %0, align 4
  %21 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %t, align 8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1, ptr %1, align 8
  %tobool.not = icmp eq ptr %call, null
  %tobool15.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool15.not
  %tobool17.not = icmp eq ptr %call2, null
  %or.cond1253 = select i1 %or.cond, i1 true, i1 %tobool17.not
  %tobool19.not = icmp eq ptr %call3, null
  %or.cond1254 = select i1 %or.cond1253, i1 true, i1 %tobool19.not
  %tobool21.not = icmp eq ptr %call4, null
  %or.cond1255 = select i1 %or.cond1254, i1 true, i1 %tobool21.not
  %tobool23.not = icmp eq ptr %call5, null
  %or.cond1256 = select i1 %or.cond1255, i1 true, i1 %tobool23.not
  %tobool25.not = icmp eq ptr %call6, null
  %or.cond1257 = select i1 %or.cond1256, i1 true, i1 %tobool25.not
  %tobool27.not = icmp eq ptr %call7, null
  %or.cond1258 = select i1 %or.cond1257, i1 true, i1 %tobool27.not
  br i1 %or.cond1258, label %do.end30, label %if.end

do.end30:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #15
  br label %free

if.end:                                           ; preds = %entry
  store i8 -64, ptr @ip4.ip, align 4
  store i8 -88, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 4, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i) #11
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 2, ptr %1, align 8
  %24 = load i32, ptr @ip4.ip, align 4
  %25 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %key.i, align 4
  %call.i = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i, i8 noundef zeroext 24, ptr noundef nonnull %call, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i) #11
  store i8 -64, ptr @ip4.ip, align 4
  store i8 -88, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 4, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 4, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1265) #11
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %1, align 8
  %inc.i1267 = add i64 %27, 1
  store i64 %inc.i1267, ptr %1, align 8
  %28 = load i32, ptr @ip4.ip, align 4
  %29 = ptrtoint ptr %key.i1265 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %key.i1265, align 4
  %call.i1268 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1265, i8 noundef zeroext 32, ptr noundef nonnull %call1, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1265) #11
  store i8 -64, ptr @ip4.ip, align 4
  store i8 -88, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1269) #11
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %1, align 8
  %inc.i1271 = add i64 %31, 1
  store i64 %inc.i1271, ptr %1, align 8
  %32 = load i32, ptr @ip4.ip, align 4
  %33 = ptrtoint ptr %key.i1269 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %key.i1269, align 4
  %call.i1272 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1269, i8 noundef zeroext 16, ptr noundef nonnull %call2, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1269) #11
  store i8 -64, ptr @ip4.ip, align 4
  store i8 95, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 5, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 64, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1273) #11
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %1, align 8
  %inc.i1275 = add i64 %35, 1
  store i64 %inc.i1275, ptr %1, align 8
  %36 = load i32, ptr @ip4.ip, align 4
  %37 = ptrtoint ptr %key.i1273 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %key.i1273, align 4
  %call.i1276 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1273, i8 noundef zeroext 27, ptr noundef nonnull %call3, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1273) #11
  store i8 -64, ptr @ip4.ip, align 4
  store i8 95, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 5, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 65, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1277) #11
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %1, align 8
  %inc.i1279 = add i64 %39, 1
  store i64 %inc.i1279, ptr %1, align 8
  %40 = load i32, ptr @ip4.ip, align 4
  %41 = ptrtoint ptr %key.i1277 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %key.i1277, align 4
  %call.i1280 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1277, i8 noundef zeroext 27, ptr noundef nonnull %call2, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1277) #11
  store i32 638014208, ptr @ip6.ip, align 8
  store i32 1610640128, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 -1067514557, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i1281) #11
  %42 = getelementptr inbounds [16 x i8], ptr %key.i1281, i32 0, i32 8
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %1, align 8
  %inc.i1283 = add i64 %44, 1
  store i64 %inc.i1283, ptr %1, align 8
  %45 = load i64, ptr @ip6.ip, align 8
  %46 = ptrtoint ptr %key.i1281 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %key.i1281, align 8
  %47 = load i64, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  %48 = ptrtoint ptr %42 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %42, align 8
  %call.i1285 = call fastcc i32 @add(ptr noundef %0, i8 noundef zeroext -128, ptr noundef nonnull %key.i1281, i8 noundef zeroext -128, ptr noundef nonnull %call3, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i1281) #11
  store i32 638014208, ptr @ip6.ip, align 8
  store i32 1610640128, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i1286) #11
  %49 = getelementptr inbounds [16 x i8], ptr %key.i1286, i32 0, i32 8
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %1, align 8
  %inc.i1288 = add i64 %51, 1
  store i64 %inc.i1288, ptr %1, align 8
  %52 = load i64, ptr @ip6.ip, align 8
  %53 = ptrtoint ptr %key.i1286 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %key.i1286, align 8
  %54 = load i64, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  %55 = ptrtoint ptr %49 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %49, align 8
  %call.i1290 = call fastcc i32 @add(ptr noundef %0, i8 noundef zeroext -128, ptr noundef nonnull %key.i1286, i8 noundef zeroext 64, ptr noundef nonnull %call2, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i1286) #11
  store i32 0, ptr @ip4.ip, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1291) #11
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %1, align 8
  %inc.i1293 = add i64 %57, 1
  store i64 %inc.i1293, ptr %1, align 8
  %58 = ptrtoint ptr %key.i1291 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %key.i1291, align 4
  %call.i1294 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1291, i8 noundef zeroext 0, ptr noundef nonnull %call4, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1291) #11
  %59 = call ptr @memset(ptr @ip6.ip, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i1295) #11
  %60 = getelementptr inbounds [16 x i8], ptr %key.i1295, i32 0, i32 8
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %1, align 8
  %inc.i1297 = add i64 %62, 1
  store i64 %inc.i1297, ptr %1, align 8
  %63 = load i64, ptr @ip6.ip, align 8
  %64 = ptrtoint ptr %key.i1295 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %key.i1295, align 8
  %65 = load i64, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  %66 = ptrtoint ptr %60 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %60, align 8
  %call.i1299 = call fastcc i32 @add(ptr noundef %0, i8 noundef zeroext -128, ptr noundef nonnull %key.i1295, i8 noundef zeroext 0, ptr noundef nonnull %call4, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i1295) #11
  %67 = call ptr @memset(ptr @ip6.ip, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i1300) #11
  %68 = getelementptr inbounds [16 x i8], ptr %key.i1300, i32 0, i32 8
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %1, align 8
  %inc.i1302 = add i64 %70, 1
  store i64 %inc.i1302, ptr %1, align 8
  %71 = load i64, ptr @ip6.ip, align 8
  %72 = ptrtoint ptr %key.i1300 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %key.i1300, align 8
  %73 = load i64, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  %74 = ptrtoint ptr %68 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %68, align 8
  %call.i1304 = call fastcc i32 @add(ptr noundef %0, i8 noundef zeroext -128, ptr noundef nonnull %key.i1300, i8 noundef zeroext 0, ptr noundef nonnull %call5, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i1300) #11
  store i32 604268544, ptr @ip6.ip, align 8
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i1305) #11
  %75 = getelementptr inbounds [16 x i8], ptr %key.i1305, i32 0, i32 8
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %1, align 8
  %inc.i1307 = add i64 %77, 1
  store i64 %inc.i1307, ptr %1, align 8
  %78 = load i64, ptr @ip6.ip, align 8
  %79 = ptrtoint ptr %key.i1305 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %key.i1305, align 8
  %80 = load i64, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  %81 = ptrtoint ptr %75 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %75, align 8
  %call.i1309 = call fastcc i32 @add(ptr noundef %0, i8 noundef zeroext -128, ptr noundef nonnull %key.i1305, i8 noundef zeroext 32, ptr noundef nonnull %call6, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i1305) #11
  store i32 604268544, ptr @ip6.ip, align 8
  store i32 1074006016, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 -559038737, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 -559038737, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i1310) #11
  %82 = getelementptr inbounds [16 x i8], ptr %key.i1310, i32 0, i32 8
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %1, align 8
  %inc.i1312 = add i64 %84, 1
  store i64 %inc.i1312, ptr %1, align 8
  %85 = load i64, ptr @ip6.ip, align 8
  %86 = ptrtoint ptr %key.i1310 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %key.i1310, align 8
  %87 = load i64, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  %88 = ptrtoint ptr %82 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %82, align 8
  %call.i1314 = call fastcc i32 @add(ptr noundef %0, i8 noundef zeroext -128, ptr noundef nonnull %key.i1310, i8 noundef zeroext 64, ptr noundef nonnull %call7, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i1310) #11
  store i32 604268544, ptr @ip6.ip, align 8
  store i32 1074006016, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 -559038737, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 -559038737, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i1315) #11
  %89 = getelementptr inbounds [16 x i8], ptr %key.i1315, i32 0, i32 8
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %1, align 8
  %inc.i1317 = add i64 %91, 1
  store i64 %inc.i1317, ptr %1, align 8
  %92 = load i64, ptr @ip6.ip, align 8
  %93 = ptrtoint ptr %key.i1315 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %key.i1315, align 8
  %94 = load i64, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  %95 = ptrtoint ptr %89 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %89, align 8
  %call.i1319 = call fastcc i32 @add(ptr noundef %0, i8 noundef zeroext -128, ptr noundef nonnull %key.i1315, i8 noundef zeroext -128, ptr noundef nonnull %call, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i1315) #11
  store i32 608462848, ptr @ip6.ip, align 8
  store i32 1088686080, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 -558973201, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 233815791, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i1320) #11
  %96 = getelementptr inbounds [16 x i8], ptr %key.i1320, i32 0, i32 8
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %1, align 8
  %inc.i1322 = add i64 %98, 1
  store i64 %inc.i1322, ptr %1, align 8
  %99 = load i64, ptr @ip6.ip, align 8
  %100 = ptrtoint ptr %key.i1320 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %key.i1320, align 8
  %101 = load i64, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  %102 = ptrtoint ptr %96 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %96, align 8
  %call.i1324 = call fastcc i32 @add(ptr noundef %0, i8 noundef zeroext -128, ptr noundef nonnull %key.i1320, i8 noundef zeroext -128, ptr noundef nonnull %call2, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i1320) #11
  store i32 608462848, ptr @ip6.ip, align 8
  store i32 -253491200, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 -290537745, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i1325) #11
  %103 = getelementptr inbounds [16 x i8], ptr %key.i1325, i32 0, i32 8
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %1, align 8
  %inc.i1327 = add i64 %105, 1
  store i64 %inc.i1327, ptr %1, align 8
  %106 = load i64, ptr @ip6.ip, align 8
  %107 = ptrtoint ptr %key.i1325 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %key.i1325, align 8
  %108 = load i64, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  %109 = ptrtoint ptr %103 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %103, align 8
  %call.i1329 = call fastcc i32 @add(ptr noundef %0, i8 noundef zeroext -128, ptr noundef nonnull %key.i1325, i8 noundef zeroext 98, ptr noundef nonnull %call1, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i1325) #11
  store i8 64, ptr @ip4.ip, align 4
  store i8 15, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 112, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1330) #11
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %1, align 8
  %inc.i1332 = add i64 %111, 1
  store i64 %inc.i1332, ptr %1, align 8
  %112 = load i32, ptr @ip4.ip, align 4
  %113 = ptrtoint ptr %key.i1330 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %key.i1330, align 4
  %call.i1333 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1330, i8 noundef zeroext 20, ptr noundef nonnull %call6, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1330) #11
  store i8 64, ptr @ip4.ip, align 4
  store i8 15, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 123, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 -45, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1334) #11
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %1, align 8
  %inc.i1336 = add i64 %115, 1
  store i64 %inc.i1336, ptr %1, align 8
  %116 = load i32, ptr @ip4.ip, align 4
  %117 = ptrtoint ptr %key.i1334 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %key.i1334, align 4
  %call.i1337 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1334, i8 noundef zeroext 25, ptr noundef nonnull %call7, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1334) #11
  store i8 10, ptr @ip4.ip, align 4
  store i8 0, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1338) #11
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %1, align 8
  %inc.i1340 = add i64 %119, 1
  store i64 %inc.i1340, ptr %1, align 8
  %120 = load i32, ptr @ip4.ip, align 4
  %121 = ptrtoint ptr %key.i1338 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %key.i1338, align 4
  %call.i1341 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1338, i8 noundef zeroext 25, ptr noundef nonnull %call, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1338) #11
  store i8 10, ptr @ip4.ip, align 4
  store i8 0, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 -128, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1342) #11
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %1, align 8
  %inc.i1344 = add i64 %123, 1
  store i64 %inc.i1344, ptr %1, align 8
  %124 = load i32, ptr @ip4.ip, align 4
  %125 = ptrtoint ptr %key.i1342 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %key.i1342, align 4
  %call.i1345 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1342, i8 noundef zeroext 25, ptr noundef nonnull %call1, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1342) #11
  store i8 10, ptr @ip4.ip, align 4
  store i8 1, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1346) #11
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %1, align 8
  %inc.i1348 = add i64 %127, 1
  store i64 %inc.i1348, ptr %1, align 8
  %128 = load i32, ptr @ip4.ip, align 4
  %129 = ptrtoint ptr %key.i1346 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %key.i1346, align 4
  %call.i1349 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1346, i8 noundef zeroext 30, ptr noundef nonnull %call, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1346) #11
  store i8 10, ptr @ip4.ip, align 4
  store i8 1, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 4, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1350) #11
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %1, align 8
  %inc.i1352 = add i64 %131, 1
  store i64 %inc.i1352, ptr %1, align 8
  %132 = load i32, ptr @ip4.ip, align 4
  %133 = ptrtoint ptr %key.i1350 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %key.i1350, align 4
  %call.i1353 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1350, i8 noundef zeroext 30, ptr noundef nonnull %call1, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1350) #11
  store i8 10, ptr @ip4.ip, align 4
  store i8 1, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 8, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1354) #11
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %1, align 8
  %inc.i1356 = add i64 %135, 1
  store i64 %inc.i1356, ptr %1, align 8
  %136 = load i32, ptr @ip4.ip, align 4
  %137 = ptrtoint ptr %key.i1354 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %key.i1354, align 4
  %call.i1357 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1354, i8 noundef zeroext 29, ptr noundef nonnull %call2, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1354) #11
  store i8 10, ptr @ip4.ip, align 4
  store i8 1, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 16, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1358) #11
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %1, align 8
  %inc.i1360 = add i64 %139, 1
  store i64 %inc.i1360, ptr %1, align 8
  %140 = load i32, ptr @ip4.ip, align 4
  %141 = ptrtoint ptr %key.i1358 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %key.i1358, align 4
  %call.i1361 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1358, i8 noundef zeroext 29, ptr noundef nonnull %call3, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1358) #11
  %142 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %t, align 8
  store i8 -64, ptr @ip4.ip, align 4
  store i8 -88, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 4, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 20, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call80 = call fastcc ptr @lookup(ptr noundef %143, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp = icmp eq ptr %call80, %call
  br i1 %cmp, label %if.end.do.end91_crit_edge, label %do.end86

if.end.do.end91_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end91

do.end86:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 1) #15
  br label %do.end91

do.end91:                                         ; preds = %do.end86, %if.end.do.end91_crit_edge
  %success.0 = phi i8 [ 1, %if.end.do.end91_crit_edge ], [ 0, %do.end86 ]
  %144 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %t, align 8
  store i8 -64, ptr @ip4.ip, align 4
  store i8 -88, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 4, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call98 = call fastcc ptr @lookup(ptr noundef %145, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp99 = icmp eq ptr %call98, %call
  br i1 %cmp99, label %do.end91.do.end112_crit_edge, label %do.end107

do.end91.do.end112_crit_edge:                     ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end112

do.end107:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #13
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 2) #15
  br label %do.end112

do.end112:                                        ; preds = %do.end107, %do.end91.do.end112_crit_edge
  %success.1 = phi i8 [ %success.0, %do.end91.do.end112_crit_edge ], [ 0, %do.end107 ]
  %146 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %t, align 8
  store i8 -64, ptr @ip4.ip, align 4
  store i8 -88, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 4, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 4, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call119 = call fastcc ptr @lookup(ptr noundef %147, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp120 = icmp eq ptr %call119, %call1
  br i1 %cmp120, label %do.end112.do.end133_crit_edge, label %do.end128

do.end112.do.end133_crit_edge:                    ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end133

do.end128:                                        ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #13
  %call130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 3) #15
  br label %do.end133

do.end133:                                        ; preds = %do.end128, %do.end112.do.end133_crit_edge
  %success.2 = phi i8 [ %success.1, %do.end112.do.end133_crit_edge ], [ 0, %do.end128 ]
  %148 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %t, align 8
  store i8 -64, ptr @ip4.ip, align 4
  store i8 -88, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 -56, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 -74, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call140 = call fastcc ptr @lookup(ptr noundef %149, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp141 = icmp eq ptr %call140, %call2
  br i1 %cmp141, label %do.end133.do.end154_crit_edge, label %do.end149

do.end133.do.end154_crit_edge:                    ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end154

do.end149:                                        ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #13
  %call151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 4) #15
  br label %do.end154

do.end154:                                        ; preds = %do.end149, %do.end133.do.end154_crit_edge
  %success.3 = phi i8 [ %success.2, %do.end133.do.end154_crit_edge ], [ 0, %do.end149 ]
  %150 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %t, align 8
  store i8 -64, ptr @ip4.ip, align 4
  store i8 95, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 5, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 68, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call161 = call fastcc ptr @lookup(ptr noundef %151, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp162 = icmp eq ptr %call161, %call2
  br i1 %cmp162, label %do.end154.do.end175_crit_edge, label %do.end170

do.end154.do.end175_crit_edge:                    ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end175

do.end170:                                        ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #13
  %call172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 5) #15
  br label %do.end175

do.end175:                                        ; preds = %do.end170, %do.end154.do.end175_crit_edge
  %success.4 = phi i8 [ %success.3, %do.end154.do.end175_crit_edge ], [ 0, %do.end170 ]
  %152 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %t, align 8
  store i8 -64, ptr @ip4.ip, align 4
  store i8 95, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 5, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 96, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call182 = call fastcc ptr @lookup(ptr noundef %153, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp183 = icmp eq ptr %call182, %call4
  br i1 %cmp183, label %do.end175.do.end196_crit_edge, label %do.end191

do.end175.do.end196_crit_edge:                    ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end196

do.end191:                                        ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #13
  %call193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 6) #15
  br label %do.end196

do.end196:                                        ; preds = %do.end191, %do.end175.do.end196_crit_edge
  %success.5 = phi i8 [ %success.4, %do.end175.do.end196_crit_edge ], [ 0, %do.end191 ]
  %154 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %0, align 4
  store i32 638014208, ptr @ip6.ip, align 8
  store i32 1610640128, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 -1067514557, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  %call202 = call fastcc ptr @lookup(ptr noundef %155, i8 noundef zeroext -128, ptr noundef nonnull @ip6.ip)
  %cmp203 = icmp eq ptr %call202, %call3
  br i1 %cmp203, label %do.end196.do.end216_crit_edge, label %do.end211

do.end196.do.end216_crit_edge:                    ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end216

do.end211:                                        ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #13
  %call213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 7) #15
  br label %do.end216

do.end216:                                        ; preds = %do.end211, %do.end196.do.end216_crit_edge
  %success.6 = phi i8 [ %success.5, %do.end196.do.end216_crit_edge ], [ 0, %do.end211 ]
  %156 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %0, align 4
  store i32 638014208, ptr @ip6.ip, align 8
  store i32 1610640128, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 -1070726674, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  %call223 = call fastcc ptr @lookup(ptr noundef %157, i8 noundef zeroext -128, ptr noundef nonnull @ip6.ip)
  %cmp224 = icmp eq ptr %call223, %call2
  br i1 %cmp224, label %do.end216.do.end237_crit_edge, label %do.end232

do.end216.do.end237_crit_edge:                    ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end237

do.end232:                                        ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #13
  %call234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 8) #15
  br label %do.end237

do.end237:                                        ; preds = %do.end232, %do.end216.do.end237_crit_edge
  %success.7 = phi i8 [ %success.6, %do.end216.do.end237_crit_edge ], [ 0, %do.end232 ]
  %158 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %0, align 4
  store i32 638014208, ptr @ip6.ip, align 8
  store i32 1610640129, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  %call244 = call fastcc ptr @lookup(ptr noundef %159, i8 noundef zeroext -128, ptr noundef nonnull @ip6.ip)
  %cmp245 = icmp eq ptr %call244, %call5
  br i1 %cmp245, label %do.end237.do.end258_crit_edge, label %do.end253

do.end237.do.end258_crit_edge:                    ; preds = %do.end237
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end258

do.end253:                                        ; preds = %do.end237
  call void @__sanitizer_cov_trace_pc() #13
  %call255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 9) #15
  br label %do.end258

do.end258:                                        ; preds = %do.end253, %do.end237.do.end258_crit_edge
  %success.8 = phi i8 [ %success.7, %do.end237.do.end258_crit_edge ], [ 0, %do.end253 ]
  %160 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %0, align 4
  store i32 604268544, ptr @ip6.ip, align 8
  store i32 1074006022, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 4102, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  %call265 = call fastcc ptr @lookup(ptr noundef %161, i8 noundef zeroext -128, ptr noundef nonnull @ip6.ip)
  %cmp266 = icmp eq ptr %call265, %call6
  br i1 %cmp266, label %do.end258.do.end279_crit_edge, label %do.end274

do.end258.do.end279_crit_edge:                    ; preds = %do.end258
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end279

do.end274:                                        ; preds = %do.end258
  call void @__sanitizer_cov_trace_pc() #13
  %call276 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 10) #15
  br label %do.end279

do.end279:                                        ; preds = %do.end274, %do.end258.do.end279_crit_edge
  %success.9 = phi i8 [ %success.8, %do.end258.do.end279_crit_edge ], [ 0, %do.end274 ]
  %162 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %0, align 4
  store i32 604268544, ptr @ip6.ip, align 8
  store i32 1074006022, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 4660, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 22136, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  %call286 = call fastcc ptr @lookup(ptr noundef %163, i8 noundef zeroext -128, ptr noundef nonnull @ip6.ip)
  %cmp287 = icmp eq ptr %call286, %call6
  br i1 %cmp287, label %do.end279.do.end300_crit_edge, label %do.end295

do.end279.do.end300_crit_edge:                    ; preds = %do.end279
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end300

do.end295:                                        ; preds = %do.end279
  call void @__sanitizer_cov_trace_pc() #13
  %call297 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 11) #15
  br label %do.end300

do.end300:                                        ; preds = %do.end295, %do.end279.do.end300_crit_edge
  %success.10 = phi i8 [ %success.9, %do.end279.do.end300_crit_edge ], [ 0, %do.end295 ]
  %164 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %0, align 4
  store i32 604268543, ptr @ip6.ip, align 8
  store i32 1074006022, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 4660, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 22136, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  %call307 = call fastcc ptr @lookup(ptr noundef %165, i8 noundef zeroext -128, ptr noundef nonnull @ip6.ip)
  %cmp308 = icmp eq ptr %call307, %call5
  br i1 %cmp308, label %do.end300.do.end321_crit_edge, label %do.end316

do.end300.do.end321_crit_edge:                    ; preds = %do.end300
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end321

do.end316:                                        ; preds = %do.end300
  call void @__sanitizer_cov_trace_pc() #13
  %call318 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 12) #15
  br label %do.end321

do.end321:                                        ; preds = %do.end316, %do.end300.do.end321_crit_edge
  %success.11 = phi i8 [ %success.10, %do.end300.do.end321_crit_edge ], [ 0, %do.end316 ]
  %166 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %0, align 4
  store i32 604268545, ptr @ip6.ip, align 8
  store i32 1074006022, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 4660, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 22136, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  %call328 = call fastcc ptr @lookup(ptr noundef %167, i8 noundef zeroext -128, ptr noundef nonnull @ip6.ip)
  %cmp329 = icmp eq ptr %call328, %call5
  br i1 %cmp329, label %do.end321.do.end342_crit_edge, label %do.end337

do.end321.do.end342_crit_edge:                    ; preds = %do.end321
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end342

do.end337:                                        ; preds = %do.end321
  call void @__sanitizer_cov_trace_pc() #13
  %call339 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 13) #15
  br label %do.end342

do.end342:                                        ; preds = %do.end337, %do.end321.do.end342_crit_edge
  %success.12 = phi i8 [ %success.11, %do.end321.do.end342_crit_edge ], [ 0, %do.end337 ]
  %168 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %0, align 4
  store i32 604268544, ptr @ip6.ip, align 8
  store i32 1074006016, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 4660, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 22136, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  %call349 = call fastcc ptr @lookup(ptr noundef %169, i8 noundef zeroext -128, ptr noundef nonnull @ip6.ip)
  %cmp350 = icmp eq ptr %call349, %call7
  br i1 %cmp350, label %do.end342.do.end363_crit_edge, label %do.end358

do.end342.do.end363_crit_edge:                    ; preds = %do.end342
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end363

do.end358:                                        ; preds = %do.end342
  call void @__sanitizer_cov_trace_pc() #13
  %call360 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 14) #15
  br label %do.end363

do.end363:                                        ; preds = %do.end358, %do.end342.do.end363_crit_edge
  %success.13 = phi i8 [ %success.12, %do.end342.do.end363_crit_edge ], [ 0, %do.end358 ]
  %170 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %0, align 4
  store i32 604268544, ptr @ip6.ip, align 8
  store i32 1074006016, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  %call370 = call fastcc ptr @lookup(ptr noundef %171, i8 noundef zeroext -128, ptr noundef nonnull @ip6.ip)
  %cmp371 = icmp eq ptr %call370, %call7
  br i1 %cmp371, label %do.end363.do.end384_crit_edge, label %do.end379

do.end363.do.end384_crit_edge:                    ; preds = %do.end363
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end384

do.end379:                                        ; preds = %do.end363
  call void @__sanitizer_cov_trace_pc() #13
  %call381 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 15) #15
  br label %do.end384

do.end384:                                        ; preds = %do.end379, %do.end363.do.end384_crit_edge
  %success.14 = phi i8 [ %success.13, %do.end363.do.end384_crit_edge ], [ 0, %do.end379 ]
  %172 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %0, align 4
  store i32 604268544, ptr @ip6.ip, align 8
  store i32 1074006016, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 269488144, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 269488144, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  %call391 = call fastcc ptr @lookup(ptr noundef %173, i8 noundef zeroext -128, ptr noundef nonnull @ip6.ip)
  %cmp392 = icmp eq ptr %call391, %call7
  br i1 %cmp392, label %do.end384.do.end405_crit_edge, label %do.end400

do.end384.do.end405_crit_edge:                    ; preds = %do.end384
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end405

do.end400:                                        ; preds = %do.end384
  call void @__sanitizer_cov_trace_pc() #13
  %call402 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 16) #15
  br label %do.end405

do.end405:                                        ; preds = %do.end400, %do.end384.do.end405_crit_edge
  %success.15 = phi i8 [ %success.14, %do.end384.do.end405_crit_edge ], [ 0, %do.end400 ]
  %174 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %0, align 4
  store i32 604268544, ptr @ip6.ip, align 8
  store i32 1074006016, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 -559038737, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 -559038737, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  %call412 = call fastcc ptr @lookup(ptr noundef %175, i8 noundef zeroext -128, ptr noundef nonnull @ip6.ip)
  %cmp413 = icmp eq ptr %call412, %call
  br i1 %cmp413, label %do.end405.do.end426_crit_edge, label %do.end421

do.end405.do.end426_crit_edge:                    ; preds = %do.end405
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end426

do.end421:                                        ; preds = %do.end405
  call void @__sanitizer_cov_trace_pc() #13
  %call423 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 17) #15
  br label %do.end426

do.end426:                                        ; preds = %do.end421, %do.end405.do.end426_crit_edge
  %success.16 = phi i8 [ %success.15, %do.end405.do.end426_crit_edge ], [ 0, %do.end421 ]
  %176 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %t, align 8
  store i8 64, ptr @ip4.ip, align 4
  store i8 15, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 116, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 26, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call433 = call fastcc ptr @lookup(ptr noundef %177, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp434 = icmp eq ptr %call433, %call6
  br i1 %cmp434, label %do.end426.do.end447_crit_edge, label %do.end442

do.end426.do.end447_crit_edge:                    ; preds = %do.end426
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end447

do.end442:                                        ; preds = %do.end426
  call void @__sanitizer_cov_trace_pc() #13
  %call444 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 18) #15
  br label %do.end447

do.end447:                                        ; preds = %do.end442, %do.end426.do.end447_crit_edge
  %success.17 = phi i8 [ %success.16, %do.end426.do.end447_crit_edge ], [ 0, %do.end442 ]
  %178 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %t, align 8
  store i8 64, ptr @ip4.ip, align 4
  store i8 15, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 127, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 3, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call454 = call fastcc ptr @lookup(ptr noundef %179, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp455 = icmp eq ptr %call454, %call6
  br i1 %cmp455, label %do.end447.do.end468_crit_edge, label %do.end463

do.end447.do.end468_crit_edge:                    ; preds = %do.end447
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end468

do.end463:                                        ; preds = %do.end447
  call void @__sanitizer_cov_trace_pc() #13
  %call465 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 19) #15
  br label %do.end468

do.end468:                                        ; preds = %do.end463, %do.end447.do.end468_crit_edge
  %success.18 = phi i8 [ %success.17, %do.end447.do.end468_crit_edge ], [ 0, %do.end463 ]
  %180 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %t, align 8
  store i8 64, ptr @ip4.ip, align 4
  store i8 15, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 123, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 1, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call475 = call fastcc ptr @lookup(ptr noundef %181, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp476 = icmp eq ptr %call475, %call6
  br i1 %cmp476, label %do.end468.do.end489_crit_edge, label %do.end484

do.end468.do.end489_crit_edge:                    ; preds = %do.end468
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end489

do.end484:                                        ; preds = %do.end468
  call void @__sanitizer_cov_trace_pc() #13
  %call486 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 20) #15
  br label %do.end489

do.end489:                                        ; preds = %do.end484, %do.end468.do.end489_crit_edge
  %success.19 = phi i8 [ %success.18, %do.end468.do.end489_crit_edge ], [ 0, %do.end484 ]
  %182 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %t, align 8
  store i8 64, ptr @ip4.ip, align 4
  store i8 15, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 123, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 -128, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call496 = call fastcc ptr @lookup(ptr noundef %183, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp497 = icmp eq ptr %call496, %call7
  br i1 %cmp497, label %do.end489.do.end510_crit_edge, label %do.end505

do.end489.do.end510_crit_edge:                    ; preds = %do.end489
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end510

do.end505:                                        ; preds = %do.end489
  call void @__sanitizer_cov_trace_pc() #13
  %call507 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 21) #15
  br label %do.end510

do.end510:                                        ; preds = %do.end505, %do.end489.do.end510_crit_edge
  %success.20 = phi i8 [ %success.19, %do.end489.do.end510_crit_edge ], [ 0, %do.end505 ]
  %184 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %t, align 8
  store i8 64, ptr @ip4.ip, align 4
  store i8 15, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 123, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 -127, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call517 = call fastcc ptr @lookup(ptr noundef %185, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp518 = icmp eq ptr %call517, %call7
  br i1 %cmp518, label %do.end510.do.end531_crit_edge, label %do.end526

do.end510.do.end531_crit_edge:                    ; preds = %do.end510
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end531

do.end526:                                        ; preds = %do.end510
  call void @__sanitizer_cov_trace_pc() #13
  %call528 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 22) #15
  br label %do.end531

do.end531:                                        ; preds = %do.end526, %do.end510.do.end531_crit_edge
  %success.21 = phi i8 [ %success.20, %do.end510.do.end531_crit_edge ], [ 0, %do.end526 ]
  %186 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %t, align 8
  store i8 10, ptr @ip4.ip, align 4
  store i8 0, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 52, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call538 = call fastcc ptr @lookup(ptr noundef %187, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp539 = icmp eq ptr %call538, %call
  br i1 %cmp539, label %do.end531.do.end552_crit_edge, label %do.end547

do.end531.do.end552_crit_edge:                    ; preds = %do.end531
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end552

do.end547:                                        ; preds = %do.end531
  call void @__sanitizer_cov_trace_pc() #13
  %call549 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 23) #15
  br label %do.end552

do.end552:                                        ; preds = %do.end547, %do.end531.do.end552_crit_edge
  %success.22 = phi i8 [ %success.21, %do.end531.do.end552_crit_edge ], [ 0, %do.end547 ]
  %188 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %t, align 8
  store i8 10, ptr @ip4.ip, align 4
  store i8 0, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 -36, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call559 = call fastcc ptr @lookup(ptr noundef %189, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp560 = icmp eq ptr %call559, %call1
  br i1 %cmp560, label %do.end552.do.end573_crit_edge, label %do.end568

do.end552.do.end573_crit_edge:                    ; preds = %do.end552
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end573

do.end568:                                        ; preds = %do.end552
  call void @__sanitizer_cov_trace_pc() #13
  %call570 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 24) #15
  br label %do.end573

do.end573:                                        ; preds = %do.end568, %do.end552.do.end573_crit_edge
  %success.23 = phi i8 [ %success.22, %do.end552.do.end573_crit_edge ], [ 0, %do.end568 ]
  %190 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %t, align 8
  store i8 10, ptr @ip4.ip, align 4
  store i8 1, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 2, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call580 = call fastcc ptr @lookup(ptr noundef %191, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp581 = icmp eq ptr %call580, %call
  br i1 %cmp581, label %do.end573.do.end594_crit_edge, label %do.end589

do.end573.do.end594_crit_edge:                    ; preds = %do.end573
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end594

do.end589:                                        ; preds = %do.end573
  call void @__sanitizer_cov_trace_pc() #13
  %call591 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 25) #15
  br label %do.end594

do.end594:                                        ; preds = %do.end589, %do.end573.do.end594_crit_edge
  %success.24 = phi i8 [ %success.23, %do.end573.do.end594_crit_edge ], [ 0, %do.end589 ]
  %192 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %t, align 8
  store i8 10, ptr @ip4.ip, align 4
  store i8 1, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 6, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call601 = call fastcc ptr @lookup(ptr noundef %193, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp602 = icmp eq ptr %call601, %call1
  br i1 %cmp602, label %do.end594.do.end615_crit_edge, label %do.end610

do.end594.do.end615_crit_edge:                    ; preds = %do.end594
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end615

do.end610:                                        ; preds = %do.end594
  call void @__sanitizer_cov_trace_pc() #13
  %call612 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 26) #15
  br label %do.end615

do.end615:                                        ; preds = %do.end610, %do.end594.do.end615_crit_edge
  %success.25 = phi i8 [ %success.24, %do.end594.do.end615_crit_edge ], [ 0, %do.end610 ]
  %194 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %t, align 8
  store i8 10, ptr @ip4.ip, align 4
  store i8 1, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 10, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call622 = call fastcc ptr @lookup(ptr noundef %195, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp623 = icmp eq ptr %call622, %call2
  br i1 %cmp623, label %do.end615.do.end636_crit_edge, label %do.end631

do.end615.do.end636_crit_edge:                    ; preds = %do.end615
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end636

do.end631:                                        ; preds = %do.end615
  call void @__sanitizer_cov_trace_pc() #13
  %call633 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 27) #15
  br label %do.end636

do.end636:                                        ; preds = %do.end631, %do.end615.do.end636_crit_edge
  %success.26 = phi i8 [ %success.25, %do.end615.do.end636_crit_edge ], [ 0, %do.end631 ]
  %196 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %t, align 8
  store i8 10, ptr @ip4.ip, align 4
  store i8 1, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 20, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call643 = call fastcc ptr @lookup(ptr noundef %197, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp644 = icmp eq ptr %call643, %call3
  br i1 %cmp644, label %do.end636.do.end657_crit_edge, label %do.end652

do.end636.do.end657_crit_edge:                    ; preds = %do.end636
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end657

do.end652:                                        ; preds = %do.end636
  call void @__sanitizer_cov_trace_pc() #13
  %call654 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 28) #15
  br label %do.end657

do.end657:                                        ; preds = %do.end652, %do.end636.do.end657_crit_edge
  %success.27 = phi i8 [ %success.26, %do.end636.do.end657_crit_edge ], [ 0, %do.end652 ]
  store i8 1, ptr @ip4.ip, align 4
  store i8 0, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1362) #11
  %198 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %1, align 8
  %inc.i1364 = add i64 %199, 1
  store i64 %inc.i1364, ptr %1, align 8
  %200 = load i32, ptr @ip4.ip, align 4
  %201 = ptrtoint ptr %key.i1362 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %key.i1362, align 4
  %call.i1365 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1362, i8 noundef zeroext 32, ptr noundef nonnull %call, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1362) #11
  store i8 64, ptr @ip4.ip, align 4
  store i8 0, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1366) #11
  %202 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %1, align 8
  %inc.i1368 = add i64 %203, 1
  store i64 %inc.i1368, ptr %1, align 8
  %204 = load i32, ptr @ip4.ip, align 4
  %205 = ptrtoint ptr %key.i1366 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %key.i1366, align 4
  %call.i1369 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1366, i8 noundef zeroext 32, ptr noundef nonnull %call, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1366) #11
  store i8 -128, ptr @ip4.ip, align 4
  store i8 0, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1370) #11
  %206 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %1, align 8
  %inc.i1372 = add i64 %207, 1
  store i64 %inc.i1372, ptr %1, align 8
  %208 = load i32, ptr @ip4.ip, align 4
  %209 = ptrtoint ptr %key.i1370 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %key.i1370, align 4
  %call.i1373 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1370, i8 noundef zeroext 32, ptr noundef nonnull %call, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1370) #11
  store i8 -64, ptr @ip4.ip, align 4
  store i8 0, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1374) #11
  %210 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %1, align 8
  %inc.i1376 = add i64 %211, 1
  store i64 %inc.i1376, ptr %1, align 8
  %212 = load i32, ptr @ip4.ip, align 4
  %213 = ptrtoint ptr %key.i1374 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %key.i1374, align 4
  %call.i1377 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1374, i8 noundef zeroext 32, ptr noundef nonnull %call, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1374) #11
  store i8 -1, ptr @ip4.ip, align 4
  store i8 0, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1378) #11
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %1, align 8
  %inc.i1380 = add i64 %215, 1
  store i64 %inc.i1380, ptr %1, align 8
  %216 = load i32, ptr @ip4.ip, align 4
  %217 = ptrtoint ptr %key.i1378 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %key.i1378, align 4
  %call.i1381 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1378, i8 noundef zeroext 32, ptr noundef nonnull %call, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1378) #11
  call void @wg_allowedips_remove_by_peer(ptr noundef nonnull %t, ptr noundef nonnull %call, ptr noundef nonnull %mutex)
  %218 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %t, align 8
  store i8 1, ptr @ip4.ip, align 4
  store i8 0, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call674 = call fastcc ptr @lookup(ptr noundef %219, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp675.not = icmp eq ptr %call674, %call
  br i1 %cmp675.not, label %do.end683, label %do.end657.do.end688_crit_edge

do.end657.do.end688_crit_edge:                    ; preds = %do.end657
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end688

do.end683:                                        ; preds = %do.end657
  call void @__sanitizer_cov_trace_pc() #13
  %call685 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 29) #15
  br label %do.end688

do.end688:                                        ; preds = %do.end683, %do.end657.do.end688_crit_edge
  %success.28 = phi i8 [ %success.27, %do.end657.do.end688_crit_edge ], [ 0, %do.end683 ]
  %220 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %t, align 8
  store i8 64, ptr @ip4.ip, align 4
  store i8 0, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call695 = call fastcc ptr @lookup(ptr noundef %221, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp696.not = icmp eq ptr %call695, %call
  br i1 %cmp696.not, label %do.end704, label %do.end688.do.end709_crit_edge

do.end688.do.end709_crit_edge:                    ; preds = %do.end688
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end709

do.end704:                                        ; preds = %do.end688
  call void @__sanitizer_cov_trace_pc() #13
  %call706 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 30) #15
  br label %do.end709

do.end709:                                        ; preds = %do.end704, %do.end688.do.end709_crit_edge
  %success.29 = phi i8 [ %success.28, %do.end688.do.end709_crit_edge ], [ 0, %do.end704 ]
  %222 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %t, align 8
  store i8 -128, ptr @ip4.ip, align 4
  store i8 0, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call716 = call fastcc ptr @lookup(ptr noundef %223, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp717.not = icmp eq ptr %call716, %call
  br i1 %cmp717.not, label %do.end725, label %do.end709.do.end730_crit_edge

do.end709.do.end730_crit_edge:                    ; preds = %do.end709
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end730

do.end725:                                        ; preds = %do.end709
  call void @__sanitizer_cov_trace_pc() #13
  %call727 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 31) #15
  br label %do.end730

do.end730:                                        ; preds = %do.end725, %do.end709.do.end730_crit_edge
  %success.30 = phi i8 [ %success.29, %do.end709.do.end730_crit_edge ], [ 0, %do.end725 ]
  %224 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %t, align 8
  store i8 -64, ptr @ip4.ip, align 4
  store i8 0, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call737 = call fastcc ptr @lookup(ptr noundef %225, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp738.not = icmp eq ptr %call737, %call
  br i1 %cmp738.not, label %do.end746, label %do.end730.do.end751_crit_edge

do.end730.do.end751_crit_edge:                    ; preds = %do.end730
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end751

do.end746:                                        ; preds = %do.end730
  call void @__sanitizer_cov_trace_pc() #13
  %call748 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 32) #15
  br label %do.end751

do.end751:                                        ; preds = %do.end746, %do.end730.do.end751_crit_edge
  %success.31 = phi i8 [ %success.30, %do.end730.do.end751_crit_edge ], [ 0, %do.end746 ]
  %226 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %t, align 8
  store i8 -1, ptr @ip4.ip, align 4
  store i8 0, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call758 = call fastcc ptr @lookup(ptr noundef %227, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp759.not = icmp eq ptr %call758, %call
  br i1 %cmp759.not, label %do.end767, label %do.end751.do.end772_crit_edge

do.end751.do.end772_crit_edge:                    ; preds = %do.end751
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end772

do.end767:                                        ; preds = %do.end751
  call void @__sanitizer_cov_trace_pc() #13
  %call769 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 33) #15
  br label %do.end772

do.end772:                                        ; preds = %do.end767, %do.end751.do.end772_crit_edge
  %success.32 = phi i8 [ %success.31, %do.end751.do.end772_crit_edge ], [ 0, %do.end767 ]
  call void @wg_allowedips_free(ptr noundef nonnull %t, ptr noundef nonnull %mutex)
  %228 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr null, ptr %0, align 4
  %229 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr null, ptr %t, align 8
  store i8 -64, ptr @ip4.ip, align 4
  store i8 -88, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1384) #11
  %230 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %230)
  store i64 2, ptr %1, align 8
  %231 = load i32, ptr @ip4.ip, align 4
  %232 = ptrtoint ptr %key.i1384 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %231, ptr %key.i1384, align 4
  %call.i1387 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1384, i8 noundef zeroext 16, ptr noundef nonnull %call, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1384) #11
  store i8 -64, ptr @ip4.ip, align 4
  store i8 -88, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1388) #11
  %233 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %1, align 8
  %inc.i1390 = add i64 %234, 1
  store i64 %inc.i1390, ptr %1, align 8
  %235 = load i32, ptr @ip4.ip, align 4
  %236 = ptrtoint ptr %key.i1388 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %key.i1388, align 4
  %call.i1391 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1388, i8 noundef zeroext 24, ptr noundef nonnull %call, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1388) #11
  call void @wg_allowedips_remove_by_peer(ptr noundef nonnull %t, ptr noundef nonnull %call, ptr noundef nonnull %mutex)
  %237 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %t, align 8
  store i8 -64, ptr @ip4.ip, align 4
  store i8 -88, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 1, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %call783 = call fastcc ptr @lookup(ptr noundef %238, i8 noundef zeroext 32, ptr noundef nonnull @ip4.ip)
  %cmp784.not = icmp eq ptr %call783, %call
  br i1 %cmp784.not, label %do.end792, label %do.end772.do.end797_crit_edge

do.end772.do.end797_crit_edge:                    ; preds = %do.end772
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end797

do.end792:                                        ; preds = %do.end772
  call void @__sanitizer_cov_trace_pc() #13
  %call794 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 34) #15
  br label %do.end797

do.end797:                                        ; preds = %do.end792, %do.end772.do.end797_crit_edge
  %success.33 = phi i8 [ %success.32, %do.end772.do.end797_crit_edge ], [ 0, %do.end792 ]
  %239 = getelementptr inbounds [16 x i8], ptr %key.i1392, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end797
  %i.01448 = phi i32 [ 0, %do.end797 ], [ %inc803, %for.body.for.body_crit_edge ]
  %rem = and i32 %i.01448, 63
  %sh_prom = zext i32 %rem to i64
  %shl = shl nuw i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %240 = call ptr @memset(ptr %ip, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.01448)
  %cmp801 = icmp ult i32 %i.01448, 64
  %mul = select i1 %cmp801, i32 8, i32 0
  %add.ptr = getelementptr i8, ptr %ip, i32 %mul
  %241 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %241)
  store i64 %neg, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i1392) #11
  %242 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %242)
  %243 = load i64, ptr %1, align 8
  %inc.i1394 = add i64 %243, 1
  store i64 %inc.i1394, ptr %1, align 8
  %244 = ptrtoint ptr %ip to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %ip, align 8
  %246 = ptrtoint ptr %key.i1392 to i32
  call void @__asan_store8_noabort(i32 %246)
  store i64 %245, ptr %key.i1392, align 8
  %247 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %18, align 8
  %249 = ptrtoint ptr %239 to i32
  call void @__asan_store8_noabort(i32 %249)
  store i64 %248, ptr %239, align 8
  %call.i1396 = call fastcc i32 @add(ptr noundef %0, i8 noundef zeroext -128, ptr noundef nonnull %key.i1392, i8 noundef zeroext -128, ptr noundef %call, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i1392) #11
  %inc803 = add nuw nsw i32 %i.01448, 1
  %exitcond.not = icmp eq i32 %inc803, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @wg_allowedips_free(ptr noundef nonnull %t, ptr noundef nonnull %mutex)
  %250 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr null, ptr %0, align 4
  %251 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr null, ptr %t, align 8
  store i8 -64, ptr @ip4.ip, align 4
  store i8 95, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 5, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 93, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1399) #11
  %252 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %252)
  store i64 2, ptr %1, align 8
  %253 = load i32, ptr @ip4.ip, align 4
  %254 = ptrtoint ptr %key.i1399 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %253, ptr %key.i1399, align 4
  %call.i1402 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1399, i8 noundef zeroext 27, ptr noundef %call, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1399) #11
  store i32 638014208, ptr @ip6.ip, align 8
  store i32 1610640128, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 -1067514557, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i1403) #11
  %255 = getelementptr inbounds [16 x i8], ptr %key.i1403, i32 0, i32 8
  %256 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %1, align 8
  %inc.i1405 = add i64 %257, 1
  store i64 %inc.i1405, ptr %1, align 8
  %258 = load i64, ptr @ip6.ip, align 8
  %259 = ptrtoint ptr %key.i1403 to i32
  call void @__asan_store8_noabort(i32 %259)
  store i64 %258, ptr %key.i1403, align 8
  %260 = load i64, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  %261 = ptrtoint ptr %255 to i32
  call void @__asan_store8_noabort(i32 %261)
  store i64 %260, ptr %255, align 8
  %call.i1407 = call fastcc i32 @add(ptr noundef %0, i8 noundef zeroext -128, ptr noundef nonnull %key.i1403, i8 noundef zeroext -128, ptr noundef %call, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i1403) #11
  store i8 10, ptr @ip4.ip, align 4
  store i8 1, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 20, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i1408) #11
  %262 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %1, align 8
  %inc.i1410 = add i64 %263, 1
  store i64 %inc.i1410, ptr %1, align 8
  %264 = load i32, ptr @ip4.ip, align 4
  %265 = ptrtoint ptr %key.i1408 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %264, ptr %key.i1408, align 4
  %call.i1411 = call fastcc i32 @add(ptr noundef nonnull %t, i8 noundef zeroext 32, ptr noundef nonnull %key.i1408, i8 noundef zeroext 29, ptr noundef %call, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i1408) #11
  store i32 638014208, ptr @ip6.ip, align 8
  store i32 1837788152, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 -625872417, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 -1067510493, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i1412) #11
  %266 = getelementptr inbounds [16 x i8], ptr %key.i1412, i32 0, i32 8
  %267 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %267)
  %268 = load i64, ptr %1, align 8
  %inc.i1414 = add i64 %268, 1
  store i64 %inc.i1414, ptr %1, align 8
  %269 = load i64, ptr @ip6.ip, align 8
  %270 = ptrtoint ptr %key.i1412 to i32
  call void @__asan_store8_noabort(i32 %270)
  store i64 %269, ptr %key.i1412, align 8
  %271 = load i64, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  %272 = ptrtoint ptr %266 to i32
  call void @__asan_store8_noabort(i32 %272)
  store i64 %271, ptr %266, align 8
  %call.i1416 = call fastcc i32 @add(ptr noundef %0, i8 noundef zeroext -128, ptr noundef nonnull %key.i1412, i8 noundef zeroext 83, ptr noundef %call, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i1412) #11
  store i32 638014208, ptr @ip6.ip, align 8
  store i32 1837788152, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 -625872417, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 -1067510493, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i1417) #11
  %273 = getelementptr inbounds [16 x i8], ptr %key.i1417, i32 0, i32 8
  %274 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %274)
  %275 = load i64, ptr %1, align 8
  %inc.i1419 = add i64 %275, 1
  store i64 %inc.i1419, ptr %1, align 8
  %276 = load i64, ptr @ip6.ip, align 8
  %277 = ptrtoint ptr %key.i1417 to i32
  call void @__asan_store8_noabort(i32 %277)
  store i64 %276, ptr %key.i1417, align 8
  %278 = load i64, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  %279 = ptrtoint ptr %273 to i32
  call void @__asan_store8_noabort(i32 %279)
  store i64 %278, ptr %273, align 8
  %call.i1421 = call fastcc i32 @add(ptr noundef %0, i8 noundef zeroext -128, ptr noundef nonnull %key.i1417, i8 noundef zeroext 21, ptr noundef %call, ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i1417) #11
  %allowedips_list = getelementptr inbounds %struct.wg_peer, ptr %call, i32 0, i32 32
  %280 = ptrtoint ptr %allowedips_list to i32
  call void @__asan_load4_noabort(i32 %280)
  %.pn1449 = load ptr, ptr %allowedips_list, align 4
  %cmp819.not1450 = icmp eq ptr %.pn1449, %allowedips_list
  br i1 %cmp819.not1450, label %do.end1000.thread, label %for.end.for.body821_crit_edge

for.end.for.body821_crit_edge:                    ; preds = %for.end
  br label %for.body821

do.end1000.thread:                                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call9121530 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 129) #15
  %call9301536 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 130) #15
  %call9481541 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 131) #15
  %call9661545 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 132) #15
  %call9841548 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 133) #15
  %call10021550 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 134) #15
  br label %free

for.body821:                                      ; preds = %if.end892.for.body821_crit_edge, %for.end.for.body821_crit_edge
  %.pn1463 = phi ptr [ %.pn, %if.end892.for.body821_crit_edge ], [ %.pn1449, %for.end.for.body821_crit_edge ]
  %found_a.0.off01461 = phi i1 [ %found_a.1.off0, %if.end892.for.body821_crit_edge ], [ false, %for.end.for.body821_crit_edge ]
  %found_b.0.off01459 = phi i1 [ %found_b.1.off0, %if.end892.for.body821_crit_edge ], [ false, %for.end.for.body821_crit_edge ]
  %found_c.0.off01457 = phi i1 [ %found_c.1.off0, %if.end892.for.body821_crit_edge ], [ false, %for.end.for.body821_crit_edge ]
  %found_d.0.off01455 = phi i1 [ %found_d.1.off0, %if.end892.for.body821_crit_edge ], [ false, %for.end.for.body821_crit_edge ]
  %found_e.0.off01453 = phi i1 [ %found_e.1.off0, %if.end892.for.body821_crit_edge ], [ false, %for.end.for.body821_crit_edge ]
  %found_other.0.off01452 = phi i1 [ %found_other.1.off0, %if.end892.for.body821_crit_edge ], [ false, %for.end.for.body821_crit_edge ]
  %count.01451 = phi i32 [ %inc824, %if.end892.for.body821_crit_edge ], [ 0, %for.end.for.body821_crit_edge ]
  %iter_node.0 = getelementptr i8, ptr %.pn1463, i32 -36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cidr) #11
  %281 = ptrtoint ptr %cidr to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 -1, ptr %cidr, align 1, !annotation !193
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ip822) #11
  %282 = call ptr @memset(ptr %ip822, i32 255, i32 16)
  %call823 = call i32 @wg_allowedips_read_node(ptr noundef %iter_node.0, ptr noundef nonnull %ip822, ptr noundef nonnull %cidr)
  %inc824 = add i32 %count.01451, 1
  %283 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %cidr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %284)
  %cmp826 = icmp eq i8 %284, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call823)
  %cmp828 = icmp eq i32 %call823, 2
  %or.cond1259 = select i1 %cmp826, i1 %cmp828, i1 false
  br i1 %or.cond1259, label %land.lhs.true830, label %if.else

land.lhs.true830:                                 ; preds = %for.body821
  store i8 -64, ptr @ip4.ip, align 4
  store i8 95, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 5, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 64, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %285 = ptrtoint ptr %ip822 to i32
  call void @__asan_load4_noabort(i32 %285)
  %lhsv1250 = load i32, ptr %ip822, align 8
  %rhsv1251 = load i32, ptr @ip4.ip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %lhsv1250, i32 %rhsv1251)
  %.not1252 = icmp eq i32 %lhsv1250, %rhsv1251
  br i1 %.not1252, label %land.lhs.true830.if.end892_crit_edge, label %land.lhs.true830.if.else887_crit_edge

land.lhs.true830.if.else887_crit_edge:            ; preds = %land.lhs.true830
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else887

land.lhs.true830.if.end892_crit_edge:             ; preds = %land.lhs.true830
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end892

if.else:                                          ; preds = %for.body821
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %284)
  %cmp837 = icmp eq i8 %284, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call823)
  %cmp840 = icmp eq i32 %call823, 10
  %or.cond1260 = select i1 %cmp837, i1 %cmp840, i1 false
  br i1 %or.cond1260, label %land.lhs.true842, label %if.else848

land.lhs.true842:                                 ; preds = %if.else
  store i32 638014208, ptr @ip6.ip, align 8
  store i32 1610640128, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 -1067514557, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  %bcmp1249 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %ip822, ptr noundef nonnull dereferenceable(16) @ip6.ip, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1249)
  %tobool846.not = icmp eq i32 %bcmp1249, 0
  br i1 %tobool846.not, label %land.lhs.true842.if.end892_crit_edge, label %land.lhs.true842.if.else887_crit_edge

land.lhs.true842.if.else887_crit_edge:            ; preds = %land.lhs.true842
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else887

land.lhs.true842.if.end892_crit_edge:             ; preds = %land.lhs.true842
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end892

if.else848:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %284)
  %cmp850 = icmp eq i8 %284, 29
  %or.cond1261 = select i1 %cmp850, i1 %cmp828, i1 false
  br i1 %or.cond1261, label %land.lhs.true855, label %if.else861

land.lhs.true855:                                 ; preds = %if.else848
  store i8 10, ptr @ip4.ip, align 4
  store i8 1, ptr getelementptr inbounds (i8, ptr @ip4.ip, i32 1), align 1
  store i8 0, ptr getelementptr (i8, ptr @ip4.ip, i32 2), align 2
  store i8 16, ptr getelementptr (i8, ptr @ip4.ip, i32 3), align 1
  %286 = ptrtoint ptr %ip822 to i32
  call void @__asan_load4_noabort(i32 %286)
  %lhsv = load i32, ptr %ip822, align 8
  %rhsv = load i32, ptr @ip4.ip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %lhsv, i32 %rhsv)
  %.not = icmp eq i32 %lhsv, %rhsv
  br i1 %.not, label %land.lhs.true855.if.end892_crit_edge, label %land.lhs.true855.if.else887_crit_edge

land.lhs.true855.if.else887_crit_edge:            ; preds = %land.lhs.true855
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else887

land.lhs.true855.if.end892_crit_edge:             ; preds = %land.lhs.true855
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end892

if.else861:                                       ; preds = %if.else848
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %284)
  %cmp863 = icmp eq i8 %284, 83
  %or.cond1262 = select i1 %cmp863, i1 %cmp840, i1 false
  br i1 %or.cond1262, label %land.lhs.true868, label %if.else874

land.lhs.true868:                                 ; preds = %if.else861
  store i32 638014208, ptr @ip6.ip, align 8
  store i32 1837788152, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 -625876992, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  %bcmp1248 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %ip822, ptr noundef nonnull dereferenceable(16) @ip6.ip, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1248)
  %tobool872.not = icmp eq i32 %bcmp1248, 0
  br i1 %tobool872.not, label %land.lhs.true868.if.end892_crit_edge, label %land.lhs.true868.if.else887_crit_edge

land.lhs.true868.if.else887_crit_edge:            ; preds = %land.lhs.true868
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else887

land.lhs.true868.if.end892_crit_edge:             ; preds = %land.lhs.true868
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end892

if.else874:                                       ; preds = %if.else861
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %284)
  %cmp876 = icmp eq i8 %284, 21
  %or.cond1263 = select i1 %cmp876, i1 %cmp840, i1 false
  br i1 %or.cond1263, label %land.lhs.true881, label %if.else874.if.else887_crit_edge

if.else874.if.else887_crit_edge:                  ; preds = %if.else874
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else887

land.lhs.true881:                                 ; preds = %if.else874
  store i32 638013440, ptr @ip6.ip, align 8
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 2), align 8
  store i32 0, ptr getelementptr inbounds (%struct.in6_addr, ptr @ip6.ip, i32 0, i32 0, i32 0, i32 3), align 4
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %ip822, ptr noundef nonnull dereferenceable(16) @ip6.ip, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool885.not = icmp eq i32 %bcmp, 0
  br i1 %tobool885.not, label %land.lhs.true881.if.end892_crit_edge, label %land.lhs.true881.if.else887_crit_edge

land.lhs.true881.if.else887_crit_edge:            ; preds = %land.lhs.true881
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else887

land.lhs.true881.if.end892_crit_edge:             ; preds = %land.lhs.true881
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end892

if.else887:                                       ; preds = %land.lhs.true881.if.else887_crit_edge, %if.else874.if.else887_crit_edge, %land.lhs.true868.if.else887_crit_edge, %land.lhs.true855.if.else887_crit_edge, %land.lhs.true842.if.else887_crit_edge, %land.lhs.true830.if.else887_crit_edge
  br label %if.end892

if.end892:                                        ; preds = %if.else887, %land.lhs.true881.if.end892_crit_edge, %land.lhs.true868.if.end892_crit_edge, %land.lhs.true855.if.end892_crit_edge, %land.lhs.true842.if.end892_crit_edge, %land.lhs.true830.if.end892_crit_edge
  %found_other.1.off0 = phi i1 [ true, %if.else887 ], [ %found_other.0.off01452, %land.lhs.true830.if.end892_crit_edge ], [ %found_other.0.off01452, %land.lhs.true842.if.end892_crit_edge ], [ %found_other.0.off01452, %land.lhs.true855.if.end892_crit_edge ], [ %found_other.0.off01452, %land.lhs.true868.if.end892_crit_edge ], [ %found_other.0.off01452, %land.lhs.true881.if.end892_crit_edge ]
  %found_e.1.off0 = phi i1 [ %found_e.0.off01453, %if.else887 ], [ %found_e.0.off01453, %land.lhs.true830.if.end892_crit_edge ], [ %found_e.0.off01453, %land.lhs.true842.if.end892_crit_edge ], [ %found_e.0.off01453, %land.lhs.true855.if.end892_crit_edge ], [ %found_e.0.off01453, %land.lhs.true868.if.end892_crit_edge ], [ true, %land.lhs.true881.if.end892_crit_edge ]
  %found_d.1.off0 = phi i1 [ %found_d.0.off01455, %if.else887 ], [ %found_d.0.off01455, %land.lhs.true830.if.end892_crit_edge ], [ %found_d.0.off01455, %land.lhs.true842.if.end892_crit_edge ], [ %found_d.0.off01455, %land.lhs.true855.if.end892_crit_edge ], [ true, %land.lhs.true868.if.end892_crit_edge ], [ %found_d.0.off01455, %land.lhs.true881.if.end892_crit_edge ]
  %found_c.1.off0 = phi i1 [ %found_c.0.off01457, %if.else887 ], [ %found_c.0.off01457, %land.lhs.true830.if.end892_crit_edge ], [ %found_c.0.off01457, %land.lhs.true842.if.end892_crit_edge ], [ true, %land.lhs.true855.if.end892_crit_edge ], [ %found_c.0.off01457, %land.lhs.true868.if.end892_crit_edge ], [ %found_c.0.off01457, %land.lhs.true881.if.end892_crit_edge ]
  %found_b.1.off0 = phi i1 [ %found_b.0.off01459, %if.else887 ], [ %found_b.0.off01459, %land.lhs.true830.if.end892_crit_edge ], [ true, %land.lhs.true842.if.end892_crit_edge ], [ %found_b.0.off01459, %land.lhs.true855.if.end892_crit_edge ], [ %found_b.0.off01459, %land.lhs.true868.if.end892_crit_edge ], [ %found_b.0.off01459, %land.lhs.true881.if.end892_crit_edge ]
  %found_a.1.off0 = phi i1 [ %found_a.0.off01461, %if.else887 ], [ true, %land.lhs.true830.if.end892_crit_edge ], [ %found_a.0.off01461, %land.lhs.true842.if.end892_crit_edge ], [ %found_a.0.off01461, %land.lhs.true855.if.end892_crit_edge ], [ %found_a.0.off01461, %land.lhs.true868.if.end892_crit_edge ], [ %found_a.0.off01461, %land.lhs.true881.if.end892_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ip822) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cidr) #11
  %287 = ptrtoint ptr %.pn1463 to i32
  call void @__asan_load4_noabort(i32 %287)
  %.pn = load ptr, ptr %.pn1463, align 4
  %cmp819.not = icmp eq ptr %.pn, %allowedips_list
  br i1 %cmp819.not, label %do.body899, label %if.end892.for.body821_crit_edge

if.end892.for.body821_crit_edge:                  ; preds = %if.end892
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body821

do.body899:                                       ; preds = %if.end892
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc824)
  %phi.cmp = icmp eq i32 %inc824, 5
  br i1 %phi.cmp, label %do.end915, label %do.end910

do.end910:                                        ; preds = %do.body899
  %call912 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 129) #15
  br i1 %found_a.1.off0, label %do.end910.do.end933_crit_edge, label %do.end910.do.end928_crit_edge

do.end910.do.end928_crit_edge:                    ; preds = %do.end910
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end928

do.end910.do.end933_crit_edge:                    ; preds = %do.end910
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end933

do.end915:                                        ; preds = %do.body899
  br i1 %found_a.1.off0, label %do.end915.do.end933_crit_edge, label %do.end915.do.end928_crit_edge

do.end915.do.end928_crit_edge:                    ; preds = %do.end915
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end928

do.end915.do.end933_crit_edge:                    ; preds = %do.end915
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end933

do.end928:                                        ; preds = %do.end915.do.end928_crit_edge, %do.end910.do.end928_crit_edge
  %call930 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 130) #15
  br i1 %found_b.1.off0, label %do.end928.do.end951_crit_edge, label %do.end928.do.end946_crit_edge

do.end928.do.end946_crit_edge:                    ; preds = %do.end928
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end946

do.end928.do.end951_crit_edge:                    ; preds = %do.end928
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end951

do.end933:                                        ; preds = %do.end915.do.end933_crit_edge, %do.end910.do.end933_crit_edge
  %success.35 = phi i8 [ %success.33, %do.end915.do.end933_crit_edge ], [ 0, %do.end910.do.end933_crit_edge ]
  br i1 %found_b.1.off0, label %do.end933.do.end951_crit_edge, label %do.end933.do.end946_crit_edge

do.end933.do.end946_crit_edge:                    ; preds = %do.end933
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end946

do.end933.do.end951_crit_edge:                    ; preds = %do.end933
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end951

do.end946:                                        ; preds = %do.end933.do.end946_crit_edge, %do.end928.do.end946_crit_edge
  %call948 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 131) #15
  br i1 %found_c.1.off0, label %do.end946.do.end969_crit_edge, label %do.end946.do.end964_crit_edge

do.end946.do.end964_crit_edge:                    ; preds = %do.end946
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end964

do.end946.do.end969_crit_edge:                    ; preds = %do.end946
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end969

do.end951:                                        ; preds = %do.end933.do.end951_crit_edge, %do.end928.do.end951_crit_edge
  %success.36 = phi i8 [ %success.35, %do.end933.do.end951_crit_edge ], [ 0, %do.end928.do.end951_crit_edge ]
  br i1 %found_c.1.off0, label %do.end951.do.end969_crit_edge, label %do.end951.do.end964_crit_edge

do.end951.do.end964_crit_edge:                    ; preds = %do.end951
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end964

do.end951.do.end969_crit_edge:                    ; preds = %do.end951
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end969

do.end964:                                        ; preds = %do.end951.do.end964_crit_edge, %do.end946.do.end964_crit_edge
  %call966 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 132) #15
  br i1 %found_d.1.off0, label %do.end964.do.end987_crit_edge, label %do.end964.do.end982_crit_edge

do.end964.do.end982_crit_edge:                    ; preds = %do.end964
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end982

do.end964.do.end987_crit_edge:                    ; preds = %do.end964
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end987

do.end969:                                        ; preds = %do.end951.do.end969_crit_edge, %do.end946.do.end969_crit_edge
  %success.37 = phi i8 [ %success.36, %do.end951.do.end969_crit_edge ], [ 0, %do.end946.do.end969_crit_edge ]
  br i1 %found_d.1.off0, label %do.end969.do.end987_crit_edge, label %do.end969.do.end982_crit_edge

do.end969.do.end982_crit_edge:                    ; preds = %do.end969
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end982

do.end969.do.end987_crit_edge:                    ; preds = %do.end969
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end987

do.end982:                                        ; preds = %do.end969.do.end982_crit_edge, %do.end964.do.end982_crit_edge
  %call984 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 133) #15
  br i1 %found_e.1.off0, label %do.end982.do.end1005_crit_edge, label %do.end982.do.end1000_crit_edge

do.end982.do.end1000_crit_edge:                   ; preds = %do.end982
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end1000

do.end982.do.end1005_crit_edge:                   ; preds = %do.end982
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end1005

do.end987:                                        ; preds = %do.end969.do.end987_crit_edge, %do.end964.do.end987_crit_edge
  %success.38 = phi i8 [ %success.37, %do.end969.do.end987_crit_edge ], [ 0, %do.end964.do.end987_crit_edge ]
  br i1 %found_e.1.off0, label %do.end987.do.end1005_crit_edge, label %do.end987.do.end1000_crit_edge

do.end987.do.end1000_crit_edge:                   ; preds = %do.end987
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end1000

do.end987.do.end1005_crit_edge:                   ; preds = %do.end987
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end1005

do.end1000:                                       ; preds = %do.end987.do.end1000_crit_edge, %do.end982.do.end1000_crit_edge
  %call1002 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 134) #15
  br i1 %found_other.1.off0, label %do.end1000.do.end1024.thread_crit_edge, label %do.end1000.free_crit_edge

do.end1000.free_crit_edge:                        ; preds = %do.end1000
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

do.end1000.do.end1024.thread_crit_edge:           ; preds = %do.end1000
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end1024.thread

do.end1005:                                       ; preds = %do.end987.do.end1005_crit_edge, %do.end982.do.end1005_crit_edge
  %success.39 = phi i8 [ %success.38, %do.end987.do.end1005_crit_edge ], [ 0, %do.end982.do.end1005_crit_edge ]
  br i1 %found_other.1.off0, label %do.end1005.do.end1024.thread_crit_edge, label %do.end1024

do.end1005.do.end1024.thread_crit_edge:           ; preds = %do.end1005
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end1024.thread

do.end1024.thread:                                ; preds = %do.end1005.do.end1024.thread_crit_edge, %do.end1000.do.end1024.thread_crit_edge
  %call1021 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 135) #15
  br label %free

do.end1024:                                       ; preds = %do.end1005
  %288 = and i8 %success.39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %288)
  %tobool1027.not = icmp eq i8 %288, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %288)
  %extract.t1211 = icmp ne i8 %288, 0
  br i1 %tobool1027.not, label %do.end1024.free_crit_edge, label %do.end1031

do.end1024.free_crit_edge:                        ; preds = %do.end1024
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

do.end1031:                                       ; preds = %do.end1024
  call void @__sanitizer_cov_trace_pc() #13
  %call1033 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #15
  br label %free

free:                                             ; preds = %do.end1031, %do.end1024.free_crit_edge, %do.end1024.thread, %do.end1000.free_crit_edge, %do.end1000.thread, %do.end30
  %success.41.off0 = phi i1 [ true, %do.end1031 ], [ %extract.t1211, %do.end1024.free_crit_edge ], [ false, %do.end30 ], [ false, %do.end1024.thread ], [ false, %do.end1000.thread ], [ false, %do.end1000.free_crit_edge ]
  call void @wg_allowedips_free(ptr noundef nonnull %t, ptr noundef nonnull %mutex)
  call void @kfree(ptr noundef %call) #11
  call void @kfree(ptr noundef %call1) #11
  call void @kfree(ptr noundef %call2) #11
  call void @kfree(ptr noundef %call3) #11
  call void @kfree(ptr noundef %call4) #11
  call void @kfree(ptr noundef %call5) #11
  call void @kfree(ptr noundef %call6) #11
  call void @kfree(ptr noundef %call7) #11
  call void @mutex_unlock(ptr noundef nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ip) #11
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %mutex) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %t) #11
  ret i1 %success.41.off0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @init_peer() unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1552) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %refcount = getelementptr inbounds %struct.wg_peer, ptr %call7.i.i, i32 0, i32 29
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %1 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %refcount, align 8
  %allowedips_list = getelementptr inbounds %struct.wg_peer, ptr %call7.i.i, i32 0, i32 32
  %2 = ptrtoint ptr %allowedips_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %allowedips_list, ptr %allowedips_list, align 4
  %prev.i = getelementptr inbounds %struct.wg_peer, ptr %call7.i.i, i32 0, i32 32, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %allowedips_list, ptr %prev.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_peer_get_maybe_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !152, !154, !156, !158, !160, !162, !164, !165, !167, !169, !170, !171, !173, !175, !176, !178}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/wireguard/allowedips.c", i32 263, i32 34}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../drivers/net/wireguard/allowedips.c", i32 270, i32 34}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../drivers/net/wireguard/allowedips.c", i32 314, i32 11}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../drivers/net/wireguard/allowedips.c", i32 327, i32 12}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireguard/allowedips.c", i32 376, i32 15}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 499, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @wg_allowedips_selftest.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 504, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 509, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @wg_allowedips_selftest._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @wg_allowedips_selftest._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 548, i32 2}
!26 = !{ptr @wg_allowedips_selftest._entry.11, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @wg_allowedips_selftest._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @wg_allowedips_selftest._entry.14, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 549, i32 2}
!30 = !{ptr @wg_allowedips_selftest._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @wg_allowedips_selftest._entry.16, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 550, i32 2}
!33 = !{ptr @wg_allowedips_selftest._entry_ptr.17, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @wg_allowedips_selftest._entry.18, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 551, i32 2}
!36 = !{ptr @wg_allowedips_selftest._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @wg_allowedips_selftest._entry.20, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 552, i32 2}
!39 = !{ptr @wg_allowedips_selftest._entry_ptr.21, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @wg_allowedips_selftest._entry.22, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 553, i32 2}
!42 = !{ptr @wg_allowedips_selftest._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @wg_allowedips_selftest._entry.24, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 554, i32 2}
!45 = !{ptr @wg_allowedips_selftest._entry_ptr.25, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @wg_allowedips_selftest._entry.26, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 555, i32 2}
!48 = !{ptr @wg_allowedips_selftest._entry_ptr.27, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @wg_allowedips_selftest._entry.28, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 556, i32 2}
!51 = !{ptr @wg_allowedips_selftest._entry_ptr.29, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @wg_allowedips_selftest._entry.30, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 557, i32 2}
!54 = !{ptr @wg_allowedips_selftest._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @wg_allowedips_selftest._entry.32, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 558, i32 2}
!57 = !{ptr @wg_allowedips_selftest._entry_ptr.33, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @wg_allowedips_selftest._entry.34, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 559, i32 2}
!60 = !{ptr @wg_allowedips_selftest._entry_ptr.35, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @wg_allowedips_selftest._entry.36, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 560, i32 2}
!63 = !{ptr @wg_allowedips_selftest._entry_ptr.37, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @wg_allowedips_selftest._entry.38, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 561, i32 2}
!66 = !{ptr @wg_allowedips_selftest._entry_ptr.39, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @wg_allowedips_selftest._entry.40, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 562, i32 2}
!69 = !{ptr @wg_allowedips_selftest._entry_ptr.41, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @wg_allowedips_selftest._entry.42, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 563, i32 2}
!72 = !{ptr @wg_allowedips_selftest._entry_ptr.43, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @wg_allowedips_selftest._entry.44, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 564, i32 2}
!75 = !{ptr @wg_allowedips_selftest._entry_ptr.45, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @wg_allowedips_selftest._entry.46, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 565, i32 2}
!78 = !{ptr @wg_allowedips_selftest._entry_ptr.47, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @wg_allowedips_selftest._entry.48, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 566, i32 2}
!81 = !{ptr @wg_allowedips_selftest._entry_ptr.49, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @wg_allowedips_selftest._entry.50, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 567, i32 2}
!84 = !{ptr @wg_allowedips_selftest._entry_ptr.51, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @wg_allowedips_selftest._entry.52, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 568, i32 2}
!87 = !{ptr @wg_allowedips_selftest._entry_ptr.53, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @wg_allowedips_selftest._entry.54, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 569, i32 2}
!90 = !{ptr @wg_allowedips_selftest._entry_ptr.55, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @wg_allowedips_selftest._entry.56, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 570, i32 2}
!93 = !{ptr @wg_allowedips_selftest._entry_ptr.57, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @wg_allowedips_selftest._entry.58, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 571, i32 2}
!96 = !{ptr @wg_allowedips_selftest._entry_ptr.59, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @wg_allowedips_selftest._entry.60, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 572, i32 2}
!99 = !{ptr @wg_allowedips_selftest._entry_ptr.61, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @wg_allowedips_selftest._entry.62, !101, !"_entry", i1 false, i1 false}
!101 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 573, i32 2}
!102 = !{ptr @wg_allowedips_selftest._entry_ptr.63, !101, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @wg_allowedips_selftest._entry.64, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 574, i32 2}
!105 = !{ptr @wg_allowedips_selftest._entry_ptr.65, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @wg_allowedips_selftest._entry.66, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 575, i32 2}
!108 = !{ptr @wg_allowedips_selftest._entry_ptr.67, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @wg_allowedips_selftest._entry.68, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 583, i32 2}
!111 = !{ptr @wg_allowedips_selftest._entry_ptr.69, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @wg_allowedips_selftest._entry.70, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 584, i32 2}
!114 = !{ptr @wg_allowedips_selftest._entry_ptr.71, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @wg_allowedips_selftest._entry.72, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 585, i32 2}
!117 = !{ptr @wg_allowedips_selftest._entry_ptr.73, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @wg_allowedips_selftest._entry.74, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 586, i32 2}
!120 = !{ptr @wg_allowedips_selftest._entry_ptr.75, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @wg_allowedips_selftest._entry.76, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 587, i32 2}
!123 = !{ptr @wg_allowedips_selftest._entry_ptr.77, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @wg_allowedips_selftest._entry.78, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 594, i32 2}
!126 = !{ptr @wg_allowedips_selftest._entry_ptr.79, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @wg_allowedips_selftest._entry.80, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 641, i32 2}
!129 = !{ptr @wg_allowedips_selftest._entry_ptr.81, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @wg_allowedips_selftest._entry.82, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 642, i32 2}
!132 = !{ptr @wg_allowedips_selftest._entry_ptr.83, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @wg_allowedips_selftest._entry.84, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 643, i32 2}
!135 = !{ptr @wg_allowedips_selftest._entry_ptr.85, !134, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @wg_allowedips_selftest._entry.86, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 644, i32 2}
!138 = !{ptr @wg_allowedips_selftest._entry_ptr.87, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @wg_allowedips_selftest._entry.88, !140, !"_entry", i1 false, i1 false}
!140 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 645, i32 2}
!141 = !{ptr @wg_allowedips_selftest._entry_ptr.89, !140, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @wg_allowedips_selftest._entry.90, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 646, i32 2}
!144 = !{ptr @wg_allowedips_selftest._entry_ptr.91, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @wg_allowedips_selftest._entry.92, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 647, i32 2}
!147 = !{ptr @wg_allowedips_selftest._entry_ptr.93, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.95, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 653, i32 3}
!150 = !{ptr @wg_allowedips_selftest._entry.94, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @wg_allowedips_selftest._entry_ptr.96, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @node_cache, !153, !"node_cache", i1 false, i1 false}
!153 = !{!"../drivers/net/wireguard/allowedips.c", i32 9, i32 27}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../drivers/net/wireguard/allowedips.c", i32 210, i32 10}
!156 = distinct !{null, !157, !"__warned", i1 false, i1 false}
!157 = !{!"../drivers/net/wireguard/allowedips.c", i32 213, i32 10}
!158 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!159 = !{!"../drivers/net/wireguard/allowedips.c", i32 150, i32 33}
!160 = distinct !{null, !161, !"__warned", i1 false, i1 false}
!161 = !{!"../drivers/net/wireguard/allowedips.c", i32 160, i32 10}
!162 = distinct !{null, !163, !"__warned", i1 false, i1 false}
!163 = !{!"../drivers/net/wireguard/allowedips.c", i32 136, i32 19}
!164 = !{ptr @.str.99, !163, !"<string literal>", i1 false, i1 false}
!165 = distinct !{null, !166, !"__warned", i1 false, i1 false}
!166 = !{!"../drivers/net/wireguard/allowedips.c", i32 138, i32 33}
!167 = distinct !{null, !168, !"__warned", i1 false, i1 false}
!168 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!169 = !{ptr @.str.101, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.102, !168, !"<string literal>", i1 false, i1 false}
!171 = distinct !{null, !172, !"__warned", i1 false, i1 false}
!172 = !{!"../drivers/net/wireguard/allowedips.c", i32 118, i32 10}
!173 = distinct !{null, !174, !"__warned", i1 false, i1 false}
!174 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!175 = !{ptr @.str.103, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @ip4.ip, !177, !"ip", i1 false, i1 false}
!177 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 427, i32 24}
!178 = !{ptr @ip6.ip, !179, !"ip", i1 false, i1 false}
!179 = !{!"../drivers/net/wireguard/selftest/allowedips.c", i32 439, i32 25}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{!"branch_weights", i32 1, i32 2000}
!190 = !{i64 2157619549}
!191 = !{i32 0, i32 33}
!192 = !{i64 2157632726}
!193 = !{!"auto-init"}
