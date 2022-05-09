; ModuleID = '/llk/IR_all_yes/net/ipv6/mip6.c_pt.bc'
source_filename = "../net/ipv6/mip6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xfrm_type = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mip6_report_rate_limiter = type { %struct.spinlock, i64, i32, %struct.in6_addr, %struct.in6_addr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.ip6_mh = type { i8, i8, i8, i8, i16, [0 x i8] }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.67, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.68, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type { ptr }
%union.anon.67 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.68 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.ipv6_rt_hdr = type { i8, i8, i8, i8 }
%struct.rt2_hdr = type { %struct.ipv6_rt_hdr, i32, %struct.in6_addr }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.ipv6_destopt_hao = type <{ i8, i8, %struct.in6_addr }>
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%union.flowi_uli = type { i32 }
%struct.anon.40 = type { i8, i8 }
%struct.anon.39 = type { i16, i16 }

@mip6_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016mip6: %s: can't remove rawv6 mh filter\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mip6_fini\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/ipv6/mip6.c\00", [16 x i8] zeroinitializer }, align 32
@mip6_fini._entry_ptr = internal global ptr @mip6_fini._entry, section ".printk_index", align 4
@mip6_rthdr_type = internal constant { %struct.xfrm_type, [36 x i8] } { %struct.xfrm_type { ptr null, i8 43, i8 9, ptr @mip6_rthdr_init_state, ptr @mip6_rthdr_destroy, ptr @mip6_rthdr_input, ptr @mip6_rthdr_output, ptr null }, [36 x i8] zeroinitializer }, align 32
@mip6_destopt_type = internal constant { %struct.xfrm_type, [36 x i8] } { %struct.xfrm_type { ptr null, i8 60, i8 5, ptr @mip6_destopt_init_state, ptr @mip6_destopt_destroy, ptr @mip6_destopt_input, ptr @mip6_destopt_output, ptr @mip6_destopt_reject }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_mip6__509_407_mip6_init6 = internal global ptr @mip6_init, section ".initcall6.init", align 4
@__exitcall_mip6_fini = internal global ptr @mip6_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file510 = internal constant [24 x i8] c"mip6.file=net/ipv6/mip6\00", section ".modinfo", align 1
@__UNIQUE_ID_license511 = internal constant [17 x i8] c"mip6.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias512 = internal constant [27 x i8] c"mip6.alias=xfrm-type-10-60\00", section ".modinfo", align 1
@__UNIQUE_ID_alias513 = internal constant [27 x i8] c"mip6.alias=xfrm-type-10-43\00", section ".modinfo", align 1
@mip6_mh_filter.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mip6\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mip6_mh_filter\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mip6: MH message too short: %d vs >=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"mip6: mip6: MH message too short: %d vs >=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@mip6_mh_filter.descriptor.7 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mip6: MH invalid payload proto = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mip6: mip6: MH invalid payload proto = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@mip6_rthdr_init_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016mip6: %s: spi is not 0: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mip6_rthdr_init_state\00", [42 x i8] zeroinitializer }, align 32
@mip6_rthdr_init_state._entry_ptr = internal global ptr @mip6_rthdr_init_state._entry, section ".printk_index", align 4
@mip6_rthdr_init_state._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016mip6: %s: state's mode is not %u: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@mip6_rthdr_init_state._entry_ptr.14 = internal global ptr @mip6_rthdr_init_state._entry.12, section ".printk_index", align 4
@mip6_destopt_init_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.15, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mip6_destopt_init_state\00", [40 x i8] zeroinitializer }, align 32
@mip6_destopt_init_state._entry_ptr = internal global ptr @mip6_destopt_init_state._entry, section ".printk_index", align 4
@mip6_destopt_init_state._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.15, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mip6_destopt_init_state._entry_ptr.17 = internal global ptr @mip6_destopt_init_state._entry.16, section ".printk_index", align 4
@mip6_report_rl = internal global { %struct.mip6_report_rate_limiter, [32 x i8] } { %struct.mip6_report_rate_limiter { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i64 0, i32 0, %struct.in6_addr zeroinitializer, %struct.in6_addr zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mip6_report_rl.lock\00", [44 x i8] zeroinitializer }, align 32
@mip6_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016mip6: Mobile IPv6\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mip6_init\00", [22 x i8] zeroinitializer }, align 32
@mip6_init._entry_ptr = internal global ptr @mip6_init._entry, section ".printk_index", align 4
@mip6_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016mip6: %s: can't add xfrm type(destopt)\0A\00", [54 x i8] zeroinitializer }, align 32
@mip6_init._entry_ptr.23 = internal global ptr @mip6_init._entry.21, section ".printk_index", align 4
@mip6_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016mip6: %s: can't add xfrm type(rthdr)\0A\00", [56 x i8] zeroinitializer }, align 32
@mip6_init._entry_ptr.26 = internal global ptr @mip6_init._entry.24, section ".printk_index", align 4
@mip6_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016mip6: %s: can't add rawv6 mh filter\0A\00", [57 x i8] zeroinitializer }, align 32
@mip6_init._entry_ptr.29 = internal global ptr @mip6_init._entry.27, section ".printk_index", align 4
@switch.table.mip6_mh_filter = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 2, i32 2, i32 1, i32 1, i32 2], [36 x i8] zeroinitializer }, align 32
@switch.table.mip6_mh_filter.30 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 2, i32 2, i32 1, i32 1, i32 2], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 6, i64 17, i64 47, i64 58, i64 132, i64 136]
@__sancov_gen_cov_switch_values.31 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 6, i64 17, i64 47, i64 58, i64 132, i64 135, i64 136]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 402, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"mip6_rthdr_type\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 361, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"mip6_destopt_type\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 278, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 88, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 97, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 339, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 343, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 253, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 257, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [15 x i8] c"mip6_report_rl\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 115, i32 40 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 116, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 373, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 376, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 380, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private constant [19 x i8] c"../net/ipv6/mip6.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 384, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [28 x i8] c"switch.table.mip6_mh_filter\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [31 x i8] c"switch.table.mip6_mh_filter.30\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias512, ptr @__UNIQUE_ID_alias513, ptr @__UNIQUE_ID_file510, ptr @__UNIQUE_ID_license511, ptr @__exitcall_mip6_fini, ptr @__initcall__kmod_mip6__509_407_mip6_init6, ptr @mip6_destopt_init_state._entry, ptr @mip6_destopt_init_state._entry.16, ptr @mip6_destopt_init_state._entry_ptr, ptr @mip6_destopt_init_state._entry_ptr.17, ptr @mip6_fini, ptr @mip6_fini._entry, ptr @mip6_fini._entry_ptr, ptr @mip6_init._entry, ptr @mip6_init._entry.21, ptr @mip6_init._entry.24, ptr @mip6_init._entry.27, ptr @mip6_init._entry_ptr, ptr @mip6_init._entry_ptr.23, ptr @mip6_init._entry_ptr.26, ptr @mip6_init._entry_ptr.29, ptr @mip6_rthdr_init_state._entry, ptr @mip6_rthdr_init_state._entry.12, ptr @mip6_rthdr_init_state._entry_ptr, ptr @mip6_rthdr_init_state._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mip6_rthdr_type, ptr @mip6_destopt_type, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @mip6_report_rl, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @switch.table.mip6_mh_filter, ptr @switch.table.mip6_mh_filter.30], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip6_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip6_rthdr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip6_destopt_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip6_rthdr_init_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip6_rthdr_init_state._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip6_destopt_init_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip6_destopt_init_state._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip6_report_rl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip6_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip6_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip6_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip6_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mip6_mh_filter to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mip6_mh_filter.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mip6_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @rawv6_mh_filter_unregister(ptr noundef nonnull @mip6_mh_filter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @xfrm_unregister_type(ptr noundef nonnull @mip6_rthdr_type, i16 noundef zeroext 10) #6
  tail call void @xfrm_unregister_type(ptr noundef nonnull @mip6_destopt_type, i16 noundef zeroext 10) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rawv6_mh_filter_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mip6_mh_filter(ptr nocapture noundef readnone %sk, ptr noundef %skb) #2 align 64 {
entry:
  %_hdr = alloca %struct.ip6_mh, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %_hdr) #6
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = call ptr @memset(ptr %_hdr, i32 255, i32 6)
  %1 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %3 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %11 = add i32 %10, %sub.ptr.sub.i
  %sub.i1.i = sub i32 %8, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 5
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !77

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull %_hdr, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %entry
  %add.ptr.i.i74 = getelementptr i8, ptr %6, i32 %sub.ptr.sub.i
  %tobool.not = icmp eq ptr %add.ptr.i.i74, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i90 = phi ptr [ %add.ptr.i.i74, %skb_header_pointer.exit.if.end_crit_edge ], [ %_hdr, %lor.lhs.false.i.i.if.end_crit_edge ]
  %ip6mh_hdrlen = getelementptr inbounds %struct.ip6_mh, ptr %retval.0.i.i90, i32 0, i32 1
  %12 = ptrtoint ptr %ip6mh_hdrlen to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ip6mh_hdrlen, align 1
  %conv = zext i8 %13 to i32
  %add = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add, 8
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %15)
  %cmp = icmp ugt i32 %shl, %15
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ip6mh_type = getelementptr inbounds %struct.ip6_mh, ptr %retval.0.i.i90, i32 0, i32 2
  %16 = ptrtoint ptr %ip6mh_type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ip6mh_type, align 1
  %switch.tableidx = add i8 %17, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %18 = icmp ult i8 %switch.tableidx, 7
  br i1 %18, label %switch.lookup, label %if.end4.if.end27_crit_edge

