; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hnae_queue = type { ptr, i32, ptr, [116 x i8], %struct.hnae_ring, [64 x i8], %struct.hnae_ring, ptr, [60 x i8] }
%struct.hnae_ring = type { ptr, ptr, ptr, ptr, i32, [20 x i8], %struct.ring_stats, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.ring_stats = type { i64, i64, i64, %union.anon.125 }
%union.anon.125 = type { %struct.anon.127 }
%struct.anon.127 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hnae_ae_dev = type { %struct.device, ptr, ptr, %struct.list_head, ptr, i32, [16 x i8], %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ring_pair_cb = type { ptr, ptr, [120 x i8], %struct.hnae_queue, i16, i16, [2 x i32], i8, i8, %struct.hns_ring_hw_stats, [64 x i8] }
%struct.hns_ring_hw_stats = type { i64, i64, i64, i64, i64, i64 }
%struct.rcb_common_cb = type { ptr, i32, ptr, i16, i16, i8, i32, i32, [100 x i8], [0 x %struct.ring_pair_cb] }
%struct.dsaf_device = type { ptr, %struct.hnae_ae_dev, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, [1 x ptr], [1 x ptr], [6 x ptr], ptr, [18 x %struct.dsaf_hw_stats], %struct.dsaf_int_stat, %struct.spinlock }
%struct.dsaf_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], i64 }
%struct.dsaf_int_stat = type { [6 x %struct.dsaf_int_xge_src], [6 x %struct.dsaf_int_ppe_src], [6 x %struct.dsaf_int_rocee_src], [1 x %struct.dsaf_int_tbl_src] }
%struct.dsaf_int_xge_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsaf_int_ppe_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsaf_int_rocee_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsaf_int_tbl_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ppe_common_cb = type { ptr, ptr, ptr, i32, i8, i32, [0 x %struct.hns_ppe_cb] }
%struct.hns_ppe_cb = type { ptr, ptr, ptr, %struct.hns_ppe_hw_stats, i8, ptr, i32, [256 x i32], [10 x i32] }
%struct.hns_ppe_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@hns_rcb_wait_fbd_clean._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 62, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"queue(%d) wait fbd(%d) clean fail!!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hns_rcb_wait_fbd_clean\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hns_rcb_wait_fbd_clean._entry_ptr = internal global ptr @hns_rcb_wait_fbd_clean._entry, section ".printk_index", align 4
@hns_rcb_wait_tx_ring_clean._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 81, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rcb wait timeout, head not equal to tail.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hns_rcb_wait_tx_ring_clean\00", [37 x i8] zeroinitializer }, align 32
@hns_rcb_wait_tx_ring_clean._entry_ptr = internal global ptr @hns_rcb_wait_tx_ring_clean._entry, section ".printk_index", align 4
@hns_rcb_reset_ring_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"port%d reset ring fail\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hns_rcb_reset_ring_hw\00", [42 x i8] zeroinitializer }, align 32
@hns_rcb_reset_ring_hw._entry_ptr = internal global ptr @hns_rcb_reset_ring_hw._entry, section ".printk_index", align 4
@hns_rcb_common_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 383, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RCB_COM_CFG_INIT_FLAG_REG reg = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hns_rcb_common_init_hw\00", [41 x i8] zeroinitializer }, align 32
@hns_rcb_common_init_hw._entry_ptr = internal global ptr @hns_rcb_common_init_hw._entry, section ".printk_index", align 4
@hns_rcb_set_coalesce_usecs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 619, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"error: not support coalesce_usecs setting!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hns_rcb_set_coalesce_usecs\00", [37 x i8] zeroinitializer }, align 32
@hns_rcb_set_coalesce_usecs._entry_ptr = internal global ptr @hns_rcb_set_coalesce_usecs._entry, section ".printk_index", align 4
@hns_rcb_set_coalesce_usecs._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 625, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"error: coalesce_usecs setting supports 1~1023us\0A\00", [47 x i8] zeroinitializer }, align 32
@hns_rcb_set_coalesce_usecs._entry_ptr.15 = internal global ptr @hns_rcb_set_coalesce_usecs._entry.13, section ".printk_index", align 4
@hns_rcb_set_tx_coalesced_frames._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 653, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"error: not support tx coalesce_frames setting!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hns_rcb_set_tx_coalesced_frames\00", [32 x i8] zeroinitializer }, align 32
@hns_rcb_set_tx_coalesced_frames._entry_ptr = internal global ptr @hns_rcb_set_tx_coalesced_frames._entry, section ".printk_index", align 4
@hns_rcb_set_rx_coalesced_frames._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 684, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error: not support coalesce_frames setting!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hns_rcb_set_rx_coalesced_frames\00", [32 x i8] zeroinitializer }, align 32
@hns_rcb_set_rx_coalesced_frames._entry_ptr = internal global ptr @hns_rcb_set_rx_coalesced_frames._entry, section ".printk_index", align 4
@hns_rcb_common_get_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 792, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rcb common devm_kzalloc fail!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hns_rcb_common_get_cfg\00", [41 x i8] zeroinitializer }, align 32
@hns_rcb_common_get_cfg._entry_ptr = internal global ptr @hns_rcb_common_get_cfg._entry, section ".printk_index", align 4
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx_ring%d_rcb_pkt_num\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tx_ring%d_ppe_tx_pkt_num\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tx_ring%d_ppe_drop_pkt_num\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_ring%d_fbd_num\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_ring%d_pkt_num\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_ring%d_bytes\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_ring%d_err_cnt\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_ring%d_io_err\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_ring%d_sw_err\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_ring%d_seg_pkt\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx_ring%d_restart_queue\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_ring%d_tx_busy\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_ring%d_rcb_pkt_num\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_ring%d_ppe_pkt_num\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rx_ring%d_ppe_drop_pkt_num\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_ring%d_fbd_num\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_ring%d_pkt_num\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_ring%d_bytes\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_ring%d_err_cnt\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_ring%d_io_err\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_ring%d_sw_err\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_ring%d_seg_pkt\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_ring%d_reuse_pg\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_ring%d_len_err\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rx_ring%d_non_vld_desc_err\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_ring%d_bd_num_err\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_ring%d_l2_err\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_ring%d_l3l4csum_err\00", [41 x i8] zeroinitializer }, align 32
@hns_rcb_get_ring_num._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 759, ptr @.str.52, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"get ring num fail,use default!dsaf_mode=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hns_rcb_get_ring_num\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hns_rcb_get_ring_num._entry_ptr = internal global ptr @hns_rcb_get_ring_num._entry, section ".printk_index", align 4
@switch.table.hns_rcb_set_tx_ring_bs = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 -22, i32 2, i32 -22, i32 -22, i32 -22, i32 3], [32 x i8] zeroinitializer }, align 32
@switch.table.hns_rcb_buf_size2type = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 -22, i32 2, i32 -22, i32 -22, i32 -22, i32 3], [32 x i8] zeroinitializer }, align 32
@switch.table.hns_rcb_set_rx_ring_bs = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 -22, i32 2, i32 -22, i32 -22, i32 -22, i32 3], [32 x i8] zeroinitializer }, align 32
@switch.table.hns_rcb_ring_init = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 -22, i32 2, i32 -22, i32 -22, i32 -22, i32 3], [32 x i8] zeroinitializer }, align 32
@switch.table.hns_rcb_ring_init.53 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 -22, i32 2, i32 -22, i32 -22, i32 -22, i32 3], [32 x i8] zeroinitializer }, align 32
@switch.table.hns_rcb_get_queue_mode = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 1, i16 1, i16 1, i16 1, i16 64, i16 1, i16 1, i16 1, i16 16], [46 x i8] zeroinitializer }, align 32
@switch.table.hns_rcb_get_queue_mode.54 = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 1, i16 1, i16 16, i16 16, i16 1, i16 16, i16 16, i16 16, i16 1], [46 x i8] zeroinitializer }, align 32
@switch.table.hns_rcb_common_get_cfg = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1, i32 32, i32 96, i32 96, i32 128, i32 128, i32 1, i32 1, i32 6, i32 128, i32 128, i32 128, i32 96, i32 96, i32 96, i32 96], [32 x i8] zeroinitializer }, align 32
@switch.table.hns_rcb_common_get_cfg.55 = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 1, i16 1, i16 1, i16 1, i16 64, i16 1, i16 1, i16 1, i16 16], [46 x i8] zeroinitializer }, align 32
@switch.table.hns_rcb_common_get_cfg.56 = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 1, i16 1, i16 16, i16 16, i16 1, i16 16, i16 16, i16 16, i16 1], [46 x i8] zeroinitializer }, align 32
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 61, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 81, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 132, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 382, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 618, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 624, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 652, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 683, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 792, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 937, i32 25 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 938, i32 25 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 939, i32 25 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 940, i32 25 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 942, i32 25 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 943, i32 25 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 944, i32 25 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 945, i32 25 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 946, i32 25 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 947, i32 25 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 948, i32 25 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 949, i32 25 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 951, i32 25 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 952, i32 25 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 953, i32 25 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 954, i32 25 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 956, i32 25 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 957, i32 25 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 958, i32 25 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 959, i32 25 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 960, i32 25 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 961, i32 25 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 962, i32 25 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 963, i32 25 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 964, i32 25 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 965, i32 25 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 966, i32 25 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 967, i32 25 }
@___asan_gen_.228 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.238 = private constant [53 x i8] c"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 757, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [36 x i8] c"switch.table.hns_rcb_set_tx_ring_bs\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [35 x i8] c"switch.table.hns_rcb_buf_size2type\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [36 x i8] c"switch.table.hns_rcb_set_rx_ring_bs\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [31 x i8] c"switch.table.hns_rcb_ring_init\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [34 x i8] c"switch.table.hns_rcb_ring_init.53\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [36 x i8] c"switch.table.hns_rcb_get_queue_mode\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [39 x i8] c"switch.table.hns_rcb_get_queue_mode.54\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [36 x i8] c"switch.table.hns_rcb_common_get_cfg\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [39 x i8] c"switch.table.hns_rcb_common_get_cfg.55\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [39 x i8] c"switch.table.hns_rcb_common_get_cfg.56\00", align 1
@llvm.compiler.used = appending global [81 x ptr] [ptr @hns_rcb_common_get_cfg._entry, ptr @hns_rcb_common_get_cfg._entry_ptr, ptr @hns_rcb_common_init_hw._entry, ptr @hns_rcb_common_init_hw._entry_ptr, ptr @hns_rcb_get_ring_num._entry, ptr @hns_rcb_get_ring_num._entry_ptr, ptr @hns_rcb_reset_ring_hw._entry, ptr @hns_rcb_reset_ring_hw._entry_ptr, ptr @hns_rcb_set_coalesce_usecs._entry, ptr @hns_rcb_set_coalesce_usecs._entry.13, ptr @hns_rcb_set_coalesce_usecs._entry_ptr, ptr @hns_rcb_set_coalesce_usecs._entry_ptr.15, ptr @hns_rcb_set_rx_coalesced_frames._entry, ptr @hns_rcb_set_rx_coalesced_frames._entry_ptr, ptr @hns_rcb_set_tx_coalesced_frames._entry, ptr @hns_rcb_set_tx_coalesced_frames._entry_ptr, ptr @hns_rcb_wait_fbd_clean._entry, ptr @hns_rcb_wait_fbd_clean._entry_ptr, ptr @hns_rcb_wait_tx_ring_clean._entry, ptr @hns_rcb_wait_tx_ring_clean._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @switch.table.hns_rcb_set_tx_ring_bs, ptr @switch.table.hns_rcb_buf_size2type, ptr @switch.table.hns_rcb_set_rx_ring_bs, ptr @switch.table.hns_rcb_ring_init, ptr @switch.table.hns_rcb_ring_init.53, ptr @switch.table.hns_rcb_get_queue_mode, ptr @switch.table.hns_rcb_get_queue_mode.54, ptr @switch.table.hns_rcb_common_get_cfg, ptr @switch.table.hns_rcb_common_get_cfg.55, ptr @switch.table.hns_rcb_common_get_cfg.56], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_rcb_wait_fbd_clean._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_rcb_wait_tx_ring_clean._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_rcb_reset_ring_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_rcb_common_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_rcb_set_coalesce_usecs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_rcb_set_coalesce_usecs._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_rcb_set_tx_coalesced_frames._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_rcb_set_rx_coalesced_frames._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_rcb_common_get_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_rcb_get_ring_num._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hns_rcb_set_tx_ring_bs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hns_rcb_buf_size2type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hns_rcb_set_rx_ring_bs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hns_rcb_ring_init to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hns_rcb_ring_init.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hns_rcb_get_queue_mode to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hns_rcb_get_queue_mode.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hns_rcb_common_get_cfg to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hns_rcb_common_get_cfg.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hns_rcb_common_get_cfg.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_rcb_wait_fbd_clean(ptr nocapture noundef readonly %qs, i32 noundef %q_num, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %q_num)
  %cmp35 = icmp sgt i32 %q_num, 0
  br i1 %cmp35, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %and = and i32 %flag, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %flag, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.body.lr.ph
  %wait_cnt.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc15, %if.end8.for.body_crit_edge ]
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %if.end8.for.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr ptr, ptr %qs, i32 %i.036
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %add.ptr.i = getelementptr i8, ptr %3, i32 96
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !118
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %fbd_num.1 = phi i32 [ %5, %if.then ], [ 0, %for.body.if.end_crit_edge ]
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx4 = getelementptr ptr, ptr %qs, i32 %i.036
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %add.ptr.i34 = getelementptr i8, ptr %9, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #8, !srcloc !118
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %add7 = add i32 %11, %fbd_num.1
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %fbd_num.2 = phi i32 [ %add7, %if.then3 ], [ %fbd_num.1, %if.end.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fbd_num.2)
  %tobool9.not = icmp eq i32 %fbd_num.2, 0
  %inc = zext i1 %tobool9.not to i32
  %spec.select = add nuw nsw i32 %i.036, %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %wait_cnt.037)
  %exitcond = icmp ne i32 %wait_cnt.037, 10000
  %inc15 = add nuw nsw i32 %wait_cnt.037, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %q_num)
  %cmp = icmp slt i32 %spec.select, %q_num
  %or.cond = select i1 %exitcond, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end8.for.body_crit_edge, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end8.for.end_crit_edge, %entry.for.end_crit_edge
  %i.2 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %spec.select, %if.end8.for.end_crit_edge ]
  %fbd_num.3 = phi i32 [ -1, %entry.for.end_crit_edge ], [ %fbd_num.2, %if.end8.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2, i32 %q_num)
  %cmp16 = icmp slt i32 %i.2, %q_num
  br i1 %cmp16, label %do.end, label %for.end.if.end19_crit_edge

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx18 = getelementptr ptr, ptr %qs, i32 %i.2
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx18, align 4
  %handle = getelementptr inbounds %struct.hnae_queue, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handle, align 64
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str, i32 noundef %i.2, i32 noundef %fbd_num.3) #11
  br label %if.end19

