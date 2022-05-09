; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns/hns_ae_adapt.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns/hns_ae_adapt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.hnae_ae_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dsaf_device = type { ptr, %struct.hnae_ae_dev, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, [1 x ptr], [1 x ptr], [6 x ptr], ptr, [18 x %struct.dsaf_hw_stats], %struct.dsaf_int_stat, %struct.spinlock }
%struct.hnae_ae_dev = type { %struct.device, ptr, ptr, %struct.list_head, ptr, i32, [16 x i8], %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.dsaf_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], i64 }
%struct.dsaf_int_stat = type { [6 x %struct.dsaf_int_xge_src], [6 x %struct.dsaf_int_ppe_src], [6 x %struct.dsaf_int_rocee_src], [1 x %struct.dsaf_int_tbl_src] }
%struct.dsaf_int_xge_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsaf_int_ppe_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsaf_int_rocee_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsaf_int_tbl_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.hnae_ring = type { ptr, ptr, ptr, ptr, i32, [20 x i8], %struct.ring_stats, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.ring_stats = type { i64, i64, i64, %union.anon.125 }
%union.anon.125 = type { %struct.anon.127 }
%struct.anon.127 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.rcb_common_cb = type { ptr, i32, ptr, i16, i16, i8, i32, i32, [100 x i8], [0 x %struct.ring_pair_cb] }
%struct.ring_pair_cb = type { ptr, ptr, [120 x i8], %struct.hnae_queue, i16, i16, [2 x i32], i8, i8, %struct.hns_ring_hw_stats, [64 x i8] }
%struct.hnae_queue = type { ptr, i32, ptr, [116 x i8], %struct.hnae_ring, [64 x i8], %struct.hnae_ring, ptr, [60 x i8] }
%struct.hns_ring_hw_stats = type { i64, i64, i64, i64, i64, i64 }
%struct.hnae_vf_cb = type { i8, ptr, ptr, %struct.hnae_handle }
%struct.hnae_handle = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.list_head, ptr, [0 x ptr] }
%struct.hns_mac_cb = type { ptr, ptr, %struct.mac_priv, ptr, ptr, ptr, ptr, ptr, ptr, [6 x i8], i32, i32, i32, [128 x %struct.mac_entry_idx], i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i64, i64, i32, i32, i32, i32, ptr, %struct.mac_hw_stats }
%struct.mac_priv = type { ptr }
%struct.mac_entry_idx = type { [6 x i8], i16 }
%struct.mac_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ppe_common_cb = type { ptr, ptr, ptr, i32, i8, i32, [0 x %struct.hns_ppe_cb] }
%struct.hns_ppe_cb = type { ptr, ptr, ptr, %struct.hns_ppe_hw_stats, i8, ptr, i32, [256 x i32], [10 x i32] }
%struct.hns_ppe_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.dsaf_misc_op = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@hns_dsaf_ae_init.id = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 -1 }, [28 x i8] zeroinitializer }, align 32
@hns_dsaf_ops = internal global { %struct.hnae_ae_ops, [48 x i8] } { %struct.hnae_ae_ops { ptr @hns_ae_get_handle, ptr @hns_ae_put_handle, ptr @hns_ae_init_queue, ptr @hns_ae_fini_queue, ptr @hns_ae_start, ptr @hns_ae_stop, ptr @hns_ae_reset, ptr null, ptr null, ptr @hns_ae_get_link_status, ptr @hns_ae_get_mac_info, ptr @hns_ae_toggle_ring_irq, ptr @hns_ae_adjust_link, ptr @hns_ae_need_adjust_link, ptr @hns_ae_config_loopback, ptr @hns_ae_get_ring_bdnum_limit, ptr @hns_ae_get_pauseparam, ptr @hns_ae_set_pauseparam, ptr @hns_ae_get_coalesce_usecs, ptr @hns_ae_get_max_coalesced_frames, ptr @hns_ae_set_coalesce_usecs, ptr @hns_ae_set_coalesce_frames, ptr @hns_ae_get_coalesce_range, ptr @hns_ae_set_promisc_mode, ptr null, ptr @hns_ae_set_mac_address, ptr @hns_ae_add_uc_address, ptr @hns_ae_rm_uc_address, ptr @hns_ae_clr_multicast, ptr @hns_ae_set_multicast_one, ptr @hns_ae_set_mtu, ptr @hns_ae_set_tso_stats, ptr @hns_ae_update_stats, ptr @hns_ae_get_stats, ptr @hns_ae_get_strings, ptr @hns_ae_get_sset_count, ptr @hns_ae_update_led_status, ptr @hns_ae_cpld_set_led_id, ptr @hns_ae_get_regs, ptr @hns_ae_get_regs_len, ptr @hns_ae_get_rss_key_size, ptr @hns_ae_get_rss_indir_size, ptr @hns_ae_get_rss, ptr @hns_ae_set_rss }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dsaf\00", [27 x i8] zeroinitializer }, align 32
@hns_ae_get_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 87, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"malloc vf_cb fail!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hns_ae_get_handle\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/hisilicon/hns/hns_ae_adapt.c\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hns_ae_get_handle._entry_ptr = internal global ptr @hns_ae_get_handle._entry, section ".printk_index", align 4
@hns_ae_get_handle._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 106, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"malloc queue fail!\0A\00", [44 x i8] zeroinitializer }, align 32
@hns_ae_get_handle._entry_ptr.9 = internal global ptr @hns_ae_get_handle._entry.7, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hns_ae_set_mac_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 215, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"is not valid ether addr !\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hns_ae_set_mac_address\00", [41 x i8] zeroinitializer }, align 32
@hns_ae_set_mac_address._entry_ptr = internal global ptr @hns_ae_set_mac_address._entry, section ".printk_index", align 4
@hns_ae_set_mac_address._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 222, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set_mac_address fail, ret=%d!\0A\00", [33 x i8] zeroinitializer }, align 32
@hns_ae_set_mac_address._entry_ptr.14 = internal global ptr @hns_ae_set_mac_address._entry.12, section ".printk_index", align 4
@hns_ae_set_multicast_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 267, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"mac add mul_mac:%pM port%d  fail, ret = %#x!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hns_ae_set_multicast_one\00", [39 x i8] zeroinitializer }, align 32
@hns_ae_set_multicast_one._entry_ptr = internal global ptr @hns_ae_set_multicast_one._entry, section ".printk_index", align 4
@hns_ae_set_multicast_one._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@hns_ae_set_multicast_one._entry_ptr.18 = internal global ptr @hns_ae_set_multicast_one._entry.17, section ".printk_index", align 4
@hns_ae_get_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013hns_ae_get_stats NULL handle or data pointer!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hns_ae_get_stats\00", [47 x i8] zeroinitializer }, align 32
@hns_ae_get_stats._entry_ptr = internal global ptr @hns_ae_get_stats._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3552816, i64 825635120]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 3552816, i64 825635120]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.23 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 978, i32 18 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"hns_dsaf_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 931, i32 27 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 991, i32 39 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 991, i32 47 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 87, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 106, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 215, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 221, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 265, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 277, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [53 x i8] c"../drivers/net/ethernet/hisilicon/hns/hns_ae_adapt.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 710, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @hns_ae_get_handle._entry, ptr @hns_ae_get_handle._entry.7, ptr @hns_ae_get_handle._entry_ptr, ptr @hns_ae_get_handle._entry_ptr.9, ptr @hns_ae_get_stats._entry, ptr @hns_ae_get_stats._entry_ptr, ptr @hns_ae_set_mac_address._entry, ptr @hns_ae_set_mac_address._entry.12, ptr @hns_ae_set_mac_address._entry_ptr, ptr @hns_ae_set_mac_address._entry_ptr.14, ptr @hns_ae_set_multicast_one._entry, ptr @hns_ae_set_multicast_one._entry.17, ptr @hns_ae_set_multicast_one._entry_ptr, ptr @hns_ae_set_multicast_one._entry_ptr.18, ptr @hns_dsaf_ae_init.id, ptr @hns_dsaf_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_ae_init.id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_ops to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_ae_get_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_ae_get_handle._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_ae_set_mac_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_ae_set_mac_address._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_ae_set_multicast_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_ae_set_multicast_one._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_ae_get_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_dsaf_ae_init(ptr noundef %dsaf_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 15
  %0 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsaf_ver, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 3552816, label %entry.sw.epilog.sink.split_crit_edge
    i32 825635120, label %sw.bb2
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %entry.sw.epilog.sink.split_crit_edge
  %hns_aev2_toggle_ring_irq.sink = phi ptr [ @hns_aev2_toggle_ring_irq, %sw.bb2 ], [ @hns_ae_toggle_ring_irq, %entry.sw.epilog.sink.split_crit_edge ]
  store ptr %hns_aev2_toggle_ring_irq.sink, ptr getelementptr inbounds (%struct.hnae_ae_ops, ptr @hns_dsaf_ops, i32 0, i32 11), align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ae_dev1 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1
  %name = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @hns_dsaf_ae_init.id, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr nonnull @hns_dsaf_ae_init.id, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @hns_dsaf_ae_init.id, ptr nonnull @hns_dsaf_ae_init.id, i32 1, ptr nonnull elementtype(i32) @hns_dsaf_ae_init.id) #12, !srcloc !52
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !53
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %asmresult.i.i.i.i)
  %ops = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @hns_dsaf_ops, ptr %ops, align 4
  %5 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsaf_dev, align 8
  %dev4 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %dev4, align 8
  %call5 = tail call i32 @hnae_ae_register(ptr noundef %ae_dev1, ptr noundef null) #12
  ret i32 %call5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ae_toggle_ring_irq(ptr nocapture noundef readonly %ring, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 15
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  %q = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 3
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 4
  tail call void @hns_rcb_int_ctrl_hw(ptr noundef %3, i32 noundef %., i32 noundef %mask) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_aev2_toggle_ring_irq(ptr nocapture noundef readonly %ring, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 15
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  %q = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 3
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 4
  tail call void @hns_rcbv2_int_ctrl_hw(ptr noundef %3, i32 noundef %., i32 noundef %mask) #12
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hnae_ae_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_dsaf_ae_uninit(ptr noundef %dsaf_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_dev = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1
  tail call void @hnae_ae_unregister(ptr noundef %ae_dev) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hnae_ae_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_rcb_int_ctrl_hw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hns_ae_get_handle(ptr noundef %dev, i32 noundef %port_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %rcb_common.i = getelementptr i8, ptr %dev, i32 1088
  %0 = ptrtoint ptr %rcb_common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcb_common.i, align 8
  %max_q_per_vf.i = getelementptr inbounds %struct.rcb_common_cb, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %max_q_per_vf.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_q_per_vf.i, align 2
  %conv.i = zext i16 %3 to i32
  %max_vfn.i = getelementptr inbounds %struct.rcb_common_cb, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %max_vfn.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_vfn.i, align 4
  %conv1.i = zext i16 %5 to i32
  %6 = shl nuw nsw i32 %conv.i, 2
  %spec.select.i126 = add nuw nsw i32 %6, 84
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i126, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end, !prof !54

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.2) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %ae_handle11 = getelementptr inbounds %struct.hnae_vf_cb, ptr %call9.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %11 = ptrtoint ptr %ae_handle11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %ae_handle11, align 4
  %dev13 = getelementptr inbounds %struct.hnae_vf_cb, ptr %call9.i.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %dev13, align 16
  %q_num = getelementptr inbounds %struct.hnae_vf_cb, ptr %call9.i.i, i32 0, i32 3, i32 5
  %13 = ptrtoint ptr %q_num to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.i, ptr %q_num, align 32
  %coal_param = getelementptr inbounds %struct.hnae_vf_cb, ptr %call9.i.i, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %coal_param to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 30, ptr %coal_param, align 4
  %vf_id = getelementptr inbounds %struct.hnae_vf_cb, ptr %call9.i.i, i32 0, i32 3, i32 6
  %15 = ptrtoint ptr %vf_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %vf_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp128.not = icmp eq i16 %5, 0
  br i1 %cmp128.not, label %if.end.do.end24_crit_edge, label %for.body.preheader

if.end.do.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24

for.body.preheader:                               ; preds = %if.end
  %mul.i = mul i32 %conv.i, %port_id
  %mul2.i = mul i32 %mul.i, %conv1.i
  %arrayidx3.i = getelementptr %struct.rcb_common_cb, ptr %1, i32 0, i32 9, i32 %mul2.i
  br label %for.body

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %for.body.preheader
  %ring_pair_cb.0130 = phi ptr [ %add.ptr, %if.end17.for.body_crit_edge ], [ %arrayidx3.i, %for.body.preheader ]
  %storemerge129 = phi i32 [ %inc, %if.end17.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %used_by_vf = getelementptr inbounds %struct.ring_pair_cb, ptr %ring_pair_cb.0130, i32 0, i32 8
  %16 = ptrtoint ptr %used_by_vf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %used_by_vf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not = icmp eq i8 %17, 0
  br i1 %tobool15.not, label %for.cond28.preheader, label %if.end17

for.cond28.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp29131.not = icmp eq i16 %3, 0
  br i1 %cmp29131.not, label %for.cond28.preheader.for.end44_crit_edge, label %for.body30.lr.ph

for.cond28.preheader.for.end44_crit_edge:         ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end44

for.body30.lr.ph:                                 ; preds = %for.cond28.preheader
  %qs = getelementptr inbounds %struct.hnae_vf_cb, ptr %call9.i.i, i32 1
  br label %for.body30

if.end17:                                         ; preds = %for.body
  %add.ptr = getelementptr %struct.ring_pair_cb, ptr %ring_pair_cb.0130, i32 %conv.i
  %inc = add nuw nsw i32 %storemerge129, 1
  %18 = ptrtoint ptr %vf_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %inc, ptr %vf_id, align 4
  %exitcond.not = icmp eq i32 %inc, %conv1.i
  br i1 %exitcond.not, label %if.end17.do.end24_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end17.do.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24

do.end24:                                         ; preds = %if.end17.do.end24_crit_edge, %if.end.do.end24_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.8) #16
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.body30.lr.ph
  %ring_pair_cb.1133 = phi ptr [ %ring_pair_cb.0130, %for.body30.lr.ph ], [ %incdec.ptr, %for.body30.for.body30_crit_edge ]
  %i.0132 = phi i32 [ 0, %for.body30.lr.ph ], [ %inc43, %for.body30.for.body30_crit_edge ]
  %q = getelementptr inbounds %struct.ring_pair_cb, ptr %ring_pair_cb.1133, i32 0, i32 3
  %arrayidx = getelementptr [0 x ptr], ptr %qs, i32 0, i32 %i.0132
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %q, ptr %arrayidx, align 4
  %q35 = getelementptr inbounds %struct.ring_pair_cb, ptr %ring_pair_cb.1133, i32 0, i32 3, i32 4, i32 3
  %20 = ptrtoint ptr %q35 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %q, ptr %q35, align 4
  %21 = load ptr, ptr %arrayidx, align 4
  %q40 = getelementptr inbounds %struct.hnae_queue, ptr %21, i32 0, i32 6, i32 3
  %22 = ptrtoint ptr %q40 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %q40, align 4
  %used_by_vf41 = getelementptr inbounds %struct.ring_pair_cb, ptr %ring_pair_cb.1133, i32 0, i32 8
  %23 = ptrtoint ptr %used_by_vf41 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %used_by_vf41, align 1
  %incdec.ptr = getelementptr %struct.ring_pair_cb, ptr %ring_pair_cb.1133, i32 1
  %inc43 = add nuw nsw i32 %i.0132, 1
  %exitcond135.not = icmp eq i32 %inc43, %conv.i
  br i1 %exitcond135.not, label %for.body30.for.end44_crit_edge, label %for.body30.for.body30_crit_edge

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body30

for.body30.for.end44_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end44

for.end44:                                        ; preds = %for.body30.for.end44_crit_edge, %for.cond28.preheader.for.end44_crit_edge
  %dsaf_dev45 = getelementptr inbounds %struct.hnae_vf_cb, ptr %call9.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %dsaf_dev45 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i, ptr %dsaf_dev45, align 8
  %conv = trunc i32 %port_id to i8
  %25 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %call9.i.i, align 128
  %arrayidx46 = getelementptr %struct.dsaf_device, ptr %add.ptr.i, i32 0, i32 19, i32 %port_id
  %26 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx46, align 4
  %mac_cb47 = getelementptr inbounds %struct.hnae_vf_cb, ptr %call9.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %mac_cb47 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %mac_cb47, align 4
  %phy_if = getelementptr inbounds %struct.hns_mac_cb, ptr %27, i32 0, i32 28
  %29 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %phy_if, align 8
  %phy_if49 = getelementptr inbounds %struct.hnae_vf_cb, ptr %call9.i.i, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %phy_if49 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %phy_if49, align 8
  %phy_dev = getelementptr inbounds %struct.hns_mac_cb, ptr %27, i32 0, i32 30
  %32 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy_dev, align 8
  %phy_dev51 = getelementptr inbounds %struct.hnae_vf_cb, ptr %call9.i.i, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %phy_dev51 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %phy_dev51, align 4
  %if_support = getelementptr inbounds %struct.hns_mac_cb, ptr %27, i32 0, i32 23
  %35 = ptrtoint ptr %if_support to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %if_support, align 8
  %if_support53 = getelementptr inbounds %struct.hnae_vf_cb, ptr %call9.i.i, i32 0, i32 3, i32 4
  %37 = ptrtoint ptr %if_support53 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %if_support53, align 4
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %27, i32 0, i32 26
  %38 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mac_type, align 8
  %port_type = getelementptr inbounds %struct.hnae_vf_cb, ptr %call9.i.i, i32 0, i32 3, i32 13
  %40 = ptrtoint ptr %port_type to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %port_type, align 64
  %media_type = getelementptr inbounds %struct.hns_mac_cb, ptr %27, i32 0, i32 27
  %41 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %media_type, align 4
  %media_type56 = getelementptr inbounds %struct.hnae_vf_cb, ptr %call9.i.i, i32 0, i32 3, i32 14
  %43 = ptrtoint ptr %media_type56 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %media_type56, align 4
  %dport_id = getelementptr inbounds %struct.hnae_vf_cb, ptr %call9.i.i, i32 0, i32 3, i32 11
  %44 = ptrtoint ptr %dport_id to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %port_id, ptr %dport_id, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end44, %do.end24, %do.end
  %retval.0 = phi ptr [ %ae_handle11, %for.end44 ], [ inttoptr (i32 -12 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end24 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ae_put_handle(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %q_num = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %q_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7 = icmp sgt i32 %1, 0
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hnae_handle, ptr %handle, i32 0, i32 17, i32 %i.08
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %used_by_vf = getelementptr i8, ptr %3, i32 653
  %4 = ptrtoint ptr %used_by_vf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %used_by_vf, align 1
  %inc = add nuw nsw i32 %i.08, 1
  %5 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %q_num, align 4
  %cmp = icmp slt i32 %inc, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %handle, i32 -12
  tail call void @kfree(ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ae_init_queue(ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %q, i32 -128
  tail call void @hns_rcb_init_hw(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ae_fini_queue(ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.hnae_queue, ptr %q, i32 0, i32 7
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 64
  %mac_cb = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_cb, align 4
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @hns_rcb_reset_ring_hw(ptr noundef %q) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_ae_start(ptr nocapture noundef readonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %0 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb.i, align 4
  %call1 = tail call i32 @hns_mac_vm_config_bc_en(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %q_num = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 5
  %2 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp19 = icmp sgt i32 %3, 0
  br i1 %cmp19, label %for.body.lr.ph, label %for.cond.preheader.hns_ae_ring_enable_all.exit_crit_edge

for.cond.preheader.hns_ae_ring_enable_all.exit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %hns_ae_ring_enable_all.exit

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dsaf_dev = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %k.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsaf_dev, align 4
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %7)
  %cmp2 = icmp eq i32 %7, 3552816
  %arrayidx = getelementptr %struct.hnae_handle, ptr %handle, i32 0, i32 17, i32 %k.020
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @hns_rcb_int_clr_hw(ptr noundef %9, i32 noundef 3) #12
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @hns_rcbv2_int_clr_hw(ptr noundef %9, i32 noundef 3) #12
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then3
  %inc = add nuw nsw i32 %k.020, 1
  %10 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %q_num, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp5.i = icmp sgt i32 %11, 0
  br i1 %cmp5.i, label %for.end.for.body.i_crit_edge, label %for.end.hns_ae_ring_enable_all.exit_crit_edge

for.end.hns_ae_ring_enable_all.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %hns_ae_ring_enable_all.exit

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hnae_handle, ptr %handle, i32 0, i32 17, i32 %i.06.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  tail call void @hns_rcb_ring_enable_hw(ptr noundef %13, i32 noundef 1) #12
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.body.i.hns_ae_ring_enable_all.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.hns_ae_ring_enable_all.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hns_ae_ring_enable_all.exit

hns_ae_ring_enable_all.exit:                      ; preds = %for.body.i.hns_ae_ring_enable_all.exit_crit_edge, %for.end.hns_ae_ring_enable_all.exit_crit_edge, %for.cond.preheader.hns_ae_ring_enable_all.exit_crit_edge
  tail call void @msleep(i32 noundef 100) #12
  tail call void @hns_mac_start(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %hns_ae_ring_enable_all.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hns_ae_ring_enable_all.exit ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ae_stop(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %0 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb.i, align 4
  %qs = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 17
  %q_num = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 5
  %2 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q_num, align 4
  tail call void @hns_rcb_wait_fbd_clean(ptr noundef %qs, i32 noundef %3, i32 noundef 1) #12
  tail call void @msleep(i32 noundef 20) #12
  tail call void @hns_mac_stop(ptr noundef %1) #12
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  %4 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.i = icmp sgt i32 %5, 0
  br i1 %cmp5.i, label %entry.for.body.i_crit_edge, label %entry.hns_ae_ring_enable_all.exit_crit_edge

entry.hns_ae_ring_enable_all.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %hns_ae_ring_enable_all.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hnae_handle, ptr %handle, i32 0, i32 17, i32 %i.06.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @hns_rcb_ring_enable_hw(ptr noundef %7, i32 noundef 0) #12
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.body.i.hns_ae_ring_enable_all.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.hns_ae_ring_enable_all.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hns_ae_ring_enable_all.exit

hns_ae_ring_enable_all.exit:                      ; preds = %for.body.i.hns_ae_ring_enable_all.exit_crit_edge, %entry.hns_ae_ring_enable_all.exit_crit_edge
  %8 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %q_num, align 4
  tail call void @hns_rcb_wait_fbd_clean(ptr noundef %qs, i32 noundef %9, i32 noundef 2) #12
  %call4 = tail call i32 @hns_mac_vm_config_bc_en(ptr noundef %1, i32 noundef 0, i1 noundef zeroext false) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ae_reset(ptr nocapture noundef readonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb = getelementptr i8, ptr %handle, i32 -8
  %0 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb, align 4
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @hns_mac_reset(ptr noundef %1) #12
  %dsaf_dev = getelementptr i8, ptr %handle, i32 -4
  %4 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsaf_dev, align 4
  tail call void @hns_ppe_reset_common(ptr noundef %5, i8 noundef zeroext 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_ae_get_link_status(ptr nocapture noundef readonly %handle) #0 align 64 {
entry:
  %link_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_status) #12
  %0 = ptrtoint ptr %link_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_status, align 4, !annotation !55
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %1 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mac_cb.i, align 4
  call void @hns_mac_get_link_status(ptr noundef %2, ptr noundef nonnull %link_status) #12
  %3 = ptrtoint ptr %link_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %link_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %lnot.ext = zext i1 %tobool to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_status) #12
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_ae_get_mac_info(ptr nocapture noundef readonly %handle, ptr noundef %auto_neg, ptr noundef %speed, ptr noundef %duplex) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %0 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb.i, align 4
  %call1 = tail call i32 @hns_mac_get_port_info(ptr noundef %1, ptr noundef %auto_neg, ptr noundef %speed, ptr noundef %duplex) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ae_adjust_link(ptr nocapture noundef readonly %handle, i32 noundef %speed, i32 noundef %duplex) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %0 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb.i, align 4
  %dsaf_dev = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsaf_dev, align 4
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsaf_ver, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 3552816, label %sw.bb
    i32 825635120, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @hns_mac_adjust_link(ptr noundef %1, i32 noundef %speed, i32 noundef %duplex) #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  tail call void @hns_mac_disable(ptr noundef %1, i32 noundef 1) #12
  %q_num.i = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 5
  %7 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %q_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp41.i = icmp sgt i32 %8, 0
  br i1 %cmp41.i, label %sw.bb1.for.body.i_crit_edge, label %sw.bb1.for.end.i_crit_edge

sw.bb1.for.end.i_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

sw.bb1.for.body.i_crit_edge:                      ; preds = %sw.bb1
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %9 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %q_num.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %10
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %sw.bb1.for.body.i_crit_edge
  %i.042.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %sw.bb1.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hnae_handle, ptr %handle, i32 0, i32 17, i32 %i.042.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @hns_rcb_wait_tx_ring_clean(ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.if.then_crit_edge

for.body.i.if.then_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %sw.bb1.for.end.i_crit_edge
  %add.ptr.i.i.i = getelementptr i8, ptr %handle, i32 -12
  %dsaf_dev.i.i = getelementptr i8, ptr %handle, i32 -4
  %13 = ptrtoint ptr %dsaf_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dsaf_dev.i.i, align 4
  %ppe_common.i.i = getelementptr inbounds %struct.dsaf_device, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %ppe_common.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ppe_common.i.i, align 4
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr.i.i.i, align 4
  %conv.i.i = zext i8 %18 to i32
  %arrayidx1.i.i = getelementptr %struct.ppe_common_cb, ptr %16, i32 0, i32 6, i32 %conv.i.i
  %call2.i = tail call i32 @hns_ppe_wait_tx_fifo_clean(ptr noundef %arrayidx1.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %for.end.i.if.then_crit_edge

for.end.i.if.then_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end5.i:                                        ; preds = %for.end.i
  %dev.i = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 1
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 -8
  %tobool7.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool7.not.i, label %if.end5.i.if.then_crit_edge, label %if.end9.i

if.end5.i.if.then_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end9.i:                                        ; preds = %if.end5.i
  %dport_id.i = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 11
  %21 = ptrtoint ptr %dport_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dport_id.i, align 4
  %call10.i = tail call i32 @hns_dsaf_wait_pkt_clean(ptr noundef nonnull %add.ptr.i.i, i32 noundef %22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.if.then_crit_edge

if.end9.i.if.then_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end13.i:                                       ; preds = %if.end9.i
  %23 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mac_cb.i, align 4
  %call15.i = tail call i32 @hns_mac_wait_fifo_clean(ptr noundef %24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end, label %if.end13.i.if.then_crit_edge

if.end13.i.if.then_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %if.end13.i.if.then_crit_edge, %if.end9.i.if.then_crit_edge, %if.end5.i.if.then_crit_edge, %for.end.i.if.then_crit_edge, %for.body.i.if.then_crit_edge
  tail call void @hns_mac_enable(ptr noundef %1, i32 noundef 1) #12
  br label %sw.epilog

if.end:                                           ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #12
  tail call void @hns_mac_adjust_link(ptr noundef %1, i32 noundef %speed, i32 noundef %duplex) #12
  tail call void @hns_mac_enable(ptr noundef %1, i32 noundef 1) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.then, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hns_ae_need_adjust_link(ptr nocapture noundef readonly %handle, i32 noundef %speed, i32 noundef %duplex) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %0 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb.i, align 4
  %call1 = tail call zeroext i1 @hns_mac_need_adjust_link(ptr noundef %1, i32 noundef %speed, i32 noundef %duplex) #12
  ret i1 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_ae_config_loopback(ptr nocapture noundef readonly %handle, i32 noundef %loop, i32 noundef %en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %loop to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %loop, label %sw.default [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb3
    i32 0, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %1 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mac_cb.i, align 4
  %dsaf_dev2 = getelementptr inbounds %struct.hns_mac_cb, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dsaf_dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dsaf_dev2, align 4
  %misc_op = getelementptr inbounds %struct.dsaf_device, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %misc_op to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %misc_op, align 4
  %cfg_serdes_loopback = getelementptr inbounds %struct.dsaf_misc_op, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %cfg_serdes_loopback to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg_serdes_loopback, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %en)
  %tobool = icmp ne i32 %en, 0
  %call6 = tail call i32 %8(ptr noundef %2, i1 noundef zeroext %tobool) #12
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mac_cb8 = getelementptr i8, ptr %handle, i32 -8
  %9 = ptrtoint ptr %mac_cb8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mac_cb8, align 4
  %call9 = tail call i32 @hns_mac_config_mac_loopback(ptr noundef %10, i32 noundef 0, i32 noundef %en) #12
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb3, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %sw.default ], [ %call9, %sw.bb7 ], [ %call6, %sw.bb3 ], [ 0, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @hns_ae_get_ring_bdnum_limit(ptr nocapture noundef readnone %queue, ptr nocapture noundef writeonly %uplimit) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %uplimit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1024, ptr %uplimit, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ae_get_pauseparam(ptr nocapture noundef readonly %handle, ptr noundef %auto_neg, ptr noundef %rx_en, ptr noundef %tx_en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %0 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb.i, align 4
  %dsaf_dev1 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dsaf_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsaf_dev1, align 4
  tail call void @hns_mac_get_autoneg(ptr noundef %1, ptr noundef %auto_neg) #12
  tail call void @hns_mac_get_pauseparam(ptr noundef %1, ptr noundef %rx_en, ptr noundef %tx_en) #12
  %port_type = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 13
  %4 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mac_id = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mac_id, align 2
  %conv = zext i8 %7 to i32
  tail call void @hns_dsaf_get_rx_mac_pause_en(ptr noundef %3, i32 noundef %conv, ptr noundef %rx_en) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_ae_set_pauseparam(ptr nocapture noundef readonly %handle, i32 noundef %autoneg, i32 noundef %rx_en, i32 noundef %tx_en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %0 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb.i, align 4
  %dsaf_dev1 = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dsaf_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsaf_dev1, align 4
  %conv = trunc i32 %autoneg to i8
  %call2 = tail call i32 @hns_mac_set_autoneg(ptr noundef %1, i8 noundef zeroext %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_type = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 13
  %4 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %mac_id = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mac_id, align 2
  %conv5 = zext i8 %7 to i32
  %call6 = tail call i32 @hns_dsaf_set_rx_mac_pause_en(ptr noundef %3, i32 noundef %conv5, i32 noundef %rx_en) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then4.if.end10_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %rx_en.addr.0 = phi i32 [ %rx_en, %if.end.if.end10_crit_edge ], [ 0, %if.then4.if.end10_crit_edge ]
  %call11 = tail call i32 @hns_mac_set_pauseparam(ptr noundef %1, i32 noundef %rx_en.addr.0, i32 noundef %tx_en) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ %call2, %entry.cleanup_crit_edge ], [ %call6, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ae_get_coalesce_usecs(ptr nocapture noundef readonly %handle, ptr nocapture noundef writeonly %tx_usecs, ptr nocapture noundef writeonly %rx_usecs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qs = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 17
  %0 = ptrtoint ptr %qs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 128
  %port_id_in_comm = getelementptr i8, ptr %1, i32 652
  %4 = ptrtoint ptr %port_id_in_comm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_id_in_comm, align 4
  %conv = zext i8 %5 to i32
  %call = tail call i32 @hns_rcb_get_coalesce_usecs(ptr noundef %3, i32 noundef %conv) #12
  %6 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %tx_usecs, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 128
  %9 = ptrtoint ptr %port_id_in_comm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %port_id_in_comm, align 4
  %conv3 = zext i8 %10 to i32
  %call4 = tail call i32 @hns_rcb_get_coalesce_usecs(ptr noundef %8, i32 noundef %conv3) #12
  %11 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call4, ptr %rx_usecs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ae_get_max_coalesced_frames(ptr nocapture noundef readonly %handle, ptr nocapture noundef writeonly %tx_frames, ptr nocapture noundef writeonly %rx_frames) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qs = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 17
  %0 = ptrtoint ptr %qs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -128
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dsaf_ver = getelementptr i8, ptr %3, i32 1076
  %4 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %5)
  %cmp = icmp eq i32 %5, 3552816
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %port_type = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 13
  %6 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1 = icmp eq i32 %7, 1
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 128
  %port_id_in_comm = getelementptr i8, ptr %1, i32 652
  %10 = ptrtoint ptr %port_id_in_comm to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_id_in_comm, align 4
  %conv = zext i8 %11 to i32
  %call2 = tail call i32 @hns_rcb_get_rx_coalesced_frames(ptr noundef %9, i32 noundef %conv) #12
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 128
  %port_id_in_comm4 = getelementptr i8, ptr %1, i32 652
  %14 = ptrtoint ptr %port_id_in_comm4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_id_in_comm4, align 4
  %conv5 = zext i8 %15 to i32
  %call6 = tail call i32 @hns_rcb_get_tx_coalesced_frames(ptr noundef %13, i32 noundef %conv5) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %call6, %if.else ], [ %call2, %if.then ]
  %16 = ptrtoint ptr %tx_frames to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %tx_frames, align 4
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 128
  %port_id_in_comm8 = getelementptr i8, ptr %1, i32 652
  %19 = ptrtoint ptr %port_id_in_comm8 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %port_id_in_comm8, align 4
  %conv9 = zext i8 %20 to i32
  %call10 = tail call i32 @hns_rcb_get_rx_coalesced_frames(ptr noundef %18, i32 noundef %conv9) #12
  %21 = ptrtoint ptr %rx_frames to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call10, ptr %rx_frames, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_ae_set_coalesce_usecs(ptr nocapture noundef readonly %handle, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qs = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 17
  %0 = ptrtoint ptr %qs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 128
  %port_id_in_comm = getelementptr i8, ptr %1, i32 652
  %4 = ptrtoint ptr %port_id_in_comm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_id_in_comm, align 4
  %conv = zext i8 %5 to i32
  %call = tail call i32 @hns_rcb_set_coalesce_usecs(ptr noundef %3, i32 noundef %conv, i32 noundef %timeout) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_ae_set_coalesce_frames(ptr nocapture noundef readonly %handle, i32 noundef %tx_frames, i32 noundef %rx_frames) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qs = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 17
  %0 = ptrtoint ptr %qs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -128
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dsaf_ver = getelementptr i8, ptr %3, i32 1076
  %4 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %5)
  %cmp = icmp eq i32 %5, 3552816
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %port_type = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 13
  %6 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1 = icmp eq i32 %7, 1
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_frames, i32 %rx_frames)
  %cmp2.not = icmp eq i32 %tx_frames, %rx_frames
  br i1 %cmp2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 128
  %port_id_in_comm = getelementptr i8, ptr %1, i32 652
  %10 = ptrtoint ptr %port_id_in_comm to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_id_in_comm, align 4
  %conv = zext i8 %11 to i32
  %call4 = tail call i32 @hns_rcb_set_rx_coalesced_frames(ptr noundef %9, i32 noundef %conv, i32 noundef %tx_frames) #12
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tx_frames)
  %cmp5.not = icmp eq i32 %tx_frames, 1
  br i1 %cmp5.not, label %if.end8, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.else
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 128
  %port_id_in_comm10 = getelementptr i8, ptr %1, i32 652
  %14 = ptrtoint ptr %port_id_in_comm10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_id_in_comm10, align 4
  %conv11 = zext i8 %15 to i32
  %call12 = tail call i32 @hns_rcb_set_tx_coalesced_frames(ptr noundef %13, i32 noundef %conv11, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 128
  %18 = ptrtoint ptr %port_id_in_comm10 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_id_in_comm10, align 4
  %conv17 = zext i8 %19 to i32
  %call18 = tail call i32 @hns_rcb_set_rx_coalesced_frames(ptr noundef %17, i32 noundef %conv17, i32 noundef %rx_frames) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end8.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call18, %if.end14 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %call12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hns_ae_get_coalesce_range(ptr nocapture noundef readonly %handle, ptr nocapture noundef writeonly %tx_frames_low, ptr nocapture noundef writeonly %rx_frames_low, ptr nocapture noundef writeonly %tx_frames_high, ptr nocapture noundef writeonly %rx_frames_high, ptr nocapture noundef writeonly %tx_usecs_low, ptr nocapture noundef writeonly %rx_usecs_low, ptr nocapture noundef writeonly %tx_usecs_high, ptr nocapture noundef writeonly %rx_usecs_high) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %tx_frames_low to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %tx_frames_low, align 4
  %3 = ptrtoint ptr %rx_frames_low to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %rx_frames_low, align 4
  %dsaf_ver = getelementptr i8, ptr %1, i32 1076
  %4 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %5)
  %cmp = icmp eq i32 %5, 3552816
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %port_type = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 13
  %6 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1 = icmp eq i32 %7, 1
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %desc_num = getelementptr i8, ptr %1, i32 1048
  %8 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc_num, align 8
  %sub = add i32 %9, -1
  %10 = tail call i32 @llvm.umin.i32(i32 %sub, i32 1023)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %storemerge = phi i32 [ %10, %if.then ], [ 1, %lor.lhs.false.if.end_crit_edge ]
  %11 = ptrtoint ptr %tx_frames_high to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %tx_frames_high, align 4
  %desc_num5 = getelementptr i8, ptr %1, i32 1048
  %12 = ptrtoint ptr %desc_num5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %desc_num5, align 8
  %sub6 = add i32 %13, -1
  %14 = tail call i32 @llvm.umin.i32(i32 %sub6, i32 1023)
  %15 = ptrtoint ptr %rx_frames_high to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rx_frames_high, align 4
  %16 = ptrtoint ptr %tx_usecs_low to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %tx_usecs_low, align 4
  %17 = ptrtoint ptr %rx_usecs_low to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %rx_usecs_low, align 4
  %18 = ptrtoint ptr %tx_usecs_high to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1023, ptr %tx_usecs_high, align 4
  %19 = ptrtoint ptr %rx_usecs_high to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1023, ptr %rx_usecs_high, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ae_set_promisc_mode(ptr nocapture noundef readonly %handle, i32 noundef %en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %0 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb.i, align 4
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -8
  tail call void @hns_dsaf_set_promisc_mode(ptr noundef %add.ptr.i, i32 noundef %en) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %en)
  %tobool = icmp ne i32 %en, 0
  %conv = zext i1 %tobool to i8
  tail call void @hns_mac_set_promisc(ptr noundef %1, i8 noundef zeroext %conv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_ae_set_mac_address(ptr nocapture noundef readonly %handle, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %0 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb.i, align 4
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

is_valid_ether_addr.exit:                         ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %p, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end_crit_edge, label %if.end

is_valid_ether_addr.exit.do.end_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %is_valid_ether_addr.exit.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handle, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.10) #16
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %vf_id = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 6
  %9 = ptrtoint ptr %vf_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vf_id, align 4
  %call2 = tail call i32 @hns_mac_change_vf_addr(ptr noundef %1, i32 noundef %10, ptr noundef nonnull %p) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handle, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.13, i32 noundef %call2) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end6 ], [ -99, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_ae_add_uc_address(ptr nocapture noundef readonly %handle, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %0 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb.i, align 4
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vf_id = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 6
  %4 = ptrtoint ptr %vf_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vf_id, align 4
  %conv = trunc i32 %5 to i8
  %call1 = tail call i32 @hns_mac_add_uc_addr(ptr noundef %1, i8 noundef zeroext %conv, ptr noundef %addr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_ae_rm_uc_address(ptr nocapture noundef readonly %handle, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %0 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb.i, align 4
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vf_id = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 6
  %4 = ptrtoint ptr %vf_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vf_id, align 4
  %conv = trunc i32 %5 to i8
  %call1 = tail call i32 @hns_mac_rm_uc_addr(ptr noundef %1, i8 noundef zeroext %conv, ptr noundef %addr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_ae_clr_multicast(ptr nocapture noundef readonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %0 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb.i, align 4
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vf_id = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 6
  %4 = ptrtoint ptr %vf_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vf_id, align 4
  %call1 = tail call i32 @hns_mac_clr_multicast(ptr noundef %1, i32 noundef %5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_ae_set_multicast_one(ptr nocapture noundef readonly %handle, ptr noundef %addr) #0 align 64 {
entry:
  %port_num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %0 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %port_num) #12
  %2 = ptrtoint ptr %port_num to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %port_num, align 1, !annotation !55
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 26
  %3 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_id = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mac_id, align 2
  %conv = zext i8 %6 to i32
  %call1 = tail call i32 @hns_mac_set_multi(ptr noundef %1, i32 noundef %conv, ptr noundef %addr, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handle, align 4
  %9 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mac_id, align 2
  %conv4 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef %addr, i32 noundef %conv4, i32 noundef %call1) #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %vf_id = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 6
  %11 = ptrtoint ptr %vf_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vf_id, align 4
  %conv6 = trunc i32 %12 to i8
  %call7 = call i32 @hns_mac_get_inner_port_num(ptr noundef %1, i8 noundef zeroext %conv6, ptr noundef nonnull %port_num) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %13 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port_num, align 1
  %conv11 = zext i8 %14 to i32
  %call12 = call i32 @hns_mac_set_multi(ptr noundef %1, i32 noundef %conv11, ptr noundef %addr, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %do.end17

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.15, ptr noundef %addr, i32 noundef 127, i32 noundef %call12) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ %call12, %do.end17 ], [ 0, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port_num) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_ae_set_mtu(ptr nocapture noundef readonly %handle, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %0 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb.i, align 4
  %dsaf_dev = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsaf_dev, align 4
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %5)
  %cmp = icmp eq i32 %5, 3552816
  br i1 %cmp, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6001, i32 %new_mtu)
  %cmp1 = icmp slt i32 %new_mtu, 6001
  %. = select i1 %cmp1, i32 2048, i32 4096
  br label %if.end5

if.else3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %buf_size = getelementptr inbounds %struct.dsaf_device, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_size, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else3, %if.then
  %rx_buf_size.0 = phi i32 [ %7, %if.else3 ], [ %., %if.then ]
  %call6 = tail call i32 @hns_mac_set_mtu(ptr noundef %1, i32 noundef %new_mtu, i32 noundef %rx_buf_size.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.cond.preheader:                               ; preds = %if.end5
  %q_num = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 5
  %8 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %q_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp822 = icmp sgt i32 %9, 0
  br i1 %cmp822, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end10_crit_edge

for.cond.preheader.if.end10_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hnae_handle, ptr %handle, i32 0, i32 17, i32 %i.023
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %buf_size9 = getelementptr inbounds %struct.hnae_queue, ptr %11, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %buf_size9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %rx_buf_size.0, ptr %buf_size9, align 4
  tail call void @hns_rcb_set_rx_ring_bs(ptr noundef %11, i32 noundef %rx_buf_size.0) #12
  %inc = add nuw nsw i32 %i.023, 1
  %13 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %q_num, align 4
  %cmp8 = icmp slt i32 %inc, %14
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.body.if.end10_crit_edge

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end10:                                         ; preds = %for.body.if.end10_crit_edge, %for.cond.preheader.if.end10_crit_edge, %if.end5.if.end10_crit_edge
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ae_set_tso_stats(ptr nocapture noundef readonly %handle, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %handle, i32 -12
  %dsaf_dev.i = getelementptr i8, ptr %handle, i32 -4
  %0 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev.i, align 4
  %ppe_common.i = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ppe_common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppe_common.i, align 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i.i, align 4
  %conv.i = zext i8 %5 to i32
  %arrayidx1.i = getelementptr %struct.ppe_common_cb, ptr %3, i32 0, i32 6, i32 %conv.i
  tail call void @hns_ppe_set_tso_enable(ptr noundef %arrayidx1.i, i32 noundef %enable) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ae_update_stats(ptr nocapture noundef readonly %handle, ptr nocapture noundef writeonly %net_stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr.i199 = getelementptr i8, ptr %1, i32 -8
  %tobool.not = icmp eq ptr %add.ptr.i199, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %handle, i32 -12
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr.i, align 4
  %conv = zext i8 %3 to i32
  %dsaf_dev.i = getelementptr i8, ptr %handle, i32 -4
  %4 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsaf_dev.i, align 4
  %ppe_common.i = getelementptr inbounds %struct.dsaf_device, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %ppe_common.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppe_common.i, align 4
  %arrayidx1.i = getelementptr %struct.ppe_common_cb, ptr %7, i32 0, i32 6, i32 %conv
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %8 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac_cb.i, align 4
  %q_num = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 5
  %10 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %q_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp200 = icmp sgt i32 %11, 0
  br i1 %cmp200, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %rx_errors.0206 = phi i64 [ %add23, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %rx_packets.0205 = phi i64 [ %add14, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %tx_packets.0204 = phi i64 [ %add8, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %rx_bytes.0203 = phi i64 [ %add11, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %tx_bytes.0202 = phi i64 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %idx.0201 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hnae_handle, ptr %handle, i32 0, i32 17, i32 %idx.0201
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void @hns_rcb_update_stats(ptr noundef %13) #12
  %14 = getelementptr inbounds %struct.hnae_queue, ptr %13, i32 0, i32 6, i32 6, i32 3
  %tx_bytes5 = getelementptr inbounds %struct.hnae_queue, ptr %13, i32 0, i32 6, i32 6, i32 3, i32 0, i32 1
  %15 = ptrtoint ptr %tx_bytes5 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tx_bytes5, align 8
  %add = add i64 %16, %tx_bytes.0202
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %14, align 8
  %add8 = add i64 %18, %tx_packets.0204
  %19 = getelementptr inbounds %struct.hnae_queue, ptr %13, i32 0, i32 4, i32 6, i32 3
  %rx_bytes10 = getelementptr inbounds %struct.hnae_queue, ptr %13, i32 0, i32 4, i32 6, i32 3, i32 0, i32 1
  %20 = ptrtoint ptr %rx_bytes10 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rx_bytes10, align 8
  %add11 = add i64 %21, %rx_bytes.0203
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %19, align 8
  %add14 = add i64 %23, %rx_packets.0205
  %err_pkt_len = getelementptr inbounds %struct.hnae_queue, ptr %13, i32 0, i32 4, i32 6, i32 3, i32 0, i32 4
  %24 = ptrtoint ptr %err_pkt_len to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %err_pkt_len, align 8
  %l2_err = getelementptr inbounds %struct.hnae_queue, ptr %13, i32 0, i32 4, i32 6, i32 3, i32 0, i32 7
  %26 = ptrtoint ptr %l2_err to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %l2_err, align 8
  %l3l4_csum_err = getelementptr inbounds %struct.hnae_queue, ptr %13, i32 0, i32 4, i32 6, i32 3, i32 0, i32 8
  %28 = ptrtoint ptr %l3l4_csum_err to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %l3l4_csum_err, align 8
  %add19 = add i64 %25, %rx_errors.0206
  %add22 = add i64 %add19, %27
  %add23 = add i64 %add22, %29
  %inc = add nuw nsw i32 %idx.0201, 1
  %30 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %q_num, align 4
  %cmp = icmp slt i32 %inc, %31
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %extract.t214 = trunc i64 %add14 to i32
  %extract.t213 = trunc i64 %add8 to i32
  %extract.t212 = trunc i64 %add11 to i32
  %extract.t211 = trunc i64 %add to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %tx_bytes.0.lcssa.off0 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %extract.t211, %for.end.loopexit ]
  %rx_bytes.0.lcssa.off0 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %extract.t212, %for.end.loopexit ]
  %tx_packets.0.lcssa.off0 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %extract.t213, %for.end.loopexit ]
  %rx_packets.0.lcssa.off0 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %extract.t214, %for.end.loopexit ]
  %rx_errors.0.lcssa = phi i64 [ 0, %if.end.for.end_crit_edge ], [ %add23, %for.end.loopexit ]
  tail call void @hns_ppe_update_stats(ptr noundef %arrayidx1.i) #12
  %rx_drop_no_buf = getelementptr %struct.ppe_common_cb, ptr %7, i32 0, i32 6, i32 %conv, i32 3, i32 5
  %32 = ptrtoint ptr %rx_drop_no_buf to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rx_drop_no_buf, align 8
  %tx_err_checksum = getelementptr %struct.ppe_common_cb, ptr %7, i32 0, i32 6, i32 %conv, i32 3, i32 11
  %34 = ptrtoint ptr %tx_err_checksum to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %tx_err_checksum, align 8
  %tx_err_fifo_empty = getelementptr %struct.ppe_common_cb, ptr %7, i32 0, i32 6, i32 %conv, i32 3, i32 10
  %36 = ptrtoint ptr %tx_err_fifo_empty to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %tx_err_fifo_empty, align 8
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %9, i32 0, i32 26
  %38 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp28 = icmp eq i32 %39, 0
  %extract.t198 = trunc i64 %33 to i32
  br i1 %cmp28, label %if.then30, label %for.end.if.end62_crit_edge

for.end.if.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @hns_dsaf_update_stats(ptr noundef nonnull %add.ptr.i199, i32 noundef %conv) #12
  %arrayidx32 = getelementptr %struct.dsaf_device, ptr %add.ptr.i199, i32 0, i32 21, i32 %conv
  %bp_drop = getelementptr %struct.dsaf_device, ptr %add.ptr.i199, i32 0, i32 21, i32 %conv, i32 8
  %40 = ptrtoint ptr %bp_drop to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %bp_drop, align 8
  %add33 = add i64 %41, %33
  %42 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx32, align 8
  %add36 = add i64 %add33, %43
  %crc_false = getelementptr %struct.dsaf_device, ptr %add.ptr.i199, i32 0, i32 21, i32 %conv, i32 7
  %44 = ptrtoint ptr %crc_false to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %crc_false, align 8
  %add39 = add i64 %add36, %45
  %add40 = add nuw nsw i32 %conv, 6
  tail call void @hns_dsaf_update_stats(ptr noundef nonnull %add.ptr.i199, i32 noundef %add40) #12
  %arrayidx42 = getelementptr %struct.dsaf_device, ptr %add.ptr.i199, i32 0, i32 21, i32 %add40
  %bp_drop43 = getelementptr %struct.dsaf_device, ptr %add.ptr.i199, i32 0, i32 21, i32 %add40, i32 8
  %46 = ptrtoint ptr %bp_drop43 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %bp_drop43, align 8
  %48 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx42, align 8
  %add48 = add i64 %49, %47
  %crc_false51 = getelementptr %struct.dsaf_device, ptr %add.ptr.i199, i32 0, i32 21, i32 %add40, i32 7
  %50 = ptrtoint ptr %crc_false51 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %crc_false51, align 8
  %add52 = add i64 %add48, %51
  %rslt_drop = getelementptr %struct.dsaf_device, ptr %add.ptr.i199, i32 0, i32 21, i32 %add40, i32 9
  %52 = ptrtoint ptr %rslt_drop to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %rslt_drop, align 8
  %add55 = add i64 %add52, %53
  %vlan_drop = getelementptr %struct.dsaf_device, ptr %add.ptr.i199, i32 0, i32 21, i32 %add40, i32 11
  %54 = ptrtoint ptr %vlan_drop to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %vlan_drop, align 8
  %add58 = add i64 %add55, %55
  %stp_drop = getelementptr %struct.dsaf_device, ptr %add.ptr.i199, i32 0, i32 21, i32 %add40, i32 12
  %56 = ptrtoint ptr %stp_drop to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %stp_drop, align 8
  %add61 = add i64 %add58, %57
  %extract.t = trunc i64 %add61 to i32
  %extract.t197 = trunc i64 %add39 to i32
  br label %if.end62

if.end62:                                         ; preds = %if.then30, %for.end.if.end62_crit_edge
  %tx_dropped.0.off0 = phi i32 [ %extract.t, %if.then30 ], [ 0, %for.end.if.end62_crit_edge ]
  %rx_missed_errors.0.off0 = phi i32 [ %extract.t197, %if.then30 ], [ %extract.t198, %for.end.if.end62_crit_edge ]
  tail call void @hns_mac_update_stats(ptr noundef %9) #12
  %rx_fifo_overrun_err = getelementptr inbounds %struct.hns_mac_cb, ptr %9, i32 0, i32 31, i32 38
  %58 = ptrtoint ptr %rx_fifo_overrun_err to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %rx_fifo_overrun_err, align 8
  %add64 = add i64 %59, %rx_errors.0.lcssa
  %tx_bad_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %9, i32 0, i32 31, i32 50
  %60 = ptrtoint ptr %tx_bad_pkts to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %tx_bad_pkts, align 8
  %tx_fragment_err = getelementptr inbounds %struct.hns_mac_cb, ptr %9, i32 0, i32 31, i32 55
  %62 = ptrtoint ptr %tx_fragment_err to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %tx_fragment_err, align 8
  %tx_jabber_err = getelementptr inbounds %struct.hns_mac_cb, ptr %9, i32 0, i32 31, i32 66
  %64 = ptrtoint ptr %tx_jabber_err to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %tx_jabber_err, align 8
  %tx_underrun_err = getelementptr inbounds %struct.hns_mac_cb, ptr %9, i32 0, i32 31, i32 67
  %66 = ptrtoint ptr %tx_underrun_err to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %tx_underrun_err, align 8
  %tx_crc_err = getelementptr inbounds %struct.hns_mac_cb, ptr %9, i32 0, i32 31, i32 69
  %68 = ptrtoint ptr %tx_crc_err to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %tx_crc_err, align 8
  %add67 = add i64 %37, %35
  %add69 = add i64 %add67, %61
  %add71 = add i64 %add69, %63
  %add73 = add i64 %add71, %65
  %add26 = add i64 %add73, %67
  %add74 = add i64 %add26, %69
  %tx_bytes76 = getelementptr inbounds %struct.net_device_stats, ptr %net_stats, i32 0, i32 3
  %70 = ptrtoint ptr %tx_bytes76 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %tx_bytes.0.lcssa.off0, ptr %tx_bytes76, align 4
  %tx_packets78 = getelementptr inbounds %struct.net_device_stats, ptr %net_stats, i32 0, i32 1
  %71 = ptrtoint ptr %tx_packets78 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %tx_packets.0.lcssa.off0, ptr %tx_packets78, align 4
  %rx_bytes80 = getelementptr inbounds %struct.net_device_stats, ptr %net_stats, i32 0, i32 2
  %72 = ptrtoint ptr %rx_bytes80 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %rx_bytes.0.lcssa.off0, ptr %rx_bytes80, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device_stats, ptr %net_stats, i32 0, i32 6
  %73 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %rx_dropped, align 4
  %74 = ptrtoint ptr %net_stats to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %rx_packets.0.lcssa.off0, ptr %net_stats, align 4
  %conv83 = trunc i64 %add64 to i32
  %rx_errors84 = getelementptr inbounds %struct.net_device_stats, ptr %net_stats, i32 0, i32 4
  %75 = ptrtoint ptr %rx_errors84 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv83, ptr %rx_errors84, align 4
  %conv85 = trunc i64 %add74 to i32
  %tx_errors86 = getelementptr inbounds %struct.net_device_stats, ptr %net_stats, i32 0, i32 5
  %76 = ptrtoint ptr %tx_errors86 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv85, ptr %tx_errors86, align 4
  %tx_dropped88 = getelementptr inbounds %struct.net_device_stats, ptr %net_stats, i32 0, i32 7
  %77 = ptrtoint ptr %tx_dropped88 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %tx_dropped.0.off0, ptr %tx_dropped88, align 4
  %rx_missed_errors90 = getelementptr inbounds %struct.net_device_stats, ptr %net_stats, i32 0, i32 15
  %78 = ptrtoint ptr %rx_missed_errors90 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %rx_missed_errors.0.off0, ptr %rx_missed_errors90, align 4
  %rx_fcs_err = getelementptr inbounds %struct.hns_mac_cb, ptr %9, i32 0, i32 31, i32 22
  %79 = ptrtoint ptr %rx_fcs_err to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %rx_fcs_err, align 8
  %conv92 = trunc i64 %80 to i32
  %rx_crc_errors = getelementptr inbounds %struct.net_device_stats, ptr %net_stats, i32 0, i32 12
  %81 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv92, ptr %rx_crc_errors, align 4
  %rx_align_err = getelementptr inbounds %struct.hns_mac_cb, ptr %9, i32 0, i32 31, i32 25
  %82 = ptrtoint ptr %rx_align_err to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %rx_align_err, align 8
  %conv94 = trunc i64 %83 to i32
  %rx_frame_errors = getelementptr inbounds %struct.net_device_stats, ptr %net_stats, i32 0, i32 13
  %84 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv94, ptr %rx_frame_errors, align 4
  %85 = load i64, ptr %rx_fifo_overrun_err, align 8
  %conv97 = trunc i64 %85 to i32
  %rx_fifo_errors = getelementptr inbounds %struct.net_device_stats, ptr %net_stats, i32 0, i32 14
  %86 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv97, ptr %rx_fifo_errors, align 4
  %rx_len_err = getelementptr inbounds %struct.hns_mac_cb, ptr %9, i32 0, i32 31, i32 39
  %87 = ptrtoint ptr %rx_len_err to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %rx_len_err, align 8
  %conv99 = trunc i64 %88 to i32
  %rx_length_errors = getelementptr inbounds %struct.net_device_stats, ptr %net_stats, i32 0, i32 10
  %89 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv99, ptr %rx_length_errors, align 4
  %rx_mc_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %9, i32 0, i32 31, i32 6
  %90 = ptrtoint ptr %rx_mc_pkts to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %rx_mc_pkts, align 8
  %conv101 = trunc i64 %91 to i32
  %multicast = getelementptr inbounds %struct.net_device_stats, ptr %net_stats, i32 0, i32 8
  %92 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv101, ptr %multicast, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ae_get_stats(ptr noundef readonly %handle, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  %tobool1.not = icmp eq ptr %data, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %handle, i32 -12
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %0 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb.i, align 4
  %dsaf_dev.i = getelementptr i8, ptr %handle, i32 -4
  %2 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsaf_dev.i, align 4
  %ppe_common.i = getelementptr inbounds %struct.dsaf_device, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %ppe_common.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppe_common.i, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i, align 4
  %conv.i = zext i8 %7 to i32
  %arrayidx1.i = getelementptr %struct.ppe_common_cb, ptr %5, i32 0, i32 6, i32 %conv.i
  %q_num = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 5
  %8 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %q_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp34 = icmp sgt i32 %9, 0
  br i1 %cmp34, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %idx.036 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %p.035 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %data, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hnae_handle, ptr %handle, i32 0, i32 17, i32 %idx.036
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void @hns_rcb_get_stats(ptr noundef %11, ptr noundef %p.035) #12
  %call5 = tail call i32 @hns_rcb_get_ring_sset_count(i32 noundef 1) #12
  %add.ptr = getelementptr i64, ptr %p.035, i32 %call5
  %inc = add nuw nsw i32 %idx.036, 1
  %12 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %q_num, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %p.0.lcssa = phi ptr [ %data, %if.end.for.end_crit_edge ], [ %add.ptr, %for.body.for.end_crit_edge ]
  tail call void @hns_ppe_get_stats(ptr noundef %arrayidx1.i, ptr noundef %p.0.lcssa) #12
  %call6 = tail call i32 @hns_ppe_get_sset_count(i32 noundef 1) #12
  %add.ptr7 = getelementptr i64, ptr %p.0.lcssa, i32 %call6
  tail call void @hns_mac_get_stats(ptr noundef %1, ptr noundef %add.ptr7) #12
  %call8 = tail call i32 @hns_mac_get_sset_count(ptr noundef %1, i32 noundef 1) #12
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %if.then11, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr9 = getelementptr i64, ptr %add.ptr7, i32 %call8
  %16 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dsaf_dev.i, align 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr.i, align 4
  %conv = zext i8 %19 to i32
  tail call void @hns_dsaf_get_stats(ptr noundef %17, ptr noundef %add.ptr9, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %for.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ae_get_strings(ptr nocapture noundef readonly %handle, i32 noundef %stringset, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %add.ptr.i34 = getelementptr i8, ptr %handle, i32 -12
  %2 = ptrtoint ptr %add.ptr.i34 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr.i34, align 4
  %conv = zext i8 %3 to i32
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %4 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_cb.i, align 4
  %dsaf_dev.i = getelementptr i8, ptr %handle, i32 -4
  %6 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsaf_dev.i, align 4
  %ppe_common.i = getelementptr inbounds %struct.dsaf_device, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %ppe_common.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ppe_common.i, align 4
  %arrayidx1.i = getelementptr %struct.ppe_common_cb, ptr %9, i32 0, i32 6, i32 %conv
  %q_num = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 5
  %10 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %q_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp35 = icmp sgt i32 %11, 0
  br i1 %cmp35, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %p.037 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %data, %entry.for.body_crit_edge ]
  %idx.036 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void @hns_rcb_get_strings(i32 noundef %stringset, ptr noundef %p.037, i32 noundef %idx.036) #12
  %call5 = tail call i32 @hns_rcb_get_ring_sset_count(i32 noundef %stringset) #12
  %mul = shl i32 %call5, 5
  %add.ptr = getelementptr i8, ptr %p.037, i32 %mul
  %inc = add nuw nsw i32 %idx.036, 1
  %12 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %q_num, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %p.0.lcssa = phi ptr [ %data, %entry.for.end_crit_edge ], [ %add.ptr, %for.body.for.end_crit_edge ]
  tail call void @hns_ppe_get_strings(ptr noundef %arrayidx1.i, i32 noundef %stringset, ptr noundef %p.0.lcssa) #12
  %call6 = tail call i32 @hns_ppe_get_sset_count(i32 noundef %stringset) #12
  %mul7 = shl i32 %call6, 5
  %add.ptr8 = getelementptr i8, ptr %p.0.lcssa, i32 %mul7
  tail call void @hns_mac_get_strings(ptr noundef %5, i32 noundef %stringset, ptr noundef %add.ptr8) #12
  %call9 = tail call i32 @hns_mac_get_sset_count(ptr noundef %5, i32 noundef %stringset) #12
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %5, i32 0, i32 26
  %14 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp12 = icmp eq i32 %15, 0
  br i1 %cmp12, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %mul10 = shl i32 %call9, 5
  %add.ptr11 = getelementptr i8, ptr %add.ptr8, i32 %mul10
  tail call void @hns_dsaf_get_strings(i32 noundef %stringset, ptr noundef %add.ptr11, i32 noundef %conv, ptr noundef %add.ptr.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_ae_get_sset_count(ptr nocapture noundef readonly %handle, i32 noundef %stringset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %2 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_cb.i, align 4
  %call2 = tail call i32 @hns_rcb_get_ring_sset_count(i32 noundef %stringset) #12
  %q_num = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 5
  %4 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q_num, align 4
  %mul = mul i32 %5, %call2
  %call3 = tail call i32 @hns_ppe_get_sset_count(i32 noundef %stringset) #12
  %add4 = add i32 %mul, %call3
  %call5 = tail call i32 @hns_mac_get_sset_count(ptr noundef %3, i32 noundef %stringset) #12
  %add6 = add i32 %add4, %call5
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %3, i32 0, i32 26
  %6 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call7 = tail call i32 @hns_dsaf_get_sset_count(ptr noundef %add.ptr.i, i32 noundef %stringset) #12
  %add8 = add i32 %call7, %add6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sset_count.0 = phi i32 [ %add8, %if.then ], [ %add6, %entry.if.end_crit_edge ]
  ret i32 %sset_count.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ae_update_led_status(ptr nocapture noundef readonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %0 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb.i, align 4
  %media_type = getelementptr inbounds %struct.hns_mac_cb, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @hns_set_led_opt(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_ae_cpld_set_led_id(ptr nocapture noundef readonly %handle, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cb.i = getelementptr i8, ptr %handle, i32 -8
  %0 = ptrtoint ptr %mac_cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_cb.i, align 4
  %call1 = tail call i32 @hns_cpld_led_set_id(ptr noundef %1, i32 noundef %status) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_ae_get_regs(ptr nocapture noundef readonly %handle, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %handle, i32 -12
  %dsaf_dev.i = getelementptr i8, ptr %handle, i32 -4
  %0 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev.i, align 4
  %ppe_common.i = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ppe_common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppe_common.i, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i, align 4
  %conv.i = zext i8 %5 to i32
  %arrayidx1.i = getelementptr %struct.ppe_common_cb, ptr %3, i32 0, i32 6, i32 %conv.i
  tail call void @hns_ppe_get_regs(ptr noundef %arrayidx1.i, ptr noundef %data) #12
  %call2 = tail call i32 @hns_ppe_get_regs_count() #12
  %add.ptr = getelementptr i32, ptr %data, i32 %call2
  %6 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsaf_dev.i, align 4
  %rcb_common = getelementptr inbounds %struct.dsaf_device, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rcb_common, align 8
  tail call void @hns_rcb_get_common_regs(ptr noundef %9, ptr noundef %add.ptr) #12
  %call3 = tail call i32 @hns_rcb_get_common_regs_count() #12
  %add.ptr4 = getelementptr i32, ptr %add.ptr, i32 %call3
  %q_num = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 5
  %10 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %q_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp32 = icmp sgt i32 %11, 0
  br i1 %cmp32, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %p.034 = phi ptr [ %add.ptr7, %for.body.for.body_crit_edge ], [ %add.ptr4, %entry.for.body_crit_edge ]
  %i.033 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx5 = getelementptr %struct.hnae_handle, ptr %handle, i32 0, i32 17, i32 %i.033
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5, align 4
  tail call void @hns_rcb_get_ring_regs(ptr noundef %13, ptr noundef %p.034) #12
  %call6 = tail call i32 @hns_rcb_get_ring_regs_count() #12
  %add.ptr7 = getelementptr i32, ptr %p.034, i32 %call6
  %inc = add nuw nsw i32 %i.033, 1
  %14 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %q_num, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %p.0.lcssa = phi ptr [ %add.ptr4, %entry.for.end_crit_edge ], [ %add.ptr7, %for.body.for.end_crit_edge ]
  %mac_cb = getelementptr i8, ptr %handle, i32 -8
  %16 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mac_cb, align 4
  tail call void @hns_mac_get_regs(ptr noundef %17, ptr noundef %p.0.lcssa) #12
  %18 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mac_cb, align 4
  %call9 = tail call i32 @hns_mac_get_regs_count(ptr noundef %19) #12
  %20 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac_cb, align 4
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %21, i32 0, i32 26
  %22 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp12 = icmp eq i32 %23, 0
  br i1 %cmp12, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr10 = getelementptr i32, ptr %p.0.lcssa, i32 %call9
  %24 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dsaf_dev.i, align 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i, align 4
  %conv = zext i8 %27 to i32
  tail call void @hns_dsaf_get_regs(ptr noundef %25, i32 noundef %conv, ptr noundef %add.ptr10) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_ae_get_regs_len(ptr nocapture noundef readonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @hns_ppe_get_regs_count() #12
  %call2 = tail call i32 @hns_rcb_get_common_regs_count() #12
  %add = add i32 %call2, %call1
  %call3 = tail call i32 @hns_rcb_get_ring_regs_count() #12
  %q_num = getelementptr inbounds %struct.hnae_handle, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %q_num, align 4
  %mul = mul i32 %1, %call3
  %add4 = add i32 %add, %mul
  %mac_cb = getelementptr i8, ptr %handle, i32 -8
  %2 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_cb, align 4
  %call5 = tail call i32 @hns_mac_get_regs_count(ptr noundef %3) #12
  %add6 = add i32 %add4, %call5
  %4 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_cb, align 4
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 @hns_dsaf_get_regs_count() #12
  %add9 = add i32 %call8, %add6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %total_num.0 = phi i32 [ %add9, %if.then ], [ %add6, %entry.if.end_crit_edge ]
  ret i32 %total_num.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hns_ae_get_rss_key_size(ptr nocapture noundef readnone %handle) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hns_ae_get_rss_indir_size(ptr nocapture noundef readnone %handle) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 256
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hns_ae_get_rss(ptr nocapture noundef readonly %handle, ptr noundef writeonly %indir, ptr noundef writeonly %key, ptr noundef writeonly %hfunc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %handle, i32 -12
  %dsaf_dev.i = getelementptr i8, ptr %handle, i32 -4
  %0 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev.i, align 4
  %ppe_common.i = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ppe_common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppe_common.i, align 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i.i, align 4
  %conv.i = zext i8 %5 to i32
  %tobool.not = icmp eq ptr %hfunc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %hfunc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %key, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rss_key = getelementptr %struct.ppe_common_cb, ptr %3, i32 0, i32 6, i32 %conv.i, i32 8
  %7 = call ptr @memcpy(ptr %key, ptr %rss_key, i32 40)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %tobool4.not = icmp eq ptr %indir, null
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %rss_indir_table = getelementptr %struct.ppe_common_cb, ptr %3, i32 0, i32 6, i32 %conv.i, i32 7
  %8 = call ptr @memcpy(ptr %indir, ptr %rss_indir_table, i32 1024)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_ae_set_rss(ptr nocapture noundef readonly %handle, ptr noundef readonly %indir, ptr noundef readonly %key, i8 noundef zeroext %hfunc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %handle, i32 -12
  %dsaf_dev.i = getelementptr i8, ptr %handle, i32 -4
  %0 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev.i, align 4
  %ppe_common.i = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ppe_common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppe_common.i, align 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i.i, align 4
  %conv.i = zext i8 %5 to i32
  %arrayidx1.i = getelementptr %struct.ppe_common_cb, ptr %3, i32 0, i32 6, i32 %conv.i
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rss_key = getelementptr %struct.ppe_common_cb, ptr %3, i32 0, i32 6, i32 %conv.i, i32 8
  %6 = call ptr @memcpy(ptr %rss_key, ptr %key, i32 40)
  tail call void @hns_ppe_set_rss_key(ptr noundef %arrayidx1.i, ptr noundef %rss_key) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool3.not = icmp eq ptr %indir, null
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rss_indir_table = getelementptr %struct.ppe_common_cb, ptr %3, i32 0, i32 6, i32 %conv.i, i32 7
  %7 = call ptr @memcpy(ptr %rss_indir_table, ptr %indir, i32 1024)
  tail call void @hns_ppe_set_indir_table(ptr noundef %arrayidx1.i, ptr noundef %rss_indir_table) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_rcb_init_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_rcb_reset_ring_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_mac_vm_config_bc_en(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_rcb_int_clr_hw(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_rcbv2_int_clr_hw(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_mac_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_rcb_ring_enable_hw(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_rcb_wait_fbd_clean(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_mac_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_mac_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_ppe_reset_common(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_mac_get_link_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_mac_get_port_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_mac_adjust_link(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_mac_disable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_mac_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_rcb_wait_tx_ring_clean(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_ppe_wait_tx_fifo_clean(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_dsaf_wait_pkt_clean(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_mac_wait_fifo_clean(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hns_mac_need_adjust_link(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_mac_config_mac_loopback(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_mac_get_autoneg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_mac_get_pauseparam(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_dsaf_get_rx_mac_pause_en(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_mac_set_autoneg(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_dsaf_set_rx_mac_pause_en(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_mac_set_pauseparam(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_rcb_get_coalesce_usecs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_rcb_get_rx_coalesced_frames(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_rcb_get_tx_coalesced_frames(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_rcb_set_coalesce_usecs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_rcb_set_rx_coalesced_frames(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_rcb_set_tx_coalesced_frames(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_dsaf_set_promisc_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_mac_set_promisc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_mac_change_vf_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_mac_add_uc_addr(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_mac_rm_uc_addr(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_mac_clr_multicast(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_mac_set_multi(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_mac_get_inner_port_num(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_mac_set_mtu(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_rcb_set_rx_ring_bs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_ppe_set_tso_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_rcb_update_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_ppe_update_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_dsaf_update_stats(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_mac_update_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_rcb_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_rcb_get_ring_sset_count(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_ppe_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_ppe_get_sset_count(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_mac_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_mac_get_sset_count(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_dsaf_get_stats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_rcb_get_strings(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_ppe_get_strings(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_mac_get_strings(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_dsaf_get_strings(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_dsaf_get_sset_count(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_set_led_opt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_cpld_led_set_id(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_ppe_get_regs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_ppe_get_regs_count() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_rcb_get_common_regs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_rcb_get_common_regs_count() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_rcb_get_ring_regs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_rcb_get_ring_regs_count() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_mac_get_regs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_mac_get_regs_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_dsaf_get_regs(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_dsaf_get_regs_count() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_ppe_set_rss_key(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_ppe_set_indir_table(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_rcbv2_int_ctrl_hw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !39, !40, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @hns_dsaf_ae_init.id, !1, !"id", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ae_adapt.c", i32 978, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ae_adapt.c", i32 991, i32 39}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ae_adapt.c", i32 991, i32 47}
!6 = !{ptr @hns_dsaf_ops, !7, !"hns_dsaf_ops", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ae_adapt.c", i32 931, i32 27}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ae_adapt.c", i32 87, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @hns_ae_get_handle._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @hns_ae_get_handle._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ae_adapt.c", i32 106, i32 3}
!18 = !{ptr @hns_ae_get_handle._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @hns_ae_get_handle._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ae_adapt.c", i32 215, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @hns_ae_set_mac_address._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @hns_ae_set_mac_address._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ae_adapt.c", i32 221, i32 3}
!27 = !{ptr @hns_ae_set_mac_address._entry.12, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @hns_ae_set_mac_address._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ae_adapt.c", i32 265, i32 3}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @hns_ae_set_multicast_one._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @hns_ae_set_multicast_one._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @hns_ae_set_multicast_one._entry.17, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ae_adapt.c", i32 277, i32 3}
!36 = !{ptr @hns_ae_set_multicast_one._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ae_adapt.c", i32 710, i32 3}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @hns_ae_get_stats._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @hns_ae_get_stats._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2148477668}
!52 = !{i64 2148392977, i64 2148393009, i64 2148393038, i64 2148393072, i64 2148393103, i64 2148393126}
!53 = !{i64 2148477897}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{!"auto-init"}