if.end4.if.end27_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

switch.lookup:                                    ; preds = %if.end4
  %19 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.mip6_mh_filter, i32 0, i32 %19
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load, i32 %conv)
  %cmp9 = icmp ugt i32 %switch.load, %conv
  br i1 %cmp9, label %do.body, label %switch.lookup.if.end27_crit_edge

switch.lookup.if.end27_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.body:                                          ; preds = %switch.lookup
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip6_mh_filter.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip6_mh_filter, %land.lhs.true)) #6
          to label %do.end [label %land.lhs.true], !srcloc !78

land.lhs.true:                                    ; preds = %do.body
  %call16 = call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.do.end_crit_edge, label %if.then18

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then18:                                        ; preds = %land.lhs.true
  %21 = ptrtoint ptr %ip6mh_hdrlen to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ip6mh_hdrlen, align 1
  %conv20 = zext i8 %22 to i32
  %23 = ptrtoint ptr %ip6mh_type to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ip6mh_type, align 1
  %switch.tableidx97 = add i8 %24, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx97)
  %25 = icmp ult i8 %switch.tableidx97, 7
  br i1 %25, label %switch.lookup96, label %if.then18.mip6_mh_len.exit78_crit_edge

if.then18.mip6_mh_len.exit78_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %mip6_mh_len.exit78

