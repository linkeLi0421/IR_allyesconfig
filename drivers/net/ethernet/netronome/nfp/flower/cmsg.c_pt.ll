; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/flower/cmsg.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/flower/cmsg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.181, %union.anon.182, [48 x i8], %union.anon.183, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.185, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.181 = type { ptr }
%union.anon.182 = type { i64 }
%union.anon.183 = type { %struct.anon.184 }
%struct.anon.184 = type { i32, ptr }
%union.anon.185 = type { %struct.anon.186 }
%struct.anon.186 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.187, i32, i32, i32, i16, i16, %union.anon.189, i32, %union.anon.190, %union.anon.191, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.187 = type { i32 }
%union.anon.189 = type { i32 }
%union.anon.190 = type { i32 }
%union.anon.191 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nfp_flower_cmsg_hdr = type { i16, i8, i8 }
%struct.nfp_flower_cmsg_mac_repr = type { [3 x i8], i8, [0 x %struct.anon.219] }
%struct.anon.219 = type { i8, i8, i8, i8 }
%struct.nfp_repr = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.215 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%union.anon.215 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.216, i16, i8, i8, i32, i16, i16 }
%union.anon.216 = type { %struct.anon.218 }
%struct.anon.218 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.dst_cache = type { ptr, i32 }
%struct.hw_port_info = type { ptr, i32 }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfp_app_type = type { i32, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.nfp_flower_priv = type { ptr, ptr, i32, i64, i64, i8, %struct.nfp_fl_stats_id, %struct.nfp_fl_mask_id, [1024 x %struct.hlist_head], i32, %struct.rhashtable, ptr, %struct.spinlock, %struct.rhashtable, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.nfp_fl_tunnel_offloads, %struct.atomic_t, %struct.wait_queue_head, %struct.nfp_mtu_conf, %struct.nfp_fl_lag, %struct.list_head, %struct.list_head, i32, i32, %struct.nfp_fl_internal_ports, %struct.delayed_work, i32, %struct.spinlock, i32, %struct.rhashtable, %struct.rhashtable, ptr, %struct.rhashtable }
%struct.nfp_fl_stats_id = type { %struct.circ_buf, i32, i8 }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.nfp_fl_mask_id = type { %struct.circ_buf, ptr, i8 }
%struct.hlist_head = type { ptr }
%struct.nfp_fl_tunnel_offloads = type { %struct.rhashtable, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ida, %struct.notifier_block }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nfp_mtu_conf = type { i32, i32, i8, %struct.wait_queue_head, %struct.spinlock }
%struct.nfp_fl_lag = type { %struct.delayed_work, %struct.mutex, %struct.list_head, %struct.ida, i32, i32, i8, i8, %struct.sk_buff_head }
%struct.nfp_fl_internal_ports = type { %struct.idr, %struct.spinlock }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }

@nfp_flower_cmsg_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 357, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nfp: Cannot handle repr control version %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfp_flower_cmsg_rx\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/netronome/nfp/flower/cmsg.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_flower_cmsg_rx._entry_ptr = internal global ptr @nfp_flower_cmsg_rx._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@nfp_flower_cmsg_process_one_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 296, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"nfp: Cannot handle invalid repr control type %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nfp_flower_cmsg_process_one_rx\00", [33 x i8] zeroinitializer }, align 32
@nfp_flower_cmsg_process_one_rx._entry_ptr = internal global ptr @nfp_flower_cmsg_process_one_rx._entry, section ".printk_index", align 4
@nfp_flower_cmsg_portmod_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 166, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nfp: ctrl msg for unknown port 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfp_flower_cmsg_portmod_rx\00", [37 x i8] zeroinitializer }, align 32
@nfp_flower_cmsg_portmod_rx._entry_ptr = internal global ptr @nfp_flower_cmsg_portmod_rx._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nfp_flower_cmsg_merge_hint_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 221, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"nfp: Merge hint ctrl msg too short - %d bytes but expect %zd\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nfp_flower_cmsg_merge_hint_rx\00", [34 x i8] zeroinitializer }, align 32
@nfp_flower_cmsg_merge_hint_rx._entry_ptr = internal global ptr @nfp_flower_cmsg_merge_hint_rx._entry, section ".printk_index", align 4
@nfp_flower_cmsg_merge_hint_rx._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"nfp: Merge hint contains %d flows - two are expected\0A\00", [42 x i8] zeroinitializer }, align 32
@nfp_flower_cmsg_merge_hint_rx._entry_ptr.17 = internal global ptr @nfp_flower_cmsg_merge_hint_rx._entry.15, section ".printk_index", align 4
@nfp_flower_cmsg_merge_hint_rx._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 237, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfp: Invalid flow in merge hint\0A\00", [63 x i8] zeroinitializer }, align 32
@nfp_flower_cmsg_merge_hint_rx._entry_ptr.20 = internal global ptr @nfp_flower_cmsg_merge_hint_rx._entry.18, section ".printk_index", align 4
@nfp_flower_cmsg_merge_hint_rx._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nfp: Flow merge memory fail.\0A\00", [34 x i8] zeroinitializer }, align 32
@nfp_flower_cmsg_merge_hint_rx._entry_ptr.23 = internal global ptr @nfp_flower_cmsg_merge_hint_rx._entry.21, section ".printk_index", align 4
@nfp_flower_cmsg_portreify_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.24, ptr @.str.2, i32 199, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nfp_flower_cmsg_portreify_rx\00", [35 x i8] zeroinitializer }, align 32
@nfp_flower_cmsg_portreify_rx._entry_ptr = internal global ptr @nfp_flower_cmsg_portreify_rx._entry, section ".printk_index", align 4
@nfp_flower_queue_ctl_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 340, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nfp: Dropping queued control messages\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfp_flower_queue_ctl_msg\00", [39 x i8] zeroinitializer }, align 32
@nfp_flower_queue_ctl_msg._entry_ptr = internal global ptr @nfp_flower_queue_ctl_msg._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 4, i64 8, i64 9, i64 10, i64 12, i64 20, i64 23, i64 25]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 15]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 13, i64 24]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 356, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1984, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 295, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 165, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 695, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 723, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 220, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 226, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 237, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 245, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 198, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [52 x i8] c"../drivers/net/ethernet/netronome/nfp/flower/cmsg.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 340, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @nfp_flower_cmsg_merge_hint_rx._entry, ptr @nfp_flower_cmsg_merge_hint_rx._entry.15, ptr @nfp_flower_cmsg_merge_hint_rx._entry.18, ptr @nfp_flower_cmsg_merge_hint_rx._entry.21, ptr @nfp_flower_cmsg_merge_hint_rx._entry_ptr, ptr @nfp_flower_cmsg_merge_hint_rx._entry_ptr.17, ptr @nfp_flower_cmsg_merge_hint_rx._entry_ptr.20, ptr @nfp_flower_cmsg_merge_hint_rx._entry_ptr.23, ptr @nfp_flower_cmsg_portmod_rx._entry, ptr @nfp_flower_cmsg_portmod_rx._entry_ptr, ptr @nfp_flower_cmsg_portreify_rx._entry, ptr @nfp_flower_cmsg_portreify_rx._entry_ptr, ptr @nfp_flower_cmsg_process_one_rx._entry, ptr @nfp_flower_cmsg_process_one_rx._entry_ptr, ptr @nfp_flower_cmsg_rx._entry, ptr @nfp_flower_cmsg_rx._entry_ptr, ptr @nfp_flower_queue_ctl_msg._entry, ptr @nfp_flower_queue_ctl_msg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @skb_queue_head_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_cmsg_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_cmsg_process_one_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_cmsg_portmod_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_cmsg_merge_hint_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_cmsg_merge_hint_rx._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_cmsg_merge_hint_rx._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_cmsg_merge_hint_rx._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_cmsg_portreify_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_queue_ctl_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_flower_cmsg_alloc(ptr noundef %app, i32 noundef %size, i32 noundef %type, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, 4
  %call = tail call ptr @nfp_app_ctrl_msg_alloc(ptr noundef %app, i32 noundef %add, i32 noundef %flag) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %1, align 2
  %version = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %version, align 1
  %conv = trunc i32 %type to i8
  %type2 = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %type2, align 2
  %call3 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef %add) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_app_ctrl_msg_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_flower_cmsg_mac_repr_start(ptr noundef %app, i32 noundef %num_ports) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_ports, i32 4) #9
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 4) #9
  %spec.select.i.op = add i32 %spec.select.i, 4
  %add.i = select i1 %1, i32 3, i32 %spec.select.i.op
  %call.i = tail call ptr @nfp_app_ctrl_msg_alloc(ptr noundef %app, i32 noundef %add.i, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %4, align 2
  %version.i = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %version.i, align 1
  %type2.i = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %type2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 7, ptr %type2.i, align 2
  %call3.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add.i) #9
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %10 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 3)
  %conv = trunc i32 %num_ports to i8
  %num_ports3 = getelementptr i8, ptr %9, i32 7
  %11 = ptrtoint ptr %num_ports3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %num_ports3, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nfp_flower_cmsg_mac_repr_add(ptr nocapture noundef readonly %skb, i32 noundef %idx, i32 noundef %nbi, i32 noundef %nbi_port, i32 noundef %phys_port) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %conv = trunc i32 %idx to i8
  %arrayidx = getelementptr %struct.nfp_flower_cmsg_mac_repr, ptr %add.ptr.i, i32 0, i32 2, i32 %idx
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %arrayidx, align 1
  %3 = trunc i32 %nbi to i8
  %conv2 = and i8 %3, 3
  %info = getelementptr %struct.nfp_flower_cmsg_mac_repr, ptr %add.ptr.i, i32 0, i32 2, i32 %idx, i32 1
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv2, ptr %info, align 1
  %conv5 = trunc i32 %nbi_port to i8
  %nbi_port8 = getelementptr %struct.nfp_flower_cmsg_mac_repr, ptr %add.ptr.i, i32 0, i32 2, i32 %idx, i32 2
  %5 = ptrtoint ptr %nbi_port8 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv5, ptr %nbi_port8, align 1
  %conv9 = trunc i32 %phys_port to i8
  %phys_port12 = getelementptr %struct.nfp_flower_cmsg_mac_repr, ptr %add.ptr.i, i32 0, i32 2, i32 %idx, i32 3
  %6 = ptrtoint ptr %phys_port12 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv9, ptr %phys_port12, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_cmsg_portmod(ptr nocapture noundef readonly %repr, i1 noundef zeroext %carrier_ok, i32 noundef %mtu, i1 noundef zeroext %mtu_only) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.nfp_repr, ptr %repr, i32 0, i32 3
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %call.i = tail call ptr @nfp_app_ctrl_msg_alloc(ptr noundef %1, i32 noundef 12, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %3, align 2
  %version.i = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %version.i, align 1
  %type2.i = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %type2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %type2.i, align 2
  %call3.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 12) #9
  %frombool = zext i1 %carrier_ok to i8
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  %dst = getelementptr inbounds %struct.nfp_repr, ptr %repr, i32 0, i32 1
  %9 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst, align 4
  %u = getelementptr inbounds %struct.metadata_dst, ptr %10, i32 0, i32 2
  %port_id = getelementptr inbounds %struct.hw_port_info, ptr %u, i32 0, i32 1
  %11 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_id, align 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr.i, align 4
  %reserved = getelementptr i8, ptr %8, i32 8
  %14 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %reserved, align 4
  %info = getelementptr i8, ptr %8, i32 9
  %or = or i8 %frombool, 2
  %storemerge = select i1 %mtu_only, i8 %or, i8 %frombool
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %storemerge, ptr %info, align 1
  %conv10 = trunc i32 %mtu to i16
  %mtu11 = getelementptr i8, ptr %8, i32 10
  %16 = ptrtoint ptr %mtu11 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv10, ptr %mtu11, align 2
  %17 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %app, align 4
  %ctrl = getelementptr inbounds %struct.nfp_app, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl, align 4
  %call13 = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %20, ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfp_ctrl_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_cmsg_portreify(ptr nocapture noundef readonly %repr, i1 noundef zeroext %exists) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.nfp_repr, ptr %repr, i32 0, i32 3
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %call.i = tail call ptr @nfp_app_ctrl_msg_alloc(ptr noundef %1, i32 noundef 12, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %3, align 2
  %version.i = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %version.i, align 1
  %type2.i = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %type2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %type2.i, align 2
  %call3.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 12) #9
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  %dst = getelementptr inbounds %struct.nfp_repr, ptr %repr, i32 0, i32 1
  %9 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst, align 4
  %u = getelementptr inbounds %struct.metadata_dst, ptr %10, i32 0, i32 2
  %port_id = getelementptr inbounds %struct.hw_port_info, ptr %u, i32 0, i32 1
  %11 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_id, align 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr.i, align 4
  %reserved = getelementptr i8, ptr %8, i32 8
  %14 = ptrtoint ptr %reserved to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %reserved, align 4
  %conv = zext i1 %exists to i16
  %info = getelementptr i8, ptr %8, i32 10
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %info, align 2
  %16 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %app, align 4
  %ctrl = getelementptr inbounds %struct.nfp_app, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl, align 4
  %call4 = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %19, ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_cmsg_process_rx(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %cmsg_joined = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmsg_joined) #9
  %0 = call ptr @memset(ptr %cmsg_joined, i32 255, i32 56)
  %add.ptr = getelementptr i8, ptr %work, i32 -4680
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %cmsg_joined, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %1 = ptrtoint ptr %cmsg_joined to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cmsg_joined, ptr %cmsg_joined, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.97, ptr %cmsg_joined, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cmsg_joined, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %cmsg_joined, i32 0, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 4
  %cmsg_skbs_high = getelementptr i8, ptr %work, i32 44
  %lock = getelementptr i8, ptr %work, i32 56
  call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %4 = ptrtoint ptr %cmsg_skbs_high to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmsg_skbs_high, align 4
  %cmp.i.not.i = icmp eq ptr %5, %cmsg_skbs_high
  br i1 %cmp.i.not.i, label %entry.skb_queue_splice_tail_init.exit_crit_edge, label %if.then.i

