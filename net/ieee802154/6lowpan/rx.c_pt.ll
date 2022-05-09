; ModuleID = '/llk/IR_all_yes/net/ieee802154/6lowpan/rx.c_pt.bc'
source_filename = "../net/ieee802154/6lowpan/rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee802154_hdr = type { %struct.ieee802154_hdr_fc, i8, %struct.ieee802154_addr, %struct.ieee802154_addr, %struct.ieee802154_sechdr }
%struct.ieee802154_hdr_fc = type { i16 }
%struct.ieee802154_addr = type { i8, i16, %union.anon.123 }
%union.anon.123 = type { i64 }
%struct.ieee802154_sechdr = type { i8, i8, i32, %union.anon.146 }
%union.anon.146 = type { i64 }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wpan_dev = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, i32, i16, i16, i64, %struct.atomic_t, %struct.atomic_t, i8, i8, i8, i8, i8, i8, i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@lowpan_packet_type = internal global { %struct.packet_type, [56 x i8] } { %struct.packet_type { i16 246, i8 0, ptr null, ptr null, ptr @lowpan_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/mac802154.h\00", [40 x i8] zeroinitializer }, align 32
@ieee802154_skb_dst_pan.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid addr mode detected\00", [37 x i8] zeroinitializer }, align 32
@ieee802154_skb_src_pan.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee802154_skb_src_pan.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@lowpan_rx_h_esc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\014%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lowpan_rx_h_esc\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/ieee802154/6lowpan/rx.c\00", [36 x i8] zeroinitializer }, align 32
@lowpan_rx_h_esc._entry_ptr = internal global ptr @lowpan_rx_h_esc._entry, section ".printk_index", align 4
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"6LoWPAN ESC not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@lowpan_rx_h_hc1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.8, ptr @.str.6, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lowpan_rx_h_hc1\00", [16 x i8] zeroinitializer }, align 32
@lowpan_rx_h_hc1._entry_ptr = internal global ptr @lowpan_rx_h_hc1._entry, section ".printk_index", align 4
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"6LoWPAN HC1 not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@lowpan_rx_h_dff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.10, ptr @.str.6, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lowpan_rx_h_dff\00", [16 x i8] zeroinitializer }, align 32
@lowpan_rx_h_dff._entry_ptr = internal global ptr @lowpan_rx_h_dff._entry, section ".printk_index", align 4
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"6LoWPAN DFF not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@lowpan_rx_h_bc0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.12, ptr @.str.6, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lowpan_rx_h_bc0\00", [16 x i8] zeroinitializer }, align 32
@lowpan_rx_h_bc0._entry_ptr = internal global ptr @lowpan_rx_h_bc0._entry, section ".printk_index", align 4
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"6LoWPAN BC0 not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@lowpan_rx_h_mesh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.14, ptr @.str.6, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lowpan_rx_h_mesh\00", [47 x i8] zeroinitializer }, align 32
@lowpan_rx_h_mesh._entry_ptr = internal global ptr @lowpan_rx_h_mesh._entry, section ".printk_index", align 4
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"6LoWPAN MESH not supported\0A\00", [36 x i8] zeroinitializer }, align 32
@lowpan_rx_handlers_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s: received unknown dispatch\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lowpan_rx_handlers_result\00", [38 x i8] zeroinitializer }, align 32
@lowpan_rx_handlers_result._entry_ptr = internal global ptr @lowpan_rx_handlers_result._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 4, i64 0, i64 8, i64 12]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 128, i64 192]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 4, i64 0, i64 8, i64 12]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 4, i64 0, i64 8, i64 12]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 224]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"lowpan_packet_type\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 310, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 244, i32 6 }
@___asan_gen_.30 = private unnamed_addr constant [27 x i8] c"../include/net/mac802154.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 274, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 132, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 148, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 164, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 180, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 196, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [31 x i8] c"../net/ieee802154/6lowpan/rx.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 35, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @lowpan_rx_h_bc0._entry, ptr @lowpan_rx_h_bc0._entry_ptr, ptr @lowpan_rx_h_dff._entry, ptr @lowpan_rx_h_dff._entry_ptr, ptr @lowpan_rx_h_esc._entry, ptr @lowpan_rx_h_esc._entry_ptr, ptr @lowpan_rx_h_hc1._entry, ptr @lowpan_rx_h_hc1._entry_ptr, ptr @lowpan_rx_h_mesh._entry, ptr @lowpan_rx_h_mesh._entry_ptr, ptr @lowpan_rx_handlers_result._entry, ptr @lowpan_rx_handlers_result._entry_ptr, ptr @lowpan_packet_type, ptr @.str, ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_packet_type to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_rx_h_esc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_rx_h_hc1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_rx_h_dff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_rx_h_bc0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_rx_h_mesh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_rx_handlers_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lowpan_iphc_decompress(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %hdr = alloca %struct.ieee802154_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %hdr) #6
  %0 = call ptr @memset(ptr %hdr, i32 255, i32 56)
  %call = call i32 @ieee802154_hdr_peek_addrs(ptr noundef %skb, ptr noundef nonnull %hdr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dest = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3
  %source = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2
  %call1 = call i32 @lowpan_header_decompress(ptr noundef %skb, ptr noundef %3, ptr noundef %dest, ptr noundef %source) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %hdr) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_hdr_peek_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lowpan_header_decompress(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lowpan_rx_h_ipv6(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %5)
  %cmp.i = icmp eq i8 %5, 65
  br i1 %cmp.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 3, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lowpan_rx_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dev_add_pack(ptr noundef nonnull @lowpan_packet_type) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lowpan_rx_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dev_remove_pack(ptr noundef nonnull @lowpan_packet_type) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lowpan_rcv(ptr noundef %skb, ptr nocapture noundef readonly %wdev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_wdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.net_device, ptr %wdev, i32 0, i32 32
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 804, i16 %1)
  %cmp.not = icmp eq i16 %1, 804
  br i1 %cmp.not, label %lor.lhs.false, label %entry.drop_crit_edge

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

lor.lhs.false:                                    ; preds = %entry
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %bf.lshr.mask)
  %cmp3 = icmp eq i16 %bf.lshr.mask, 24576
  br i1 %cmp3, label %lor.lhs.false.drop_crit_edge, label %lor.lhs.false5