switch.lookup96:                                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %26 = sext i8 %switch.tableidx97 to i32
  %switch.gep98 = getelementptr inbounds [7 x i32], ptr @switch.table.mip6_mh_filter.30, i32 0, i32 %26
  %27 = ptrtoint ptr %switch.gep98 to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load99 = load i32, ptr %switch.gep98, align 4
  br label %mip6_mh_len.exit78

mip6_mh_len.exit78:                               ; preds = %switch.lookup96, %if.then18.mip6_mh_len.exit78_crit_edge
  %len.0.i77 = phi i32 [ 0, %if.then18.mip6_mh_len.exit78_crit_edge ], [ %switch.load99, %switch.lookup96 ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mip6_mh_filter.descriptor, ptr noundef nonnull @.str.6, i32 noundef %conv20, i32 noundef %len.0.i77) #6
  br label %do.end

do.end:                                           ; preds = %mip6_mh_len.exit78, %land.lhs.true.do.end_crit_edge, %do.body
  %28 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %transport_header.i.i, align 2
  %conv.i = zext i16 %29 to i32
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_header.i, align 4
  %conv1.i = zext i16 %31 to i32
  %sub.i = add nuw nsw i32 %conv.i, 1
  %add26 = sub nsw i32 %sub.i, %conv1.i
  br label %cleanup.sink.split

if.end27:                                         ; preds = %switch.lookup.if.end27_crit_edge, %if.end4.if.end27_crit_edge
  %32 = ptrtoint ptr %retval.0.i.i90 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %retval.0.i.i90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %33)
  %cmp29.not = icmp eq i8 %33, 59
  br i1 %cmp29.not, label %if.end27.cleanup_crit_edge, label %do.body32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body32:                                        ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip6_mh_filter.descriptor.7, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip6_mh_filter, %land.lhs.true44)) #6
          to label %do.end52 [label %land.lhs.true44], !srcloc !78

land.lhs.true44:                                  ; preds = %do.body32
  %call45 = call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true44.do.end52_crit_edge, label %if.then47

land.lhs.true44.do.end52_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end52

if.then47:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %retval.0.i.i90 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %retval.0.i.i90, align 1
  %conv49 = zext i8 %35 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mip6_mh_filter.descriptor.7, ptr noundef nonnull @.str.9, i32 noundef %conv49) #6
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %land.lhs.true44.do.end52_crit_edge, %do.body32
  %36 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %transport_header.i.i, align 2
  %conv.i80 = zext i16 %37 to i32
  %network_header.i81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i81 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i81, align 4
  %conv1.i82 = zext i16 %39 to i32
  %sub.i83 = sub nsw i32 %conv.i80, %conv1.i82
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end52, %do.end
  %sub.i83.sink = phi i32 [ %sub.i83, %do.end52 ], [ %add26, %do.end ]
  %cb.i.i84 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %sub.i83.sink, ptr noundef null, ptr noundef %cb.i.i84) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %skb_header_pointer.exit.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ -1, %if.end.i.i.cleanup_crit_edge ], [ -1, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -1, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %_hdr) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_unregister_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mip6_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  %call1 = tail call i32 @xfrm_register_type(ptr noundef nonnull @mip6_destopt_type, i16 noundef zeroext 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20) #9
  br label %return

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @xfrm_register_type(ptr noundef nonnull @mip6_rthdr_type, i16 noundef zeroext 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.20) #9
  br label %mip6_rthdr_xfrm_fail

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @rawv6_mh_filter_register(ptr noundef nonnull @mip6_mh_filter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end18, label %if.end13.return_crit_edge

if.end13.return_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.20) #9
  tail call void @xfrm_unregister_type(ptr noundef nonnull @mip6_rthdr_type, i16 noundef zeroext 10) #6
  br label %mip6_rthdr_xfrm_fail

mip6_rthdr_xfrm_fail:                             ; preds = %do.end18, %do.end10
  tail call void @xfrm_unregister_type(ptr noundef nonnull @mip6_destopt_type, i16 noundef zeroext 10) #6
  br label %return

return:                                           ; preds = %mip6_rthdr_xfrm_fail, %if.end13.return_crit_edge, %do.end3
  %retval.0 = phi i32 [ 0, %if.end13.return_crit_edge ], [ -11, %mip6_rthdr_xfrm_fail ], [ -11, %do.end3 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mip6_rthdr_init_state(ptr nocapture noundef %x) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %1) #9
  br label %return

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.not = icmp eq i8 %3, 2
  br i1 %cmp.not, label %if.end12, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %3 to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef %conv) #9
  br label %return

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %header_len = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %4 = ptrtoint ptr %header_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 24, ptr %header_len, align 4
  br label %return