if.end19:                                         ; preds = %do.end, %for.end.if.end19_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_rcb_wait_tx_ring_clean(ptr nocapture noundef readonly %qs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring = getelementptr inbounds %struct.hnae_queue, ptr %qs, i32 0, i32 6
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 128
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %inc15 = phi i32 [ 1, %entry ], [ %inc, %if.end.while.body_crit_edge ]
  %3 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_ring, align 128
  %add.ptr.i14 = getelementptr i8, ptr %4, i32 28
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %5)
  %cmp4 = icmp eq i32 %2, %5
  br i1 %cmp4, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %inc = add nuw nsw i32 %inc15, 1
  %exitcond.not = icmp eq i32 %inc, 10001
  br i1 %exitcond.not, label %if.end.do.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %inc15)
  %cmp5 = icmp ugt i32 %inc15, 9999
  br i1 %cmp5, label %while.end.do.end_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %while.end.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.hnae_queue, ptr %qs, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %dev7 = getelementptr inbounds %struct.hnae_ae_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.5) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_rcb_reset_ring_hw(ptr nocapture noundef readonly %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry
  %inc47 = phi i32 [ 1, %entry ], [ %inc, %while.cond.backedge.while.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 128
  %add.ptr.i = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.end.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %inc = add nuw nsw i32 %inc47, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %while.cond.backedge.do.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.do.end_crit_edge:             ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end:                                           ; preds = %while.body
  %3 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i36 = getelementptr i8, ptr %4, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 0) #8, !srcloc !121
  %5 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i37 = getelementptr i8, ptr %6, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 16777216) #8, !srcloc !121
  tail call void @msleep(i32 noundef 20) #8
  %7 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %q, align 128
  %add.ptr.i38 = getelementptr i8, ptr %8, i32 152
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not44 = icmp eq i32 %9, 0
  br i1 %tobool6.not44, label %if.end.while.body8_crit_edge, label %while.end18.critedge

if.end.while.body8_crit_edge:                     ; preds = %if.end
  br label %while.body8

while.body8:                                      ; preds = %while.body8.while.body8_crit_edge, %if.end.while.body8_crit_edge
  %wait_cnt.046 = phi i32 [ %inc13, %while.body8.while.body8_crit_edge ], [ 0, %if.end.while.body8_crit_edge ]
  %10 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i39 = getelementptr i8, ptr %11, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 0) #8, !srcloc !121
  %12 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i40 = getelementptr i8, ptr %13, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 16777216) #8, !srcloc !121
  tail call void @msleep(i32 noundef 20) #8
  %14 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %q, align 128
  %add.ptr.i41 = getelementptr i8, ptr %15, i32 152
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %inc13 = add nuw nsw i32 %wait_cnt.046, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not = icmp eq i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %wait_cnt.046)
  %cmp7 = icmp ult i32 %wait_cnt.046, 29
  %or.cond = select i1 %tobool6.not, i1 %cmp7, i1 false
  br i1 %or.cond, label %while.body8.while.body8_crit_edge, label %while.end

while.body8.while.body8_crit_edge:                ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body8

while.end:                                        ; preds = %while.body8
  %17 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i42 = getelementptr i8, ptr %18, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 0) #8, !srcloc !121
  br i1 %tobool6.not, label %while.end.while.cond.backedge_crit_edge, label %while.end.while.end18_crit_edge

while.end.while.end18_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end18

while.end.while.cond.backedge_crit_edge:          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.end18.critedge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i42.c = getelementptr i8, ptr %20, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.c, i32 0) #8, !srcloc !121
  br label %while.end18

while.end18:                                      ; preds = %while.end18.critedge, %while.end.while.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc47)
  %cmp19 = icmp ugt i32 %inc47, 9
  br i1 %cmp19, label %while.end18.do.end_crit_edge, label %while.end18.if.end23_crit_edge

while.end18.if.end23_crit_edge:                   ; preds = %while.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

while.end18.do.end_crit_edge:                     ; preds = %while.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %while.end18.do.end_crit_edge, %while.cond.backedge.do.end_crit_edge
  %dev = getelementptr inbounds %struct.hnae_queue, ptr %q, i32 0, i32 2
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %dev21 = getelementptr inbounds %struct.hnae_ae_dev, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev21, align 8
  %handle = getelementptr inbounds %struct.hnae_queue, ptr %q, i32 0, i32 7
  %25 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handle, align 64
  %add.ptr.i43 = getelementptr i8, ptr %26, i32 -12
  %27 = ptrtoint ptr %add.ptr.i43 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr.i43, align 4
  %conv = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.7, i32 noundef %conv) #11
  br label %if.end23

if.end23:                                         ; preds = %do.end, %while.end18.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_rcb_int_ctrl_hw(ptr nocapture noundef readonly %q, i32 noundef %flag, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool.not = icmp eq i32 %mask, 0
  %and = and i32 %flag, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %2 = select i1 %tobool.not, i32 0, i32 16777216
  %add.ptr.i = getelementptr i8, ptr %1, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #8, !srcloc !121
  %3 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i17 = getelementptr i8, ptr %4, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %2) #8, !srcloc !121
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and4 = and i32 %flag, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %7 = select i1 %tobool.not, i32 0, i32 16777216
  %add.ptr.i18 = getelementptr i8, ptr %6, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %7) #8, !srcloc !121
  %8 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i19 = getelementptr i8, ptr %9, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %7) #8, !srcloc !121
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_rcb_int_clr_hw(ptr nocapture noundef readonly %q, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flag, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i = getelementptr i8, ptr %1, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !121
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i12 = getelementptr i8, ptr %3, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 16777216) #8, !srcloc !121
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %flag, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i13 = getelementptr i8, ptr %5, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 16777216) #8, !srcloc !121
  %6 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i14 = getelementptr i8, ptr %7, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 16777216) #8, !srcloc !121
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_rcbv2_int_ctrl_hw(ptr nocapture noundef readonly %q, i32 noundef %flag, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool.not = icmp eq i32 %mask, 0
  %and = and i32 %flag, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %2 = select i1 %tobool.not, i32 0, i32 16777216
  %add.ptr.i = getelementptr i8, ptr %1, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #8, !srcloc !121
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and3 = and i32 %flag, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %5 = select i1 %tobool.not, i32 0, i32 16777216
  %add.ptr.i11 = getelementptr i8, ptr %4, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %5) #8, !srcloc !121
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_rcbv2_int_clr_hw(ptr nocapture noundef readonly %q, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flag, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i = getelementptr i8, ptr %1, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !121
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %flag, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i8 = getelementptr i8, ptr %3, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 16777216) #8, !srcloc !121
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_rcb_ring_enable_hw(ptr nocapture noundef readonly %q, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %2 = select i1 %tobool.not, i32 0, i32 16777216
  %add.ptr.i = getelementptr i8, ptr %1, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #8, !srcloc !121
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_rcb_start(ptr nocapture noundef readonly %q, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i = icmp eq i32 %val, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %2 = select i1 %tobool.not.i, i32 0, i32 16777216
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #8, !srcloc !121
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_rcb_common_init_commit_hw(ptr nocapture noundef readonly %rcb_common) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %0 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcb_common, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_rcb_set_tx_ring_bs(ptr nocapture noundef readonly %q, i32 noundef %buf_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %buf_size, -512
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %2 = icmp ult i32 %1, 8
  br i1 %2, label %switch.lookup, label %entry.hns_rcb_buf_size2type.exit_crit_edge

entry.hns_rcb_buf_size2type.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hns_rcb_buf_size2type.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.hns_rcb_set_tx_ring_bs, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %hns_rcb_buf_size2type.exit

hns_rcb_buf_size2type.exit:                       ; preds = %switch.lookup, %entry.hns_rcb_buf_size2type.exit_crit_edge
  %bd_size_type.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.hns_rcb_buf_size2type.exit_crit_edge ]
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %bd_size_type.0.i) #8
  %add.ptr.i = getelementptr i8, ptr %5, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #8, !srcloc !121
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hns_rcb_buf_size2type(i32 noundef %buf_size) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %buf_size, -512
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %2 = icmp ult i32 %1, 8
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.hns_rcb_buf_size2type, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %bd_size_type.0 = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %bd_size_type.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_rcb_set_rx_ring_bs(ptr nocapture noundef readonly %q, i32 noundef %buf_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %buf_size, -512
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %2 = icmp ult i32 %1, 8
  br i1 %2, label %switch.lookup, label %entry.hns_rcb_buf_size2type.exit_crit_edge

entry.hns_rcb_buf_size2type.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hns_rcb_buf_size2type.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.hns_rcb_set_rx_ring_bs, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %hns_rcb_buf_size2type.exit

hns_rcb_buf_size2type.exit:                       ; preds = %switch.lookup, %entry.hns_rcb_buf_size2type.exit_crit_edge
  %bd_size_type.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.hns_rcb_buf_size2type.exit_crit_edge ]
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %bd_size_type.0.i) #8
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #8, !srcloc !121
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_rcb_init_hw(ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @hns_rcb_ring_init(ptr noundef %ring, i32 noundef 1)
  tail call fastcc void @hns_rcb_ring_init(ptr noundef %ring, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hns_rcb_ring_init(ptr nocapture noundef readonly %ring_pair, i32 noundef %ring_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %q1 = getelementptr inbounds %struct.ring_pair_cb, ptr %ring_pair, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ring_type)
  %cmp = icmp eq i32 %ring_type, 1
  %rx_ring = getelementptr inbounds %struct.ring_pair_cb, ptr %ring_pair, i32 0, i32 3, i32 4
  %tx_ring = getelementptr inbounds %struct.ring_pair_cb, ptr %ring_pair, i32 0, i32 3, i32 6
  %cond = select i1 %cmp, ptr %rx_ring, ptr %tx_ring
  %desc_dma_addr = getelementptr inbounds %struct.hnae_ring, ptr %cond, i32 0, i32 7
  %0 = ptrtoint ptr %desc_dma_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc_dma_addr, align 8
  %2 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q1, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %4) #8, !srcloc !121
  %5 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %q1, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !121
  %buf_size = getelementptr inbounds %struct.hnae_ring, ptr %cond, i32 0, i32 8
  %7 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf_size, align 4
  %9 = add i32 %8, -512
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %11 = icmp ult i32 %10, 8
  br i1 %11, label %switch.lookup, label %if.then.hns_rcb_set_rx_ring_bs.exit_crit_edge

if.then.hns_rcb_set_rx_ring_bs.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %hns_rcb_set_rx_ring_bs.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.hns_rcb_ring_init, i32 0, i32 %10
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %hns_rcb_set_rx_ring_bs.exit

hns_rcb_set_rx_ring_bs.exit:                      ; preds = %switch.lookup, %if.then.hns_rcb_set_rx_ring_bs.exit_crit_edge
  %bd_size_type.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %if.then.hns_rcb_set_rx_ring_bs.exit_crit_edge ]
  %13 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %q1, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %bd_size_type.0.i.i) #8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #8, !srcloc !121
  %16 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %q1, align 128
  %port_id_in_comm = getelementptr inbounds %struct.ring_pair_cb, ptr %ring_pair, i32 0, i32 7
  %18 = ptrtoint ptr %port_id_in_comm to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_id_in_comm, align 4
  %conv = zext i8 %19 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %20 = shl nuw i32 %conv, 24
  %add.ptr.i41 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %20) #8, !srcloc !121
  %21 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %q1, align 128
  %23 = ptrtoint ptr %port_id_in_comm to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %port_id_in_comm, align 4
  %conv8 = zext i8 %24 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %25 = shl nuw i32 %conv8, 24
  %add.ptr.i42 = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %25) #8, !srcloc !121
  br label %if.end