lor.lhs.false.drop_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %3 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mac_header.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %cmp.i.not.i.i = icmp eq i16 %4, -1
  br i1 %cmp.i.not.i.i, label %lor.lhs.false5.ieee802154_get_fc_from_skb.exit.thread.i_crit_edge, label %lor.rhs.i.i

lor.lhs.false5.ieee802154_get_fc_from_skb.exit.thread.i_crit_edge: ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee802154_get_fc_from_skb.exit.thread.i

lor.rhs.i.i:                                      ; preds = %lor.lhs.false5
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i.i, align 8
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i.i, align 8
  %conv.i.i.i = zext i16 %4 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 %conv.i.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i, 2
  br i1 %cmp.i.i, label %lor.rhs.i.i.ieee802154_get_fc_from_skb.exit.thread.i_crit_edge, label %ieee802154_get_fc_from_skb.exit.i, !prof !54

lor.rhs.i.i.ieee802154_get_fc_from_skb.exit.thread.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee802154_get_fc_from_skb.exit.thread.i

ieee802154_get_fc_from_skb.exit.thread.i:         ; preds = %lor.rhs.i.i.ieee802154_get_fc_from_skb.exit.thread.i_crit_edge, %lor.lhs.false5.ieee802154_get_fc_from_skb.exit.thread.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef null) #6
  br label %drop

ieee802154_get_fc_from_skb.exit.i:                ; preds = %lor.rhs.i.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %fc.0.copyload.i.i = load i16, ptr %add.ptr.i.i.i, align 1
  %10 = and i16 %fc.0.copyload.i.i, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %10)
  %cmp.i21.not.i = icmp eq i16 %10, 256
  br i1 %cmp.i21.not.i, label %lor.lhs.false.i, label %ieee802154_get_fc_from_skb.exit.i.drop_crit_edge

ieee802154_get_fc_from_skb.exit.i.drop_crit_edge: ; preds = %ieee802154_get_fc_from_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

lor.lhs.false.i:                                  ; preds = %ieee802154_get_fc_from_skb.exit.i
  %11 = trunc i16 %fc.0.copyload.i.i to i4
  %trunc.i.i.i = and i4 %11, -4
  %12 = zext i4 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc.i.i.i, label %land.end.i.i.i [
    i4 0, label %lor.lhs.false.i.ieee802154_skb_dst_pan.exit.i.i_crit_edge
    i4 -8, label %lor.lhs.false.i.sw.bb1.i.i.i_crit_edge
    i4 -4, label %lor.lhs.false.i.sw.bb1.i.i.i_crit_edge53
  ]

lor.lhs.false.i.sw.bb1.i.i.i_crit_edge53:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i.i.i

lor.lhs.false.i.sw.bb1.i.i.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i.i.i

lor.lhs.false.i.ieee802154_skb_dst_pan.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee802154_skb_dst_pan.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %lor.lhs.false.i.sw.bb1.i.i.i_crit_edge, %lor.lhs.false.i.sw.bb1.i.i.i_crit_edge53
  %add.ptr3.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 3
  br label %ieee802154_skb_dst_pan.exit.i.i