return:                                           ; preds = %if.end12, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end6 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mip6_rthdr_destroy(ptr nocapture noundef %x) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mip6_rthdr_input(ptr noundef %x, ptr nocapture noundef readonly %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %conv = zext i8 %7 to i32
  %lock = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %coaddr = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 26
  %8 = ptrtoint ptr %coaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %coaddr, align 8
  %10 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %daddr, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  %xor.i = xor i32 %13, %11
  %arrayidx4.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [4 x i32], ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %17, %15
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr %9, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %21, %19
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr %9, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %25, %23
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or.i9 = or i32 %17, %13
  %or5.i = or i32 %or.i9, %21
  %or8.i = or i32 %or5.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i11 = icmp eq i32 %or8.i, 0
  %spec.select = select i1 %cmp.i11, i32 %conv, i32 -2
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %conv, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mip6_rthdr_output(ptr noundef %x, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.neg) #6
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i, align 4
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %10 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %11 to i32
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i, align 1
  store i8 43, ptr %add.ptr.i, align 1
  %14 = load ptr, ptr %head.i.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %15 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %transport_header.i, align 2
  %conv.i60 = zext i16 %16 to i32
  %add.ptr.i61 = getelementptr i8, ptr %14, i32 %conv.i60
  %17 = ptrtoint ptr %add.ptr.i61 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %13, ptr %add.ptr.i61, align 4
  %header_len = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %18 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %header_len, align 4
  %20 = lshr i32 %19, 3
  %21 = trunc i32 %20 to i8
  %conv = add i8 %21, -1
  %hdrlen = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %add.ptr.i61, i32 0, i32 1
  %22 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %hdrlen, align 1
  %type = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %add.ptr.i61, i32 0, i32 2
  %23 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %type, align 2
  %segments_left = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %add.ptr.i61, i32 0, i32 3
  %24 = ptrtoint ptr %segments_left to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %segments_left, align 1
  %reserved = getelementptr inbounds %struct.rt2_hdr, ptr %add.ptr.i61, i32 0, i32 1
  %25 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %reserved, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv)
  %cmp.not = icmp eq i8 %conv, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !77

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 326, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %conv.i.i53 = zext i16 %9 to i32
  %add.ptr.i.i54 = getelementptr i8, ptr %7, i32 %conv.i.i53
  %addr = getelementptr inbounds %struct.rt2_hdr, ptr %add.ptr.i61, i32 0, i32 2
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i54, i32 0, i32 6
  %26 = call ptr @memcpy(ptr %addr, ptr %daddr, i32 16)
  %lock = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #6
  %coaddr = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 26
  %27 = ptrtoint ptr %coaddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %coaddr, align 8
  %29 = call ptr @memcpy(ptr %daddr, ptr %28, i32 16)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mip6_destopt_init_state(ptr nocapture noundef %x) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.15, i32 noundef %1) #9
  br label %return

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.not = icmp eq i8 %3, 2
  br i1 %cmp.not, label %if.end12, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %3 to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, i32 noundef 2, i32 noundef %conv) #9
  br label %return

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %header_len = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %4 = ptrtoint ptr %header_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 24, ptr %header_len, align 4
  br label %return

return:                                           ; preds = %if.end12, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end6 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mip6_destopt_destroy(ptr nocapture noundef %x) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mip6_destopt_input(ptr noundef %x, ptr nocapture noundef readonly %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %conv = zext i8 %7 to i32
  %lock = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %coaddr = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 26
  %8 = ptrtoint ptr %coaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %coaddr, align 8
  %10 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %saddr, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  %xor.i = xor i32 %13, %11
  %arrayidx4.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [4 x i32], ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %17, %15
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr %9, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %21, %19
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr %9, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %25, %23
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or.i9 = or i32 %17, %13
  %or5.i = or i32 %or.i9, %21
  %or8.i = or i32 %or5.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i11 = icmp eq i32 %or8.i, 0
  %spec.select = select i1 %cmp.i11, i32 %conv, i32 -2
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %conv, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mip6_destopt_output(ptr noundef %x, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.neg) #6
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i56 = zext i16 %9 to i32
  %add.ptr.i.i57 = getelementptr i8, ptr %7, i32 %conv.i.i56
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %10 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %11 to i32
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i, align 1
  store i8 60, ptr %add.ptr.i, align 1
  %14 = load ptr, ptr %head.i.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %15 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %transport_header.i, align 2
  %conv.i63 = zext i16 %16 to i32
  %add.ptr.i64 = getelementptr i8, ptr %14, i32 %conv.i63
  %17 = ptrtoint ptr %add.ptr.i64 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %13, ptr %add.ptr.i64, align 1
  %add.ptr = getelementptr %struct.ipv6_opt_hdr, ptr %add.ptr.i64, i32 1
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %entry.mip6_padn.exit_crit_edge, label %if.then6.i

entry.mip6_padn.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mip6_padn.exit

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %add.ptr, align 1
  %arrayidx10.i = getelementptr i8, ptr %add.ptr, i32 1
  %19 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %arrayidx10.i, align 1
  %add.ptr.i65 = getelementptr i8, ptr %add.ptr, i32 2
  %20 = ptrtoint ptr %add.ptr.i65 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 0, ptr %add.ptr.i65, align 1
  %add.ptr21.i = getelementptr i8, ptr %add.ptr, i32 4
  br label %mip6_padn.exit

mip6_padn.exit:                                   ; preds = %if.then6.i, %entry.mip6_padn.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr21.i, %if.then6.i ], [ null, %entry.mip6_padn.exit_crit_edge ]
  %21 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -55, ptr %retval.0.i, align 1
  %length = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %retval.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 16, ptr %length, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.0.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i64 to i32
  %sub.ptr.sub = sub i32 18, %sub.ptr.rhs.cast
  %add = add i32 %sub.ptr.sub, %sub.ptr.lhs.cast
  %addr = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %retval.0.i, i32 0, i32 2
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i57, i32 0, i32 5
  %23 = call ptr @memcpy(ptr %addr, ptr %saddr, i32 16)
  %lock = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #6
  %coaddr = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 26
  %24 = ptrtoint ptr %coaddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %coaddr, align 8
  %26 = call ptr @memcpy(ptr %saddr, ptr %25, i32 16)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  %header_len = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %27 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %header_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %28)
  %cmp.not = icmp eq i32 %add, %28
  br i1 %cmp.not, label %mip6_padn.exit.if.end_crit_edge, label %do.end21, !prof !77