if.else:                                          ; preds = %entry
  %add.ptr.i43 = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %4) #8, !srcloc !121
  %26 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %q1, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i44 = getelementptr i8, ptr %27, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 0) #8, !srcloc !121
  %buf_size13 = getelementptr inbounds %struct.hnae_ring, ptr %cond, i32 0, i32 8
  %28 = ptrtoint ptr %buf_size13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buf_size13, align 4
  %30 = add i32 %29, -512
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %31)
  %32 = icmp ult i32 %31, 8
  br i1 %32, label %switch.lookup53, label %if.else.hns_rcb_set_tx_ring_bs.exit_crit_edge

if.else.hns_rcb_set_tx_ring_bs.exit_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %hns_rcb_set_tx_ring_bs.exit

switch.lookup53:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep54 = getelementptr inbounds [8 x i32], ptr @switch.table.hns_rcb_ring_init.53, i32 0, i32 %31
  %33 = ptrtoint ptr %switch.gep54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load55 = load i32, ptr %switch.gep54, align 4
  br label %hns_rcb_set_tx_ring_bs.exit

hns_rcb_set_tx_ring_bs.exit:                      ; preds = %switch.lookup53, %if.else.hns_rcb_set_tx_ring_bs.exit_crit_edge
  %bd_size_type.0.i.i49 = phi i32 [ %switch.load55, %switch.lookup53 ], [ -22, %if.else.hns_rcb_set_tx_ring_bs.exit_crit_edge ]
  %34 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %q1, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %36 = tail call i32 @llvm.bswap.i32(i32 %bd_size_type.0.i.i49) #8
  %add.ptr.i.i50 = getelementptr i8, ptr %35, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i50, i32 %36) #8, !srcloc !121
  %37 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %q1, align 128
  %port_id_in_comm15 = getelementptr inbounds %struct.ring_pair_cb, ptr %ring_pair, i32 0, i32 7
  %39 = ptrtoint ptr %port_id_in_comm15 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %port_id_in_comm15, align 4
  %conv16 = zext i8 %40 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %41 = shl nuw i32 %conv16, 24
  %add.ptr.i51 = getelementptr i8, ptr %38, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %41) #8, !srcloc !121
  %42 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %q1, align 128
  %44 = ptrtoint ptr %port_id_in_comm15 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %port_id_in_comm15, align 4
  %conv19 = zext i8 %45 to i32
  %add = add nuw nsw i32 %conv19, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %46 = tail call i32 @llvm.bswap.i32(i32 %add) #8
  %add.ptr.i52 = getelementptr i8, ptr %43, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %46) #8, !srcloc !121
  br label %if.end

if.end:                                           ; preds = %hns_rcb_set_tx_ring_bs.exit, %hns_rcb_set_rx_ring_bs.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_rcb_common_init_hw(ptr noundef readonly %rcb_common) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_dev.i = getelementptr inbounds %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 2
  %0 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev.i, align 8
  %dsaf_mode.i = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %dsaf_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsaf_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp.i = icmp eq i32 %3, 8
  %..i = select i1 %cmp.i, i32 1, i32 6
  %4 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rcb_common, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #8, !srcloc !121
  %6 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rcb_common, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i1.i = getelementptr i8, ptr %7, i32 1140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 -1) #8, !srcloc !121
  %8 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rcb_common, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i2.i = getelementptr i8, ptr %9, i32 1152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 -1) #8, !srcloc !121
  %10 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rcb_common, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i3.i = getelementptr i8, ptr %11, i32 936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 -1) #8, !srcloc !121
  %12 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rcb_common, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i4.i = getelementptr i8, ptr %13, i32 1180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 -1) #8, !srcloc !121
  %14 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rcb_common, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i5.i = getelementptr i8, ptr %15, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 -1) #8, !srcloc !121
  %16 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rcb_common, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i6.i = getelementptr i8, ptr %17, i32 1136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 -1) #8, !srcloc !121
  %18 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rcb_common, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i7.i = getelementptr i8, ptr %19, i32 1148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 -1) #8, !srcloc !121
  %20 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rcb_common, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i8.i = getelementptr i8, ptr %21, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 -1) #8, !srcloc !121
  %22 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rcb_common, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i9.i = getelementptr i8, ptr %23, i32 1176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 -1) #8, !srcloc !121
  %24 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rcb_common, align 128
  %add.ptr.i = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !118
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %and = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not.not = icmp eq i32 %and, 0
  br i1 %cmp.not.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %desc_num = getelementptr inbounds %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 7
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dsaf_dev.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.9, i32 noundef %27) #11
  br label %cleanup

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %for.cond.preheader
  %i.065 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end10.for.body_crit_edge ]
  %32 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %desc_num, align 8
  %34 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rcb_common, align 128
  %mul.i = shl i32 %i.065, 2
  %add.i = add nuw nsw i32 %mul.i, 36864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %36 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  %add.ptr.i.i47 = getelementptr i8, ptr %35, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i47, i32 %36) #8, !srcloc !121
  %37 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rcb_common, align 128
  %add.i.i = add nuw nsw i32 %mul.i, 36944
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 %add.i.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  call void @__sanitizer_cov_trace_const_cmp4(i32 838860800, i32 %39)
  %cmp.i48 = icmp eq i32 %39, 838860800
  br i1 %cmp.i48, label %for.body.hns_rcb_set_rx_coalesced_frames.exit_crit_edge, label %if.end.i

for.body.hns_rcb_set_rx_coalesced_frames.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %hns_rcb_set_rx_coalesced_frames.exit

if.end.i:                                         ; preds = %for.body
  %40 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %desc_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %41)
  %cmp1.not.i = icmp ult i32 %41, 51
  br i1 %cmp1.not.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dsaf_dev.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.18) #11
  br label %hns_rcb_set_rx_coalesced_frames.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rcb_common, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i50 = getelementptr i8, ptr %47, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i50, i32 838860800) #8, !srcloc !121
  br label %hns_rcb_set_rx_coalesced_frames.exit

hns_rcb_set_rx_coalesced_frames.exit:             ; preds = %if.end6.i, %do.end.i, %for.body.hns_rcb_set_rx_coalesced_frames.exit_crit_edge
  %48 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dsaf_dev.i, align 8
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %49, i32 0, i32 15
  %50 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %51)
  %cmp5 = icmp eq i32 %51, 3552816
  br i1 %cmp5, label %hns_rcb_set_rx_coalesced_frames.exit.if.end10_crit_edge, label %land.lhs.true

hns_rcb_set_rx_coalesced_frames.exit.if.end10_crit_edge: ; preds = %hns_rcb_set_rx_coalesced_frames.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %hns_rcb_set_rx_coalesced_frames.exit
  %dsaf_mode = getelementptr inbounds %struct.dsaf_device, ptr %49, i32 0, i32 12
  %52 = ptrtoint ptr %dsaf_mode to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dsaf_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %53)
  %cmp7 = icmp eq i32 %53, 8
  br i1 %cmp7, label %land.lhs.true.if.end10_crit_edge, label %if.then8

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  %add1.i.i = add nuw nsw i32 %mul.i, 36976
  %54 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rcb_common, align 128
  %add.ptr.i.i.i52 = getelementptr i8, ptr %55, i32 %add1.i.i
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i52) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %56)
  %cmp.i53 = icmp eq i32 %56, 16777216
  br i1 %cmp.i53, label %if.then8.if.end10_crit_edge, label %if.end.i54

if.then8.if.end10_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.i54:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rcb_common, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i55 = getelementptr i8, ptr %58, i32 %add1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55, i32 16777216) #8, !srcloc !121
  br label %if.end10