entry.skb_queue_splice_tail_init.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_queue_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i = getelementptr i8, ptr %work, i32 48
  %8 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %7, ptr %prev5.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %5, ptr %7, align 8
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %cmsg_joined, ptr %9, align 8
  store volatile ptr %9, ptr %prev.i.i, align 4
  %qlen.i = getelementptr i8, ptr %work, i32 52
  %13 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i, align 4
  %15 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen.i.i, align 4
  %add.i = add i32 %16, %14
  store i32 %add.i, ptr %qlen.i.i, align 4
  %17 = ptrtoint ptr %cmsg_skbs_high to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cmsg_skbs_high, ptr %cmsg_skbs_high, align 4
  store ptr %cmsg_skbs_high, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i, align 4
  br label %skb_queue_splice_tail_init.exit

skb_queue_splice_tail_init.exit:                  ; preds = %if.then.i, %entry.skb_queue_splice_tail_init.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %cmsg_skbs_low = getelementptr i8, ptr %work, i32 100
  %lock4 = getelementptr i8, ptr %work, i32 112
  call void @_raw_spin_lock_bh(ptr noundef %lock4) #9
  %18 = ptrtoint ptr %cmsg_skbs_low to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmsg_skbs_low, align 4
  %cmp.i.not.i14 = icmp eq ptr %19, %cmsg_skbs_low
  br i1 %cmp.i.not.i14, label %skb_queue_splice_tail_init.exit.skb_queue_splice_tail_init.exit22_crit_edge, label %if.then.i21

skb_queue_splice_tail_init.exit.skb_queue_splice_tail_init.exit22_crit_edge: ; preds = %skb_queue_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_queue_splice_tail_init.exit22

if.then.i21:                                      ; preds = %skb_queue_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i16 = getelementptr i8, ptr %work, i32 104
  %22 = ptrtoint ptr %prev2.i.i16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev2.i.i16, align 4
  %prev5.i.i17 = getelementptr inbounds %struct.anon, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %prev5.i.i17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %21, ptr %prev5.i.i17, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %19, ptr %21, align 8
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %cmsg_joined, ptr %23, align 8
  store volatile ptr %23, ptr %prev.i.i, align 4
  %qlen.i18 = getelementptr i8, ptr %work, i32 108
  %27 = ptrtoint ptr %qlen.i18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qlen.i18, align 4
  %29 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qlen.i.i, align 4
  %add.i20 = add i32 %30, %28
  store i32 %add.i20, ptr %qlen.i.i, align 4
  %31 = ptrtoint ptr %cmsg_skbs_low to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cmsg_skbs_low, ptr %cmsg_skbs_low, align 4
  store ptr %cmsg_skbs_low, ptr %prev2.i.i16, align 4
  store i32 0, ptr %qlen.i18, align 4
  br label %skb_queue_splice_tail_init.exit22

skb_queue_splice_tail_init.exit22:                ; preds = %if.then.i21, %skb_queue_splice_tail_init.exit.skb_queue_splice_tail_init.exit22_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock4) #9
  %32 = ptrtoint ptr %cmsg_joined to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cmsg_joined, align 4
  %cmp.i.i29 = icmp eq ptr %33, %cmsg_joined
  %tobool.not.i2830 = icmp eq ptr %33, null
  %tobool.not.i31 = or i1 %cmp.i.i29, %tobool.not.i2830
  br i1 %tobool.not.i31, label %skb_queue_splice_tail_init.exit22.while.end_crit_edge, label %skb_queue_splice_tail_init.exit22.while.body_crit_edge

skb_queue_splice_tail_init.exit22.while.body_crit_edge: ; preds = %skb_queue_splice_tail_init.exit22
  br label %while.body

skb_queue_splice_tail_init.exit22.while.end_crit_edge: ; preds = %skb_queue_splice_tail_init.exit22
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %nfp_flower_cmsg_process_one_rx.exit.while.body_crit_edge, %skb_queue_splice_tail_init.exit22.while.body_crit_edge
  %34 = phi ptr [ %109, %nfp_flower_cmsg_process_one_rx.exit.while.body_crit_edge ], [ %33, %skb_queue_splice_tail_init.exit22.while.body_crit_edge ]
  %35 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %34, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %40, ptr %prev17.i.i, align 4
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %38, ptr %40, align 8
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 8
  %priv.i = getelementptr inbounds %struct.nfp_app, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 19
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %type1.i = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %type1.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %type1.i, align 2
  %conv.i = zext i8 %50 to i32
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i8 %50, label %while.body.do.body.i_crit_edge [
    i8 8, label %sw.bb.i
    i8 9, label %sw.bb2.i
    i8 10, label %sw.bb4.i
    i8 23, label %sw.bb5.i
    i8 12, label %sw.bb6.i
    i8 25, label %sw.bb7.i
    i8 20, label %sw.bb8.i
    i8 4, label %sw.bb9.i
  ]

while.body.do.body.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