mip6_padn.exit.if.end_crit_edge:                  ; preds = %mip6_padn.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end21:                                         ; preds = %mip6_padn.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end21, %mip6_padn.exit.if.end_crit_edge
  %29 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %header_len, align 4
  %31 = lshr i32 %30, 3
  %32 = trunc i32 %31 to i8
  %conv36 = add i8 %32, -1
  %hdrlen = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %add.ptr.i64, i32 0, i32 1
  %33 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv36, ptr %hdrlen, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mip6_destopt_reject(ptr nocapture noundef readonly %x, ptr noundef %skb, ptr nocapture noundef readonly %fl) #2 align 64 {
entry:
  %sel = alloca %struct.xfrm_selector, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %x, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sel) #6
  %2 = call ptr @memset(ptr %sel, i32 255, i32 56)
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 5
  %3 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flowic_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -121, i8 %4)
  %cmp = icmp eq i8 %4, -121
  br i1 %cmp, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 4
  %5 = ptrtoint ptr %uli to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %uli, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %cmp3 = icmp ult i8 %6, 8
  br i1 %cmp3, label %land.rhs.out_crit_edge, label %land.rhs.if.end_crit_edge, !prof !79

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %dsthao = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %7 = ptrtoint ptr %dsthao to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dsthao, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool6.not = icmp eq i16 %8, 0
  br i1 %tobool6.not, label %if.end.if.end28.thread_crit_edge, label %if.then13, !prof !79

if.end.if.end28.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.thread

if.then13:                                        ; preds = %if.end
  %conv15 = zext i16 %8 to i32
  %call16 = tail call i32 @ipv6_find_tlv(ptr noundef %skb, i32 noundef %conv15, i32 noundef 201) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16)
  %cmp17 = icmp sgt i32 %call16, -1
  br i1 %cmp17, label %if.end28, label %if.then13.if.end28.thread_crit_edge, !prof !77

if.then13.if.end28.thread_crit_edge:              ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.thread

if.end28.thread:                                  ; preds = %if.then13.if.end28.thread_crit_edge, %if.end.if.end28.thread_crit_edge
  %9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  %head.i.i104 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i104 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i104, align 8
  %network_header.i.i105 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i105 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i105, align 4
  %conv.i.i106 = zext i16 %15 to i32
  %add.ptr.i.i107 = getelementptr i8, ptr %13, i32 %conv.i.i106
  %daddr108 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i107, i32 0, i32 6
  br label %cond.false

if.end28:                                         ; preds = %if.then13
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %19 to i32
  %add.ptr.i = getelementptr i8, ptr %17, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %call16
  %20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i, i32 0, i32 6
  %tobool31.not = icmp eq ptr %add.ptr, null
  br i1 %tobool31.not, label %if.end28.cond.false_crit_edge, label %cond.true

if.end28.cond.false_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %addr = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %add.ptr, i32 0, i32 2
  br label %cond.end

cond.false:                                       ; preds = %if.end28.cond.false_crit_edge, %if.end28.thread
  %daddr118 = phi ptr [ %daddr108, %if.end28.thread ], [ %daddr, %if.end28.cond.false_crit_edge ]
  %add.ptr.i.i116 = phi ptr [ %add.ptr.i.i107, %if.end28.thread ], [ %add.ptr.i, %if.end28.cond.false_crit_edge ]
  %network_header.i.i115 = phi ptr [ %network_header.i.i105, %if.end28.thread ], [ %network_header.i, %if.end28.cond.false_crit_edge ]
  %head.i.i113 = phi ptr [ %head.i.i104, %if.end28.thread ], [ %head.i, %if.end28.cond.false_crit_edge ]
  %23 = phi i64 [ %11, %if.end28.thread ], [ %22, %if.end28.cond.false_crit_edge ]
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i116, i32 0, i32 5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %tobool31.not119 = phi i1 [ false, %cond.true ], [ true, %cond.false ]
  %daddr117 = phi ptr [ %daddr, %cond.true ], [ %daddr118, %cond.false ]
  %network_header.i.i114 = phi ptr [ %network_header.i, %cond.true ], [ %network_header.i.i115, %cond.false ]
  %head.i.i112 = phi ptr [ %head.i, %cond.true ], [ %head.i.i113, %cond.false ]
  %24 = phi i64 [ %22, %cond.true ], [ %23, %cond.false ]
  %hao.0110 = phi ptr [ %add.ptr, %cond.true ], [ null, %cond.false ]
  %cond = phi ptr [ %addr, %cond.true ], [ %saddr, %cond.false ]
  %25 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cb, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @mip6_report_rl) #6
  %27 = load i64, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 1), align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %24)
  %cmp.not.i = icmp eq i64 %27, %24
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %cond.end.if.end36_crit_edge