if.end10:                                         ; preds = %if.end.i54, %if.then8.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %hns_rcb_set_rx_coalesced_frames.exit.if.end10_crit_edge
  tail call fastcc void @hns_rcb_set_port_timeout(ptr noundef %rcb_common, i32 noundef %i.065, i32 noundef 30)
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, %..i
  br i1 %exitcond.not, label %for.end, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end10
  %59 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rcb_common, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 16777216) #8, !srcloc !121
  %61 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dsaf_dev.i, align 8
  %dsaf_ver13 = getelementptr inbounds %struct.dsaf_device, ptr %62, i32 0, i32 15
  %63 = ptrtoint ptr %dsaf_ver13 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dsaf_ver13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %64)
  %cmp14 = icmp eq i32 %64, 3552816
  %65 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rcb_common, align 128
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i57 = getelementptr i8, ptr %66, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 0) #8, !srcloc !121
  %67 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rcb_common, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i58 = getelementptr i8, ptr %68, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 16777216) #8, !srcloc !121
  br label %cleanup

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i59 = getelementptr i8, ptr %66, i32 48
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i59) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %70 = and i32 %69, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i59, i32 %70) #8, !srcloc !121
  %71 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rcb_common, align 128
  %add.ptr.i.i60 = getelementptr i8, ptr %72, i32 48
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i60) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %74 = or i32 %73, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i60, i32 %74) #8, !srcloc !121
  %75 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rcb_common, align 128
  %add.ptr.i.i62 = getelementptr i8, ptr %76, i32 80
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i62) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %78 = or i32 %77, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i62, i32 %78) #8, !srcloc !121
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then15, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.else ], [ 0, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_rcb_set_rx_coalesced_frames(ptr nocapture noundef readonly %rcb_common, i32 noundef %port_idx, i32 noundef %coalesced_frames) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcb_common, align 128
  %mul.i = shl i32 %port_idx, 2
  %add.i = add i32 %mul.i, 36944
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !118
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %coalesced_frames)
  %cmp = icmp eq i32 %3, %coalesced_frames
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc_num = getelementptr inbounds %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 7
  %4 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %desc_num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %coalesced_frames)
  %cmp1.not = icmp ule i32 %5, %coalesced_frames
  %6 = add i32 %coalesced_frames, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1023, i32 %6)
  %7 = icmp ult i32 %6, -1023
  %8 = or i1 %7, %cmp1.not
  br i1 %8, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dsaf_dev = getelementptr inbounds %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 2
  %9 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dsaf_dev, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rcb_common, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %coalesced_frames) #8
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #8, !srcloc !121
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end6 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_rcb_set_tx_coalesced_frames(ptr nocapture noundef readonly %rcb_common, i32 noundef %port_idx, i32 noundef %coalesced_frames) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = shl i32 %port_idx, 2
  %add1.i = add i32 %add.i, 36976
  %0 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcb_common, align 128
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %add1.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !118
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %coalesced_frames)
  %cmp = icmp eq i32 %3, %coalesced_frames
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %coalesced_frames)
  %cmp1.not = icmp eq i32 %coalesced_frames, 1
  br i1 %cmp1.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dsaf_dev = getelementptr inbounds %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 2
  %4 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsaf_dev, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rcb_common, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !121
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hns_rcb_set_port_timeout(ptr nocapture noundef readonly %rcb_common, i32 noundef %port_idx, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_dev = getelementptr inbounds %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 2
  %0 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev, align 8
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %3)
  %cmp = icmp eq i32 %3, 3552816
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rcb_common, align 128
  %mul = mul i32 %timeout, 350
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %mul) #8
  %add.ptr.i = getelementptr i8, ptr %5, i32 37632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #8, !srcloc !121
  br label %if.end20

if.else:                                          ; preds = %entry
  %dsaf_mode = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %dsaf_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dsaf_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp2 = icmp eq i32 %8, 8
  br i1 %cmp2, label %if.else15, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %timeout)
  %cmp4 = icmp ugt i32 %timeout, 20
  %9 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rcb_common, align 128
  %mul7 = shl i32 %port_idx, 2
  %add = add i32 %mul7, 37888
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i34 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 335544320) #8, !srcloc !121
  %.pre = tail call i32 @llvm.bswap.i32(i32 %timeout) #8
  br label %if.end

if.else8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %timeout) #8
  %add.ptr.i35 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %11) #8, !srcloc !121
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then5
  %.pre-phi = phi i32 [ %11, %if.else8 ], [ %.pre, %if.then5 ]
  %12 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rcb_common, align 128
  %add14 = add i32 %mul7, 37936
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i36 = getelementptr i8, ptr %13, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %.pre-phi) #8, !srcloc !121
  br label %if.end20

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rcb_common, align 128
  %mul17 = shl i32 %port_idx, 2
  %add18 = add i32 %mul17, 37936
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %timeout) #8
  %add.ptr.i37 = getelementptr i8, ptr %15, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %16) #8, !srcloc !121
  br label %if.end20

if.end20:                                         ; preds = %if.else15, %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_rcb_get_cfg(ptr noundef %rcb_common) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_num1 = getelementptr inbounds %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 6
  %0 = ptrtoint ptr %ring_num1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_num1, align 4
  %dsaf_dev.i = getelementptr inbounds %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 2
  %2 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsaf_dev.i, align 8
  %dsaf_mode.i = getelementptr inbounds %struct.dsaf_device, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %dsaf_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsaf_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp2.i = icmp eq i32 %5, 8
  br i1 %cmp2.i, label %entry.hns_rcb_get_base_irq_idx.exit_crit_edge, label %if.then.i

entry.hns_rcb_get_base_irq_idx.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hns_rcb_get_base_irq_idx.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dsaf_ver.i = getelementptr inbounds %struct.dsaf_device, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %dsaf_ver.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsaf_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %7)
  %cmp.i = icmp eq i32 %7, 3552816
  %cond.i = select i1 %cmp.i, i32 59, i32 25
  br label %hns_rcb_get_base_irq_idx.exit

hns_rcb_get_base_irq_idx.exit:                    ; preds = %if.then.i, %entry.hns_rcb_get_base_irq_idx.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.then.i ], [ 0, %entry.hns_rcb_get_base_irq_idx.exit_crit_edge ]
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 -16
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %11)
  %cmp = icmp eq i32 %11, 3552816
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp395.not = icmp eq i32 %1, 0
  br i1 %cmp395.not, label %hns_rcb_get_base_irq_idx.exit.cleanup_crit_edge, label %for.body.lr.ph

hns_rcb_get_base_irq_idx.exit.cleanup_crit_edge:  ; preds = %hns_rcb_get_base_irq_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %hns_rcb_get_base_irq_idx.exit
  %max_q_per_vf.i = getelementptr inbounds %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 4
  %max_vfn.i = getelementptr inbounds %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 3
  %add18 = add nuw nsw i32 %retval.0.i, 1
  %phy_base = getelementptr inbounds %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rcb_common, ptr %arrayidx, align 128
  %13 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dsaf_dev.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %dev8 = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 1
  %17 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %dev8, align 4
  %conv = trunc i32 %i.096 to i16
  %index = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 4
  %18 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %index, align 128
  %19 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rcb_common, align 128
  %add.ptr9 = getelementptr i8, ptr %20, i32 65536
  %mul = shl i32 %i.096, 16
  %add.ptr10 = getelementptr i8, ptr %add.ptr9, i32 %mul
  %q = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3
  %21 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr10, ptr %q, align 128
  %22 = ptrtoint ptr %max_q_per_vf.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %max_q_per_vf.i, align 2
  %conv.i = zext i16 %23 to i32
  %24 = ptrtoint ptr %max_vfn.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %max_vfn.i, align 4
  %conv1.i = zext i16 %25 to i32
  %mul.i = mul nuw i32 %conv1.i, %conv.i
  %div.i = sdiv i32 %i.096, %mul.i
  %conv13 = trunc i32 %div.i to i8
  %port_id_in_comm = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 7
  %26 = ptrtoint ptr %port_id_in_comm to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv13, ptr %port_id_in_comm, align 4
  br i1 %cmp, label %cond.true24, label %cond.false29

cond.true24:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %mul15 = shl i32 %i.096, 1
  %add = add i32 %mul15, %retval.0.i
  %call16 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef %add) #8
  %virq92 = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 6
  %27 = ptrtoint ptr %virq92 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call16, ptr %virq92, align 4
  %add27 = add i32 %add18, %mul15
  br label %cond.end33

cond.false29:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %mul17 = mul i32 %i.096, 3
  %add19 = add i32 %add18, %mul17
  %call20 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef %add19) #8
  %virq = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 6
  %28 = ptrtoint ptr %virq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call20, ptr %virq, align 4
  %add31 = add i32 %mul17, %retval.0.i
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false29, %cond.true24
  %add31.sink = phi i32 [ %add31, %cond.false29 ], [ %add27, %cond.true24 ]
  %virq93 = phi ptr [ %virq, %cond.false29 ], [ %virq92, %cond.true24 ]
  %call32 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef %add31.sink) #8
  %arrayidx36 = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 6, i32 1
  %29 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call32, ptr %arrayidx36, align 4
  %30 = ptrtoint ptr %virq93 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %virq93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %31)
  %cmp39 = icmp eq i32 %31, -517
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call32)
  %cmp43 = icmp eq i32 %call32, -517
  %or.cond = select i1 %cmp39, i1 true, i1 %cmp43
  br i1 %or.cond, label %cond.end33.cleanup_crit_edge, label %if.end