sw.bb.i:                                          ; preds = %while.body
  %add.ptr.i.i.i = getelementptr i8, ptr %48, i32 4
  %info.i.i = getelementptr i8, ptr %48, i32 9
  %52 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %info.i.i, align 1
  call void @rtnl_lock() #9
  %54 = call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %57, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !64
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i, label %sw.bb.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb.i.rcu_read_lock.exit.i.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #9
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %sw.bb.i.rcu_read_lock.exit.i.i_crit_edge
  %58 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i31.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i31.i.i, label %rcu_read_lock.exit.i.i.nfp_app_dev_get.exit.i.i_crit_edge, label %lor.rhs.i.i.i, !prof !65

rcu_read_lock.exit.i.i.nfp_app_dev_get.exit.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_app_dev_get.exit.i.i

lor.rhs.i.i.i:                                    ; preds = %rcu_read_lock.exit.i.i
  %type.i.i.i = getelementptr inbounds %struct.nfp_app, ptr %44, i32 0, i32 5
  %60 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %type.i.i.i, align 4
  %dev_get.i.i.i = getelementptr inbounds %struct.nfp_app_type, ptr %61, i32 0, i32 35
  %62 = ptrtoint ptr %dev_get.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_get.i.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %63, null
  br i1 %tobool1.not.i.i.i, label %lor.rhs.i.i.i.nfp_app_dev_get.exit.i.i_crit_edge, label %if.end.i.i.i, !prof !65

lor.rhs.i.i.i.nfp_app_dev_get.exit.i.i_crit_edge: ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_app_dev_get.exit.i.i

if.end.i.i.i:                                     ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i32.i.i = call ptr %63(ptr noundef nonnull %44, i32 noundef %59, ptr noundef null) #9
  br label %nfp_app_dev_get.exit.i.i

nfp_app_dev_get.exit.i.i:                         ; preds = %if.end.i.i.i, %lor.rhs.i.i.i.nfp_app_dev_get.exit.i.i_crit_edge, %rcu_read_lock.exit.i.i.nfp_app_dev_get.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call.i32.i.i, %if.end.i.i.i ], [ null, %lor.rhs.i.i.i.nfp_app_dev_get.exit.i.i_crit_edge ], [ null, %rcu_read_lock.exit.i.i.nfp_app_dev_get.exit.i.i_crit_edge ]
  %call.i33.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i33.i.i, label %nfp_app_dev_get.exit.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i36.i.i

nfp_app_dev_get.exit.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %nfp_app_dev_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i36.i.i:                            ; preds = %nfp_app_dev_get.exit.i.i
  %call1.i34.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34.i.i)
  %tobool.not.i35.i.i = icmp eq i32 %call1.i34.i.i, 0
  br i1 %tobool.not.i35.i.i, label %land.lhs.true.i36.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i38.i.i

land.lhs.true.i36.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i38.i.i:                           ; preds = %land.lhs.true.i36.i.i
  %.b4.i37.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37.i.i, label %land.lhs.true2.i38.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i39.i.i

land.lhs.true2.i38.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i

if.then.i39.i.i:                                  ; preds = %land.lhs.true2.i38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #9
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i39.i.i, %land.lhs.true2.i38.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i36.i.i.rcu_read_unlock.exit.i.i_crit_edge, %nfp_app_dev_get.exit.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !66
  %64 = call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i.i.i40.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i40.i.i to ptr
  %preempt_count.i.i.i.i41.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i41.i.i, align 4
  %sub.i.i.i.i.i = add i32 %67, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i41.i.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %tobool2.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.body.i.i, label %if.end11.i.i

do.body.i.i:                                      ; preds = %rcu_read_unlock.exit.i.i
  %call3.i.i = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.nfp_flower_cmsg_portmod_rx.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.nfp_flower_cmsg_portmod_rx.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_flower_cmsg_portmod_rx.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cpp.i.i = getelementptr inbounds %struct.nfp_app, ptr %44, i32 0, i32 2
  %68 = ptrtoint ptr %cpp.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cpp.i.i, align 4
  %call7.i.i = call ptr @nfp_cpp_device(ptr noundef %69) #9
  %parent.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %parent.i.i, align 8
  %72 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %71, ptr noundef nonnull @.str.8, i32 noundef %73) #12
  br label %nfp_flower_cmsg_portmod_rx.exit.i

if.end11.i.i:                                     ; preds = %rcu_read_unlock.exit.i.i
  %74 = and i8 %53, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i.i = icmp eq i8 %74, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %if.end11.i.i
  %mtu14.i.i = getelementptr i8, ptr %48, i32 10
  %75 = ptrtoint ptr %mtu14.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %mtu14.i.i, align 2
  call void @netif_carrier_on(ptr noundef nonnull %retval.0.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool15.not.i.i = icmp eq i16 %76, 0
  br i1 %tobool15.not.i.i, label %if.then13.i.i.nfp_flower_cmsg_portmod_rx.exit.i_crit_edge, label %if.then16.i.i

if.then13.i.i.nfp_flower_cmsg_portmod_rx.exit.i_crit_edge: ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_flower_cmsg_portmod_rx.exit.i

if.then16.i.i:                                    ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv17.i.i = zext i16 %76 to i32
  %call18.i.i = call i32 @dev_set_mtu(ptr noundef nonnull %retval.0.i.i.i, i32 noundef %conv17.i.i) #9
  br label %nfp_flower_cmsg_portmod_rx.exit.i

if.else.i.i:                                      ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @netif_carrier_off(ptr noundef nonnull %retval.0.i.i.i) #9
  br label %nfp_flower_cmsg_portmod_rx.exit.i

nfp_flower_cmsg_portmod_rx.exit.i:                ; preds = %if.else.i.i, %if.then16.i.i, %if.then13.i.i.nfp_flower_cmsg_portmod_rx.exit.i_crit_edge, %do.end.i.i, %do.body.i.i.nfp_flower_cmsg_portmod_rx.exit.i_crit_edge
  call void @rtnl_unlock() #9
  br label %cleanup.sink.split.i

sw.bb2.i:                                         ; preds = %while.body
  %flower_en_feats.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %46, i32 0, i32 5
  %77 = ptrtoint ptr %flower_en_feats.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %flower_en_feats.i, align 8
  %79 = and i8 %78, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i25 = icmp eq i8 %79, 0
  br i1 %tobool.not.i25, label %sw.bb2.i.do.body.i_crit_edge, label %if.then.i27

sw.bb2.i.do.body.i_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then.i27:                                      ; preds = %sw.bb2.i
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 6
  %80 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len.i.i.i, align 4
  %sub.i.i.i = add i32 %81, -4
  %count.i.i = getelementptr i8, ptr %48, i32 7
  %82 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %count.i.i, align 1
  %conv.i.i = zext i8 %83 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 1
  %84 = mul nuw nsw i32 %add.i.i, 12
  %spec.select.i97.i.i = add nuw nsw i32 %84, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %spec.select.i97.i.i)
  %cmp.i.i26 = icmp ult i32 %sub.i.i.i, %spec.select.i97.i.i
  br i1 %cmp.i.i26, label %do.body.i60.i, label %if.end11.i65.i