cond.end.if.end36_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

lor.lhs.false.i:                                  ; preds = %cond.end
  %28 = load i32, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 2), align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp1.not.i = icmp eq i32 %28, %26
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.if.end36_crit_edge

lor.lhs.false.i.if.end36_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %29 = load i32, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 3), align 4
  %30 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cond, align 4
  %xor.i.i = xor i32 %31, %29
  %32 = load i32, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 3, i32 0, i32 0, i32 1), align 8
  %arrayidx6.i.i = getelementptr [4 x i32], ptr %cond, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %34, %32
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %35 = load i32, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 3, i32 0, i32 0, i32 2), align 4
  %arrayidx11.i.i = getelementptr [4 x i32], ptr %cond, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %37, %35
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %38 = load i32, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 3, i32 0, i32 0, i32 3), align 8
  %arrayidx17.i.i = getelementptr [4 x i32], ptr %cond, i32 0, i32 3
  %39 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %40, %38
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %lor.lhs.false3.i, label %lor.lhs.false2.i.if.end36_crit_edge

lor.lhs.false2.i.if.end36_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false2.i
  %41 = load i32, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 4), align 4
  %42 = ptrtoint ptr %daddr117 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %daddr117, align 4
  %xor.i9.i = xor i32 %43, %41
  %44 = load i32, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 4, i32 0, i32 0, i32 1), align 8
  %arrayidx6.i10.i = getelementptr [4 x i32], ptr %daddr117, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx6.i10.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx6.i10.i, align 4
  %xor7.i11.i = xor i32 %46, %44
  %or.i12.i = or i32 %xor7.i11.i, %xor.i9.i
  %47 = load i32, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 4, i32 0, i32 0, i32 2), align 4
  %arrayidx11.i13.i = getelementptr [4 x i32], ptr %daddr117, i32 0, i32 2
  %48 = ptrtoint ptr %arrayidx11.i13.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx11.i13.i, align 4
  %xor12.i14.i = xor i32 %49, %47
  %or13.i15.i = or i32 %or.i12.i, %xor12.i14.i
  %50 = load i32, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 4, i32 0, i32 0, i32 3), align 8
  %arrayidx17.i16.i = getelementptr [4 x i32], ptr %daddr117, i32 0, i32 3
  %51 = ptrtoint ptr %arrayidx17.i16.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx17.i16.i, align 4
  %xor18.i17.i = xor i32 %52, %50
  %or19.i18.i = or i32 %or13.i15.i, %xor18.i17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i18.i)
  %cmp.i19.i = icmp eq i32 %or19.i18.i, 0
  br i1 %cmp.i19.i, label %mip6_report_rl_allow.exit.thread, label %lor.lhs.false3.i.if.end36_crit_edge

lor.lhs.false3.i.if.end36_crit_edge:              ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

mip6_report_rl_allow.exit.thread:                 ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @mip6_report_rl) #6
  br label %out

if.end36:                                         ; preds = %lor.lhs.false3.i.if.end36_crit_edge, %lor.lhs.false2.i.if.end36_crit_edge, %lor.lhs.false.i.if.end36_crit_edge, %cond.end.if.end36_crit_edge
  store i64 %24, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 1), align 8
  store i32 %26, ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 2), align 8
  %53 = call ptr @memcpy(ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 3), ptr %cond, i32 16)
  %54 = call ptr @memcpy(ptr getelementptr inbounds (%struct.mip6_report_rate_limiter, ptr @mip6_report_rl, i32 0, i32 4), ptr %daddr117, i32 16)
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @mip6_report_rl) #6
  %55 = call ptr @memset(ptr %sel, i32 0, i32 56)
  %56 = ptrtoint ptr %head.i.i112 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i.i112, align 8
  %58 = ptrtoint ptr %network_header.i.i114 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %network_header.i.i114, align 4
  %conv.i.i91 = zext i16 %59 to i32
  %add.ptr.i.i92 = getelementptr i8, ptr %57, i32 %conv.i.i91
  %daddr39 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i92, i32 0, i32 6
  %60 = call ptr @memcpy(ptr %sel, ptr %daddr39, i32 16)
  %prefixlen_d = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 7
  %61 = ptrtoint ptr %prefixlen_d to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -128, ptr %prefixlen_d, align 2
  %saddr40 = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 1
  %saddr42 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i92, i32 0, i32 5
  %62 = call ptr @memcpy(ptr %saddr40, ptr %saddr42, i32 16)
  %prefixlen_s = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 8
  %63 = ptrtoint ptr %prefixlen_s to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -128, ptr %prefixlen_s, align 1
  %family = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 6
  %64 = ptrtoint ptr %family to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 10, ptr %family, align 4
  %65 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %flowic_proto, align 2
  %proto = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 9
  %67 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %proto, align 4
  %uli45 = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 4
  %68 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values)
  switch i8 %66, label %xfrm_flowi_dport.exit.thread [
    i8 6, label %if.end36.sw.bb.i_crit_edge
    i8 17, label %if.end36.sw.bb.i_crit_edge129
    i8 -120, label %if.end36.sw.bb.i_crit_edge130
    i8 -124, label %if.end36.sw.bb.i_crit_edge131
    i8 1, label %if.end36.sw.bb1.i_crit_edge
    i8 58, label %if.end36.sw.bb1.i_crit_edge132
    i8 47, label %sw.bb3.i
  ]