cond.end33.cleanup_crit_edge:                     ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cond.end33
  %32 = ptrtoint ptr %phy_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %phy_base, align 4
  %add45 = add i32 %mul, 65536
  %add47 = add i32 %add45, %33
  %phy_base49 = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 1
  %34 = ptrtoint ptr %phy_base49 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add47, ptr %phy_base49, align 4
  %handle.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 7
  %35 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %handle.i, align 64
  %rx_ring.i.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 4
  %36 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %q, align 128
  %38 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %rx_ring.i.i, align 8
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 128
  %dsaf_dev10.i.i = getelementptr inbounds %struct.rcb_common_cb, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %dsaf_dev10.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dsaf_dev10.i.i, align 8
  %desc_num11.i.i = getelementptr inbounds %struct.dsaf_device, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %desc_num11.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %desc_num11.i.i, align 8
  %conv12.i.i = trunc i32 %44 to i16
  %desc.i.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 4, i32 1
  %45 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %desc.i.i, align 4
  %desc_cb.i.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 4, i32 2
  %46 = ptrtoint ptr %desc_cb.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %desc_cb.i.i, align 8
  %virq.i.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 6
  %47 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx36, align 4
  %irq.i.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 4, i32 4
  %49 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %irq.i.i, align 8
  %desc_dma_addr.i.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 4, i32 7
  %50 = ptrtoint ptr %desc_dma_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %desc_dma_addr.i.i, align 8
  %buf_size.i.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 4, i32 8
  %51 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2048, ptr %buf_size.i.i, align 4
  %desc_num14.i.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 4, i32 9
  %52 = ptrtoint ptr %desc_num14.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv12.i.i, ptr %desc_num14.i.i, align 8
  %max_desc_num_per_pkt.i.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 4, i32 10
  %53 = ptrtoint ptr %max_desc_num_per_pkt.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 3, ptr %max_desc_num_per_pkt.i.i, align 2
  %max_raw_data_sz_per_desc.i.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 4, i32 11
  %54 = ptrtoint ptr %max_raw_data_sz_per_desc.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 9600, ptr %max_raw_data_sz_per_desc.i.i, align 4
  %max_pkt_size.i.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 4, i32 12
  %55 = ptrtoint ptr %max_pkt_size.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 9600, ptr %max_pkt_size.i.i, align 2
  %next_to_use.i.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 4, i32 13
  %56 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %next_to_use.i.i, align 8
  %next_to_clean.i.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 4, i32 14
  %57 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %next_to_clean.i.i, align 4
  %58 = load ptr, ptr %dsaf_dev10.i.i, align 8
  %dsaf_ver.i.i = getelementptr inbounds %struct.dsaf_device, ptr %58, i32 0, i32 15
  %59 = ptrtoint ptr %dsaf_ver.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dsaf_ver.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %60)
  %cmp.i.i = icmp eq i32 %60, 3552816
  %tx_ring.i.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 6
  %add.ptr7.i.i = getelementptr i8, ptr %37, i32 64
  %61 = ptrtoint ptr %tx_ring.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr7.i.i, ptr %tx_ring.i.i, align 8
  %conv.i.i = select i1 %cmp.i.i, i16 3, i16 8
  %62 = ptrtoint ptr %dsaf_dev10.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dsaf_dev10.i.i, align 8
  %desc_num11.i7.i = getelementptr inbounds %struct.dsaf_device, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %desc_num11.i7.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %desc_num11.i7.i, align 8
  %conv12.i8.i = trunc i32 %65 to i16
  %desc.i9.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 6, i32 1
  %66 = ptrtoint ptr %desc.i9.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %desc.i9.i, align 4
  %desc_cb.i10.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 6, i32 2
  %67 = ptrtoint ptr %desc_cb.i10.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %desc_cb.i10.i, align 8
  %68 = ptrtoint ptr %virq.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %virq.i.i, align 4
  %irq.i13.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 6, i32 4
  %70 = ptrtoint ptr %irq.i13.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %irq.i13.i, align 8
  %desc_dma_addr.i14.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 6, i32 7
  %71 = ptrtoint ptr %desc_dma_addr.i14.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %desc_dma_addr.i14.i, align 8
  %buf_size.i15.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 6, i32 8
  %72 = ptrtoint ptr %buf_size.i15.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2048, ptr %buf_size.i15.i, align 4
  %desc_num14.i16.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 6, i32 9
  %73 = ptrtoint ptr %desc_num14.i16.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv12.i8.i, ptr %desc_num14.i16.i, align 8
  %max_desc_num_per_pkt.i17.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 6, i32 10
  %74 = ptrtoint ptr %max_desc_num_per_pkt.i17.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i.i, ptr %max_desc_num_per_pkt.i17.i, align 2
  %max_raw_data_sz_per_desc.i18.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 6, i32 11
  %75 = ptrtoint ptr %max_raw_data_sz_per_desc.i18.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 9600, ptr %max_raw_data_sz_per_desc.i18.i, align 4
  %max_pkt_size.i19.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 6, i32 12
  %76 = ptrtoint ptr %max_pkt_size.i19.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 9600, ptr %max_pkt_size.i19.i, align 2
  %next_to_use.i20.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 6, i32 13
  %77 = ptrtoint ptr %next_to_use.i20.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %next_to_use.i20.i, align 8
  %next_to_clean.i21.i = getelementptr %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 9, i32 %i.096, i32 3, i32 6, i32 14
  %78 = ptrtoint ptr %next_to_clean.i21.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %next_to_clean.i21.i, align 4
  %inc = add nuw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %cond.end33.cleanup_crit_edge, %hns_rcb_get_base_irq_idx.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hns_rcb_get_base_irq_idx.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -517, %cond.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_rcb_get_rx_coalesced_frames(ptr nocapture noundef readonly %rcb_common, i32 noundef %port_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcb_common, align 128
  %mul = shl i32 %port_idx, 2
  %add = add i32 %mul, 36944
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !118
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_rcb_get_tx_coalesced_frames(ptr nocapture noundef readonly %rcb_common, i32 noundef %port_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = shl i32 %port_idx, 2
  %add1 = add i32 %add, 36976
  %0 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcb_common, align 128
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !118
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_rcb_get_coalesce_usecs(ptr nocapture noundef readonly %rcb_common, i32 noundef %port_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_dev = getelementptr inbounds %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 2
  %0 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev, align 8
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %3)
  %cmp = icmp eq i32 %3, 3552816
  %4 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rcb_common, align 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %5, i32 37632
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !118
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %div = udiv i32 %7, 350
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul = shl i32 %port_idx, 2
  %add = add i32 %mul, 37936
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #8, !srcloc !118
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %div, %if.then ], [ %9, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_rcb_set_coalesce_usecs(ptr nocapture noundef readonly %rcb_common, i32 noundef %port_idx, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_dev.i = getelementptr inbounds %struct.rcb_common_cb, ptr %rcb_common, i32 0, i32 2
  %0 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev.i, align 8
  %dsaf_ver.i = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dsaf_ver.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsaf_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %3)
  %cmp.i = icmp eq i32 %3, 3552816
  %4 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rcb_common, align 128
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 37632
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !118
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %div.i = udiv i32 %7, 350
  br label %hns_rcb_get_coalesce_usecs.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = shl i32 %port_idx, 2
  %add.i = add i32 %mul.i, 37936
  %add.ptr.i5.i = getelementptr i8, ptr %5, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #8, !srcloc !118
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  br label %hns_rcb_get_coalesce_usecs.exit

hns_rcb_get_coalesce_usecs.exit:                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %div.i, %if.then.i ], [ %9, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %timeout)
  %cmp = icmp eq i32 %retval.0.i, %timeout
  br i1 %cmp, label %hns_rcb_get_coalesce_usecs.exit.cleanup_crit_edge, label %if.end

hns_rcb_get_coalesce_usecs.exit.cleanup_crit_edge: ; preds = %hns_rcb_get_coalesce_usecs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %hns_rcb_get_coalesce_usecs.exit
  %10 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dsaf_dev.i, align 8
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %13)
  %cmp1 = icmp eq i32 %13, 3552816
  br i1 %cmp1, label %if.then2, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %dsaf_mode = getelementptr inbounds %struct.dsaf_device, ptr %11, i32 0, i32 12
  %14 = ptrtoint ptr %dsaf_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dsaf_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %cmp4 = icmp eq i32 %15, 8
  br i1 %cmp4, label %if.then2.if.end8_crit_edge, label %do.end

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %18 = add i32 %timeout, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1023, i32 %18)
  %19 = icmp ult i32 %18, -1023
  br i1 %19, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @hns_rcb_set_port_timeout(ptr noundef %rcb_common, i32 noundef %port_idx, i32 noundef %timeout)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end14, %do.end, %hns_rcb_get_coalesce_usecs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end14 ], [ 0, %if.end17 ], [ -22, %do.end ], [ 0, %hns_rcb_get_coalesce_usecs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @hns_rcb_get_queue_mode(i32 noundef %dsaf_mode, ptr nocapture noundef writeonly %max_vfn, ptr nocapture noundef writeonly %max_q_per_vf) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %dsaf_mode, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 9
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [9 x i16], ptr @switch.table.hns_rcb_get_queue_mode, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %1)
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.gep13 = getelementptr inbounds [9 x i16], ptr @switch.table.hns_rcb_get_queue_mode.54, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep13 to i32
  call void @__asan_load2_noabort(i32 %2)
  %switch.load14 = load i16, ptr %switch.gep13, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.sink12 = phi i16 [ 1, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %.sink = phi i16 [ 16, %entry.sw.epilog_crit_edge ], [ %switch.load14, %switch.lookup ]
  %3 = ptrtoint ptr %max_vfn to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %.sink12, ptr %max_vfn, align 2
  %4 = ptrtoint ptr %max_q_per_vf to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %.sink, ptr %max_q_per_vf, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_rcb_common_get_cfg(ptr noundef %dsaf_dev, i32 noundef %comm_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_mode1 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %0 = ptrtoint ptr %dsaf_mode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsaf_mode1, align 8
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 16
  br i1 %2, label %switch.hole_check, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %switch.hole_check.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %3 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dsaf_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.50, i32 noundef %1) #11
  br label %hns_rcb_get_ring_num.exit

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 -65, %switch.maskindex
  %5 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %switch.lobit.not = icmp eq i16 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.hns_rcb_common_get_cfg, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %hns_rcb_get_ring_num.exit

hns_rcb_get_ring_num.exit:                        ; preds = %switch.lookup, %do.end.i
  %retval.0.i = phi i32 [ 128, %do.end.i ], [ %switch.load, %switch.lookup ]
  %7 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dsaf_dev, align 8
  %9 = mul nuw nsw i32 %retval.0.i, 896
  %10 = add nuw nsw i32 %9, 128
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %10, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %hns_rcb_get_ring_num.exit
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dsaf_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.20) #11
  br label %cleanup

if.end:                                           ; preds = %hns_rcb_get_ring_num.exit
  %conv = trunc i32 %comm_index to i8
  %comm_index5 = getelementptr inbounds %struct.rcb_common_cb, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %comm_index5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %comm_index5, align 16
  %ring_num6 = getelementptr inbounds %struct.rcb_common_cb, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %ring_num6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i, ptr %ring_num6, align 4
  %dsaf_dev7 = getelementptr inbounds %struct.rcb_common_cb, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %dsaf_dev7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dsaf_dev, ptr %dsaf_dev7, align 8
  %desc_num = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 8
  %16 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %desc_num, align 8
  %desc_num8 = getelementptr inbounds %struct.rcb_common_cb, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %desc_num8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %desc_num8, align 8
  %switch.tableidx43 = add i32 %1, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx43)
  %19 = icmp ult i32 %switch.tableidx43, 9
  br i1 %19, label %switch.lookup42, label %if.end.hns_rcb_get_queue_mode.exit_crit_edge

if.end.hns_rcb_get_queue_mode.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %hns_rcb_get_queue_mode.exit

switch.lookup42:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep44 = getelementptr inbounds [9 x i16], ptr @switch.table.hns_rcb_common_get_cfg.55, i32 0, i32 %switch.tableidx43
  %20 = ptrtoint ptr %switch.gep44 to i32
  call void @__asan_load2_noabort(i32 %20)
  %switch.load45 = load i16, ptr %switch.gep44, align 2
  %switch.gep46 = getelementptr inbounds [9 x i16], ptr @switch.table.hns_rcb_common_get_cfg.56, i32 0, i32 %switch.tableidx43
  %21 = ptrtoint ptr %switch.gep46 to i32
  call void @__asan_load2_noabort(i32 %21)
  %switch.load47 = load i16, ptr %switch.gep46, align 2
  br label %hns_rcb_get_queue_mode.exit