do.body.i60.i:                                    ; preds = %if.then.i27
  %call4.i.i = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i59.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i59.i, label %do.body.i60.i.cleanup.sink.split.i_crit_edge, label %do.end.i64.i

do.body.i60.i.cleanup.sink.split.i_crit_edge:     ; preds = %do.body.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

do.end.i64.i:                                     ; preds = %do.body.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  %cpp.i61.i = getelementptr inbounds %struct.nfp_app, ptr %44, i32 0, i32 2
  %85 = ptrtoint ptr %cpp.i61.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cpp.i61.i, align 4
  %call7.i62.i = call ptr @nfp_cpp_device(ptr noundef %86) #9
  %parent.i63.i = getelementptr inbounds %struct.device, ptr %call7.i62.i, i32 0, i32 1
  %87 = ptrtoint ptr %parent.i63.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %parent.i63.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %88, ptr noundef nonnull @.str.13, i32 noundef %sub.i.i.i, i32 noundef %spec.select.i97.i.i) #12
  br label %cleanup.sink.split.i

if.end11.i65.i:                                   ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i.i)
  %cmp12.not.i.i = icmp eq i32 %add.i.i, 2
  br i1 %cmp12.not.i.i, label %if.end28.i.i, label %do.body15.i.i

do.body15.i.i:                                    ; preds = %if.end11.i65.i
  %call16.i.i = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %do.body15.i.i.cleanup.sink.split.i_crit_edge, label %do.end21.i.i

do.body15.i.i.cleanup.sink.split.i_crit_edge:     ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

do.end21.i.i:                                     ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cpp22.i.i = getelementptr inbounds %struct.nfp_app, ptr %44, i32 0, i32 2
  %89 = ptrtoint ptr %cpp22.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cpp22.i.i, align 4
  %call23.i.i = call ptr @nfp_cpp_device(ptr noundef %90) #9
  %parent24.i.i = getelementptr inbounds %struct.device, ptr %call23.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %parent24.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %parent24.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %92, ptr noundef nonnull @.str.16, i32 noundef %add.i.i) #12
  br label %cleanup.sink.split.i

if.end28.i.i:                                     ; preds = %if.end11.i65.i
  call void @rtnl_lock() #9
  %arrayidx.i.i = getelementptr i8, ptr %48, i32 8
  %93 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %arrayidx.i.i, align 1
  %call31.i.i = call ptr @nfp_flower_get_fl_payload_from_ctx(ptr noundef %44, i32 noundef %94) #9
  %tobool34.not.i.i = icmp eq ptr %call31.i.i, null
  br i1 %tobool34.not.i.i, label %if.end28.i.i.do.body36.i.i_crit_edge, label %for.cond.i.i

if.end28.i.i.do.body36.i.i_crit_edge:             ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body36.i.i

for.cond.i.i:                                     ; preds = %if.end28.i.i
  %arrayidx.1.i.i = getelementptr i8, ptr %48, i32 20
  %95 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %arrayidx.1.i.i, align 1
  %call31.1.i.i = call ptr @nfp_flower_get_fl_payload_from_ctx(ptr noundef %44, i32 noundef %96) #9
  %tobool34.not.1.i.i = icmp eq ptr %call31.1.i.i, null
  br i1 %tobool34.not.1.i.i, label %for.cond.i.i.do.body36.i.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.do.body36.i.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body36.i.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call52.i.i = call i32 @nfp_flower_merge_offloaded_flows(ptr noundef %44, ptr noundef nonnull %call31.i.i, ptr noundef nonnull %call31.1.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call52.i.i)
  %cmp53.i.i = icmp eq i32 %call52.i.i, -12
  br i1 %cmp53.i.i, label %do.body56.i.i, label %for.cond.1.i.i.err_rtnl_unlock.i.i_crit_edge

for.cond.1.i.i.err_rtnl_unlock.i.i_crit_edge:     ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rtnl_unlock.i.i

do.body36.i.i:                                    ; preds = %for.cond.i.i.do.body36.i.i_crit_edge, %if.end28.i.i.do.body36.i.i_crit_edge
  %call37.i.i = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i)
  %tobool38.not.i.i = icmp eq i32 %call37.i.i, 0
  br i1 %tobool38.not.i.i, label %do.body36.i.i.err_rtnl_unlock.i.i_crit_edge, label %do.body36.i.i.err_rtnl_unlock.sink.split.i.i_crit_edge

do.body36.i.i.err_rtnl_unlock.sink.split.i.i_crit_edge: ; preds = %do.body36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rtnl_unlock.sink.split.i.i

do.body36.i.i.err_rtnl_unlock.i.i_crit_edge:      ; preds = %do.body36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rtnl_unlock.i.i

do.body56.i.i:                                    ; preds = %for.cond.1.i.i
  %call57.i.i = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i)
  %tobool58.not.i.i = icmp eq i32 %call57.i.i, 0
  br i1 %tobool58.not.i.i, label %do.body56.i.i.err_rtnl_unlock.i.i_crit_edge, label %do.body56.i.i.err_rtnl_unlock.sink.split.i.i_crit_edge

do.body56.i.i.err_rtnl_unlock.sink.split.i.i_crit_edge: ; preds = %do.body56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rtnl_unlock.sink.split.i.i

do.body56.i.i.err_rtnl_unlock.i.i_crit_edge:      ; preds = %do.body56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rtnl_unlock.i.i