if.end36.sw.bb1.i_crit_edge132:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end36.sw.bb1.i_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end36.sw.bb.i_crit_edge131:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end36.sw.bb.i_crit_edge130:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end36.sw.bb.i_crit_edge129:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end36.sw.bb.i_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

xfrm_flowi_dport.exit.thread:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %dport124 = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 2
  %69 = ptrtoint ptr %dport124 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %dport124, align 4
  br label %if.end50

sw.bb.i:                                          ; preds = %if.end36.sw.bb.i_crit_edge, %if.end36.sw.bb.i_crit_edge129, %if.end36.sw.bb.i_crit_edge130, %if.end36.sw.bb.i_crit_edge131
  %70 = ptrtoint ptr %uli45 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %uli45, align 4
  br label %xfrm_flowi_dport.exit

sw.bb1.i:                                         ; preds = %if.end36.sw.bb1.i_crit_edge, %if.end36.sw.bb1.i_crit_edge132
  %code.i = getelementptr inbounds %struct.anon.40, ptr %uli45, i32 0, i32 1
  %72 = ptrtoint ptr %code.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %code.i, align 1
  %conv2.i = zext i8 %73 to i16
  br label %xfrm_flowi_dport.exit

sw.bb3.i:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %uli45 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %uli45, align 4
  %conv4.i = trunc i32 %75 to i16
  br label %xfrm_flowi_dport.exit

xfrm_flowi_dport.exit:                            ; preds = %sw.bb3.i, %sw.bb1.i, %sw.bb.i
  %port.0.i = phi i16 [ %conv4.i, %sw.bb3.i ], [ %conv2.i, %sw.bb1.i ], [ %71, %sw.bb.i ]
  %dport = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 2
  %76 = ptrtoint ptr %dport to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %port.0.i, ptr %dport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %port.0.i)
  %tobool48.not = icmp eq i16 %port.0.i, 0
  br i1 %tobool48.not, label %xfrm_flowi_dport.exit.if.end50_crit_edge, label %if.then49

xfrm_flowi_dport.exit.if.end50_crit_edge:         ; preds = %xfrm_flowi_dport.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then49:                                        ; preds = %xfrm_flowi_dport.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dport_mask = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 3
  %77 = ptrtoint ptr %dport_mask to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -1, ptr %dport_mask, align 2
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %xfrm_flowi_dport.exit.if.end50_crit_edge, %xfrm_flowi_dport.exit.thread
  %78 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %66, label %xfrm_flowi_sport.exit.thread [
    i8 6, label %if.end50.sw.bb.i98_crit_edge
    i8 17, label %if.end50.sw.bb.i98_crit_edge133
    i8 -120, label %if.end50.sw.bb.i98_crit_edge134
    i8 -124, label %if.end50.sw.bb.i98_crit_edge135
    i8 1, label %if.end50.sw.bb1.i100_crit_edge
    i8 58, label %if.end50.sw.bb1.i100_crit_edge136
    i8 -121, label %sw.bb3.i101
    i8 47, label %sw.bb6.i
  ]

if.end50.sw.bb1.i100_crit_edge136:                ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i100

if.end50.sw.bb1.i100_crit_edge:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i100

if.end50.sw.bb.i98_crit_edge135:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i98

if.end50.sw.bb.i98_crit_edge134:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i98

if.end50.sw.bb.i98_crit_edge133:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i98

if.end50.sw.bb.i98_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i98

xfrm_flowi_sport.exit.thread:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %sport127 = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 4
  %79 = ptrtoint ptr %sport127 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %sport127, align 4
  br label %if.end56

sw.bb.i98:                                        ; preds = %if.end50.sw.bb.i98_crit_edge, %if.end50.sw.bb.i98_crit_edge133, %if.end50.sw.bb.i98_crit_edge134, %if.end50.sw.bb.i98_crit_edge135
  %sport.i = getelementptr inbounds %struct.anon.39, ptr %uli45, i32 0, i32 1
  %80 = ptrtoint ptr %sport.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %sport.i, align 2
  br label %xfrm_flowi_sport.exit

sw.bb1.i100:                                      ; preds = %if.end50.sw.bb1.i100_crit_edge, %if.end50.sw.bb1.i100_crit_edge136
  %82 = ptrtoint ptr %uli45 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %uli45, align 4
  %conv2.i99 = zext i8 %83 to i16
  br label %xfrm_flowi_sport.exit

sw.bb3.i101:                                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %uli45 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %uli45, align 4
  %conv5.i = zext i8 %85 to i16
  br label %xfrm_flowi_sport.exit

sw.bb6.i:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %uli45 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %uli45, align 4
  %shr.i = lshr i32 %87, 16
  %conv7.i = trunc i32 %shr.i to i16
  br label %xfrm_flowi_sport.exit