land.end.i.i.i:                                   ; preds = %lor.lhs.false.i
  %.b39.i.i.i = load i1, ptr @ieee802154_skb_dst_pan.__already_done, align 1
  br i1 %.b39.i.i.i, label %land.end.i.i.i.ieee802154_skb_dst_pan.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !55

land.end.i.i.i.ieee802154_skb_dst_pan.exit.i.i_crit_edge: ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee802154_skb_dst_pan.exit.i.i

if.then.i.i.i:                                    ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ieee802154_skb_dst_pan.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 274, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %ieee802154_skb_dst_pan.exit.i.i

ieee802154_skb_dst_pan.exit.i.i:                  ; preds = %if.then.i.i.i, %land.end.i.i.i.ieee802154_skb_dst_pan.exit.i.i_crit_edge, %sw.bb1.i.i.i, %lor.lhs.false.i.ieee802154_skb_dst_pan.exit.i.i_crit_edge
  %dst_pan.0.i.i.i = phi ptr [ %add.ptr3.i.i.i, %sw.bb1.i.i.i ], [ null, %lor.lhs.false.i.ieee802154_skb_dst_pan.exit.i.i_crit_edge ], [ null, %if.then.i.i.i ], [ null, %land.end.i.i.i.ieee802154_skb_dst_pan.exit.i.i_crit_edge ]
  %13 = trunc i16 %fc.0.copyload.i.i to i8
  %trunc.i10.i.i = and i8 %13, -64
  %14 = zext i8 %trunc.i10.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %trunc.i10.i.i, label %land.end64.i.i.i [
    i8 0, label %ieee802154_skb_dst_pan.exit.i.i.drop_crit_edge
    i8 -128, label %ieee802154_skb_dst_pan.exit.i.i.sw.bb1.i11.i.i_crit_edge
    i8 -64, label %ieee802154_skb_dst_pan.exit.i.i.sw.bb1.i11.i.i_crit_edge54
  ]

ieee802154_skb_dst_pan.exit.i.i.sw.bb1.i11.i.i_crit_edge54: ; preds = %ieee802154_skb_dst_pan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i11.i.i

ieee802154_skb_dst_pan.exit.i.i.sw.bb1.i11.i.i_crit_edge: ; preds = %ieee802154_skb_dst_pan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i11.i.i

ieee802154_skb_dst_pan.exit.i.i.drop_crit_edge:   ; preds = %ieee802154_skb_dst_pan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

sw.bb1.i11.i.i:                                   ; preds = %ieee802154_skb_dst_pan.exit.i.i.sw.bb1.i11.i.i_crit_edge, %ieee802154_skb_dst_pan.exit.i.i.sw.bb1.i11.i.i_crit_edge54
  %15 = and i16 %fc.0.copyload.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.i.not.i.i.i = icmp eq i16 %15, 0
  br i1 %tobool.i.not.i.i.i, label %if.end.i.i.i, label %if.then.i12.i.i

if.then.i12.i.i:                                  ; preds = %sw.bb1.i11.i.i
  %16 = zext i4 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.19)
  switch i4 %trunc.i.i.i, label %land.end.i.i.i.i [
    i4 0, label %if.then.i12.i.i.drop_crit_edge
    i4 -8, label %if.then.i12.i.i.ieee802154_skb_src_pan.exit.i.i_crit_edge
    i4 -4, label %if.then.i12.i.i.ieee802154_skb_src_pan.exit.i.i_crit_edge55
  ]

if.then.i12.i.i.ieee802154_skb_src_pan.exit.i.i_crit_edge55: ; preds = %if.then.i12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee802154_skb_src_pan.exit.i.i

if.then.i12.i.i.ieee802154_skb_src_pan.exit.i.i_crit_edge: ; preds = %if.then.i12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee802154_skb_src_pan.exit.i.i

if.then.i12.i.i.drop_crit_edge:                   ; preds = %if.then.i12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

land.end.i.i.i.i:                                 ; preds = %if.then.i12.i.i
  %.b39.i.i.i.i = load i1, ptr @ieee802154_skb_dst_pan.__already_done, align 1
  br i1 %.b39.i.i.i.i, label %land.end.i.i.i.i.drop_crit_edge, label %if.then.i.i.i.i, !prof !55

land.end.i.i.i.i.drop_crit_edge:                  ; preds = %land.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

if.then.i.i.i.i:                                  ; preds = %land.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ieee802154_skb_dst_pan.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 274, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %drop