err_rtnl_unlock.sink.split.i.i:                   ; preds = %do.body56.i.i.err_rtnl_unlock.sink.split.i.i_crit_edge, %do.body36.i.i.err_rtnl_unlock.sink.split.i.i_crit_edge
  %.str.19.sink.i.i = phi ptr [ @.str.19, %do.body36.i.i.err_rtnl_unlock.sink.split.i.i_crit_edge ], [ @.str.22, %do.body56.i.i.err_rtnl_unlock.sink.split.i.i_crit_edge ]
  %cpp43.i.i = getelementptr inbounds %struct.nfp_app, ptr %44, i32 0, i32 2
  %97 = ptrtoint ptr %cpp43.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cpp43.i.i, align 4
  %call44.i.i = call ptr @nfp_cpp_device(ptr noundef %98) #9
  %parent45.i.i = getelementptr inbounds %struct.device, ptr %call44.i.i, i32 0, i32 1
  %99 = ptrtoint ptr %parent45.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %parent45.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %100, ptr noundef nonnull %.str.19.sink.i.i) #12
  br label %err_rtnl_unlock.i.i

err_rtnl_unlock.i.i:                              ; preds = %err_rtnl_unlock.sink.split.i.i, %do.body56.i.i.err_rtnl_unlock.i.i_crit_edge, %do.body36.i.i.err_rtnl_unlock.i.i_crit_edge, %for.cond.1.i.i.err_rtnl_unlock.i.i_crit_edge
  call void @rtnl_unlock() #9
  br label %cleanup.sink.split.i

sw.bb4.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @nfp_tunnel_request_route_v4(ptr noundef %44, ptr noundef nonnull %34) #9
  br label %cleanup.sink.split.i

sw.bb5.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @nfp_tunnel_request_route_v6(ptr noundef %44, ptr noundef nonnull %34) #9
  br label %cleanup.sink.split.i

sw.bb6.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @nfp_tunnel_keep_alive(ptr noundef %44, ptr noundef nonnull %34) #9
  br label %cleanup.sink.split.i

sw.bb7.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @nfp_tunnel_keep_alive_v6(ptr noundef %44, ptr noundef nonnull %34) #9
  br label %cleanup.sink.split.i

sw.bb8.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @nfp_flower_stats_rlim_reply(ptr noundef %44, ptr noundef nonnull %34) #9
  br label %cleanup.sink.split.i

sw.bb9.i:                                         ; preds = %while.body
  %flower_en_feats10.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %46, i32 0, i32 5
  %101 = ptrtoint ptr %flower_en_feats10.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %flower_en_feats10.i, align 8
  %103 = and i8 %102, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool13.not.i = icmp eq i8 %103, 0
  br i1 %tobool13.not.i, label %sw.bb9.i.do.body.i_crit_edge, label %if.then14.i

sw.bb9.i.do.body.i_crit_edge:                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then14.i:                                      ; preds = %sw.bb9.i
  %call15.i = call zeroext i1 @nfp_flower_lag_unprocessed_msg(ptr noundef %44, ptr noundef nonnull %34) #9
  br i1 %call15.i, label %if.then14.i.nfp_flower_cmsg_process_one_rx.exit_crit_edge, label %if.then14.i.cleanup.sink.split.i_crit_edge

if.then14.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.then14.i.nfp_flower_cmsg_process_one_rx.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_flower_cmsg_process_one_rx.exit

do.body.i:                                        ; preds = %sw.bb9.i.do.body.i_crit_edge, %sw.bb2.i.do.body.i_crit_edge, %while.body.do.body.i_crit_edge
  %call17.i = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %do.body.i.cleanup.sink.split.i_crit_edge, label %do.end.i

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %cpp.i = getelementptr inbounds %struct.nfp_app, ptr %44, i32 0, i32 2
  %104 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cpp.i, align 4
  %call21.i = call ptr @nfp_cpp_device(ptr noundef %105) #9
  %parent.i = getelementptr inbounds %struct.device, ptr %call21.i, i32 0, i32 1
  %106 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %parent.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %107, ptr noundef nonnull @.str.6, i32 noundef %conv.i) #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.end.i, %do.body.i.cleanup.sink.split.i_crit_edge, %if.then14.i.cleanup.sink.split.i_crit_edge, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %err_rtnl_unlock.i.i, %do.end21.i.i, %do.body15.i.i.cleanup.sink.split.i_crit_edge, %do.end.i64.i, %do.body.i60.i.cleanup.sink.split.i_crit_edge, %nfp_flower_cmsg_portmod_rx.exit.i
  %.sink.i = phi i32 [ 0, %err_rtnl_unlock.i.i ], [ 0, %do.end21.i.i ], [ 0, %do.body15.i.i.cleanup.sink.split.i_crit_edge ], [ 0, %do.end.i64.i ], [ 0, %do.body.i60.i.cleanup.sink.split.i_crit_edge ], [ 0, %nfp_flower_cmsg_portmod_rx.exit.i ], [ 0, %sw.bb4.i ], [ 0, %sw.bb5.i ], [ 0, %sw.bb6.i ], [ 0, %sw.bb7.i ], [ 0, %sw.bb8.i ], [ 0, %if.then14.i.cleanup.sink.split.i_crit_edge ], [ 1, %do.body.i.cleanup.sink.split.i_crit_edge ], [ 1, %do.end.i ]
  call void @__dev_kfree_skb_any(ptr noundef nonnull %34, i32 noundef %.sink.i) #9
  br label %nfp_flower_cmsg_process_one_rx.exit

nfp_flower_cmsg_process_one_rx.exit:              ; preds = %cleanup.sink.split.i, %if.then14.i.nfp_flower_cmsg_process_one_rx.exit_crit_edge
  %108 = ptrtoint ptr %cmsg_joined to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cmsg_joined, align 4
  %cmp.i.i = icmp eq ptr %109, %cmsg_joined
  %tobool.not.i28 = icmp eq ptr %109, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i28
  br i1 %tobool.not.i, label %nfp_flower_cmsg_process_one_rx.exit.while.end_crit_edge, label %nfp_flower_cmsg_process_one_rx.exit.while.body_crit_edge

nfp_flower_cmsg_process_one_rx.exit.while.body_crit_edge: ; preds = %nfp_flower_cmsg_process_one_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

nfp_flower_cmsg_process_one_rx.exit.while.end_crit_edge: ; preds = %nfp_flower_cmsg_process_one_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %nfp_flower_cmsg_process_one_rx.exit.while.end_crit_edge, %skb_queue_splice_tail_init.exit22.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmsg_joined) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_cmsg_rx(ptr noundef %app, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %version = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end12, label %do.body, !prof !67

do.body:                                          ; preds = %entry
  %call3 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.do.end11_crit_edge, label %do.end

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %4 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpp, align 4
  %call7 = tail call ptr @nfp_cpp_device(ptr noundef %5) #9
  %parent = getelementptr inbounds %struct.device, ptr %call7, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %8 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %version, align 1
  %conv9 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %conv9) #12
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br label %cleanup