xfrm_flowi_sport.exit:                            ; preds = %sw.bb6.i, %sw.bb3.i101, %sw.bb1.i100, %sw.bb.i98
  %port.0.i102 = phi i16 [ %conv7.i, %sw.bb6.i ], [ %conv5.i, %sw.bb3.i101 ], [ %conv2.i99, %sw.bb1.i100 ], [ %81, %sw.bb.i98 ]
  %sport = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 4
  %88 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %port.0.i102, ptr %sport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %port.0.i102)
  %tobool54.not = icmp eq i16 %port.0.i102, 0
  br i1 %tobool54.not, label %xfrm_flowi_sport.exit.if.end56_crit_edge, label %if.then55

xfrm_flowi_sport.exit.if.end56_crit_edge:         ; preds = %xfrm_flowi_sport.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then55:                                        ; preds = %xfrm_flowi_sport.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sport_mask = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 5
  %89 = ptrtoint ptr %sport_mask to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -1, ptr %sport_mask, align 2
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %xfrm_flowi_sport.exit.if.end56_crit_edge, %xfrm_flowi_sport.exit.thread
  %90 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %fl, align 8
  %ifindex = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 10
  %92 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %ifindex, align 4
  %addr60 = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %hao.0110, i32 0, i32 2
  %spec.select = select i1 %tobool31.not119, ptr null, ptr %addr60
  %call64 = call i32 @km_report(ptr noundef %1, i8 noundef zeroext 60, ptr noundef nonnull %sel, ptr noundef %spec.select) #6
  br label %out

out:                                              ; preds = %if.end56, %mip6_report_rl_allow.exit.thread, %land.rhs.out_crit_edge
  %err.0 = phi i32 [ 0, %land.rhs.out_crit_edge ], [ %call64, %if.end56 ], [ 0, %mip6_report_rl_allow.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sel) #6
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_tlv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @km_report(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_register_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rawv6_mh_filter_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv6/mip6.c", i32 402, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mip6_fini._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mip6_fini._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_mip6__509_407_mip6_init6, !7, !"__initcall__kmod_mip6__509_407_mip6_init6", i1 false, i1 false}
!7 = !{!"../net/ipv6/mip6.c", i32 407, i32 1}
!8 = !{ptr @__exitcall_mip6_fini, !9, !"__exitcall_mip6_fini", i1 false, i1 false}
!9 = !{!"../net/ipv6/mip6.c", i32 408, i32 1}
!10 = !{ptr @__UNIQUE_ID_file510, !11, !"__UNIQUE_ID_file510", i1 false, i1 false}
!11 = !{!"../net/ipv6/mip6.c", i32 410, i32 1}
!12 = !{ptr @__UNIQUE_ID_license511, !11, !"__UNIQUE_ID_license511", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias512, !14, !"__UNIQUE_ID_alias512", i1 false, i1 false}
!14 = !{!"../net/ipv6/mip6.c", i32 411, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias513, !16, !"__UNIQUE_ID_alias513", i1 false, i1 false}
!16 = !{!"../net/ipv6/mip6.c", i32 412, i32 1}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/ipv6/mip6.c", i32 88, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mip6_mh_filter.descriptor, !18, !"descriptor", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/ipv6/mip6.c", i32 97, i32 3}
!25 = !{ptr @mip6_mh_filter.descriptor.7, !24, !"descriptor", i1 false, i1 false}
!26 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mip6_rthdr_type, !28, !"mip6_rthdr_type", i1 false, i1 false}
!28 = !{!"../net/ipv6/mip6.c", i32 361, i32 31}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/ipv6/mip6.c", i32 339, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mip6_rthdr_init_state._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @mip6_rthdr_init_state._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/ipv6/mip6.c", i32 343, i32 3}
!36 = !{ptr @mip6_rthdr_init_state._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mip6_rthdr_init_state._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @mip6_destopt_type, !39, !"mip6_destopt_type", i1 false, i1 false}
!39 = !{!"../net/ipv6/mip6.c", i32 278, i32 31}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/ipv6/mip6.c", i32 253, i32 3}
!42 = !{ptr @mip6_destopt_init_state._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mip6_destopt_init_state._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @mip6_destopt_init_state._entry.16, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../net/ipv6/mip6.c", i32 257, i32 3}
!46 = !{ptr @mip6_destopt_init_state._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/ipv6/mip6.c", i32 116, i32 10}
!49 = !{ptr @mip6_report_rl, !50, !"mip6_report_rl", i1 false, i1 false}
!50 = !{!"../net/ipv6/mip6.c", i32 115, i32 40}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/ipv6/mip6.c", i32 373, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mip6_init._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @mip6_init._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/ipv6/mip6.c", i32 376, i32 3}
!58 = !{ptr @mip6_init._entry.21, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mip6_init._entry_ptr.23, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/ipv6/mip6.c", i32 380, i32 3}
!62 = !{ptr @mip6_init._entry.24, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mip6_init._entry_ptr.26, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/ipv6/mip6.c", i32 384, i32 3}
!66 = !{ptr @mip6_init._entry.27, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mip6_init._entry_ptr.29, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2148961779, i64 2148961784, i64 2148961797, i64 2148961841, i64 2148961875, i64 2148961896}
!79 = !{!"branch_weights", i32 1, i32 2000}