if.end.i.i.i:                                     ; preds = %sw.bb1.i11.i.i
  %17 = zext i4 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.20)
  switch i4 %trunc.i.i.i, label %land.end.i17.i.i [
    i4 0, label %if.end.i.i.i.ieee802154_skb_src_pan.exit.i.i_crit_edge
    i4 -8, label %sw.bb9.i.i.i
    i4 -4, label %sw.bb15.i.i.i
  ]

if.end.i.i.i.ieee802154_skb_src_pan.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee802154_skb_src_pan.exit.i.i

sw.bb9.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee802154_skb_src_pan.exit.i.i

sw.bb15.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee802154_skb_src_pan.exit.i.i

land.end.i17.i.i:                                 ; preds = %if.end.i.i.i
  %.b118.i.i.i = load i1, ptr @ieee802154_skb_src_pan.__already_done, align 1
  br i1 %.b118.i.i.i, label %land.end.i17.i.i.drop_crit_edge, label %if.then26.i.i.i, !prof !55

land.end.i17.i.i.drop_crit_edge:                  ; preds = %land.end.i17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

if.then26.i.i.i:                                  ; preds = %land.end.i17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ieee802154_skb_src_pan.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %drop

land.end64.i.i.i:                                 ; preds = %ieee802154_skb_dst_pan.exit.i.i
  %.b117119.i.i.i = load i1, ptr @ieee802154_skb_src_pan.__already_done.2, align 1
  br i1 %.b117119.i.i.i, label %land.end64.i.i.i.drop_crit_edge, label %if.then71.i.i.i, !prof !55

land.end64.i.i.i.drop_crit_edge:                  ; preds = %land.end64.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

if.then71.i.i.i:                                  ; preds = %land.end64.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ieee802154_skb_src_pan.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 333, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %drop

ieee802154_skb_src_pan.exit.i.i:                  ; preds = %sw.bb15.i.i.i, %sw.bb9.i.i.i, %if.end.i.i.i.ieee802154_skb_src_pan.exit.i.i_crit_edge, %if.then.i12.i.i.ieee802154_skb_src_pan.exit.i.i_crit_edge, %if.then.i12.i.i.ieee802154_skb_src_pan.exit.i.i_crit_edge55
  %.sink.i.i = phi i32 [ 7, %sw.bb9.i.i.i ], [ 13, %sw.bb15.i.i.i ], [ 3, %if.then.i12.i.i.ieee802154_skb_src_pan.exit.i.i_crit_edge ], [ 3, %if.then.i12.i.i.ieee802154_skb_src_pan.exit.i.i_crit_edge55 ], [ 3, %if.end.i.i.i.ieee802154_skb_src_pan.exit.i.i_crit_edge ]
  %18 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i.i, align 8
  %20 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %21 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %19, i32 %conv.i.i.i.i.i
  %add.ptr3.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %.sink.i.i
  %tobool.not.i.i = icmp eq ptr %dst_pan.0.i.i.i, null
  %tobool2.not.i.i = icmp eq ptr %add.ptr3.i.i.i.i, null
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool2.not.i.i
  br i1 %or.cond.i.i, label %ieee802154_skb_src_pan.exit.i.i.drop_crit_edge, label %ieee802154_skb_is_intra_pan_addressing.exit.i

ieee802154_skb_src_pan.exit.i.i.drop_crit_edge:   ; preds = %ieee802154_skb_src_pan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

ieee802154_skb_is_intra_pan_addressing.exit.i:    ; preds = %ieee802154_skb_src_pan.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %dst_pan.0.i.i.i, ptr noundef nonnull dereferenceable(2) %add.ptr3.i.i.i.i, i32 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool4.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i, label %ieee802154_skb_is_intra_pan_addressing.exit.i.drop_crit_edge

ieee802154_skb_is_intra_pan_addressing.exit.i.drop_crit_edge: ; preds = %ieee802154_skb_is_intra_pan_addressing.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

if.end.i:                                         ; preds = %ieee802154_skb_is_intra_pan_addressing.exit.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.i = icmp eq i32 %23, 0
  br i1 %tobool3.not.i, label %if.end.i.drop_crit_edge, label %if.end8.i, !prof !54

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

if.end8.i:                                        ; preds = %if.end.i
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %24 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %25 to i32
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %conv.i.i
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %27)
  %cmp.i23.i = icmp ult i8 %27, 64
  br i1 %cmp.i23.i, label %if.end8.i.drop_crit_edge, label %lor.lhs.false11.i

if.end8.i.drop_crit_edge:                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