if.end12:                                         ; preds = %entry
  %type = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %11, label %if.end12.if.else24_crit_edge [
    i8 15, label %if.then16
    i8 8, label %land.lhs.true
  ]

if.end12.if.else24_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else24

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nfp_flower_rx_flow_stats(ptr noundef %app, ptr noundef %skb) #9
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end12
  %priv.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %info.i = getelementptr i8, ptr %1, i32 9
  %15 = ptrtoint ptr %info.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %info.i, align 1
  %17 = and i8 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %land.lhs.true.if.else24thread-pre-split_crit_edge, label %if.end.i

land.lhs.true.if.else24thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else24thread-pre-split

if.end.i:                                         ; preds = %land.lhs.true
  %lock.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %14, i32 0, i32 20, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  %requested_val.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %14, i32 0, i32 20, i32 1
  %18 = ptrtoint ptr %requested_val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %requested_val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool2.not.i = icmp eq i32 %19, 0
  br i1 %tobool2.not.i, label %if.end.i.nfp_flower_process_mtu_ack.exit.thread77_crit_edge, label %lor.lhs.false.i

if.end.i.nfp_flower_process_mtu_ack.exit.thread77_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_flower_process_mtu_ack.exit.thread77

lor.lhs.false.i:                                  ; preds = %if.end.i
  %mtu_conf.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %14, i32 0, i32 20
  %20 = ptrtoint ptr %mtu_conf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mtu_conf.i, align 8
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.not.i = icmp eq i32 %21, %23
  br i1 %cmp.not.i, label %lor.lhs.false6.i, label %lor.lhs.false.i.nfp_flower_process_mtu_ack.exit.thread77_crit_edge

lor.lhs.false.i.nfp_flower_process_mtu_ack.exit.thread77_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_flower_process_mtu_ack.exit.thread77

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %mtu.i = getelementptr i8, ptr %1, i32 10
  %24 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mtu.i, align 2
  %conv7.i = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv7.i)
  %cmp10.not.i = icmp eq i32 %19, %conv7.i
  br i1 %cmp10.not.i, label %if.then23, label %lor.lhs.false6.i.nfp_flower_process_mtu_ack.exit.thread77_crit_edge

lor.lhs.false6.i.nfp_flower_process_mtu_ack.exit.thread77_crit_edge: ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_flower_process_mtu_ack.exit.thread77

nfp_flower_process_mtu_ack.exit.thread77:         ; preds = %lor.lhs.false6.i.nfp_flower_process_mtu_ack.exit.thread77_crit_edge, %lor.lhs.false.i.nfp_flower_process_mtu_ack.exit.thread77_crit_edge, %if.end.i.nfp_flower_process_mtu_ack.exit.thread77_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  br label %if.else24thread-pre-split

if.then23:                                        ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #11
  %ack.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %14, i32 0, i32 20, i32 2
  %26 = ptrtoint ptr %ack.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %ack.i, align 8
  %27 = ptrtoint ptr %requested_val.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %requested_val.i, align 4
  %wait_q.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %14, i32 0, i32 20, i32 3
  tail call void @__wake_up(ptr noundef %wait_q.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

if.else24thread-pre-split:                        ; preds = %nfp_flower_process_mtu_ack.exit.thread77, %land.lhs.true.if.else24thread-pre-split_crit_edge
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %28)
  %.pr = load i8, ptr %type, align 2
  br label %if.else24

if.else24:                                        ; preds = %if.else24thread-pre-split, %if.end12.if.else24_crit_edge
  %29 = phi i8 [ %.pr, %if.else24thread-pre-split ], [ %11, %if.end12.if.else24_crit_edge ]
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %29, label %if.else40 [
    i8 13, label %if.else24.if.then33_crit_edge
    i8 24, label %if.else24.if.then33_crit_edge79
    i8 6, label %if.then39
  ]

if.else24.if.then33_crit_edge79:                  ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

if.else24.if.then33_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

if.then33:                                        ; preds = %if.else24.if.then33_crit_edge, %if.else24.if.then33_crit_edge79
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

if.then39:                                        ; preds = %if.else24
  %priv1.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %31 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv1.i, align 4
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %34, i32 4
  %35 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %38, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !64
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.then39.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then39.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then39
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then39.rcu_read_lock.exit.i_crit_edge
  %39 = ptrtoint ptr %add.ptr.i.i68 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i68, align 4
  %tobool.not.i20.i = icmp eq ptr %app, null
  br i1 %tobool.not.i20.i, label %rcu_read_lock.exit.i.nfp_app_dev_get.exit.i_crit_edge, label %lor.rhs.i.i, !prof !65

rcu_read_lock.exit.i.nfp_app_dev_get.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_app_dev_get.exit.i

lor.rhs.i.i:                                      ; preds = %rcu_read_lock.exit.i
  %type.i.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 5
  %41 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %type.i.i, align 4
  %dev_get.i.i = getelementptr inbounds %struct.nfp_app_type, ptr %42, i32 0, i32 35
  %43 = ptrtoint ptr %dev_get.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_get.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %44, null
  br i1 %tobool1.not.i.i, label %lor.rhs.i.i.nfp_app_dev_get.exit.i_crit_edge, label %if.end.i.i, !prof !65

lor.rhs.i.i.nfp_app_dev_get.exit.i_crit_edge:     ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_app_dev_get.exit.i

if.end.i.i:                                       ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i21.i = tail call ptr %44(ptr noundef nonnull %app, i32 noundef %40, ptr noundef null) #9
  %phi.cmp.i = icmp eq ptr %call.i21.i, null
  br label %nfp_app_dev_get.exit.i

nfp_app_dev_get.exit.i:                           ; preds = %if.end.i.i, %lor.rhs.i.i.nfp_app_dev_get.exit.i_crit_edge, %rcu_read_lock.exit.i.nfp_app_dev_get.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %phi.cmp.i, %if.end.i.i ], [ true, %lor.rhs.i.i.nfp_app_dev_get.exit.i_crit_edge ], [ true, %rcu_read_lock.exit.i.nfp_app_dev_get.exit.i_crit_edge ]
  %call.i22.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i22.i, label %nfp_app_dev_get.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i25.i