hns_rcb_get_queue_mode.exit:                      ; preds = %switch.lookup42, %if.end.hns_rcb_get_queue_mode.exit_crit_edge
  %.sink12.i = phi i16 [ 1, %if.end.hns_rcb_get_queue_mode.exit_crit_edge ], [ %switch.load45, %switch.lookup42 ]
  %.sink.i = phi i16 [ 16, %if.end.hns_rcb_get_queue_mode.exit_crit_edge ], [ %switch.load47, %switch.lookup42 ]
  %max_vfn9 = getelementptr inbounds %struct.rcb_common_cb, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %max_vfn9 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %.sink12.i, ptr %max_vfn9, align 4
  %max_q_per_vf10 = getelementptr inbounds %struct.rcb_common_cb, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %max_q_per_vf10 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %.sink.i, ptr %max_q_per_vf10, align 2
  %ppe_base.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 4
  %24 = ptrtoint ptr %ppe_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ppe_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %25, i32 524288
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i, ptr %call.i, align 128
  %ppe_paddr.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 7
  %27 = ptrtoint ptr %ppe_paddr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ppe_paddr.i, align 4
  %add.i = add i32 %28, 524288
  %phy_base = getelementptr inbounds %struct.rcb_common_cb, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %phy_base to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add.i, ptr %phy_base, align 4
  %arrayidx = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 18, i32 %comm_index
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %hns_rcb_get_queue_mode.exit, %do.end
  %retval.0 = phi i32 [ 0, %hns_rcb_get_queue_mode.exit ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @hns_rcb_common_free_cfg(ptr nocapture noundef writeonly %dsaf_dev, i32 noundef %comm_index) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 18, i32 %comm_index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_rcb_update_stats(ptr nocapture noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %queue, i32 -128
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %dsaf_dev1 = getelementptr inbounds %struct.rcb_common_cb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dsaf_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsaf_dev1, align 8
  %comm_index = getelementptr inbounds %struct.rcb_common_cb, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %comm_index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %comm_index, align 16
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr %struct.dsaf_device, ptr %3, i32 0, i32 17, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %hw_stats4 = getelementptr i8, ptr %queue, i32 656
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue, align 128
  %add.ptr.i = getelementptr i8, ptr %9, i32 44
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !118
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %conv = zext i32 %11 to i64
  %rx_pkts = getelementptr i8, ptr %queue, i32 680
  %12 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rx_pkts, align 8
  %add = add i64 %13, %conv
  store i64 %add, ptr %rx_pkts, align 8
  %14 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %queue, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i59 = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 16777216) #8, !srcloc !121
  %io_base6 = getelementptr inbounds %struct.ppe_common_cb, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %io_base6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base6, align 8
  %index = getelementptr i8, ptr %queue, i32 640
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %index, align 128
  %conv7 = zext i16 %19 to i32
  %mul = shl nuw nsw i32 %conv7, 2
  %add8 = add nuw nsw i32 %mul, 1536
  %add.ptr.i60 = getelementptr i8, ptr %17, i32 %add8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #8, !srcloc !118
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %conv10 = zext i32 %21 to i64
  %ppe_rx_ok_pkts = getelementptr i8, ptr %queue, i32 688
  %22 = ptrtoint ptr %ppe_rx_ok_pkts to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ppe_rx_ok_pkts, align 8
  %add11 = add i64 %23, %conv10
  store i64 %add11, ptr %ppe_rx_ok_pkts, align 8
  %24 = ptrtoint ptr %io_base6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base6, align 8
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %index, align 128
  %conv14 = zext i16 %27 to i32
  %mul15 = shl nuw nsw i32 %conv14, 2
  %add16 = add nuw nsw i32 %mul15, 768
  %add.ptr.i61 = getelementptr i8, ptr %25, i32 %add16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #8, !srcloc !118
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %conv18 = zext i32 %29 to i64
  %ppe_rx_drop_pkts = getelementptr i8, ptr %queue, i32 696
  %30 = ptrtoint ptr %ppe_rx_drop_pkts to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ppe_rx_drop_pkts, align 8
  %add19 = add i64 %31, %conv18
  store i64 %add19, ptr %ppe_rx_drop_pkts, align 8
  %32 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %queue, align 128
  %add.ptr.i62 = getelementptr i8, ptr %33, i32 108
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #8, !srcloc !118
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %conv22 = zext i32 %35 to i64
  %36 = ptrtoint ptr %hw_stats4 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %hw_stats4, align 8
  %add23 = add i64 %37, %conv22
  store i64 %add23, ptr %hw_stats4, align 8
  %38 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %queue, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %add.ptr.i63 = getelementptr i8, ptr %39, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 16777216) #8, !srcloc !121
  %40 = ptrtoint ptr %io_base6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_base6, align 8
  %42 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %index, align 128
  %conv27 = zext i16 %43 to i32
  %mul28 = shl nuw nsw i32 %conv27, 2
  %add29 = add nuw nsw i32 %mul28, 3072
  %add.ptr.i64 = getelementptr i8, ptr %41, i32 %add29
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #8, !srcloc !118
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %conv31 = zext i32 %45 to i64
  %ppe_tx_ok_pkts = getelementptr i8, ptr %queue, i32 664
  %46 = ptrtoint ptr %ppe_tx_ok_pkts to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ppe_tx_ok_pkts, align 8
  %add32 = add i64 %47, %conv31
  store i64 %add32, ptr %ppe_tx_ok_pkts, align 8
  %48 = ptrtoint ptr %io_base6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io_base6, align 8
  %50 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %index, align 128
  %conv35 = zext i16 %51 to i32
  %mul36 = shl nuw nsw i32 %conv35, 2
  %add37 = add nuw nsw i32 %mul36, 2304
  %add.ptr.i65 = getelementptr i8, ptr %49, i32 %add37
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #8, !srcloc !118
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %conv39 = zext i32 %53 to i64
  %ppe_tx_drop_pkts = getelementptr i8, ptr %queue, i32 672
  %54 = ptrtoint ptr %ppe_tx_drop_pkts to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %ppe_tx_drop_pkts, align 8
  %add40 = add i64 %55, %conv39
  store i64 %add40, ptr %ppe_tx_drop_pkts, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_rcb_get_stats(ptr noundef readonly %queue, ptr noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_stats1 = getelementptr i8, ptr %queue, i32 656
  %0 = ptrtoint ptr %hw_stats1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %hw_stats1, align 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %data, align 8
  %ppe_tx_ok_pkts = getelementptr i8, ptr %queue, i32 664
  %3 = ptrtoint ptr %ppe_tx_ok_pkts to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppe_tx_ok_pkts, align 8
  %arrayidx2 = getelementptr i64, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx2, align 8
  %ppe_tx_drop_pkts = getelementptr i8, ptr %queue, i32 672
  %6 = ptrtoint ptr %ppe_tx_drop_pkts to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ppe_tx_drop_pkts, align 8
  %arrayidx3 = getelementptr i64, ptr %data, i32 2
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx3, align 8
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %queue, align 128
  %add.ptr.i = getelementptr i8, ptr %10, i32 96
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !118
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %conv = zext i32 %12 to i64
  %arrayidx4 = getelementptr i64, ptr %data, i32 3
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %arrayidx4, align 8
  %stats = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 6, i32 6
  %14 = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 6, i32 6, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %14, align 8
  %arrayidx6 = getelementptr i64, ptr %data, i32 4
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx6, align 8
  %tx_bytes = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 6, i32 6, i32 3, i32 0, i32 1
  %18 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tx_bytes, align 8
  %arrayidx9 = getelementptr i64, ptr %data, i32 5
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx9, align 8
  %tx_err_cnt = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 6, i32 6, i32 3, i32 0, i32 2
  %21 = ptrtoint ptr %tx_err_cnt to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tx_err_cnt, align 8
  %arrayidx12 = getelementptr i64, ptr %data, i32 6
  %23 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx12, align 8
  %24 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %stats, align 8
  %arrayidx15 = getelementptr i64, ptr %data, i32 7
  %26 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx15, align 8
  %sw_err_cnt = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 6, i32 6, i32 1
  %27 = ptrtoint ptr %sw_err_cnt to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %sw_err_cnt, align 8
  %arrayidx18 = getelementptr i64, ptr %data, i32 8
  %29 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx18, align 8
  %seg_pkt_cnt = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 6, i32 6, i32 2
  %30 = ptrtoint ptr %seg_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %seg_pkt_cnt, align 8
  %arrayidx21 = getelementptr i64, ptr %data, i32 9
  %32 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx21, align 8
  %restart_queue = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 6, i32 6, i32 3, i32 0, i32 3
  %33 = ptrtoint ptr %restart_queue to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %restart_queue, align 8
  %arrayidx24 = getelementptr i64, ptr %data, i32 10
  %35 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx24, align 8
  %tx_busy = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 6, i32 6, i32 3, i32 0, i32 4
  %36 = ptrtoint ptr %tx_busy to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %tx_busy, align 8
  %arrayidx27 = getelementptr i64, ptr %data, i32 11
  %38 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %arrayidx27, align 8
  %rx_pkts = getelementptr i8, ptr %queue, i32 680
  %39 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %rx_pkts, align 8
  %arrayidx28 = getelementptr i64, ptr %data, i32 12
  %41 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %arrayidx28, align 8
  %ppe_rx_ok_pkts = getelementptr i8, ptr %queue, i32 688
  %42 = ptrtoint ptr %ppe_rx_ok_pkts to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ppe_rx_ok_pkts, align 8
  %arrayidx29 = getelementptr i64, ptr %data, i32 13
  %44 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %arrayidx29, align 8
  %ppe_rx_drop_pkts = getelementptr i8, ptr %queue, i32 696
  %45 = ptrtoint ptr %ppe_rx_drop_pkts to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ppe_rx_drop_pkts, align 8
  %arrayidx30 = getelementptr i64, ptr %data, i32 14
  %47 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %arrayidx30, align 8
  %48 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %queue, align 128
  %add.ptr.i128 = getelementptr i8, ptr %49, i32 32
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #8, !srcloc !118
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %conv33 = zext i32 %51 to i64
  %arrayidx34 = getelementptr i64, ptr %data, i32 15
  %52 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv33, ptr %arrayidx34, align 8
  %stats35 = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 4, i32 6
  %53 = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 4, i32 6, i32 3
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %53, align 8
  %arrayidx37 = getelementptr i64, ptr %data, i32 16
  %56 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %arrayidx37, align 8
  %rx_bytes = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 4, i32 6, i32 3, i32 0, i32 1
  %57 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %rx_bytes, align 8
  %arrayidx40 = getelementptr i64, ptr %data, i32 17
  %59 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %arrayidx40, align 8
  %rx_err_cnt = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 4, i32 6, i32 3, i32 0, i32 2
  %60 = ptrtoint ptr %rx_err_cnt to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %rx_err_cnt, align 8
  %arrayidx43 = getelementptr i64, ptr %data, i32 18
  %62 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %arrayidx43, align 8
  %63 = ptrtoint ptr %stats35 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %stats35, align 8
  %arrayidx47 = getelementptr i64, ptr %data, i32 19
  %65 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %arrayidx47, align 8
  %sw_err_cnt50 = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 4, i32 6, i32 1
  %66 = ptrtoint ptr %sw_err_cnt50 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %sw_err_cnt50, align 8
  %arrayidx51 = getelementptr i64, ptr %data, i32 20
  %68 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %arrayidx51, align 8
  %seg_pkt_cnt54 = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 4, i32 6, i32 2
  %69 = ptrtoint ptr %seg_pkt_cnt54 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %seg_pkt_cnt54, align 8
  %arrayidx55 = getelementptr i64, ptr %data, i32 21
  %71 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %arrayidx55, align 8
  %reuse_pg_cnt = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 4, i32 6, i32 3, i32 0, i32 3
  %72 = ptrtoint ptr %reuse_pg_cnt to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %reuse_pg_cnt, align 8
  %arrayidx58 = getelementptr i64, ptr %data, i32 22
  %74 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %arrayidx58, align 8
  %err_pkt_len = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 4, i32 6, i32 3, i32 0, i32 4
  %75 = ptrtoint ptr %err_pkt_len to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %err_pkt_len, align 8
  %arrayidx61 = getelementptr i64, ptr %data, i32 23
  %77 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %arrayidx61, align 8
  %non_vld_descs = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 4, i32 6, i32 3, i32 0, i32 5
  %78 = ptrtoint ptr %non_vld_descs to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %non_vld_descs, align 8
  %arrayidx64 = getelementptr i64, ptr %data, i32 24
  %80 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %arrayidx64, align 8
  %err_bd_num = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 4, i32 6, i32 3, i32 0, i32 6
  %81 = ptrtoint ptr %err_bd_num to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %err_bd_num, align 8
  %arrayidx67 = getelementptr i64, ptr %data, i32 25
  %83 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %arrayidx67, align 8
  %l2_err = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 4, i32 6, i32 3, i32 0, i32 7
  %84 = ptrtoint ptr %l2_err to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %l2_err, align 8
  %arrayidx70 = getelementptr i64, ptr %data, i32 26
  %86 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %arrayidx70, align 8
  %l3l4_csum_err = getelementptr inbounds %struct.hnae_queue, ptr %queue, i32 0, i32 4, i32 6, i32 3, i32 0, i32 8
  %87 = ptrtoint ptr %l3l4_csum_err to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %l3l4_csum_err, align 8
  %arrayidx73 = getelementptr i64, ptr %data, i32 27
  %89 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %arrayidx73, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hns_rcb_get_ring_sset_count(i32 noundef %stringset) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp = icmp eq i32 %stringset, 1
  %. = select i1 %cmp, i32 28, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hns_rcb_get_common_regs_count() local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 80
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hns_rcb_get_ring_regs_count() local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 40
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_rcb_get_strings(i32 noundef %stringset, ptr noundef %data, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %buff = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buff) #8
  %0 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.22, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.23, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.24, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.25, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.26, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.27, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.28, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.29, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.30, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.31, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.32, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.33, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.34, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.35, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.36, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.37, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.38, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.39, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.40, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.41, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.42, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.43, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.44, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.45, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.46, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.47, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.48, i32 noundef %index) #8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.49, i32 noundef %index) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buff) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_rcb_get_common_regs(ptr noundef readonly %rcb_com, ptr noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_dev = getelementptr inbounds %struct.rcb_common_cb, ptr %rcb_com, i32 0, i32 2
  %0 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev, align 8
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsaf_ver, align 4
  %dsaf_mode = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %dsaf_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsaf_mode, align 8
  %6 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rcb_com, align 128
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !118
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %data, align 4
  %11 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !118
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx6 = getelementptr i32, ptr %data, i32 1
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx6, align 4
  %16 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i251 = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i251) #8, !srcloc !118
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx9 = getelementptr i32, ptr %data, i32 2
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx9, align 4
  %21 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i252 = getelementptr i8, ptr %22, i32 48
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i252) #8, !srcloc !118
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx12 = getelementptr i32, ptr %data, i32 3
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx12, align 4
  %26 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i253 = getelementptr i8, ptr %27, i32 52
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i253) #8, !srcloc !118
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx15 = getelementptr i32, ptr %data, i32 4
  %30 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx15, align 4
  %31 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i254 = getelementptr i8, ptr %32, i32 56
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i254) #8, !srcloc !118
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx18 = getelementptr i32, ptr %data, i32 5
  %35 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx18, align 4
  %36 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i255 = getelementptr i8, ptr %37, i32 60
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i255) #8, !srcloc !118
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx21 = getelementptr i32, ptr %data, i32 6
  %40 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx21, align 4
  %41 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i256 = getelementptr i8, ptr %42, i32 64
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i256) #8, !srcloc !118
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx24 = getelementptr i32, ptr %data, i32 7
  %45 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx24, align 4
  %46 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i257 = getelementptr i8, ptr %47, i32 68
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i257) #8, !srcloc !118
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx27 = getelementptr i32, ptr %data, i32 8
  %50 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx27, align 4
  %51 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i258 = getelementptr i8, ptr %52, i32 928
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i258) #8, !srcloc !118
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx30 = getelementptr i32, ptr %data, i32 9
  %55 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx30, align 4
  %56 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i259 = getelementptr i8, ptr %57, i32 936
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i259) #8, !srcloc !118
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx33 = getelementptr i32, ptr %data, i32 10
  %60 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx33, align 4
  %61 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i260 = getelementptr i8, ptr %62, i32 1024
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i260) #8, !srcloc !118
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx36 = getelementptr i32, ptr %data, i32 11
  %65 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx36, align 4
  %66 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i261 = getelementptr i8, ptr %67, i32 1032
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i261) #8, !srcloc !118
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx39 = getelementptr i32, ptr %data, i32 12
  %70 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx39, align 4
  %71 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i262 = getelementptr i8, ptr %72, i32 1040
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i262) #8, !srcloc !118
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx42 = getelementptr i32, ptr %data, i32 13
  %75 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx42, align 4
  %76 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i263 = getelementptr i8, ptr %77, i32 1052
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i263) #8, !srcloc !118
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx45 = getelementptr i32, ptr %data, i32 14
  %80 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx45, align 4
  %81 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i264 = getelementptr i8, ptr %82, i32 1056
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i264) #8, !srcloc !118
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx48 = getelementptr i32, ptr %data, i32 15
  %85 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx48, align 4
  %86 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i265 = getelementptr i8, ptr %87, i32 1060
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i265) #8, !srcloc !118
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx51 = getelementptr i32, ptr %data, i32 16
  %90 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %arrayidx51, align 4
  %91 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i266 = getelementptr i8, ptr %92, i32 1064
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i266) #8, !srcloc !118
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx54 = getelementptr i32, ptr %data, i32 17
  %95 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %arrayidx54, align 4
  %96 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i267 = getelementptr i8, ptr %97, i32 1068
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i267) #8, !srcloc !118
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx57 = getelementptr i32, ptr %data, i32 18
  %100 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %arrayidx57, align 4
  %101 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i268 = getelementptr i8, ptr %102, i32 1072
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i268) #8, !srcloc !118
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx60 = getelementptr i32, ptr %data, i32 19
  %105 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %arrayidx60, align 4
  %106 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i269 = getelementptr i8, ptr %107, i32 1076
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i269) #8, !srcloc !118
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx63 = getelementptr i32, ptr %data, i32 20
  %110 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %arrayidx63, align 4
  %111 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i270 = getelementptr i8, ptr %112, i32 1080
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i270) #8, !srcloc !118
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx66 = getelementptr i32, ptr %data, i32 21
  %115 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %arrayidx66, align 4
  %116 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i271 = getelementptr i8, ptr %117, i32 1084
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i271) #8, !srcloc !118
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx69 = getelementptr i32, ptr %data, i32 22
  %120 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %arrayidx69, align 4
  %121 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i272 = getelementptr i8, ptr %122, i32 1088
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i272) #8, !srcloc !118
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx72 = getelementptr i32, ptr %data, i32 23
  %125 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %arrayidx72, align 4
  %126 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i273 = getelementptr i8, ptr %127, i32 1104
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i273) #8, !srcloc !118
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx75 = getelementptr i32, ptr %data, i32 24
  %130 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %arrayidx75, align 4
  %131 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i274 = getelementptr i8, ptr %132, i32 1116
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i274) #8, !srcloc !118
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx78 = getelementptr i32, ptr %data, i32 25
  %135 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %arrayidx78, align 4
  %136 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i275 = getelementptr i8, ptr %137, i32 1120
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i275) #8, !srcloc !118
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx81 = getelementptr i32, ptr %data, i32 26
  %140 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %arrayidx81, align 4
  %141 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i276 = getelementptr i8, ptr %142, i32 1124
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i276) #8, !srcloc !118
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx84 = getelementptr i32, ptr %data, i32 27
  %145 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %arrayidx84, align 4
  %146 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i277 = getelementptr i8, ptr %147, i32 1136
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i277) #8, !srcloc !118
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx87 = getelementptr i32, ptr %data, i32 28
  %150 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %arrayidx87, align 4
  %151 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i278 = getelementptr i8, ptr %152, i32 1140
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i278) #8, !srcloc !118
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx90 = getelementptr i32, ptr %data, i32 29
  %155 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %arrayidx90, align 4
  %156 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i279 = getelementptr i8, ptr %157, i32 1144
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i279) #8, !srcloc !118
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx93 = getelementptr i32, ptr %data, i32 30
  %160 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %arrayidx93, align 4
  %161 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i280 = getelementptr i8, ptr %162, i32 1148
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i280) #8, !srcloc !118
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx96 = getelementptr i32, ptr %data, i32 31
  %165 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %arrayidx96, align 4
  %166 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i281 = getelementptr i8, ptr %167, i32 1152
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i281) #8, !srcloc !118
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx99 = getelementptr i32, ptr %data, i32 32
  %170 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %arrayidx99, align 4
  %171 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i282 = getelementptr i8, ptr %172, i32 1168
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i282) #8, !srcloc !118
  %174 = tail call i32 @llvm.bswap.i32(i32 %173) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx102 = getelementptr i32, ptr %data, i32 33
  %175 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %arrayidx102, align 4
  %176 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i283 = getelementptr i8, ptr %177, i32 1172
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i283) #8, !srcloc !118
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx105 = getelementptr i32, ptr %data, i32 34
  %180 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %arrayidx105, align 4
  %181 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i284 = getelementptr i8, ptr %182, i32 1176
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i284) #8, !srcloc !118
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx108 = getelementptr i32, ptr %data, i32 35
  %185 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %arrayidx108, align 4
  %186 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i285 = getelementptr i8, ptr %187, i32 1180
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i285) #8, !srcloc !118
  %189 = tail call i32 @llvm.bswap.i32(i32 %188) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx111 = getelementptr i32, ptr %data, i32 36
  %190 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %arrayidx111, align 4
  %191 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i286 = getelementptr i8, ptr %192, i32 1184
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i286) #8, !srcloc !118
  %194 = tail call i32 @llvm.bswap.i32(i32 %193) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx114 = getelementptr i32, ptr %data, i32 37
  %195 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %arrayidx114, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0292 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %196 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %rcb_com, align 128
  %mul = shl nuw nsw i32 %i.0292, 2
  %add = add nuw nsw i32 %mul, 36864
  %add.ptr.i287 = getelementptr i8, ptr %197, i32 %add
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i287) #8, !srcloc !118
  %199 = tail call i32 @llvm.bswap.i32(i32 %198) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %add118 = add nuw nsw i32 %i.0292, 38
  %arrayidx119 = getelementptr i32, ptr %data, i32 %add118
  %200 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %arrayidx119, align 4
  %201 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %rcb_com, align 128
  %add122 = add nuw nsw i32 %mul, 36944
  %add.ptr.i288 = getelementptr i8, ptr %202, i32 %add122
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i288) #8, !srcloc !118
  %204 = tail call i32 @llvm.bswap.i32(i32 %203) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %add124 = add nuw nsw i32 %i.0292, 54
  %arrayidx125 = getelementptr i32, ptr %data, i32 %add124
  %205 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %arrayidx125, align 4
  %inc = add nuw nsw i32 %i.0292, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %3)
  %cmp = icmp eq i32 %3, 3552816
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp2 = icmp eq i32 %5, 8
  %cond = select i1 %cmp, i32 37632, i32 37936
  %206 = select i1 %cmp, i1 true, i1 %cmp2
  %spec.select = select i1 %206, i32 1, i32 6
  br label %for.body131