lor.lhs.false11.i:                                ; preds = %if.end8.i
  %28 = add i8 %27, -68
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %28)
  %29 = icmp ult i8 %28, 12
  %30 = add i8 %27, -81
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %30)
  %31 = icmp ult i8 %30, 15
  %or.cond.i28.i = or i1 %29, %31
  br i1 %or.cond.i28.i, label %lor.lhs.false11.i.drop_crit_edge, label %lowpan_is_reserved.exit.i

lor.lhs.false11.i.drop_crit_edge:                 ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

lowpan_is_reserved.exit.i:                        ; preds = %lor.lhs.false11.i
  %32 = and i8 %27, -33
  %33 = add i8 %32, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %33)
  %34 = icmp ult i8 %33, 24
  br i1 %34, label %lowpan_is_reserved.exit.i.drop_crit_edge, label %if.end

lowpan_is_reserved.exit.i.drop_crit_edge:         ; preds = %lowpan_is_reserved.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

if.end:                                           ; preds = %lowpan_is_reserved.exit.i
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %wdev, i32 0, i32 83
  %35 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ieee802154_ptr, align 4
  %lowpan_dev = getelementptr inbounds %struct.wpan_dev, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %lowpan_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lowpan_dev, align 8
  %tobool.not = icmp eq ptr %38, null
  br i1 %tobool.not, label %if.end.drop_crit_edge, label %lor.lhs.false6

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

lor.lhs.false6:                                   ; preds = %if.end
  %state.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false6.drop_crit_edge, label %if.end9

lor.lhs.false6.drop_crit_edge:                    ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

if.end9:                                          ; preds = %lor.lhs.false6
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #6
  %41 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp.i.not.i = icmp eq i32 %42, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end9
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #6
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread49, !prof !54

skb_share_check.exit.thread49:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @consume_skb(ptr noundef %skb) #6
  br label %if.end13

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %cleanup

skb_share_check.exit:                             ; preds = %if.end9
  %tobool11.not = icmp eq ptr %skb, null
  br i1 %tobool11.not, label %skb_share_check.exit.cleanup_crit_edge, label %skb_share_check.exit.if.end13_crit_edge

skb_share_check.exit.if.end13_crit_edge:          ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

skb_share_check.exit.cleanup_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %skb_share_check.exit.if.end13_crit_edge, %skb_share_check.exit.thread49
  %skb.addr.0.i52 = phi ptr [ %call7.i, %skb_share_check.exit.thread49 ], [ %skb, %skb_share_check.exit.if.end13_crit_edge ]
  %43 = getelementptr inbounds %struct.anon, ptr %skb.addr.0.i52, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %38, ptr %43, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i52, i32 0, i32 18
  %45 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i52, i32 0, i32 15, i32 0, i32 20
  %47 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %48 to i32
  %add.ptr.i = getelementptr i8, ptr %46, i32 %conv.i
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr.i, align 1
  %51 = and i8 %50, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %51)
  %cmp.i = icmp eq i8 %51, -64
  %52 = and i8 %50, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %52)
  %cmp.i45 = icmp eq i8 %52, 96
  %or.cond = or i1 %cmp.i, %cmp.i45
  br i1 %or.cond, label %if.then21, label %if.end13.if.end26_crit_edge

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then21:                                        ; preds = %if.end13
  %call22 = tail call fastcc ptr @skb_unshare(ptr noundef nonnull %skb.addr.0.i52)
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.then21.cleanup_crit_edge, label %if.then21.if.end26_crit_edge

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.then21.if.end26_crit_edge, %if.end13.if.end26_crit_edge
  %skb.addr.0 = phi ptr [ %call22, %if.then21.if.end26_crit_edge ], [ %skb.addr.0.i52, %if.end13.if.end26_crit_edge ]
  %call27 = tail call fastcc i32 @lowpan_invoke_rx_handlers(ptr noundef nonnull %skb.addr.0)
  br label %cleanup