nfp_app_dev_get.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %nfp_app_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i25.i:                              ; preds = %nfp_app_dev_get.exit.i
  %call1.i23.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i)
  %tobool.not.i24.i = icmp eq i32 %call1.i23.i, 0
  br i1 %tobool.not.i24.i, label %land.lhs.true.i25.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i27.i

land.lhs.true.i25.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i27.i:                             ; preds = %land.lhs.true.i25.i
  %.b4.i26.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26.i, label %land.lhs.true2.i27.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i28.i

land.lhs.true2.i27.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i28.i:                                    ; preds = %land.lhs.true2.i27.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i28.i, %land.lhs.true2.i27.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i25.i.rcu_read_unlock.exit.i_crit_edge, %nfp_app_dev_get.exit.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !66
  %45 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i.i.i29.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i29.i to ptr
  %preempt_count.i.i.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i30.i, align 4
  %sub.i.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i30.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br i1 %retval.0.i.i, label %do.body.i, label %if.end13.i

do.body.i:                                        ; preds = %rcu_read_unlock.exit.i
  %call5.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.body.i.nfp_flower_cmsg_portreify_rx.exit_crit_edge, label %do.end.i

do.body.i.nfp_flower_cmsg_portreify_rx.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_flower_cmsg_portreify_rx.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %cpp.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %49 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cpp.i, align 4
  %call9.i = tail call ptr @nfp_cpp_device(ptr noundef %50) #9
  %parent.i = getelementptr inbounds %struct.device, ptr %call9.i, i32 0, i32 1
  %51 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parent.i, align 8
  %53 = ptrtoint ptr %add.ptr.i.i68 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i68, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.8, i32 noundef %54) #12
  br label %nfp_flower_cmsg_portreify_rx.exit

if.end13.i:                                       ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %reify_replies.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %32, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reify_replies.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %reify_replies.i, i32 1, i32 3, i32 1) #9
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %reify_replies.i, ptr %reify_replies.i, i32 1, ptr elementtype(i32) %reify_replies.i) #9, !srcloc !68
  %reify_wait_queue.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %32, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %reify_wait_queue.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %nfp_flower_cmsg_portreify_rx.exit

nfp_flower_cmsg_portreify_rx.exit:                ; preds = %if.end13.i, %do.end.i, %do.body.i.nfp_flower_cmsg_portreify_rx.exit_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

if.else40:                                        ; preds = %if.else24
  %priv1.i69 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %56 = ptrtoint ptr %priv1.i69 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv1.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %29)
  %cmp.i = icmp eq i8 %29, 8
  %cmsg_skbs_high.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %57, i32 0, i32 15
  %cmsg_skbs_low.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %57, i32 0, i32 16
  %skb_head.0.i = select i1 %cmp.i, ptr %cmsg_skbs_high.i, ptr %cmsg_skbs_low.i
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %skb_head.0.i, i32 0, i32 1
  %58 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29999, i32 %59)
  %cmp2.i = icmp ugt i32 %59, 29999
  br i1 %cmp2.i, label %do.body.i71, label %if.end11.i

do.body.i71:                                      ; preds = %if.else40
  %call4.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i70 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i70, label %do.body.i71.do.end10.i_crit_edge, label %do.end.i74

do.body.i71.do.end10.i_crit_edge:                 ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10.i

do.end.i74:                                       ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #11
  %cpp.i72 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %60 = ptrtoint ptr %cpp.i72 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cpp.i72, align 4
  %call7.i = tail call ptr @nfp_cpp_device(ptr noundef %61) #9
  %parent.i73 = getelementptr inbounds %struct.device, ptr %call7.i, i32 0, i32 1
  %62 = ptrtoint ptr %parent.i73 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parent.i73, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.25) #12
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i74, %do.body.i71.do.end10.i_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br label %cleanup

if.end11.i:                                       ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @skb_queue_tail(ptr noundef %skb_head.0.i, ptr noundef %skb) #9
  %cmsg_work.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %57, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %64 = load ptr, ptr @system_wq, align 4
  %call.i.i.i75 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %64, ptr noundef %cmsg_work.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11.i, %do.end10.i, %nfp_flower_cmsg_portreify_rx.exit, %if.then33, %if.then23, %if.then16, %do.end11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_rx_flow_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_tunnel_request_route_v4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_tunnel_request_route_v6(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_tunnel_keep_alive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_tunnel_keep_alive_v6(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_stats_rlim_reply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfp_flower_lag_unprocessed_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_flower_get_fl_payload_from_ctx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_merge_offloaded_flows(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/flower/cmsg.c", i32 356, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfp_flower_cmsg_rx._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nfp_flower_cmsg_rx._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @skb_queue_head_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/netronome/nfp/flower/cmsg.c", i32 295, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @nfp_flower_cmsg_process_one_rx._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @nfp_flower_cmsg_process_one_rx._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/netronome/nfp/flower/cmsg.c", i32 165, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nfp_flower_cmsg_portmod_rx._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @nfp_flower_cmsg_portmod_rx._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/netronome/nfp/flower/cmsg.c", i32 220, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @nfp_flower_cmsg_merge_hint_rx._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @nfp_flower_cmsg_merge_hint_rx._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/netronome/nfp/flower/cmsg.c", i32 226, i32 3}
!35 = !{ptr @nfp_flower_cmsg_merge_hint_rx._entry.15, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @nfp_flower_cmsg_merge_hint_rx._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/netronome/nfp/flower/cmsg.c", i32 237, i32 4}
!39 = !{ptr @nfp_flower_cmsg_merge_hint_rx._entry.18, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @nfp_flower_cmsg_merge_hint_rx._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/netronome/nfp/flower/cmsg.c", i32 245, i32 3}
!43 = !{ptr @nfp_flower_cmsg_merge_hint_rx._entry.21, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @nfp_flower_cmsg_merge_hint_rx._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/netronome/nfp/flower/cmsg.c", i32 198, i32 3}
!47 = !{ptr @nfp_flower_cmsg_portreify_rx._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @nfp_flower_cmsg_portreify_rx._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/netronome/nfp/flower/cmsg.c", i32 340, i32 3}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @nfp_flower_queue_ctl_msg._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @nfp_flower_queue_ctl_msg._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2149623462}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{i64 2149623728}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2148548828, i64 2148548854, i64 2148548883, i64 2148548917, i64 2148548948, i64 2148548971}