for.body131:                                      ; preds = %for.body131.for.body131_crit_edge, %for.end
  %i.1293 = phi i32 [ 0, %for.end ], [ %inc137, %for.body131.for.body131_crit_edge ]
  %207 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i289 = getelementptr i8, ptr %208, i32 %cond
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i289) #8, !srcloc !118
  %210 = tail call i32 @llvm.bswap.i32(i32 %209) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %add134 = add nuw nsw i32 %i.1293, 70
  %arrayidx135 = getelementptr i32, ptr %data, i32 %add134
  %211 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %arrayidx135, align 4
  %inc137 = add nuw nsw i32 %i.1293, 1
  %exitcond295.not = icmp eq i32 %inc137, %spec.select
  br i1 %exitcond295.not, label %for.end138, label %for.body131.for.body131_crit_edge

for.body131.for.body131_crit_edge:                ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body131

for.end138:                                       ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #10
  %212 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i290 = getelementptr i8, ptr %213, i32 37636
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i290) #8, !srcloc !118
  %215 = tail call i32 @llvm.bswap.i32(i32 %214) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx141 = getelementptr i32, ptr %data, i32 76
  %216 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %arrayidx141, align 4
  %217 = ptrtoint ptr %rcb_com to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %rcb_com, align 128
  %add.ptr.i291 = getelementptr i8, ptr %218, i32 37640
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i291) #8, !srcloc !118
  %220 = tail call i32 @llvm.bswap.i32(i32 %219) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx144 = getelementptr i32, ptr %data, i32 77
  %221 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %arrayidx144, align 4
  %uglygep = getelementptr i8, ptr %data, i32 312
  %222 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %222, i32 8)
  store i64 -3689348814741910324, ptr %uglygep, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_rcb_get_ring_regs(ptr noundef readonly %queue, ptr noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 128
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !118
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %data, align 4
  %5 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queue, align 128
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !118
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx3 = getelementptr i32, ptr %data, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx3, align 4
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 128
  %add.ptr.i171 = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i171) #8, !srcloc !118
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx6 = getelementptr i32, ptr %data, i32 2
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx6, align 4
  %15 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue, align 128
  %add.ptr.i172 = getelementptr i8, ptr %16, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i172) #8, !srcloc !118
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx9 = getelementptr i32, ptr %data, i32 3
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx9, align 4
  %20 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %queue, align 128
  %add.ptr.i173 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i173) #8, !srcloc !118
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx12 = getelementptr i32, ptr %data, i32 4
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx12, align 4
  %25 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %queue, align 128
  %add.ptr.i174 = getelementptr i8, ptr %26, i32 24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i174) #8, !srcloc !118
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx15 = getelementptr i32, ptr %data, i32 5
  %29 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx15, align 4
  %30 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue, align 128
  %add.ptr.i175 = getelementptr i8, ptr %31, i32 28
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i175) #8, !srcloc !118
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx18 = getelementptr i32, ptr %data, i32 6
  %34 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx18, align 4
  %35 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %queue, align 128
  %add.ptr.i176 = getelementptr i8, ptr %36, i32 32
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i176) #8, !srcloc !118
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx21 = getelementptr i32, ptr %data, i32 7
  %39 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx21, align 4
  %40 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %queue, align 128
  %add.ptr.i177 = getelementptr i8, ptr %41, i32 44
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177) #8, !srcloc !118
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx24 = getelementptr i32, ptr %data, i32 8
  %44 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx24, align 4
  %45 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %queue, align 128
  %add.ptr.i178 = getelementptr i8, ptr %46, i32 64
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i178) #8, !srcloc !118
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx27 = getelementptr i32, ptr %data, i32 9
  %49 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx27, align 4
  %50 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %queue, align 128
  %add.ptr.i179 = getelementptr i8, ptr %51, i32 68
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179) #8, !srcloc !118
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx30 = getelementptr i32, ptr %data, i32 10
  %54 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx30, align 4
  %55 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %queue, align 128
  %add.ptr.i180 = getelementptr i8, ptr %56, i32 72
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180) #8, !srcloc !118
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx33 = getelementptr i32, ptr %data, i32 11
  %59 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx33, align 4
  %60 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %queue, align 128
  %add.ptr.i181 = getelementptr i8, ptr %61, i32 76
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i181) #8, !srcloc !118
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx36 = getelementptr i32, ptr %data, i32 12
  %64 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx36, align 4
  %65 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %queue, align 128
  %add.ptr.i182 = getelementptr i8, ptr %66, i32 80
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i182) #8, !srcloc !118
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx39 = getelementptr i32, ptr %data, i32 13
  %69 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %arrayidx39, align 4
  %70 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %queue, align 128
  %add.ptr.i183 = getelementptr i8, ptr %71, i32 88
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i183) #8, !srcloc !118
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx42 = getelementptr i32, ptr %data, i32 15
  %74 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx42, align 4
  %75 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %queue, align 128
  %add.ptr.i184 = getelementptr i8, ptr %76, i32 92
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i184) #8, !srcloc !118
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx45 = getelementptr i32, ptr %data, i32 16
  %79 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx45, align 4
  %80 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %queue, align 128
  %add.ptr.i185 = getelementptr i8, ptr %81, i32 96
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i185) #8, !srcloc !118
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx48 = getelementptr i32, ptr %data, i32 17
  %84 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx48, align 4
  %85 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %queue, align 128
  %add.ptr.i186 = getelementptr i8, ptr %86, i32 100
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i186) #8, !srcloc !118
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx51 = getelementptr i32, ptr %data, i32 18
  %89 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %arrayidx51, align 4
  %90 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %queue, align 128
  %add.ptr.i187 = getelementptr i8, ptr %91, i32 108
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #8, !srcloc !118
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx54 = getelementptr i32, ptr %data, i32 19
  %94 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx54, align 4
  %95 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %queue, align 128
  %add.ptr.i188 = getelementptr i8, ptr %96, i32 124
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i188) #8, !srcloc !118
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx57 = getelementptr i32, ptr %data, i32 20
  %99 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %arrayidx57, align 4
  %100 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %queue, align 128
  %add.ptr.i189 = getelementptr i8, ptr %101, i32 128
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i189) #8, !srcloc !118
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx60 = getelementptr i32, ptr %data, i32 21
  %104 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %arrayidx60, align 4
  %105 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %queue, align 128
  %add.ptr.i190 = getelementptr i8, ptr %106, i32 140
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i190) #8, !srcloc !118
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx63 = getelementptr i32, ptr %data, i32 22
  %109 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %arrayidx63, align 4
  %110 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %queue, align 128
  %add.ptr.i191 = getelementptr i8, ptr %111, i32 144
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i191) #8, !srcloc !118
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx66 = getelementptr i32, ptr %data, i32 23
  %114 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %arrayidx66, align 4
  %115 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %queue, align 128
  %add.ptr.i192 = getelementptr i8, ptr %116, i32 148
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i192) #8, !srcloc !118
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx69 = getelementptr i32, ptr %data, i32 24
  %119 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %arrayidx69, align 4
  %120 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %queue, align 128
  %add.ptr.i193 = getelementptr i8, ptr %121, i32 152
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i193) #8, !srcloc !118
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx72 = getelementptr i32, ptr %data, i32 25
  %124 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %arrayidx72, align 4
  %125 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %queue, align 128
  %add.ptr.i194 = getelementptr i8, ptr %126, i32 156
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i194) #8, !srcloc !118
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx75 = getelementptr i32, ptr %data, i32 26
  %129 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %arrayidx75, align 4
  %130 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %queue, align 128
  %add.ptr.i195 = getelementptr i8, ptr %131, i32 160
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i195) #8, !srcloc !118
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx78 = getelementptr i32, ptr %data, i32 27
  %134 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %arrayidx78, align 4
  %135 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %queue, align 128
  %add.ptr.i196 = getelementptr i8, ptr %136, i32 164
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196) #8, !srcloc !118
  %138 = tail call i32 @llvm.bswap.i32(i32 %137) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx81 = getelementptr i32, ptr %data, i32 28
  %139 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %arrayidx81, align 4
  %140 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %queue, align 128
  %add.ptr.i197 = getelementptr i8, ptr %141, i32 172
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #8, !srcloc !118
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx84 = getelementptr i32, ptr %data, i32 29
  %144 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %arrayidx84, align 4
  %145 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %queue, align 128
  %add.ptr.i198 = getelementptr i8, ptr %146, i32 176
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i198) #8, !srcloc !118
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx87 = getelementptr i32, ptr %data, i32 30
  %149 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %arrayidx87, align 4
  %150 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %queue, align 128
  %add.ptr.i199 = getelementptr i8, ptr %151, i32 184
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199) #8, !srcloc !118
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx90 = getelementptr i32, ptr %data, i32 31
  %154 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %arrayidx90, align 4
  %155 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %queue, align 128
  %add.ptr.i200 = getelementptr i8, ptr %156, i32 188
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i200) #8, !srcloc !118
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx93 = getelementptr i32, ptr %data, i32 32
  %159 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %arrayidx93, align 4
  %160 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %queue, align 128
  %add.ptr.i201 = getelementptr i8, ptr %161, i32 196
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i201) #8, !srcloc !118
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx96 = getelementptr i32, ptr %data, i32 33
  %164 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %arrayidx96, align 4
  %165 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %queue, align 128
  %add.ptr.i202 = getelementptr i8, ptr %166, i32 200
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i202) #8, !srcloc !118
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx99 = getelementptr i32, ptr %data, i32 34
  %169 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %arrayidx99, align 4
  %index = getelementptr i8, ptr %queue, i32 640
  %170 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %index, align 128
  %conv = zext i16 %171 to i32
  %add = add nuw nsw i32 %conv, -858993664
  %arrayidx100 = getelementptr i32, ptr %data, i32 35
  %172 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %add, ptr %arrayidx100, align 4
  %173 = load i16, ptr %index, align 128
  %conv.1 = zext i16 %173 to i32
  %add.1 = add nuw nsw i32 %conv.1, -858993664
  %arrayidx100.1 = getelementptr i32, ptr %data, i32 36
  %174 = ptrtoint ptr %arrayidx100.1 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %add.1, ptr %arrayidx100.1, align 4
  %175 = load i16, ptr %index, align 128
  %conv.2 = zext i16 %175 to i32
  %add.2 = add nuw nsw i32 %conv.2, -858993664
  %arrayidx100.2 = getelementptr i32, ptr %data, i32 37
  %176 = ptrtoint ptr %arrayidx100.2 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %add.2, ptr %arrayidx100.2, align 4
  %177 = load i16, ptr %index, align 128
  %conv.3 = zext i16 %177 to i32
  %add.3 = add nuw nsw i32 %conv.3, -858993664
  %arrayidx100.3 = getelementptr i32, ptr %data, i32 38
  %178 = ptrtoint ptr %arrayidx100.3 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %add.3, ptr %arrayidx100.3, align 4
  %179 = load i16, ptr %index, align 128
  %conv.4 = zext i16 %179 to i32
  %add.4 = add nuw nsw i32 %conv.4, -858993664
  %arrayidx100.4 = getelementptr i32, ptr %data, i32 39
  %180 = ptrtoint ptr %arrayidx100.4 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %add.4, ptr %arrayidx100.4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 61, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hns_rcb_wait_fbd_clean._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hns_rcb_wait_fbd_clean._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 81, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hns_rcb_wait_tx_ring_clean._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @hns_rcb_wait_tx_ring_clean._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 132, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @hns_rcb_reset_ring_hw._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @hns_rcb_reset_ring_hw._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 382, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @hns_rcb_common_init_hw._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @hns_rcb_common_init_hw._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 618, i32 4}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @hns_rcb_set_coalesce_usecs._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @hns_rcb_set_coalesce_usecs._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 624, i32 3}