drop:                                             ; preds = %lor.lhs.false6.drop_crit_edge, %if.end.drop_crit_edge, %lowpan_is_reserved.exit.i.drop_crit_edge, %lor.lhs.false11.i.drop_crit_edge, %if.end8.i.drop_crit_edge, %if.end.i.drop_crit_edge, %ieee802154_skb_is_intra_pan_addressing.exit.i.drop_crit_edge, %ieee802154_skb_src_pan.exit.i.i.drop_crit_edge, %if.then71.i.i.i, %land.end64.i.i.i.drop_crit_edge, %if.then26.i.i.i, %land.end.i17.i.i.drop_crit_edge, %if.then.i.i.i.i, %land.end.i.i.i.i.drop_crit_edge, %if.then.i12.i.i.drop_crit_edge, %ieee802154_skb_dst_pan.exit.i.i.drop_crit_edge, %ieee802154_get_fc_from_skb.exit.i.drop_crit_edge, %ieee802154_get_fc_from_skb.exit.thread.i, %lor.lhs.false.drop_crit_edge, %entry.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end26, %if.then21.cleanup_crit_edge, %skb_share_check.exit.cleanup_crit_edge, %skb_share_check.exit.thread
  %retval.0 = phi i32 [ %call27, %if.end26 ], [ 1, %if.then21.cleanup_crit_edge ], [ 1, %skb_share_check.exit.cleanup_crit_edge ], [ 1, %drop ], [ 1, %skb_share_check.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_unshare(ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end13_crit_edge, label %skb_cloned.exit

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

skb_cloned.exit:                                  ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #6
  %3 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.if.end13_crit_edge, label %if.then6

skb_cloned.exit.if.end13_crit_edge:               ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then6:                                         ; preds = %skb_cloned.exit
  %call7 = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.else, label %if.then11, !prof !54

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @consume_skb(ptr noundef %skb) #6
  br label %if.end13

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11, %skb_cloned.exit.if.end13_crit_edge, %entry.if.end13_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %skb_cloned.exit.if.end13_crit_edge ], [ null, %if.else ], [ %call7, %if.then11 ], [ %skb, %entry.if.end13_crit_edge ]
  ret ptr %skb.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lowpan_invoke_rx_handlers(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %hdr.i.i = alloca %struct.ieee802154_hdr, align 8
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
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i.i, align 1
  %6 = and i8 %5, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %6)
  %cmp.i.i = icmp eq i8 %6, 96
  br i1 %cmp.i.i, label %if.end.i, label %do.body1

if.end.i:                                         ; preds = %entry
  %d_size.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %7 = ptrtoint ptr %d_size.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %d_size.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %hdr.i.i) #6
  %8 = call ptr @memset(ptr %hdr.i.i, i32 255, i32 56)
  %call.i.i = call i32 @ieee802154_hdr_peek_addrs(ptr noundef %skb, ptr noundef nonnull %hdr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i8.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i8.i, label %lowpan_iphc_decompress.exit.thread.i, label %lowpan_iphc_decompress.exit.i

lowpan_iphc_decompress.exit.thread.i:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %hdr.i.i) #6
  br label %sw.bb4.i

lowpan_iphc_decompress.exit.i:                    ; preds = %if.end.i
  %9 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %dest.i.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr.i.i, i32 0, i32 3
  %source.i.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr.i.i, i32 0, i32 2
  %call1.i.i = call i32 @lowpan_header_decompress(ptr noundef %skb, ptr noundef %11, ptr noundef %dest.i.i, ptr noundef %source.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %hdr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i, label %lowpan_iphc_decompress.exit.i.sw.bb4.i_crit_edge, label %lowpan_iphc_decompress.exit.i.sw.bb6.i_crit_edge

lowpan_iphc_decompress.exit.i.sw.bb6.i_crit_edge: ; preds = %lowpan_iphc_decompress.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i

lowpan_iphc_decompress.exit.i.sw.bb4.i_crit_edge: ; preds = %lowpan_iphc_decompress.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

do.body1:                                         ; preds = %entry
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %14 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i68 = zext i16 %15 to i32
  %add.ptr.i.i69 = getelementptr i8, ptr %13, i32 %conv.i.i68
  %16 = ptrtoint ptr %add.ptr.i.i69 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr.i.i69, align 1
  %18 = and i8 %17, -8
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %18, label %do.body8 [
    i8 -64, label %do.body1.lowpan_rx_h_frag.exit_crit_edge
    i8 -32, label %do.body1.lowpan_rx_h_frag.exit_crit_edge111
  ]

do.body1.lowpan_rx_h_frag.exit_crit_edge111:      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %lowpan_rx_h_frag.exit

do.body1.lowpan_rx_h_frag.exit_crit_edge:         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %lowpan_rx_h_frag.exit

lowpan_rx_h_frag.exit:                            ; preds = %do.body1.lowpan_rx_h_frag.exit_crit_edge, %do.body1.lowpan_rx_h_frag.exit_crit_edge111
  %call6.i = tail call i32 @lowpan_frag_rcv(ptr noundef %skb, i8 noundef zeroext %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.i)
  %cmp.i70 = icmp eq i32 %call6.i, 1
  br i1 %cmp.i70, label %lowpan_rx_h_frag.exit.sw.bb6.i_crit_edge, label %lowpan_rx_h_frag.exit.lowpan_rx_handlers_result.exit_crit_edge

lowpan_rx_h_frag.exit.lowpan_rx_handlers_result.exit_crit_edge: ; preds = %lowpan_rx_h_frag.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lowpan_rx_handlers_result.exit

lowpan_rx_h_frag.exit.sw.bb6.i_crit_edge:         ; preds = %lowpan_rx_h_frag.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i

do.body8:                                         ; preds = %do.body1
  %20 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i, align 8
  %22 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i75 = zext i16 %23 to i32
  %add.ptr.i.i76 = getelementptr i8, ptr %21, i32 %conv.i.i75
  %24 = ptrtoint ptr %add.ptr.i.i76 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr.i.i76, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %25)
  %cmp.i.i77 = icmp eq i8 %25, 65
  br i1 %cmp.i.i77, label %rxh_next.thread102, label %do.body15

rxh_next.thread102:                               ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #6
  br label %sw.bb6.i

do.body15:                                        ; preds = %do.body8
  %26 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i, align 8
  %28 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i82 = zext i16 %29 to i32
  %add.ptr.i.i83 = getelementptr i8, ptr %27, i32 %conv.i.i82
  %30 = ptrtoint ptr %add.ptr.i.i83 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr.i.i83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %31)
  %cmp.i.i84 = icmp eq i8 %31, 64
  br i1 %cmp.i.i84, label %do.body.i, label %do.body22

do.body.i:                                        ; preds = %do.body15
  %call2.i85 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i85)
  %tobool.not.i = icmp eq i32 %call2.i85, 0
  br i1 %tobool.not.i, label %do.body.i.sw.bb4.i_crit_edge, label %do.end.i

do.body.i.sw.bb4.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %34, ptr noundef nonnull @.str.7) #10
  br label %sw.bb4.i

do.body22:                                        ; preds = %do.body15
  %call23 = tail call fastcc i32 @lowpan_rx_h_hc1(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %do.body29, label %do.body22.rxh_next_crit_edge

do.body22.rxh_next_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %rxh_next

do.body29:                                        ; preds = %do.body22
  %call30 = tail call fastcc i32 @lowpan_rx_h_dff(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %do.body36, label %do.body29.rxh_next_crit_edge

do.body29.rxh_next_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %rxh_next

do.body36:                                        ; preds = %do.body29
  %call37 = tail call fastcc i32 @lowpan_rx_h_bc0(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38.not = icmp eq i32 %call37, 0
  br i1 %cmp38.not, label %do.body43, label %do.body36.rxh_next_crit_edge

do.body36.rxh_next_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  br label %rxh_next

do.body43:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  %call44 = tail call fastcc i32 @lowpan_rx_h_mesh(ptr noundef %skb)
  br label %rxh_next

rxh_next:                                         ; preds = %do.body43, %do.body36.rxh_next_crit_edge, %do.body29.rxh_next_crit_edge, %do.body22.rxh_next_crit_edge
  %res.0 = phi i32 [ %call23, %do.body22.rxh_next_crit_edge ], [ %call30, %do.body29.rxh_next_crit_edge ], [ %call37, %do.body36.rxh_next_crit_edge ], [ %call44, %do.body43 ]
  %35 = zext i32 %res.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %res.0, label %rxh_next.lowpan_rx_handlers_result.exit_crit_edge [
    i32 0, label %do.body.i88
    i32 1, label %rxh_next.sw.bb4.i_crit_edge
    i32 3, label %rxh_next.sw.bb6.i_crit_edge
  ]

rxh_next.sw.bb6.i_crit_edge:                      ; preds = %rxh_next
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i

rxh_next.sw.bb4.i_crit_edge:                      ; preds = %rxh_next
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

rxh_next.lowpan_rx_handlers_result.exit_crit_edge: ; preds = %rxh_next
  call void @__sanitizer_cov_trace_pc() #8
  br label %lowpan_rx_handlers_result.exit

do.body.i88:                                      ; preds = %rxh_next
  %call.i = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i87 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i87, label %do.body.i88.sw.bb4.i_crit_edge, label %do.end.i90

do.body.i88.sw.bb4.i_crit_edge:                   ; preds = %do.body.i88
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

do.end.i90:                                       ; preds = %do.body.i88
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #10
  br label %sw.bb4.i

sw.bb4.i:                                         ; preds = %do.end.i90, %do.body.i88.sw.bb4.i_crit_edge, %rxh_next.sw.bb4.i_crit_edge, %do.end.i, %do.body.i.sw.bb4.i_crit_edge, %lowpan_iphc_decompress.exit.i.sw.bb4.i_crit_edge, %lowpan_iphc_decompress.exit.thread.i
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %lowpan_rx_handlers_result.exit

sw.bb6.i:                                         ; preds = %rxh_next.sw.bb6.i_crit_edge, %rxh_next.thread102, %lowpan_rx_h_frag.exit.sw.bb6.i_crit_edge, %lowpan_iphc_decompress.exit.i.sw.bb6.i_crit_edge
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %36 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -31011, ptr %protocol.i.i, align 8
  %37 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %stats.i.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 36
  %40 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stats.i.i, align 8
  %inc.i.i = add i32 %41, 1
  store i32 %inc.i.i, ptr %stats.i.i, align 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %42 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i.i, align 4
  %44 = load ptr, ptr %37, align 8
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 36, i32 2
  %45 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_bytes.i.i, align 8
  %add.i.i = add i32 %46, %43
  store i32 %add.i.i, ptr %rx_bytes.i.i, align 8
  %call.i.i91 = call i32 @netif_rx(ptr noundef %skb) #6
  br label %lowpan_rx_handlers_result.exit

lowpan_rx_handlers_result.exit:                   ; preds = %sw.bb6.i, %sw.bb4.i, %rxh_next.lowpan_rx_handlers_result.exit_crit_edge, %lowpan_rx_h_frag.exit.lowpan_rx_handlers_result.exit_crit_edge
  %retval.0.i92 = phi i32 [ %call.i.i91, %sw.bb6.i ], [ 1, %sw.bb4.i ], [ 1, %rxh_next.lowpan_rx_handlers_result.exit_crit_edge ], [ 1, %lowpan_rx_h_frag.exit.lowpan_rx_handlers_result.exit_crit_edge ]
  ret i32 %retval.0.i92
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lowpan_rx_h_hc1(ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %5)
  %cmp.i = icmp eq i8 %5, 66
  br i1 %cmp.i, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body:                                          ; preds = %entry
  %call2 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body.return_crit_edge, label %do.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %8, ptr noundef nonnull @.str.9) #10
  br label %return

return:                                           ; preds = %do.end, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %do.body.return_crit_edge ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lowpan_rx_h_dff(ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %5)
  %cmp.i = icmp eq i8 %5, 67
  br i1 %cmp.i, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body:                                          ; preds = %entry
  %call2 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body.return_crit_edge, label %do.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %8, ptr noundef nonnull @.str.11) #10
  br label %return

return:                                           ; preds = %do.end, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %do.body.return_crit_edge ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lowpan_rx_h_bc0(ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %5)
  %cmp.i = icmp eq i8 %5, 80
  br i1 %cmp.i, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body:                                          ; preds = %entry
  %call2 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body.return_crit_edge, label %do.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %8, ptr noundef nonnull @.str.13) #10
  br label %return