!30 = !{ptr @hns_rcb_set_coalesce_usecs._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @hns_rcb_set_coalesce_usecs._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 652, i32 3}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hns_rcb_set_tx_coalesced_frames._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @hns_rcb_set_tx_coalesced_frames._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 683, i32 3}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @hns_rcb_set_rx_coalesced_frames._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @hns_rcb_set_rx_coalesced_frames._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 792, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @hns_rcb_common_get_cfg._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @hns_rcb_common_get_cfg._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 937, i32 25}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 938, i32 25}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 939, i32 25}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 940, i32 25}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 942, i32 25}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 943, i32 25}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 944, i32 25}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 945, i32 25}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 946, i32 25}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 947, i32 25}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 948, i32 25}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 949, i32 25}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 951, i32 25}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 952, i32 25}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 953, i32 25}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 954, i32 25}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 956, i32 25}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 957, i32 25}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 958, i32 25}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 959, i32 25}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 960, i32 25}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 961, i32 25}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 962, i32 25}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 963, i32 25}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 964, i32 25}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 965, i32 25}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 966, i32 25}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 967, i32 25}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_rcb.c", i32 757, i32 3}
!105 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @hns_rcb_get_ring_num._entry, !104, !"_entry", i1 false, i1 false}
!108 = !{ptr @hns_rcb_get_ring_num._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i64 6946655}
!119 = !{i64 2157252432}
!120 = !{i64 2157251631}
!121 = !{i64 6946237}
!122 = !{i64 2157371478}
!123 = !{i64 2157371692}