return:                                           ; preds = %do.end, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %do.body.return_crit_edge ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lowpan_rx_h_mesh(ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i, align 1
  %6 = and i8 %5, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %6)
  %cmp.i = icmp eq i8 %6, -128
  br i1 %cmp.i, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body:                                          ; preds = %entry
  %call2 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body.return_crit_edge, label %do.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %9, ptr noundef nonnull @.str.15) #10
  br label %return

return:                                           ; preds = %do.end, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %do.body.return_crit_edge ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lowpan_frag_rcv(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @lowpan_packet_type, !1, !"lowpan_packet_type", i1 false, i1 false}
!1 = !{!"../net/ieee802154/6lowpan/rx.c", i32 310, i32 27}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/net/mac802154.h", i32 244, i32 6}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../include/net/mac802154.h", i32 274, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/net/mac802154.h", i32 327, i32 4}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../include/net/mac802154.h", i32 333, i32 3}
!11 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/ieee802154/6lowpan/rx.c", i32 132, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @lowpan_rx_h_esc._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @lowpan_rx_h_esc._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/ieee802154/6lowpan/rx.c", i32 148, i32 2}
!22 = !{ptr @lowpan_rx_h_hc1._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @lowpan_rx_h_hc1._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/ieee802154/6lowpan/rx.c", i32 164, i32 2}
!27 = !{ptr @lowpan_rx_h_dff._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @lowpan_rx_h_dff._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/ieee802154/6lowpan/rx.c", i32 180, i32 2}
!32 = !{ptr @lowpan_rx_h_bc0._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @lowpan_rx_h_bc0._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/ieee802154/6lowpan/rx.c", i32 196, i32 2}
!37 = !{ptr @lowpan_rx_h_mesh._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @lowpan_rx_h_mesh._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/ieee802154/6lowpan/rx.c", i32 35, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @lowpan_rx_handlers_result._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @lowpan_rx_handlers_result._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{!"branch_weights", i32 2000, i32 1}
