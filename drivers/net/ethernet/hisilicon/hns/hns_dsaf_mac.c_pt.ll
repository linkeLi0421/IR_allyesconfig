; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.133 = type { i32, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hns_mac_cb = type { ptr, ptr, %struct.mac_priv, ptr, ptr, ptr, ptr, ptr, ptr, [6 x i8], i32, i32, i32, [128 x %struct.mac_entry_idx], i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i64, i64, i32, i32, i32, i32, ptr, %struct.mac_hw_stats }
%struct.mac_priv = type { ptr }
%struct.mac_entry_idx = type { [6 x i8], i16 }
%struct.mac_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mac_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, ptr, i32, i32, ptr }
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
%struct.dsaf_misc_op = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mac_info = type { i16, i8, i8, i32, i8, i8, i8, i8, i8, i8 }
%struct.rcb_common_cb = type { ptr, i32, ptr, i16, i16, i8, i32, i32, [100 x i8], [0 x %struct.ring_pair_cb] }
%struct.ring_pair_cb = type { ptr, ptr, [120 x i8], %struct.hnae_queue, i16, i16, [2 x i32], i8, i8, %struct.hns_ring_hw_stats, [64 x i8] }
%struct.hnae_queue = type { ptr, i32, ptr, [116 x i8], %struct.hnae_ring, [64 x i8], %struct.hnae_ring, ptr, [60 x i8] }
%struct.hnae_ring = type { ptr, ptr, ptr, ptr, i32, [20 x i8], %struct.ring_stats, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.ring_stats = type { i64, i64, i64, %union.anon.125 }
%union.anon.125 = type { %struct.anon.127 }
%struct.anon.127 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hns_ring_hw_stats = type { i64, i64, i64, i64, i64, i64 }
%struct.dsaf_drv_mac_single_dest_entry = type { [6 x i8], i16, i8, i8, [6 x i8] }
%struct.mac_params = type { [6 x i8], ptr, ptr, i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@hns_mac_adjust_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 150, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"adjust_link failed, %s mac%d ret = %#x!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hns_mac_adjust_link\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hns_mac_adjust_link._entry_ptr = internal global ptr @hns_mac_adjust_link._entry, section ".printk_index", align 4
@hns_mac_get_inner_port_num._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 174, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"input invalid, %s mac%d vmid%d !\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hns_mac_get_inner_port_num\00", [37 x i8] zeroinitializer }, align 32
@hns_mac_get_inner_port_num._entry_ptr = internal global ptr @hns_mac_get_inner_port_num._entry, section ".printk_index", align 4
@hns_mac_get_inner_port_num._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 182, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"input invalid, %s mac%d vmid%d!\0A\00", [63 x i8] zeroinitializer }, align 32
@hns_mac_get_inner_port_num._entry_ptr.9 = internal global ptr @hns_mac_get_inner_port_num._entry.7, section ".printk_index", align 4
@hns_mac_get_inner_port_num._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 187, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dsaf mode invalid, %s mac%d!\0A\00", [34 x i8] zeroinitializer }, align 32
@hns_mac_get_inner_port_num._entry_ptr.12 = internal global ptr @hns_mac_get_inner_port_num._entry.10, section ".printk_index", align 4
@hns_mac_get_inner_port_num._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 193, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hns_mac_get_inner_port_num._entry_ptr.14 = internal global ptr @hns_mac_get_inner_port_num._entry.13, section ".printk_index", align 4
@hns_mac_get_inner_port_num._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 226, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hns_mac_get_inner_port_num._entry_ptr.16 = internal global ptr @hns_mac_get_inner_port_num._entry.15, section ".printk_index", align 4
@hns_mac_set_multi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 346, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"set mac mc port failed, %s mac%d ret = %#x!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hns_mac_set_multi\00", [46 x i8] zeroinitializer }, align 32
@hns_mac_set_multi._entry_ptr = internal global ptr @hns_mac_set_multi._entry, section ".printk_index", align 4
@hns_mac_set_autoneg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 589, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"enabling autoneg is not allowed!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hns_mac_set_autoneg\00", [44 x i8] zeroinitializer }, align 32
@hns_mac_set_autoneg._entry_ptr = internal global ptr @hns_mac_set_autoneg._entry, section ".printk_index", align 4
@hns_mac_set_pauseparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 613, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"macv1 can't enable tx/rx_pause!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hns_mac_set_pauseparam\00", [41 x i8] zeroinitializer }, align 32
@hns_mac_set_pauseparam._entry_ptr = internal global ptr @hns_mac_set_pauseparam._entry, section ".printk_index", align 4
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@hns_mac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1069, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"get reg fail, ret=%d!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hns_mac_init\00", [19 x i8] zeroinitializer }, align 32
@hns_mac_init._entry_ptr = internal global ptr @hns_mac_init._entry, section ".printk_index", align 4
@hns_mac_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 1074, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg(%u) out of range!\0A\00", [41 x i8] zeroinitializer }, align 32
@hns_mac_init._entry_ptr.28 = internal global ptr @hns_mac_init._entry.26, section ".printk_index", align 4
@hns_mac_get_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1014, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"hns_mac_get_mode failed, mac%d ret = %#x!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hns_mac_get_cfg\00", [16 x i8] zeroinitializer }, align 32
@hns_mac_get_cfg._entry_ptr = internal global ptr @hns_mac_get_cfg._entry, section ".printk_index", align 4
@mac_phy_to_speed = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 0, i16 0, i16 100, i16 1000, i16 1000, i16 1000, i16 0, i16 100, i16 0, i16 1000, i16 1000, i16 1000, i16 1000, i16 1000, i16 0, i16 10000], [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@hns_mac_get_info.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hns_dsaf\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hns_mac_get_info\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mac%d phy_node: %pOFn\0A\00", [41 x i8] zeroinitializer }, align 32
@hns_mac_get_info.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serdes-syscon\00", [18 x i8] zeroinitializer }, align 32
@hns_mac_get_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.2, i32 875, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"serdes-syscon is needed!\0A\00", [38 x i8] zeroinitializer }, align 32
@hns_mac_get_info._entry_ptr = internal global ptr @hns_mac_get_info._entry, section ".printk_index", align 4
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port-rst-offset\00", [16 x i8] zeroinitializer }, align 32
@hns_mac_get_info.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.33, ptr @.str.2, ptr @.str.38, i8 0, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mac%d port-rst-offset not found, use default value.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"port-mode-offset\00", [47 x i8] zeroinitializer }, align 32
@hns_mac_get_info.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.33, ptr @.str.2, ptr @.str.40, i8 0, i8 -33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"mac%d port-mode-offset not found, use default value.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cpld-syscon\00", [20 x i8] zeroinitializer }, align 32
@hns_mac_get_info.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.33, ptr @.str.2, ptr @.str.42, i8 0, i8 -31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mac%d no cpld-syscon found.\0A\00", [35 x i8] zeroinitializer }, align 32
@hns_mac_get_info.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.33, ptr @.str.2, ptr @.str.43, i8 0, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no cpld-syscon found!\0A\00", [41 x i8] zeroinitializer }, align 32
@hns_mac_get_info._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.33, ptr @.str.2, i32 926, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mac%d cannot find phy node\0A\00", [36 x i8] zeroinitializer }, align 32
@hns_mac_get_info._entry_ptr.46 = internal global ptr @hns_mac_get_info._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"media-type\00", [21 x i8] zeroinitializer }, align 32
@media_type_defs = internal constant { [4 x %struct.anon.133], [32 x i8] } { [4 x %struct.anon.133] [%struct.anon.133 { i32 0, ptr @.str.100 }, %struct.anon.133 { i32 1, ptr @.str.101 }, %struct.anon.133 { i32 2, ptr @.str.102 }, %struct.anon.133 { i32 3, ptr @.str.103 }], [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mc-mac-mask\00", [20 x i8] zeroinitializer }, align 32
@hns_mac_get_info._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.33, ptr @.str.2, i32 943, ptr @.str.51, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"no mc-mac-mask property, set to default value.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hns_mac_get_info._entry_ptr.52 = internal global ptr @hns_mac_get_info._entry.49, section ".printk_index", align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@hns_mac_register_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 758, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mac%d mdio pdev is NULL\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hns_mac_register_phy\00", [43 x i8] zeroinitializer }, align 32
@hns_mac_register_phy._entry_ptr = internal global ptr @hns_mac_register_phy._entry, section ".printk_index", align 4
@hns_mac_register_phy._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 766, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mac%d mdio is NULL, dsaf will probe again later\0A\00", [47 x i8] zeroinitializer }, align 32
@hns_mac_register_phy._entry_ptr.58 = internal global ptr @hns_mac_register_phy._entry.56, section ".printk_index", align 4
@hns_mac_phy_parse_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 674, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"has invalid PHY address ret:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hns_mac_phy_parse_addr\00", [41 x i8] zeroinitializer }, align 32
@hns_mac_phy_parse_addr._entry_ptr = internal global ptr @hns_mac_phy_parse_addr._entry, section ".printk_index", align 4
@hns_mac_phy_parse_addr._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 679, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PHY address %i is too large\0A\00", [35 x i8] zeroinitializer }, align 32
@hns_mac_phy_parse_addr._entry_ptr.65 = internal global ptr @hns_mac_phy_parse_addr._entry.63, section ".printk_index", align 4
@hns_mac_register_phydev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 720, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"registered phy fail at address %i\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hns_mac_register_phydev\00", [40 x i8] zeroinitializer }, align 32
@hns_mac_register_phydev._entry_ptr = internal global ptr @hns_mac_register_phydev._entry, section ".printk_index", align 4
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fiber\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"copper\00", [25 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"backplane\00", [22 x i8] zeroinitializer }, align 32
@g_mac_mode_100 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 65636, i32 0, i32 0, i32 0, i32 0, i32 131172], [32 x i8] zeroinitializer }, align 32
@g_mac_mode_1000 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 0, i32 0, i32 263144, i32 525288, i32 394216, i32 0, i32 0, i32 0, i32 328680, i32 328680, i32 328680, i32 328680, i32 459752], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 16, i64 100, i64 1000, i64 10000]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 15]
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 147, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 171, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 179, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 186, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 192, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 225, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 343, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 589, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 613, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1066, i32 41 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1068, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1073, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1012, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"mac_phy_to_speed\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 25, i32 18 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 838, i32 47 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 847, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 871, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 875, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 881, i32 13 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 884, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 890, i32 13 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 893, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 899, i32 33 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 902, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 908, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 925, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 929, i32 52 }
@___asan_gen_.259 = private unnamed_addr constant [16 x i8] c"media_type_defs\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 794, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 940, i32 53 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 942, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 757, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 764, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 674, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 679, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 719, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 271, i32 10 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 796, i32 27 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 797, i32 27 }
@___asan_gen_.322 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 798, i32 30 }
@___asan_gen_.325 = private unnamed_addr constant [15 x i8] c"g_mac_mode_100\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 39, i32 28 }
@___asan_gen_.328 = private unnamed_addr constant [16 x i8] c"g_mac_mode_1000\00", align 1
@___asan_gen_.329 = private constant [53 x i8] c"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 44, i32 28 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @hns_mac_adjust_link._entry, ptr @hns_mac_adjust_link._entry_ptr, ptr @hns_mac_get_cfg._entry, ptr @hns_mac_get_cfg._entry_ptr, ptr @hns_mac_get_info._entry, ptr @hns_mac_get_info._entry.44, ptr @hns_mac_get_info._entry.49, ptr @hns_mac_get_info._entry_ptr, ptr @hns_mac_get_info._entry_ptr.46, ptr @hns_mac_get_info._entry_ptr.52, ptr @hns_mac_get_inner_port_num._entry, ptr @hns_mac_get_inner_port_num._entry.10, ptr @hns_mac_get_inner_port_num._entry.13, ptr @hns_mac_get_inner_port_num._entry.15, ptr @hns_mac_get_inner_port_num._entry.7, ptr @hns_mac_get_inner_port_num._entry_ptr, ptr @hns_mac_get_inner_port_num._entry_ptr.12, ptr @hns_mac_get_inner_port_num._entry_ptr.14, ptr @hns_mac_get_inner_port_num._entry_ptr.16, ptr @hns_mac_get_inner_port_num._entry_ptr.9, ptr @hns_mac_init._entry, ptr @hns_mac_init._entry.26, ptr @hns_mac_init._entry_ptr, ptr @hns_mac_init._entry_ptr.28, ptr @hns_mac_phy_parse_addr._entry, ptr @hns_mac_phy_parse_addr._entry.63, ptr @hns_mac_phy_parse_addr._entry_ptr, ptr @hns_mac_phy_parse_addr._entry_ptr.65, ptr @hns_mac_register_phy._entry, ptr @hns_mac_register_phy._entry.56, ptr @hns_mac_register_phy._entry_ptr, ptr @hns_mac_register_phy._entry_ptr.58, ptr @hns_mac_register_phydev._entry, ptr @hns_mac_register_phydev._entry_ptr, ptr @hns_mac_set_autoneg._entry, ptr @hns_mac_set_autoneg._entry_ptr, ptr @hns_mac_set_multi._entry, ptr @hns_mac_set_multi._entry_ptr, ptr @hns_mac_set_pauseparam._entry, ptr @hns_mac_set_pauseparam._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @mac_phy_to_speed, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @media_type_defs, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.68, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @g_mac_mode_100, ptr @g_mac_mode_1000], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_adjust_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_get_inner_port_num._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_get_inner_port_num._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_get_inner_port_num._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_get_inner_port_num._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_get_inner_port_num._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_set_multi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_set_autoneg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_set_pauseparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_get_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_phy_to_speed to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_get_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_get_info._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media_type_defs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_get_info._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_register_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_register_phy._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_phy_parse_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_phy_parse_addr._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mac_register_phydev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_mac_mode_100 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_mac_mode_1000 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_mac_get_link_status(ptr noundef %mac_cb, ptr noundef %link_status) local_unnamed_addr #0 align 64 {
entry:
  %sfp_prsnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sfp_prsnt) #7
  %0 = ptrtoint ptr %sfp_prsnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sfp_prsnt, align 4, !annotation !224
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %get_link_status = getelementptr inbounds %struct.mac_driver, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %get_link_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_link_status, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %4(ptr noundef %2, ptr noundef %link_status) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %link_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %link_status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %media_type = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 27
  %6 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then2, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %dsaf_dev = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 1
  %8 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dsaf_dev, align 4
  %misc_op = getelementptr inbounds %struct.dsaf_device, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %misc_op to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %misc_op, align 4
  %get_sfp_prsnt = getelementptr inbounds %struct.dsaf_misc_op, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %get_sfp_prsnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_sfp_prsnt, align 4
  %call3 = call i32 %13(ptr noundef %mac_cb, ptr noundef nonnull %sfp_prsnt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.then2.if.end9_crit_edge

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5:                                         ; preds = %if.then2
  %14 = ptrtoint ptr %link_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %link_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not = icmp eq i32 %15, 0
  br i1 %tobool6.not, label %if.then5.land.end_crit_edge, label %land.rhs

if.then5.land.end_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %sfp_prsnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sfp_prsnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7 = icmp ne i32 %17, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then5.land.end_crit_edge
  %18 = phi i32 [ 0, %if.then5.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %19 = ptrtoint ptr %link_status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %link_status, align 4
  br label %if.end9

if.end9:                                          ; preds = %land.end, %if.then2.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %20 = ptrtoint ptr %link_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %link_status, align 4
  %conv = trunc i32 %21 to i8
  %link = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 17
  %22 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %link, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sfp_prsnt) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_mac_get_port_info(ptr nocapture noundef readonly %mac_cb, ptr noundef writeonly %auto_neg, ptr noundef writeonly %speed, ptr noundef writeonly %duplex) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.mac_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #7
  %0 = call ptr @memset(ptr %info, i32 255, i32 16)
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %get_info = getelementptr inbounds %struct.mac_driver, ptr %2, i32 0, i32 23
  %3 = ptrtoint ptr %get_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_info, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void %4(ptr noundef %2, ptr noundef nonnull %info) #7
  %tobool2.not = icmp eq ptr %auto_neg, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %auto_neg4 = getelementptr inbounds %struct.mac_info, ptr %info, i32 0, i32 2
  %5 = ptrtoint ptr %auto_neg4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %auto_neg4, align 1
  %7 = ptrtoint ptr %auto_neg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %auto_neg, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %tobool6.not = icmp eq ptr %speed, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %info, align 4
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %speed, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %tobool10.not = icmp eq ptr %duplex, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %duplex12 = getelementptr inbounds %struct.mac_info, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %duplex12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %duplex12, align 2
  %13 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %duplex, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @hns_mac_need_adjust_link(ptr nocapture noundef readonly %mac_cb, i32 noundef %speed, i32 noundef %duplex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %need_adjust_link = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %need_adjust_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %need_adjust_link, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call zeroext i1 %3(ptr noundef %1, i32 noundef %speed, i32 noundef %duplex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %if.then ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_mac_adjust_link(ptr nocapture noundef %mac_cb, i32 noundef %speed, i32 noundef %duplex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = trunc i32 %speed to i16
  %speed1 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 19
  %2 = ptrtoint ptr %speed1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %speed1, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duplex)
  %tobool.not = icmp eq i32 %duplex, 0
  %conv2 = zext i1 %tobool.not to i8
  %half_duplex = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 18
  %3 = ptrtoint ptr %half_duplex to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %half_duplex, align 4
  %adjust_link = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %adjust_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adjust_link, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %speed, i32 noundef %duplex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_cb, align 8
  %dsaf_dev = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 1
  %8 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dsaf_dev, align 4
  %name = getelementptr inbounds %struct.dsaf_device, ptr %9, i32 0, i32 1, i32 6
  %mac_id = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 16
  %10 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mac_id, align 2
  %conv7 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %conv7, i32 noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_mac_get_inner_port_num(ptr nocapture noundef readonly %mac_cb, i8 noundef zeroext %vmid, ptr nocapture noundef writeonly %port_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_dev = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 1
  %0 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev, align 4
  %dsaf_mode = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %dsaf_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsaf_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp ult i32 %3, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mac_id = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 16
  %4 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %5)
  %cmp1.not = icmp eq i8 %5, 6
  br i1 %cmp1.not, label %if.then.if.end42_crit_edge, label %do.end

if.then.if.end42_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_cb, align 8
  %name = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 1, i32 6
  %conv7 = zext i8 %vmid to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %conv, i32 noundef %conv7) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %3)
  %cmp10 = icmp ult i32 %3, 17
  br i1 %cmp10, label %if.then12, label %do.end33

if.then12:                                        ; preds = %if.else
  %mac_id13 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 16
  %8 = ptrtoint ptr %mac_id13 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mac_id13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp15 = icmp ugt i8 %9, 5
  br i1 %cmp15, label %do.end20, label %if.then12.if.end42_crit_edge

if.then12.if.end42_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.end20:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %conv14 = zext i8 %9 to i32
  %10 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac_cb, align 8
  %name24 = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 1, i32 6
  %conv28 = zext i8 %vmid to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.8, ptr noundef %name24, i32 noundef %conv14, i32 noundef %conv28) #10
  br label %cleanup

do.end33:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac_cb, align 8
  %name37 = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 1, i32 6
  %mac_id39 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 16
  %14 = ptrtoint ptr %mac_id39 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mac_id39, align 2
  %conv40 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.11, ptr noundef %name37, i32 noundef %conv40) #10
  br label %cleanup

if.end42:                                         ; preds = %if.then12.if.end42_crit_edge, %if.then.if.end42_crit_edge
  %conv43 = zext i8 %vmid to i32
  %rcb_common = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rcb_common, align 8
  %max_vfn = getelementptr inbounds %struct.rcb_common_cb, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %max_vfn to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %max_vfn, align 4
  %conv45 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv43, i32 %conv45)
  %cmp46.not = icmp ult i32 %conv43, %conv45
  br i1 %cmp46.not, label %if.end60, label %do.end51

do.end51:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac_cb, align 8
  %name55 = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 1, i32 6
  %mac_id57 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 16
  %22 = ptrtoint ptr %mac_id57 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mac_id57, align 2
  %conv58 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.5, ptr noundef %name55, i32 noundef %conv58, i32 noundef %conv43) #10
  br label %cleanup

if.end60:                                         ; preds = %if.end42
  %mac_id72 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 16
  %24 = ptrtoint ptr %mac_id72 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mac_id72, align 2
  %conv73 = zext i8 %25 to i32
  %26 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end82 [
    i32 1, label %if.end60.sw.epilog_crit_edge
    i32 9, label %if.end60.sw.epilog_crit_edge126
    i32 2, label %if.end60.sw.bb78_crit_edge
    i32 3, label %if.end60.sw.bb78_crit_edge127
    i32 4, label %if.end60.sw.bb78_crit_edge128
    i32 5, label %if.end60.sw.bb78_crit_edge129
    i32 6, label %if.end60.sw.bb78_crit_edge130
    i32 10, label %if.end60.sw.bb78_crit_edge131
    i32 11, label %if.end60.sw.bb78_crit_edge132
    i32 12, label %if.end60.sw.bb78_crit_edge133
    i32 13, label %if.end60.sw.bb78_crit_edge134
    i32 14, label %if.end60.sw.bb78_crit_edge135
    i32 15, label %if.end60.sw.bb78_crit_edge136
    i32 16, label %if.end60.sw.bb78_crit_edge137
  ]

if.end60.sw.bb78_crit_edge137:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78

if.end60.sw.bb78_crit_edge136:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78

if.end60.sw.bb78_crit_edge135:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78

if.end60.sw.bb78_crit_edge134:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78

if.end60.sw.bb78_crit_edge133:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78

if.end60.sw.bb78_crit_edge132:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78

if.end60.sw.bb78_crit_edge131:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78

if.end60.sw.bb78_crit_edge130:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78

if.end60.sw.bb78_crit_edge129:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78

if.end60.sw.bb78_crit_edge128:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78

if.end60.sw.bb78_crit_edge127:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78

if.end60.sw.bb78_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78

if.end60.sw.epilog_crit_edge126:                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end60.sw.epilog_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end60.sw.bb78_crit_edge, %if.end60.sw.bb78_crit_edge127, %if.end60.sw.bb78_crit_edge128, %if.end60.sw.bb78_crit_edge129, %if.end60.sw.bb78_crit_edge130, %if.end60.sw.bb78_crit_edge131, %if.end60.sw.bb78_crit_edge132, %if.end60.sw.bb78_crit_edge133, %if.end60.sw.bb78_crit_edge134, %if.end60.sw.bb78_crit_edge135, %if.end60.sw.bb78_crit_edge136, %if.end60.sw.bb78_crit_edge137
  %max_q_per_vf = getelementptr inbounds %struct.rcb_common_cb, ptr %17, i32 0, i32 4
  %27 = ptrtoint ptr %max_q_per_vf to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %max_q_per_vf, align 2
  %conv64 = zext i16 %28 to i32
  %mul74 = mul nuw nsw i32 %conv73, %conv45
  %reass.add = add nuw nsw i32 %mul74, %conv43
  %reass.mul = mul i32 %reass.add, %conv64
  %29 = trunc i32 %reass.mul to i8
  %phi.cast125 = add i8 %29, 127
  br label %sw.epilog

do.end82:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mac_cb, align 8
  %name86 = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 1, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.11, ptr noundef %name86, i32 noundef %conv73) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb78, %if.end60.sw.epilog_crit_edge, %if.end60.sw.epilog_crit_edge126
  %tmp_port.0 = phi i8 [ %phi.cast125, %sw.bb78 ], [ 127, %if.end60.sw.epilog_crit_edge ], [ 127, %if.end60.sw.epilog_crit_edge126 ]
  %32 = ptrtoint ptr %port_num to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %tmp_port.0, ptr %port_num, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end82, %do.end51, %do.end33, %do.end20, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end51 ], [ -22, %do.end82 ], [ 0, %sw.epilog ], [ -22, %do.end20 ], [ -22, %do.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_mac_change_vf_addr(ptr noundef %mac_cb, i32 noundef %vmid, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %mac_entry = alloca %struct.dsaf_drv_mac_single_dest_entry, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dsaf_dev1 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 1
  %2 = ptrtoint ptr %dsaf_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsaf_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mac_entry) #7
  %arrayidx = getelementptr %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 13, i32 %vmid
  %dsaf_mode = getelementptr inbounds %struct.dsaf_device, ptr %3, i32 0, i32 12
  %4 = call ptr @memset(ptr %mac_entry, i32 255, i32 16)
  %5 = ptrtoint ptr %dsaf_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dsaf_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp = icmp eq i32 %6, 8
  br i1 %cmp, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then:                                          ; preds = %entry
  %7 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 3
  %8 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 2
  %9 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %mac_entry, ptr %addr, i32 6)
  %vlan_id = getelementptr %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 13, i32 %vmid, i32 1
  %11 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %vlan_id, align 2
  %bf.lshr = lshr i16 %bf.load, 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %bf.lshr, ptr %9, align 2
  %mac_id = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 16
  %13 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mac_id, align 2
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %8, align 2
  %conv = trunc i32 %vmid to i8
  %call3 = call i32 @hns_mac_get_inner_port_num(ptr noundef %mac_cb, i8 noundef zeroext %conv, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %16 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load5 = load i16, ptr %vlan_id, align 2
  %17 = and i16 %bf.load5, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp8.not = icmp eq i16 %17, 0
  br i1 %cmp8.not, label %if.end.if.end26_crit_edge, label %land.lhs.true

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %arrayidx, ptr noundef dereferenceable(6) %addr, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp13.not = icmp eq i32 %bcmp, 0
  br i1 %cmp13.not, label %land.lhs.true.if.end26_crit_edge, label %if.then15

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then15:                                        ; preds = %land.lhs.true
  %bf.lshr18 = lshr i16 %bf.load5, 4
  %18 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mac_id, align 2
  %call22 = tail call i32 @hns_dsaf_del_mac_entry(ptr noundef %3, i16 noundef zeroext %bf.lshr18, i8 noundef zeroext %19, ptr noundef %arrayidx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then15.if.end26_crit_edge, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15.if.end26_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end26:                                         ; preds = %if.then15.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %call27 = call i32 @hns_dsaf_set_mac_uc_entry(ptr noundef %3, ptr noundef nonnull %mac_entry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.if.end31_crit_edge, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end31:                                         ; preds = %if.end26.if.end31_crit_edge, %entry.if.end31_crit_edge
  %set_mac_addr = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %set_mac_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_mac_addr, align 4
  %tobool32.not = icmp ne ptr %21, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vmid)
  %cmp34 = icmp eq i32 %vmid, 0
  %or.cond = and i1 %cmp34, %tobool32.not
  br i1 %or.cond, label %if.then36, label %if.end31.if.end38_crit_edge

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv.i, align 8
  call void %21(ptr noundef %23, ptr noundef %addr) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end31.if.end38_crit_edge
  %24 = call ptr @memcpy(ptr %arrayidx, ptr %addr, i32 6)
  %valid41 = getelementptr %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 13, i32 %vmid, i32 1
  %25 = ptrtoint ptr %valid41 to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load42 = load i16, ptr %valid41, align 2
  %bf.set = or i16 %bf.load42, 8
  store i16 %bf.set, ptr %valid41, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end26.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ %call3, %if.then.cleanup_crit_edge ], [ %call22, %if.then15.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mac_entry) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_dsaf_del_mac_entry(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_dsaf_set_mac_uc_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_mac_add_uc_addr(ptr nocapture noundef readonly %mac_cb, i8 noundef zeroext %vf_id, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  %mac_entry = alloca %struct.dsaf_drv_mac_single_dest_entry, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_dev1 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 1
  %0 = ptrtoint ptr %dsaf_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mac_entry) #7
  %dsaf_mode = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %dsaf_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsaf_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp eq i32 %3, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 3
  %5 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 2
  %6 = getelementptr inbounds i8, ptr %mac_entry, i32 6
  %7 = call ptr @memset(ptr %6, i32 0, i32 10)
  %8 = call ptr @memcpy(ptr %mac_entry, ptr %addr, i32 6)
  %mac_id = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 16
  %9 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mac_id, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %5, align 2
  %call = call i32 @hns_mac_get_inner_port_num(ptr noundef %mac_cb, i8 noundef zeroext %vf_id, ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call i32 @hns_dsaf_set_mac_uc_entry(ptr noundef %1, ptr noundef nonnull %mac_entry) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -28, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mac_entry) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_mac_rm_uc_addr(ptr nocapture noundef readonly %mac_cb, i8 noundef zeroext %vf_id, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  %mac_entry = alloca %struct.dsaf_drv_mac_single_dest_entry, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_dev1 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 1
  %0 = ptrtoint ptr %dsaf_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mac_entry) #7
  %dsaf_mode = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %dsaf_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsaf_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp eq i32 %3, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 3
  %5 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 2
  %6 = getelementptr inbounds i8, ptr %mac_entry, i32 6
  %7 = call ptr @memset(ptr %6, i32 0, i32 10)
  %8 = call ptr @memcpy(ptr %mac_entry, ptr %addr, i32 6)
  %mac_id = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 16
  %9 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mac_id, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %5, align 2
  %call = call i32 @hns_mac_get_inner_port_num(ptr noundef %mac_cb, i8 noundef zeroext %vf_id, ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call i32 @hns_dsaf_rm_mac_addr(ptr noundef %1, ptr noundef nonnull %mac_entry) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -28, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mac_entry) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_dsaf_rm_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_mac_set_multi(ptr nocapture noundef readonly %mac_cb, i32 noundef %port_num, ptr noundef readonly %addr, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %mac_entry = alloca %struct.dsaf_drv_mac_single_dest_entry, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_dev1 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 1
  %0 = ptrtoint ptr %dsaf_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mac_entry) #7
  %dsaf_mode = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 12
  %2 = getelementptr inbounds i8, ptr %mac_entry, i32 10
  %3 = call ptr @memset(ptr %2, i32 255, i32 6)
  %4 = ptrtoint ptr %dsaf_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsaf_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp = icmp eq i32 %5, 8
  %tobool.not = icmp eq ptr %addr, null
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %6 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 3
  %7 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 2
  %8 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %mac_entry, ptr %addr, i32 6)
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %8, align 2
  %mac_id = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 16
  %11 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mac_id, align 2
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %7, align 2
  %conv = trunc i32 %port_num to i8
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %6, align 1
  br i1 %enable, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 @hns_dsaf_del_mac_mc_port(ptr noundef %1, ptr noundef nonnull %mac_entry) #7
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call i32 @hns_dsaf_add_mac_mc_port(ptr noundef %1, ptr noundef nonnull %mac_entry) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %ret.0 = phi i32 [ %call6, %if.else ], [ %call, %if.then5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool7.not = icmp eq i32 %ret.0, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %17 = ptrtoint ptr %dsaf_dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dsaf_dev1, align 4
  %name = getelementptr inbounds %struct.dsaf_device, ptr %18, i32 0, i32 1, i32 6
  %19 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mac_id, align 2
  %conv12 = zext i8 %20 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.17, ptr noundef %name, i32 noundef %conv12, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mac_entry) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_dsaf_del_mac_mc_port(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_dsaf_add_mac_mc_port(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_mac_clr_multicast(ptr nocapture noundef readonly %mac_cb, i32 noundef %vfn) local_unnamed_addr #0 align 64 {
entry:
  %port_num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_dev1 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 1
  %0 = ptrtoint ptr %dsaf_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %port_num) #7
  %2 = ptrtoint ptr %port_num to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %port_num, align 1, !annotation !224
  %conv = trunc i32 %vfn to i8
  %call = call i32 @hns_mac_get_inner_port_num(ptr noundef %mac_cb, i8 noundef zeroext %conv, ptr noundef nonnull %port_num)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mac_id = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 16
  %3 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mac_id, align 2
  %5 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port_num, align 1
  %call2 = tail call i32 @hns_dsaf_clr_mac_mc_port(ptr noundef %1, i8 noundef zeroext %4, i8 noundef zeroext %6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port_num) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_dsaf_clr_mac_mc_port(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_mac_vm_config_bc_en(ptr nocapture noundef readonly %mac_cb, i32 noundef %vmid, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %port_num = alloca i8, align 1
  %mac_entry = alloca %struct.dsaf_drv_mac_single_dest_entry, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_dev1 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 1
  %0 = ptrtoint ptr %dsaf_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %port_num) #7
  %2 = ptrtoint ptr %port_num to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %port_num, align 1, !annotation !224
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mac_entry) #7
  %3 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 1
  %4 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 2
  %5 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 3
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 26
  %6 = getelementptr inbounds i8, ptr %mac_entry, i32 10
  %7 = call ptr @memset(ptr %6, i32 255, i32 6)
  %8 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dsaf_mode = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %dsaf_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dsaf_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp2 = icmp eq i32 %11, 8
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %12 = call ptr @memset(ptr %mac_entry, i32 255, i32 6)
  %vlan_id = getelementptr %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 13, i32 %vmid, i32 1
  %13 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %vlan_id, align 2
  %bf.lshr = lshr i16 %bf.load, 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %bf.lshr, ptr %3, align 2
  %mac_id = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 16
  %15 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mac_id, align 2
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %4, align 2
  %conv = trunc i32 %vmid to i8
  %call = call i32 @hns_mac_get_inner_port_num(ptr noundef %mac_cb, i8 noundef zeroext %conv, ptr noundef nonnull %port_num)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.then3
  %18 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_num, align 1
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %5, align 1
  br i1 %enable, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call i32 @hns_dsaf_del_mac_mc_port(ptr noundef %1, ptr noundef nonnull %mac_entry) #7
  br label %cleanup

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 @hns_dsaf_add_mac_mc_port(ptr noundef %1, ptr noundef nonnull %mac_entry) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then3.cleanup_crit_edge ], [ %call10, %if.else ], [ %call9, %if.then8 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mac_entry) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port_num) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_mac_wait_fifo_clean(ptr nocapture noundef readonly %mac_cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %wait_fifo_clean = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %wait_fifo_clean to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait_fifo_clean, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 %3(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_mac_reset(ptr nocapture noundef readonly %mac_cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dsaf_dev = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 1
  %2 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsaf_dev, align 4
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %5)
  %cmp = icmp ne i32 %5, 3552816
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void %7(ptr noundef %1) #7
  %config_max_frame_length = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %config_max_frame_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config_max_frame_length, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %max_frm = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 21
  %10 = ptrtoint ptr %max_frm to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %max_frm, align 2
  tail call void %9(ptr noundef %1, i16 noundef zeroext %11) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %set_tx_auto_pause_frames = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %set_tx_auto_pause_frames to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_tx_auto_pause_frames, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %tx_pause_frm_time = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 22
  %14 = ptrtoint ptr %tx_pause_frm_time to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tx_pause_frm_time, align 4
  tail call void %13(ptr noundef %1, i16 noundef zeroext %15) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %set_an_mode = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %set_an_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_an_mode, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %17(ptr noundef %1, i8 noundef zeroext 1) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %mac_pausefrm_cfg = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %mac_pausefrm_cfg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mac_pausefrm_cfg, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %if.end9.if.end21_crit_edge, label %if.then11

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then11:                                        ; preds = %if.end9
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 26
  %20 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp12 = icmp eq i32 %21, 1
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %lnot.ext = zext i1 %cmp to i32
  tail call void %19(ptr noundef %1, i32 noundef %lnot.ext, i32 noundef %lnot.ext) #7
  br label %if.end21

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %19(ptr noundef %1, i32 noundef 0, i32 noundef 1) #7
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then13, %if.end9.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_mac_set_mtu(ptr nocapture noundef %mac_cb, i32 noundef %new_mtu, i32 noundef %buf_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %add2 = add i32 %new_mtu, 22
  %mul = mul i32 %buf_size, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %mul)
  %cmp = icmp ugt i32 %add2, %mul
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %config_max_frame_length = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %config_max_frame_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config_max_frame_length, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call i32 @llvm.umax.i32(i32 %add2, i32 1522)
  %conv = trunc i32 %4 to i16
  tail call void %3(ptr noundef %1, i16 noundef zeroext %conv) #7
  %max_frm = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 21
  %5 = ptrtoint ptr %max_frm to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %max_frm, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -10, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_mac_start(ptr nocapture noundef readonly %mac_cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mac_en_flg = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %mac_en_flg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_en_flg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 182059816, i32 %3)
  %cmp = icmp eq i32 %3, 182059816
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %virt_dev_num = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %virt_dev_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt_dev_num, align 4
  %add = add i32 %5, 1
  store i32 %add, ptr %virt_dev_num, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_enable = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %mac_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_enable, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %1, i32 noundef 3) #7
  %8 = ptrtoint ptr %mac_en_flg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 182059816, ptr %mac_en_flg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_mac_stop(ptr noundef %mac_cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %virt_dev_num = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %virt_dev_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt_dev_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %sub = add i32 %3, -1
  %4 = ptrtoint ptr %virt_dev_num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %virt_dev_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp3.not = icmp eq i32 %sub, 0
  br i1 %cmp3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %mac_disable = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %mac_disable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mac_disable, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end5.if.end8_crit_edge, label %if.then6

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  tail call void %6(ptr noundef %8, i32 noundef 3) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end5.if.end8_crit_edge
  %mac_en_flg = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 30
  %9 = ptrtoint ptr %mac_en_flg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %mac_en_flg, align 4
  %link = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 17
  %10 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %link, align 1
  %dsaf_dev = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 1
  %11 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dsaf_dev, align 4
  %misc_op = getelementptr inbounds %struct.dsaf_device, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %misc_op to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %misc_op, align 4
  %cpld_reset_led = getelementptr inbounds %struct.dsaf_misc_op, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %cpld_reset_led to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpld_reset_led, align 4
  tail call void %16(ptr noundef %mac_cb) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_mac_get_autoneg(ptr nocapture noundef readonly %mac_cb, ptr noundef %auto_neg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %autoneg_stat = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %autoneg_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %autoneg_stat, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %1, ptr noundef %auto_neg) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %auto_neg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %auto_neg, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_mac_get_pauseparam(ptr nocapture noundef readonly %mac_cb, ptr noundef %rx_en, ptr noundef %tx_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %get_pause_enable = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %get_pause_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_pause_enable, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %1, ptr noundef %rx_en, ptr noundef %tx_en) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %rx_en to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rx_en, align 4
  %5 = ptrtoint ptr %tx_en to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tx_en, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_mac_set_autoneg(ptr nocapture noundef readonly %mac_cb, i8 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %phy_if = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 28
  %2 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_if, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %3)
  %cmp = icmp ne i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_cb, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.19) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %set_an_mode = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %set_an_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_an_mode, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %1, i8 noundef zeroext %enable) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -524, %do.end ], [ 0, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_mac_set_pauseparam(ptr nocapture noundef readonly %mac_cb, i32 noundef %rx_en, i32 noundef %tx_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 26
  %2 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %dsaf_dev = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 1
  %4 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsaf_dev, align 4
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %7)
  %cmp = icmp ne i32 %7, 3552816
  %8 = or i32 %tx_en, %rx_en
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  %or.cond = or i1 %9, %cmp
  br i1 %or.cond, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac_cb, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.21) #10
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %mac_pausefrm_cfg = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %mac_pausefrm_cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac_pausefrm_cfg, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %13(ptr noundef %1, i32 noundef %rx_en, i32 noundef %tx_en) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then7 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_mac_enable(ptr nocapture noundef readonly %mac_cb, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mac_enable = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mac_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_enable, align 4
  tail call void %3(ptr noundef %1, i32 noundef %mode) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_mac_disable(ptr nocapture noundef readonly %mac_cb, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mac_disable = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mac_disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_disable, align 4
  tail call void %3(ptr noundef %1, i32 noundef %mode) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_mac_init(ptr noundef %dsaf_dev) local_unnamed_addr #0 align 64 {
entry:
  %mac_entry.i.i = alloca %struct.dsaf_drv_mac_single_dest_entry, align 2
  %param.i = alloca %struct.mac_params, align 4
  %port_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port_id) #7
  %0 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %port_id, align 4, !annotation !224
  %dsaf_mode.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %1 = ptrtoint ptr %dsaf_mode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dsaf_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp.i = icmp eq i32 %2, 8
  %..i = select i1 %cmp.i, i32 1, i32 6
  %3 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dsaf_dev, align 8
  %call1 = tail call ptr @device_get_next_child_node(ptr noundef %4, ptr noundef null) #7
  %tobool.not128 = icmp eq ptr %call1, null
  br i1 %tobool.not128, label %for.cond21.preheader.critedge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %entry.for.body_crit_edge
  %child.0129 = phi ptr [ %call18, %if.end15.for.body_crit_edge ], [ %call1, %entry.for.body_crit_edge ]
  %call.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0129, ptr noundef nonnull @.str.23, ptr noundef nonnull %port_id, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsaf_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.24, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %..i)
  %cmp.not = icmp ult i32 %8, %..i
  %9 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dsaf_dev, align 8
  br i1 %cmp.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.27, i32 noundef %8) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call.i95 = call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 1808, i32 noundef 3520) #7
  %tobool13.not = icmp eq ptr %call.i95, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %fw_port = getelementptr inbounds %struct.hns_mac_cb, ptr %call.i95, i32 0, i32 3
  %11 = ptrtoint ptr %fw_port to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %child.0129, ptr %fw_port, align 4
  %12 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_id, align 4
  %conv = trunc i32 %13 to i8
  %mac_id = getelementptr inbounds %struct.hns_mac_cb, ptr %call.i95, i32 0, i32 16
  %14 = ptrtoint ptr %mac_id to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %mac_id, align 2
  %arrayidx = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 19, i32 %13
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i95, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dsaf_dev, align 8
  %call18 = call ptr @device_get_next_child_node(ptr noundef %17, ptr noundef nonnull %child.0129) #7
  %tobool.not = icmp eq ptr %call18, null
  br i1 %tobool.not, label %if.end15.if.end36_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end15.if.end36_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.cond21.preheader.critedge:                    ; preds = %entry
  %18 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %port_id, align 4
  br label %for.body24

for.body24:                                       ; preds = %if.end29.for.body24_crit_edge, %for.cond21.preheader.critedge
  %19 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dsaf_dev, align 8
  %call.i96 = call noalias ptr @devm_kmalloc(ptr noundef %20, i32 noundef 1808, i32 noundef 3520) #7
  %tobool27.not = icmp eq ptr %call.i96, null
  br i1 %tobool27.not, label %for.body24.cleanup_crit_edge, label %if.end29

for.body24.cleanup_crit_edge:                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %for.body24
  %21 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port_id, align 4
  %conv30 = trunc i32 %22 to i8
  %mac_id31 = getelementptr inbounds %struct.hns_mac_cb, ptr %call.i96, i32 0, i32 16
  %23 = ptrtoint ptr %mac_id31 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv30, ptr %mac_id31, align 2
  %arrayidx33 = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 19, i32 %22
  %24 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i96, ptr %arrayidx33, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %port_id, align 4
  %cmp22 = icmp ult i32 %inc, %..i
  br i1 %cmp22, label %if.end29.for.body24_crit_edge, label %if.end29.if.end36_crit_edge

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end29.for.body24_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24

if.end36:                                         ; preds = %if.end29.if.end36_crit_edge, %if.end15.if.end36_crit_edge
  %25 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %port_id, align 4
  %sc_base.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %sds_base.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 3
  %misc_op.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 20
  %ppe_base.i.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 4
  %io_base.i.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 5
  %26 = getelementptr inbounds i8, ptr %param.i, i32 4
  %vaddr1.i.i = getelementptr inbounds %struct.mac_params, ptr %param.i, i32 0, i32 1
  %mac_mode.i.i = getelementptr inbounds %struct.mac_params, ptr %param.i, i32 0, i32 4
  %mac_id4.i.i = getelementptr inbounds %struct.mac_params, ptr %param.i, i32 0, i32 3
  %dev5.i.i = getelementptr inbounds %struct.mac_params, ptr %param.i, i32 0, i32 2
  %27 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry.i.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry.i.i, i32 0, i32 2
  %29 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry.i.i, i32 0, i32 3
  %30 = getelementptr inbounds i8, ptr %mac_entry.i.i, i32 10
  br label %for.body40

for.body40:                                       ; preds = %for.inc54.for.body40_crit_edge, %if.end36
  %storemerge94130 = phi i32 [ 0, %if.end36 ], [ %inc55, %for.inc54.for.body40_crit_edge ]
  %arrayidx42 = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 19, i32 %storemerge94130
  %31 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx42, align 4
  %tobool43.not = icmp eq ptr %32, null
  br i1 %tobool43.not, label %for.body40.for.inc54_crit_edge, label %if.end45

for.body40.for.inc54_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc54

if.end45:                                         ; preds = %for.body40
  %dsaf_dev1.i = getelementptr inbounds %struct.hns_mac_cb, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %dsaf_dev1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dsaf_dev, ptr %dsaf_dev1.i, align 4
  %34 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dsaf_dev, align 8
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %32, align 8
  %37 = ptrtoint ptr %sc_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sc_base.i, align 8
  %sys_ctl_vaddr.i = getelementptr inbounds %struct.hns_mac_cb, ptr %32, i32 0, i32 5
  %39 = ptrtoint ptr %sys_ctl_vaddr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %sys_ctl_vaddr.i, align 4
  %40 = ptrtoint ptr %sds_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sds_base.i, align 4
  %serdes_vaddr.i = getelementptr inbounds %struct.hns_mac_cb, ptr %32, i32 0, i32 6
  %42 = ptrtoint ptr %serdes_vaddr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %serdes_vaddr.i, align 8
  %sfp_prsnt.i = getelementptr inbounds %struct.hns_mac_cb, ptr %32, i32 0, i32 14
  %43 = ptrtoint ptr %sfp_prsnt.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %sfp_prsnt.i, align 8
  %txpkt_for_led.i = getelementptr inbounds %struct.hns_mac_cb, ptr %32, i32 0, i32 24
  %44 = call ptr @memset(ptr %txpkt_for_led.i, i32 0, i32 16)
  %45 = ptrtoint ptr %dsaf_mode.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dsaf_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %46)
  %cmp.i98 = icmp eq i32 %46, 8
  %spec.select.i = zext i1 %cmp.i98 to i32
  %47 = getelementptr inbounds %struct.hns_mac_cb, ptr %32, i32 0, i32 26
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %spec.select.i, ptr %47, align 8
  %49 = ptrtoint ptr %misc_op.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %misc_op.i, align 4
  %get_phy_if.i = getelementptr inbounds %struct.dsaf_misc_op, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %get_phy_if.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %get_phy_if.i, align 4
  %call.i99 = call i32 %52(ptr noundef nonnull %32) #7
  %phy_if.i = getelementptr inbounds %struct.hns_mac_cb, ptr %32, i32 0, i32 28
  %53 = ptrtoint ptr %phy_if.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call.i99, ptr %phy_if.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i99)
  %switch.selectcmp.i.i = icmp eq i32 %call.i99, 15
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 1, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i99)
  %switch.selectcmp2.i.i = icmp eq i32 %call.i99, 4
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 0, i32 %switch.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.select3.i.i)
  %cmp6.i = icmp slt i32 %switch.select3.i.i, 0
  br i1 %cmp6.i, label %do.end.i, label %if.end9.i

do.end.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dsaf_dev, align 8
  %mac_id.i = getelementptr inbounds %struct.hns_mac_cb, ptr %32, i32 0, i32 16
  %56 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %mac_id.i, align 2
  %conv.i = zext i8 %57 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.29, i32 noundef %conv.i, i32 noundef %switch.select3.i.i) #10
  br label %cleanup

if.end9.i:                                        ; preds = %if.end45
  %call10.i = call fastcc i32 @hns_mac_get_info(ptr noundef nonnull %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12.i:                                       ; preds = %if.end9.i
  %58 = ptrtoint ptr %dsaf_dev1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dsaf_dev1.i, align 4
  %misc_op14.i = getelementptr inbounds %struct.dsaf_device, ptr %59, i32 0, i32 20
  %60 = ptrtoint ptr %misc_op14.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %misc_op14.i, align 4
  %cpld_reset_led.i = getelementptr inbounds %struct.dsaf_misc_op, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %cpld_reset_led.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cpld_reset_led.i, align 4
  call void %63(ptr noundef nonnull %32) #7
  %64 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i.i = icmp eq i32 %65, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %mac_id1.i.i = getelementptr inbounds %struct.hns_mac_cb, ptr %32, i32 0, i32 16
  %66 = ptrtoint ptr %mac_id1.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mac_id1.i.i, align 2
  %conv.i.i = zext i8 %67 to i32
  %68 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 262144
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 14
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %mul4.neg.i.i = mul nuw nsw i32 %switch.select3.i.i, -131072
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr3.i.i, i32 %mul4.neg.i.i
  br label %if.end49

if.else.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %ppe_base.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ppe_base.i.i, align 8
  %add.ptr6.i.i = getelementptr i8, ptr %71, i32 4096
  br label %if.end49

if.end49:                                         ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %add.ptr5.i.i, %if.then.i.i ], [ %add.ptr6.i.i, %if.else.i.i ]
  %vaddr.i = getelementptr inbounds %struct.hns_mac_cb, ptr %32, i32 0, i32 4
  %72 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %retval.0.i.i, ptr %vaddr.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %param.i) #7
  call void @hns_dsaf_fix_mac_mode(ptr noundef nonnull %32) #7
  %73 = call ptr @memset(ptr %26, i32 0, i32 16)
  %74 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vaddr.i, align 8
  %76 = ptrtoint ptr %vaddr1.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %vaddr1.i.i, align 4
  %max_speed.i.i.i = getelementptr inbounds %struct.hns_mac_cb, ptr %32, i32 0, i32 20
  %77 = ptrtoint ptr %max_speed.i.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %max_speed.i.i.i, align 8
  %79 = zext i16 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.104)
  switch i16 %78, label %sw.default.i.i.i [
    i16 100, label %sw.bb.i.i.i
    i16 1000, label %sw.bb1.i.i.i
    i16 10000, label %if.end49.hns_mac_param_get.exit.i_crit_edge
  ]

if.end49.hns_mac_param_get.exit.i_crit_edge:      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %hns_mac_param_get.exit.i

sw.bb.i.i.i:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %phy_if.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %phy_if.i, align 8
  %arrayidx.i.i.i = getelementptr [8 x i32], ptr @g_mac_mode_100, i32 0, i32 %81
  %82 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i.i.i, align 4
  br label %hns_mac_param_get.exit.i

sw.bb1.i.i.i:                                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %phy_if.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %phy_if.i, align 8
  %arrayidx3.i.i.i = getelementptr [14 x i32], ptr @g_mac_mode_1000, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx3.i.i.i, align 4
  br label %hns_mac_param_get.exit.i

sw.default.i.i.i:                                 ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %hns_mac_param_get.exit.i

hns_mac_param_get.exit.i:                         ; preds = %sw.default.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i, %if.end49.hns_mac_param_get.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 65636, %sw.default.i.i.i ], [ %87, %sw.bb1.i.i.i ], [ %83, %sw.bb.i.i.i ], [ 599824, %if.end49.hns_mac_param_get.exit.i_crit_edge ]
  %88 = ptrtoint ptr %mac_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %retval.0.i.i.i, ptr %mac_mode.i.i, align 4
  %addr_entry_idx.i.i = getelementptr inbounds %struct.hns_mac_cb, ptr %32, i32 0, i32 13
  %89 = ptrtoint ptr %addr_entry_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %addr_entry_idx.i.i, align 4
  %91 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %param.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.hns_mac_cb, ptr %32, i32 0, i32 13, i32 0, i32 0, i32 4
  %92 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %add.ptr.i.i.i, align 2
  %94 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %26, align 4
  %mac_id.i.i = getelementptr inbounds %struct.hns_mac_cb, ptr %32, i32 0, i32 16
  %95 = ptrtoint ptr %mac_id.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %mac_id.i.i, align 2
  %97 = ptrtoint ptr %mac_id4.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %mac_id4.i.i, align 4
  %98 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %32, align 8
  %100 = ptrtoint ptr %dev5.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %dev5.i.i, align 4
  %and.i = and i32 %retval.0.i.i.i, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %and.i)
  %cmp.i100 = icmp ult i32 %and.i, 10000
  br i1 %cmp.i100, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %hns_mac_param_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i101 = call ptr @hns_gmac_config(ptr noundef nonnull %32, ptr noundef nonnull %param.i) #7
  br label %if.end.i

if.else.i:                                        ; preds = %hns_mac_param_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call ptr @hns_xgmac_config(ptr noundef nonnull %32, ptr noundef nonnull %param.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %drv.0.i = phi ptr [ %call.i101, %if.then.i ], [ %call1.i, %if.else.i ]
  %tobool.not.i102 = icmp eq ptr %drv.0.i, null
  br i1 %tobool.not.i102, label %if.end.i.hns_mac_init_ex.exit_crit_edge, label %if.end3.i

if.end.i.hns_mac_init_ex.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hns_mac_init_ex.exit

if.end3.i:                                        ; preds = %if.end.i
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %32, i32 0, i32 2
  %101 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %drv.0.i, ptr %priv.i, align 8
  %102 = ptrtoint ptr %dsaf_dev1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dsaf_dev1.i, align 4
  %dsaf_ver.i.i = getelementptr inbounds %struct.dsaf_device, ptr %103, i32 0, i32 15
  %104 = ptrtoint ptr %dsaf_ver.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dsaf_ver.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %105)
  %cmp.i.i103 = icmp ne i32 %105, 3552816
  %106 = ptrtoint ptr %drv.0.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %drv.0.i, align 4
  call void %107(ptr noundef nonnull %drv.0.i) #7
  %config_max_frame_length.i.i = getelementptr inbounds %struct.mac_driver, ptr %drv.0.i, i32 0, i32 9
  %108 = ptrtoint ptr %config_max_frame_length.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %config_max_frame_length.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %109, null
  br i1 %tobool.not.i.i, label %if.end3.i.if.end.i.i_crit_edge, label %if.then.i.i104

if.end3.i.if.end.i.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i104:                                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_frm.i.i = getelementptr inbounds %struct.hns_mac_cb, ptr %32, i32 0, i32 21
  %110 = ptrtoint ptr %max_frm.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %max_frm.i.i, align 2
  call void %109(ptr noundef nonnull %drv.0.i, i16 noundef zeroext %111) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i104, %if.end3.i.if.end.i.i_crit_edge
  %set_tx_auto_pause_frames.i.i = getelementptr inbounds %struct.mac_driver, ptr %drv.0.i, i32 0, i32 11
  %112 = ptrtoint ptr %set_tx_auto_pause_frames.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %set_tx_auto_pause_frames.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %113, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %tx_pause_frm_time.i.i = getelementptr inbounds %struct.hns_mac_cb, ptr %32, i32 0, i32 22
  %114 = ptrtoint ptr %tx_pause_frm_time.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %tx_pause_frm_time.i.i, align 4
  call void %113(ptr noundef nonnull %drv.0.i, i16 noundef zeroext %115) #7
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  %set_an_mode.i.i = getelementptr inbounds %struct.mac_driver, ptr %drv.0.i, i32 0, i32 7
  %116 = ptrtoint ptr %set_an_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %set_an_mode.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %117, null
  br i1 %tobool6.not.i.i, label %if.end5.i.i.if.end9.i.i_crit_edge, label %if.then7.i.i

if.end5.i.i.if.end9.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %117(ptr noundef nonnull %drv.0.i, i8 noundef zeroext 1) #7
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then7.i.i, %if.end5.i.i.if.end9.i.i_crit_edge
  %mac_pausefrm_cfg.i.i = getelementptr inbounds %struct.mac_driver, ptr %drv.0.i, i32 0, i32 13
  %118 = ptrtoint ptr %mac_pausefrm_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mac_pausefrm_cfg.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %119, null
  br i1 %tobool10.not.i.i, label %if.end9.i.i.hns_mac_reset.exit.i_crit_edge, label %if.then11.i.i

if.end9.i.i.hns_mac_reset.exit.i_crit_edge:       ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hns_mac_reset.exit.i

if.then11.i.i:                                    ; preds = %if.end9.i.i
  %120 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %121)
  %cmp12.i.i = icmp eq i32 %121, 1
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.else.i.i105

if.then13.i.i:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %lnot.ext.i.i = zext i1 %cmp.i.i103 to i32
  call void %119(ptr noundef nonnull %drv.0.i, i32 noundef %lnot.ext.i.i, i32 noundef %lnot.ext.i.i) #7
  br label %hns_mac_reset.exit.i

if.else.i.i105:                                   ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %119(ptr noundef nonnull %drv.0.i, i32 noundef 0, i32 noundef 1) #7
  br label %hns_mac_reset.exit.i

hns_mac_reset.exit.i:                             ; preds = %if.else.i.i105, %if.then13.i.i, %if.end9.i.i.hns_mac_reset.exit.i_crit_edge
  %speed.i = getelementptr inbounds %struct.hns_mac_cb, ptr %32, i32 0, i32 19
  %122 = ptrtoint ptr %speed.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %speed.i, align 2
  %half_duplex.i = getelementptr inbounds %struct.hns_mac_cb, ptr %32, i32 0, i32 18
  %124 = ptrtoint ptr %half_duplex.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %half_duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool4.not.i = icmp eq i8 %125, 0
  %126 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %priv.i, align 8
  %tobool.not.i31.i = xor i1 %tobool4.not.i, true
  %conv2.i.i = zext i1 %tobool.not.i31.i to i8
  %128 = ptrtoint ptr %half_duplex.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv2.i.i, ptr %half_duplex.i, align 4
  %adjust_link.i.i = getelementptr inbounds %struct.mac_driver, ptr %127, i32 0, i32 5
  %129 = ptrtoint ptr %adjust_link.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %adjust_link.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %130, null
  br i1 %tobool3.not.i.i, label %hns_mac_reset.exit.i.hns_mac_adjust_link.exit.i_crit_edge, label %if.then.i32.i

hns_mac_reset.exit.i.hns_mac_adjust_link.exit.i_crit_edge: ; preds = %hns_mac_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hns_mac_adjust_link.exit.i

if.then.i32.i:                                    ; preds = %hns_mac_reset.exit.i
  %lnot.ext.i = zext i1 %tobool4.not.i to i32
  %conv.i106 = zext i16 %123 to i32
  %call.i.i = call i32 %130(ptr noundef %127, i32 noundef %conv.i106, i32 noundef %lnot.ext.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then.i32.i.hns_mac_adjust_link.exit.i_crit_edge, label %do.end.i.i

if.then.i32.i.hns_mac_adjust_link.exit.i_crit_edge: ; preds = %if.then.i32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hns_mac_adjust_link.exit.i

do.end.i.i:                                       ; preds = %if.then.i32.i
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %32, align 8
  %133 = ptrtoint ptr %dsaf_dev1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dsaf_dev1.i, align 4
  %name.i.i = getelementptr inbounds %struct.dsaf_device, ptr %134, i32 0, i32 1, i32 6
  %135 = ptrtoint ptr %mac_id.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %mac_id.i.i, align 2
  %conv7.i.i = zext i8 %136 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str, ptr noundef %name.i.i, i32 noundef %conv7.i.i, i32 noundef %call.i.i) #10
  br label %hns_mac_adjust_link.exit.i

hns_mac_adjust_link.exit.i:                       ; preds = %do.end.i.i, %if.then.i32.i.hns_mac_adjust_link.exit.i_crit_edge, %hns_mac_reset.exit.i.hns_mac_adjust_link.exit.i_crit_edge
  %137 = ptrtoint ptr %mac_id.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %mac_id.i.i, align 2
  %139 = ptrtoint ptr %dsaf_dev1.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dsaf_dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mac_entry.i.i) #7
  %141 = call ptr @memset(ptr %30, i32 255, i32 6)
  %142 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %143)
  %cmp.i36.i = icmp eq i32 %143, 1
  br i1 %cmp.i36.i, label %hns_mac_adjust_link.exit.i.hns_mac_port_config_bc_en.exit.thread.i_crit_edge, label %if.end.i37.i

hns_mac_adjust_link.exit.i.hns_mac_port_config_bc_en.exit.thread.i_crit_edge: ; preds = %hns_mac_adjust_link.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hns_mac_port_config_bc_en.exit.thread.i

if.end.i37.i:                                     ; preds = %hns_mac_adjust_link.exit.i
  %dsaf_mode.i.i = getelementptr inbounds %struct.dsaf_device, ptr %140, i32 0, i32 12
  %144 = ptrtoint ptr %dsaf_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %dsaf_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %145)
  %cmp2.i.i = icmp eq i32 %145, 8
  br i1 %cmp2.i.i, label %if.end.i37.i.hns_mac_port_config_bc_en.exit.thread.i_crit_edge, label %hns_mac_port_config_bc_en.exit.i

if.end.i37.i.hns_mac_port_config_bc_en.exit.thread.i_crit_edge: ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hns_mac_port_config_bc_en.exit.thread.i

hns_mac_port_config_bc_en.exit.thread.i:          ; preds = %if.end.i37.i.hns_mac_port_config_bc_en.exit.thread.i_crit_edge, %hns_mac_adjust_link.exit.i.hns_mac_port_config_bc_en.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mac_entry.i.i) #7
  br label %hns_mac_init_ex.exit.thread

hns_mac_port_config_bc_en.exit.i:                 ; preds = %if.end.i37.i
  %146 = call ptr @memset(ptr %mac_entry.i.i, i32 255, i32 6)
  %147 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 0, ptr %27, align 2
  %148 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %138, ptr %28, align 2
  %149 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %138, ptr %29, align 1
  %call6.i.i = call i32 @hns_dsaf_add_mac_mc_port(ptr noundef %140, ptr noundef nonnull %mac_entry.i.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mac_entry.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i, label %hns_mac_port_config_bc_en.exit.i.hns_mac_init_ex.exit.thread_crit_edge, label %free_mac_drv.i

hns_mac_port_config_bc_en.exit.i.hns_mac_init_ex.exit.thread_crit_edge: ; preds = %hns_mac_port_config_bc_en.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hns_mac_init_ex.exit.thread

free_mac_drv.i:                                   ; preds = %hns_mac_port_config_bc_en.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %mac_free.i = getelementptr inbounds %struct.mac_driver, ptr %drv.0.i, i32 0, i32 1
  %150 = ptrtoint ptr %mac_free.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %mac_free.i, align 4
  %152 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %priv.i, align 8
  call void %151(ptr noundef %153) #7
  %154 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %priv.i, align 8
  br label %hns_mac_init_ex.exit

hns_mac_init_ex.exit.thread:                      ; preds = %hns_mac_port_config_bc_en.exit.i.hns_mac_init_ex.exit.thread_crit_edge, %hns_mac_port_config_bc_en.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %param.i) #7
  br label %for.inc54

hns_mac_init_ex.exit:                             ; preds = %free_mac_drv.i, %if.end.i.hns_mac_init_ex.exit_crit_edge
  %retval.0.i107 = phi i32 [ %call6.i.i, %free_mac_drv.i ], [ -12, %if.end.i.hns_mac_init_ex.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %param.i) #7
  br label %cleanup

for.inc54:                                        ; preds = %hns_mac_init_ex.exit.thread, %for.body40.for.inc54_crit_edge
  %155 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %port_id, align 4
  %inc55 = add i32 %156, 1
  store i32 %inc55, ptr %port_id, align 4
  %cmp38 = icmp ult i32 %inc55, %..i
  br i1 %cmp38, label %for.inc54.for.body40_crit_edge, label %for.inc54.cleanup_crit_edge

for.inc54.cleanup_crit_edge:                      ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc54.for.body40_crit_edge:                   ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body40

cleanup:                                          ; preds = %for.inc54.cleanup_crit_edge, %hns_mac_init_ex.exit, %if.end9.i.cleanup_crit_edge, %do.end.i, %for.body24.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end8 ], [ %retval.0.i107, %hns_mac_init_ex.exit ], [ %switch.select.i.i, %do.end.i ], [ %call10.i, %if.end9.i.cleanup_crit_edge ], [ 0, %for.inc54.cleanup_crit_edge ], [ -12, %for.body24.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_id) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_mac_uninit(ptr nocapture noundef %dsaf_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_mode.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %0 = ptrtoint ptr %dsaf_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsaf_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.i = icmp eq i32 %1, 8
  %..i = select i1 %cmp.i, i32 1, i32 6
  %misc_op = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 19, i32 %i.017
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %misc_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %misc_op, align 4
  %cpld_reset_led = getelementptr inbounds %struct.dsaf_misc_op, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cpld_reset_led to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpld_reset_led, align 4
  tail call void %7(ptr noundef nonnull %3) #7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %..i
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_mac_config_mac_loopback(ptr nocapture noundef readonly %mac_cb, i32 noundef %loop, i32 noundef %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config_loopback = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %config_loopback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config_loopback, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %en to i8
  %call2 = tail call i32 %3(ptr noundef %1, i32 noundef %loop, i8 noundef zeroext %conv) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ -524, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_mac_update_stats(ptr nocapture noundef readonly %mac_cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %update_stats = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %update_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update_stats, align 4
  tail call void %3(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_mac_get_stats(ptr nocapture noundef readonly %mac_cb, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %get_ethtool_stats = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %get_ethtool_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_ethtool_stats, align 4
  tail call void %3(ptr noundef %1, ptr noundef %data) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_mac_get_strings(ptr nocapture noundef readonly %mac_cb, i32 noundef %stringset, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %get_strings = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %get_strings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_strings, align 4
  tail call void %3(i32 noundef %stringset, ptr noundef %data) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_mac_get_sset_count(ptr nocapture noundef readonly %mac_cb, i32 noundef %stringset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %get_sset_count = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %get_sset_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_sset_count, align 4
  %call1 = tail call i32 %3(i32 noundef %stringset) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_mac_set_promisc(ptr nocapture noundef readonly %mac_cb, i8 noundef zeroext %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dsaf_dev = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 1
  %2 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsaf_dev, align 4
  %mac_id = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 16
  %4 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac_id, align 2
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %en)
  %tobool = icmp ne i8 %en, 0
  tail call void @hns_dsaf_set_promisc_tcam(ptr noundef %3, i32 noundef %conv, i1 noundef zeroext %tobool) #7
  %set_promiscuous = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %set_promiscuous to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_promiscuous, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %1, i8 noundef zeroext %en) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_dsaf_set_promisc_tcam(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_mac_get_regs_count(ptr nocapture noundef readonly %mac_cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %get_regs_count = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %get_regs_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_regs_count, align 4
  %call1 = tail call i32 %3() #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_mac_get_regs(ptr nocapture noundef readonly %mac_cb, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %get_regs = getelementptr inbounds %struct.mac_driver, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %get_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_regs, align 4
  tail call void %3(ptr noundef %1, ptr noundef %data) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_set_led_opt(ptr noundef %mac_cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %txpkt_for_led = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 24
  %0 = ptrtoint ptr %txpkt_for_led to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %txpkt_for_led, align 8
  %hw_stats = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 31
  %tx_good_pkts = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 31, i32 46
  %2 = ptrtoint ptr %tx_good_pkts to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tx_good_pkts, align 8
  %sub = sub i64 %1, %3
  %conv = trunc i64 %sub to i32
  %rxpkt_for_led = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %rxpkt_for_led to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %rxpkt_for_led, align 8
  %6 = ptrtoint ptr %hw_stats to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %hw_stats, align 8
  %sub2 = sub i64 %5, %7
  %conv3 = trunc i64 %sub2 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %tobool4.not = icmp ne i32 %conv3, 0
  %spec.select = zext i1 %tobool4.not to i32
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %entry.if.end_crit_edge
  %nic_data.0 = phi i32 [ 1, %entry.if.end_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %8 = ptrtoint ptr %txpkt_for_led to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %3, ptr %txpkt_for_led, align 8
  %9 = ptrtoint ptr %hw_stats to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %hw_stats, align 8
  %11 = ptrtoint ptr %rxpkt_for_led to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %rxpkt_for_led, align 8
  %dsaf_dev = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 1
  %12 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dsaf_dev, align 4
  %misc_op = getelementptr inbounds %struct.dsaf_device, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %misc_op to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %misc_op, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %link = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 17
  %18 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %link, align 1
  %conv11 = zext i8 %19 to i32
  %speed = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 19
  %20 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %speed, align 2
  tail call void %17(ptr noundef %mac_cb, i32 noundef %conv11, i16 noundef zeroext %21, i32 noundef %nic_data.0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_cpld_led_set_id(ptr noundef %mac_cb, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mac_cb, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dsaf_dev = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 1
  %0 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev, align 4
  %misc_op = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %misc_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %misc_op, align 4
  %cpld_set_led_id = getelementptr inbounds %struct.dsaf_misc_op, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cpld_set_led_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpld_set_led_id, align 4
  %call = tail call i32 %5(ptr noundef nonnull %mac_cb, i32 noundef %status) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hns_mac_get_info(ptr noundef %mac_cb) unnamed_addr #0 align 64 {
entry:
  %args.i370 = alloca %struct.of_phandle_args, align 4
  %args.i357 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %cpld_args = alloca %struct.of_phandle_args, align 4
  %media_type = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cpld_args) #7
  %0 = call ptr @memset(ptr %cpld_args, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %media_type) #7
  %1 = ptrtoint ptr %media_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %media_type, align 4, !annotation !224
  %link = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 17
  %2 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %link, align 1
  %half_duplex = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 18
  %3 = ptrtoint ptr %half_duplex to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %half_duplex, align 4
  %media_type1 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 27
  %4 = ptrtoint ptr %media_type1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %media_type1, align 4
  %phy_if = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 28
  %5 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phy_if, align 8
  %arrayidx = getelementptr [16 x i16], ptr @mac_phy_to_speed, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %speed = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 19
  %9 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %speed, align 2
  %max_speed = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 20
  %10 = ptrtoint ptr %max_speed to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %8, ptr %max_speed, align 8
  %11 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %6, label %entry.if.end11_crit_edge [
    i32 4, label %entry.if.end11.sink.split_crit_edge
    i32 15, label %if.then7
  ]

entry.if.end11.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.sink.split

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %if.then7, %entry.if.end11.sink.split_crit_edge
  %.sink = phi i32 [ 1572864, %if.then7 ], [ 111, %entry.if.end11.sink.split_crit_edge ]
  %if_support8 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 23
  %12 = ptrtoint ptr %if_support8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %if_support8, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %entry.if.end11_crit_edge
  %max_frm = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 21
  %13 = ptrtoint ptr %max_frm to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1522, ptr %max_frm, align 2
  %tx_pause_frm_time = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 22
  %14 = ptrtoint ptr %tx_pause_frm_time to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %tx_pause_frm_time, align 4
  %mac_id = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 16
  %15 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mac_id, align 2
  %conv = zext i8 %16 to i32
  %port_rst_off = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 11
  %17 = ptrtoint ptr %port_rst_off to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %port_rst_off, align 8
  %port_mode_off = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 12
  %18 = ptrtoint ptr %port_mode_off to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %port_mode_off, align 4
  %fw_port = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 3
  %19 = ptrtoint ptr %fw_port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw_port, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %if.then12, label %if.end31

if.then12:                                        ; preds = %if.end11
  %21 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mac_cb, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %25 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %24, ptr noundef nonnull @.str.31, ptr noundef null, i32 noundef 0, i32 noundef %conv, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then12.of_parse_phandle.exit_crit_edge

if.then12.of_parse_phandle.exit_crit_edge:        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.then12.of_parse_phandle.exit_crit_edge
  %retval.0.i349 = phi ptr [ %27, %if.end.i ], [ null, %if.then12.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %call15 = call ptr @of_phy_find_device(ptr noundef %retval.0.i349) #7
  %phy_dev = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 30
  %28 = ptrtoint ptr %phy_dev to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call15, ptr %phy_dev, align 8
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %of_parse_phandle.exit.if.end30_crit_edge, label %if.then18

of_parse_phandle.exit.if.end30_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then18:                                        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @put_device(ptr noundef nonnull %call15) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_mac_get_info.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_mac_get_info, %if.then25)) #7
          to label %if.end30 [label %if.then25], !srcloc !225

if.then25:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mac_cb, align 8
  %31 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mac_id, align 2
  %conv28 = zext i8 %32 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_mac_get_info.__UNIQUE_ID_ddebug353, ptr noundef %30, ptr noundef nonnull @.str.34, i32 noundef %conv28, ptr noundef %retval.0.i349) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.then18, %of_parse_phandle.exit.if.end30_crit_edge
  call void @of_node_put(ptr noundef %retval.0.i349) #7
  br label %cleanup

if.end31:                                         ; preds = %if.end11
  %cmp.i.i = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end31.if.else202_crit_edge, label %is_of_node.exit

if.end31.if.else202_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else202

is_of_node.exit:                                  ; preds = %if.end31
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %20, i32 0, i32 1
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %34, @of_fwnode_ops
  br i1 %cmp.i, label %is_of_node.exit356, label %is_of_node.exit.if.else202_crit_edge

is_of_node.exit.if.else202_crit_edge:             ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else202

is_of_node.exit356:                               ; preds = %is_of_node.exit
  %35 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i, align 4
  %cmp.i354 = icmp eq ptr %36, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %20, i32 -12
  %spec.select = select i1 %cmp.i354, ptr %add.ptr, ptr null
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i357) #7
  %37 = call ptr @memset(ptr %args.i357, i32 255, i32 72)
  %call.i358 = call i32 @__of_parse_phandle_with_args(ptr noundef %spec.select, ptr noundef nonnull @.str.31, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i357) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i358)
  %tobool.not.i359 = icmp eq i32 %call.i358, 0
  br i1 %tobool.not.i359, label %if.end.i360, label %is_of_node.exit356.of_parse_phandle.exit362_crit_edge

is_of_node.exit356.of_parse_phandle.exit362_crit_edge: ; preds = %is_of_node.exit356
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_parse_phandle.exit362

if.end.i360:                                      ; preds = %is_of_node.exit356
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %args.i357 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %args.i357, align 4
  br label %of_parse_phandle.exit362

of_parse_phandle.exit362:                         ; preds = %if.end.i360, %is_of_node.exit356.of_parse_phandle.exit362_crit_edge
  %retval.0.i361 = phi ptr [ %39, %if.end.i360 ], [ null, %is_of_node.exit356.of_parse_phandle.exit362_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i357) #7
  %call41 = call ptr @of_phy_find_device(ptr noundef %retval.0.i361) #7
  %phy_dev42 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 30
  %40 = ptrtoint ptr %phy_dev42 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call41, ptr %phy_dev42, align 8
  %tobool44.not = icmp eq ptr %call41, null
  br i1 %tobool44.not, label %of_parse_phandle.exit362.if.end68_crit_edge, label %if.then45

of_parse_phandle.exit362.if.end68_crit_edge:      ; preds = %of_parse_phandle.exit362
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then45:                                        ; preds = %of_parse_phandle.exit362
  call void @__sanitizer_cov_trace_pc() #9
  call void @put_device(ptr noundef nonnull %call41) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_mac_get_info.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_mac_get_info, %if.then61)) #7
          to label %if.end68 [label %if.then61], !srcloc !225

if.then61:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mac_cb, align 8
  %43 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %mac_id, align 2
  %conv64 = zext i8 %44 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_mac_get_info.__UNIQUE_ID_ddebug354, ptr noundef %42, ptr noundef nonnull @.str.34, i32 noundef %conv64, ptr noundef %retval.0.i361) #7
  br label %if.end68

if.end68:                                         ; preds = %if.then61, %if.then45, %of_parse_phandle.exit362.if.end68_crit_edge
  call void @of_node_put(ptr noundef %retval.0.i361) #7
  %45 = ptrtoint ptr %fw_port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fw_port, align 4
  %tobool.not.i.i363 = icmp eq ptr %46, null
  %cmp.i.i364 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i365 = or i1 %tobool.not.i.i363, %cmp.i.i364
  br i1 %spec.select.i.i365, label %if.end68.is_of_node.exit369.thread_crit_edge, label %is_of_node.exit369

if.end68.is_of_node.exit369.thread_crit_edge:     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_of_node.exit369.thread

is_of_node.exit369:                               ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i366 = getelementptr inbounds %struct.fwnode_handle, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %ops.i366 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i366, align 4
  %cmp.i367 = icmp eq ptr %48, @of_fwnode_ops
  %add.ptr77 = getelementptr i8, ptr %46, i32 -12
  %spec.select399 = select i1 %cmp.i367, ptr %add.ptr77, ptr null
  br label %is_of_node.exit369.thread

is_of_node.exit369.thread:                        ; preds = %is_of_node.exit369, %if.end68.is_of_node.exit369.thread_crit_edge
  %49 = phi ptr [ null, %if.end68.is_of_node.exit369.thread_crit_edge ], [ %spec.select399, %is_of_node.exit369 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i370) #7
  %50 = call ptr @memset(ptr %args.i370, i32 255, i32 72)
  %call.i371 = call i32 @__of_parse_phandle_with_args(ptr noundef %49, ptr noundef nonnull @.str.35, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i370) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i371)
  %tobool.not.i372 = icmp eq i32 %call.i371, 0
  br i1 %tobool.not.i372, label %if.end.i373, label %is_of_node.exit369.thread.of_parse_phandle.exit375_crit_edge

is_of_node.exit369.thread.of_parse_phandle.exit375_crit_edge: ; preds = %is_of_node.exit369.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_parse_phandle.exit375

if.end.i373:                                      ; preds = %is_of_node.exit369.thread
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %args.i370 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %args.i370, align 4
  br label %of_parse_phandle.exit375

of_parse_phandle.exit375:                         ; preds = %if.end.i373, %is_of_node.exit369.thread.of_parse_phandle.exit375_crit_edge
  %retval.0.i374 = phi ptr [ %52, %if.end.i373 ], [ null, %is_of_node.exit369.thread.of_parse_phandle.exit375_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i370) #7
  %call82 = call ptr @syscon_node_to_regmap(ptr noundef %retval.0.i374) #7
  call void @of_node_put(ptr noundef %retval.0.i374) #7
  %tobool.not.i376 = icmp eq ptr %call82, null
  %cmp.i377 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i376, %cmp.i377
  br i1 %spec.select.i, label %do.end87, label %if.end89

do.end87:                                         ; preds = %of_parse_phandle.exit375
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mac_cb, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end89:                                         ; preds = %of_parse_phandle.exit375
  %serdes_ctrl = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 7
  %55 = ptrtoint ptr %serdes_ctrl to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call82, ptr %serdes_ctrl, align 4
  %56 = ptrtoint ptr %fw_port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fw_port, align 4
  %call.i378 = call i32 @fwnode_property_read_u32_array(ptr noundef %57, ptr noundef nonnull @.str.37, ptr noundef %port_rst_off, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i378)
  %tobool93.not = icmp eq i32 %call.i378, 0
  br i1 %tobool93.not, label %if.end89.if.end114_crit_edge, label %do.body95

if.end89.if.end114_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

do.body95:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_mac_get_info.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_mac_get_info, %if.then107)) #7
          to label %if.end114 [label %if.then107], !srcloc !225

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mac_cb, align 8
  %60 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %mac_id, align 2
  %conv110 = zext i8 %61 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_mac_get_info.__UNIQUE_ID_ddebug355, ptr noundef %59, ptr noundef nonnull @.str.38, i32 noundef %conv110) #7
  br label %if.end114

if.end114:                                        ; preds = %if.then107, %do.body95, %if.end89.if.end114_crit_edge
  %62 = ptrtoint ptr %fw_port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fw_port, align 4
  %call.i379 = call i32 @fwnode_property_read_u32_array(ptr noundef %63, ptr noundef nonnull @.str.39, ptr noundef %port_mode_off, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i379)
  %tobool118.not = icmp eq i32 %call.i379, 0
  br i1 %tobool118.not, label %if.end114.if.end139_crit_edge, label %do.body120

if.end114.if.end139_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

do.body120:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_mac_get_info.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_mac_get_info, %if.then132)) #7
          to label %if.end139 [label %if.then132], !srcloc !225

if.then132:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mac_cb, align 8
  %66 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mac_id, align 2
  %conv135 = zext i8 %67 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_mac_get_info.__UNIQUE_ID_ddebug356, ptr noundef %65, ptr noundef nonnull @.str.40, i32 noundef %conv135) #7
  br label %if.end139

if.end139:                                        ; preds = %if.then132, %do.body120, %if.end114.if.end139_crit_edge
  %68 = ptrtoint ptr %fw_port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fw_port, align 4
  %tobool.not.i.i380 = icmp eq ptr %69, null
  %cmp.i.i381 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i382 = or i1 %tobool.not.i.i380, %cmp.i.i381
  br i1 %spec.select.i.i382, label %if.end139.is_of_node.exit386.thread_crit_edge, label %is_of_node.exit386

if.end139.is_of_node.exit386.thread_crit_edge:    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_of_node.exit386.thread

is_of_node.exit386:                               ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i383 = getelementptr inbounds %struct.fwnode_handle, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %ops.i383 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops.i383, align 4
  %cmp.i384 = icmp eq ptr %71, @of_fwnode_ops
  %add.ptr148 = getelementptr i8, ptr %69, i32 -12
  %spec.select400 = select i1 %cmp.i384, ptr %add.ptr148, ptr null
  br label %is_of_node.exit386.thread

is_of_node.exit386.thread:                        ; preds = %is_of_node.exit386, %if.end139.is_of_node.exit386.thread_crit_edge
  %72 = phi ptr [ null, %if.end139.is_of_node.exit386.thread_crit_edge ], [ %spec.select400, %is_of_node.exit386 ]
  %call.i387 = call i32 @__of_parse_phandle_with_args(ptr noundef %72, ptr noundef nonnull @.str.41, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %cpld_args) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i387)
  %tobool153.not = icmp eq i32 %call.i387, 0
  br i1 %tobool153.not, label %if.else174, label %do.body155

do.body155:                                       ; preds = %is_of_node.exit386.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_mac_get_info.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_mac_get_info, %if.then167)) #7
          to label %do.end173 [label %if.then167], !srcloc !225

if.then167:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mac_cb, align 8
  %75 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %mac_id, align 2
  %conv170 = zext i8 %76 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_mac_get_info.__UNIQUE_ID_ddebug357, ptr noundef %74, ptr noundef nonnull @.str.42, i32 noundef %conv170) #7
  br label %do.end173

do.end173:                                        ; preds = %if.then167, %do.body155
  %cpld_ctrl = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 8
  %77 = ptrtoint ptr %cpld_ctrl to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %cpld_ctrl, align 8
  br label %if.end219

if.else174:                                       ; preds = %is_of_node.exit386.thread
  %78 = ptrtoint ptr %cpld_args to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cpld_args, align 4
  %call176 = call ptr @syscon_node_to_regmap(ptr noundef %79) #7
  %tobool.not.i388 = icmp eq ptr %call176, null
  %cmp.i389 = icmp ugt ptr %call176, inttoptr (i32 -4096 to ptr)
  %spec.select.i390 = or i1 %tobool.not.i388, %cmp.i389
  br i1 %spec.select.i390, label %do.body179, label %if.else197

do.body179:                                       ; preds = %if.else174
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_mac_get_info.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_mac_get_info, %if.then191)) #7
          to label %do.end195 [label %if.then191], !srcloc !225

if.then191:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mac_cb, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_mac_get_info.__UNIQUE_ID_ddebug358, ptr noundef %81, ptr noundef nonnull @.str.43) #7
  br label %do.end195

do.end195:                                        ; preds = %if.then191, %do.body179
  %cpld_ctrl196 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 8
  %82 = ptrtoint ptr %cpld_ctrl196 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %cpld_ctrl196, align 8
  br label %if.end219

if.else197:                                       ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #9
  %cpld_ctrl198 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 8
  %83 = ptrtoint ptr %cpld_ctrl198 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call176, ptr %cpld_ctrl198, align 8
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %cpld_args, i32 0, i32 2
  %84 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %args, align 4
  %cpld_ctrl_reg = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 10
  %86 = ptrtoint ptr %cpld_ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %cpld_ctrl_reg, align 4
  br label %if.end219

if.else202:                                       ; preds = %is_of_node.exit.if.else202_crit_edge, %if.end31.if.else202_crit_edge
  %87 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mac_cb, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.45, i32 noundef %conv) #10
  br label %if.end219

if.end219:                                        ; preds = %if.else202, %if.else197, %do.end195, %do.end173
  %89 = ptrtoint ptr %fw_port to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %fw_port, align 4
  %call221 = call i32 @fwnode_property_read_string(ptr noundef %90, ptr noundef nonnull @.str.47, ptr noundef nonnull %media_type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %for.cond.preheader, label %if.end219.if.end233_crit_edge

if.end219.if.end233_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end233

for.cond.preheader:                               ; preds = %if.end219
  %91 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %media_type, align 4
  %call227 = call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.100, ptr noundef %92, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %for.cond.preheader.if.then229_crit_edge, label %for.inc

for.cond.preheader.if.then229_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then229

if.then229:                                       ; preds = %for.inc.2.if.then229_crit_edge, %for.inc.1.if.then229_crit_edge, %for.inc.if.then229_crit_edge, %for.cond.preheader.if.then229_crit_edge
  %i.0402.lcssa = phi i32 [ 0, %for.cond.preheader.if.then229_crit_edge ], [ 1, %for.inc.if.then229_crit_edge ], [ 2, %for.inc.1.if.then229_crit_edge ], [ 3, %for.inc.2.if.then229_crit_edge ]
  %arrayidx226 = getelementptr [4 x %struct.anon.133], ptr @media_type_defs, i32 0, i32 %i.0402.lcssa
  %93 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx226, align 4
  %95 = ptrtoint ptr %media_type1 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %media_type1, align 4
  br label %if.end233

for.inc:                                          ; preds = %for.cond.preheader
  %call227.1 = call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.101, ptr noundef %92, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227.1)
  %tobool228.not.1 = icmp eq i32 %call227.1, 0
  br i1 %tobool228.not.1, label %for.inc.if.then229_crit_edge, label %for.inc.1

for.inc.if.then229_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then229

for.inc.1:                                        ; preds = %for.inc
  %call227.2 = call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.102, ptr noundef %92, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227.2)
  %tobool228.not.2 = icmp eq i32 %call227.2, 0
  br i1 %tobool228.not.2, label %for.inc.1.if.then229_crit_edge, label %for.inc.2

for.inc.1.if.then229_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then229

for.inc.2:                                        ; preds = %for.inc.1
  %call227.3 = call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.103, ptr noundef %92, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227.3)
  %tobool228.not.3 = icmp eq i32 %call227.3, 0
  br i1 %tobool228.not.3, label %for.inc.2.if.then229_crit_edge, label %for.inc.2.if.end233_crit_edge

for.inc.2.if.end233_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end233

for.inc.2.if.then229_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then229

if.end233:                                        ; preds = %for.inc.2.if.end233_crit_edge, %if.then229, %if.end219.if.end233_crit_edge
  %96 = ptrtoint ptr %fw_port to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fw_port, align 4
  %mc_mask = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 9
  %call235 = call i32 @fwnode_property_read_u8_array(ptr noundef %97, ptr noundef nonnull @.str.48, ptr noundef %mc_mask, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %if.end233.cleanup_crit_edge, label %do.end240

if.end233.cleanup_crit_edge:                      ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end240:                                        ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %mac_cb to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mac_cb, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %99, ptr noundef nonnull @.str.50) #10
  %100 = call ptr @memset(ptr %mc_mask, i32 255, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %do.end240, %if.end233.cleanup_crit_edge, %do.end87, %if.end30
  %retval.0 = phi i32 [ -22, %do.end87 ], [ 0, %if.end30 ], [ 0, %do.end240 ], [ 0, %if.end233.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %media_type) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cpld_args) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_find_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_dsaf_fix_mac_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hns_gmac_config(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hns_xgmac_config(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !62, !63, !64, !65, !67, !69, !71, !72, !73, !75, !77, !78, !80, !82, !83, !85, !87, !88, !90, !91, !93, !94, !95, !97, !99, !101, !102, !103, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !122, !124, !125, !126, !127, !129, !130, !131, !133, !135, !136, !137, !138, !140, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213}
!llvm.module.flags = !{!215, !216, !217, !218, !219, !220, !221, !222}
!llvm.ident = !{!223}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 147, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hns_mac_adjust_link._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hns_mac_adjust_link._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 171, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hns_mac_get_inner_port_num._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @hns_mac_get_inner_port_num._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 179, i32 4}
!15 = !{ptr @hns_mac_get_inner_port_num._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @hns_mac_get_inner_port_num._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 186, i32 3}
!19 = !{ptr @hns_mac_get_inner_port_num._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @hns_mac_get_inner_port_num._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @hns_mac_get_inner_port_num._entry.13, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 192, i32 3}
!23 = !{ptr @hns_mac_get_inner_port_num._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @hns_mac_get_inner_port_num._entry.15, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 225, i32 3}
!26 = !{ptr @hns_mac_get_inner_port_num._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 343, i32 4}
!29 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @hns_mac_set_multi._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @hns_mac_set_multi._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 589, i32 3}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hns_mac_set_autoneg._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @hns_mac_set_autoneg._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 613, i32 4}
!39 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @hns_mac_set_pauseparam._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @hns_mac_set_pauseparam._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 1066, i32 41}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 1068, i32 4}
!46 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @hns_mac_init._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @hns_mac_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 1073, i32 4}
!51 = !{ptr @hns_mac_init._entry.26, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @hns_mac_init._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 1012, i32 3}
!55 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @hns_mac_get_cfg._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @hns_mac_get_cfg._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 838, i32 47}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 847, i32 4}
!62 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @hns_mac_get_info.__UNIQUE_ID_ddebug353, !61, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!65 = !{ptr @hns_mac_get_info.__UNIQUE_ID_ddebug354, !66, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 865, i32 4}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 871, i32 11}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 875, i32 4}
!71 = !{ptr @hns_mac_get_info._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @hns_mac_get_info._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 881, i32 13}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 884, i32 4}
!77 = !{ptr @hns_mac_get_info.__UNIQUE_ID_ddebug355, !76, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 890, i32 13}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 893, i32 4}
!82 = !{ptr @hns_mac_get_info.__UNIQUE_ID_ddebug356, !81, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 899, i32 33}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 902, i32 4}
!87 = !{ptr @hns_mac_get_info.__UNIQUE_ID_ddebug357, !86, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 908, i32 5}
!90 = !{ptr @hns_mac_get_info.__UNIQUE_ID_ddebug358, !89, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 925, i32 3}
!93 = !{ptr @hns_mac_get_info._entry.44, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @hns_mac_get_info._entry_ptr.46, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 929, i32 52}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 940, i32 53}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 942, i32 3}
!101 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @hns_mac_get_info._entry.49, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @hns_mac_get_info._entry_ptr.52, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @mac_phy_to_speed, !105, !"mac_phy_to_speed", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 25, i32 18}
!106 = distinct !{null, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 744, i32 21}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 757, i32 3}
!110 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @hns_mac_register_phy._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @hns_mac_register_phy._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 764, i32 3}
!115 = !{ptr @hns_mac_register_phy._entry.56, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @hns_mac_register_phy._entry_ptr.58, !114, !"_entry_ptr", i1 false, i1 false}
!117 = distinct !{null, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 772, i32 3}
!119 = distinct !{null, !118, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!120 = distinct !{null, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 672, i32 41}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 674, i32 3}
!124 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @hns_mac_phy_parse_addr._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @hns_mac_phy_parse_addr._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 679, i32 3}
!129 = !{ptr @hns_mac_phy_parse_addr._entry.63, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @hns_mac_phy_parse_addr._entry_ptr.65, !128, !"_entry_ptr", i1 false, i1 false}
!131 = distinct !{null, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 696, i32 7}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 719, i32 3}
!135 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @hns_mac_register_phydev._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @hns_mac_register_phydev._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = distinct !{null, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 726, i32 2}
!140 = distinct !{null, !139, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!141 = distinct !{null, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../include/linux/phy.h", i32 211, i32 10}
!143 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../include/linux/phy.h", i32 213, i32 10}
!145 = distinct !{null, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../include/linux/phy.h", i32 215, i32 10}
!147 = distinct !{null, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../include/linux/phy.h", i32 217, i32 10}
!149 = distinct !{null, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/linux/phy.h", i32 219, i32 10}
!151 = distinct !{null, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../include/linux/phy.h", i32 221, i32 10}
!153 = distinct !{null, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../include/linux/phy.h", i32 223, i32 10}
!155 = distinct !{null, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../include/linux/phy.h", i32 225, i32 10}
!157 = distinct !{null, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../include/linux/phy.h", i32 227, i32 10}
!159 = distinct !{null, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../include/linux/phy.h", i32 229, i32 10}
!161 = distinct !{null, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../include/linux/phy.h", i32 231, i32 10}
!163 = distinct !{null, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../include/linux/phy.h", i32 233, i32 10}
!165 = distinct !{null, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../include/linux/phy.h", i32 235, i32 10}
!167 = distinct !{null, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../include/linux/phy.h", i32 237, i32 10}
!169 = distinct !{null, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../include/linux/phy.h", i32 239, i32 10}
!171 = distinct !{null, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../include/linux/phy.h", i32 241, i32 10}
!173 = distinct !{null, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../include/linux/phy.h", i32 243, i32 10}
!175 = distinct !{null, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../include/linux/phy.h", i32 245, i32 10}
!177 = distinct !{null, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../include/linux/phy.h", i32 247, i32 10}
!179 = distinct !{null, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../include/linux/phy.h", i32 249, i32 10}
!181 = distinct !{null, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../include/linux/phy.h", i32 251, i32 10}
!183 = distinct !{null, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../include/linux/phy.h", i32 253, i32 10}
!185 = distinct !{null, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../include/linux/phy.h", i32 255, i32 10}
!187 = distinct !{null, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../include/linux/phy.h", i32 257, i32 10}
!189 = distinct !{null, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../include/linux/phy.h", i32 259, i32 10}
!191 = distinct !{null, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../include/linux/phy.h", i32 261, i32 10}
!193 = distinct !{null, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../include/linux/phy.h", i32 263, i32 10}
!195 = distinct !{null, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../include/linux/phy.h", i32 265, i32 10}
!197 = distinct !{null, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../include/linux/phy.h", i32 267, i32 10}
!199 = distinct !{null, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../include/linux/phy.h", i32 269, i32 10}
!201 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../include/linux/phy.h", i32 271, i32 10}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 796, i32 27}
!205 = !{ptr @.str.102, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 797, i32 27}
!207 = !{ptr @.str.103, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 798, i32 30}
!209 = !{ptr @media_type_defs, !210, !"media_type_defs", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 794, i32 3}
!211 = !{ptr @g_mac_mode_100, !212, !"g_mac_mode_100", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 39, i32 28}
!213 = !{ptr @g_mac_mode_1000, !214, !"g_mac_mode_1000", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_mac.c", i32 44, i32 28}
!215 = !{i32 1, !"wchar_size", i32 2}
!216 = !{i32 1, !"min_enum_size", i32 4}
!217 = !{i32 8, !"branch-target-enforcement", i32 0}
!218 = !{i32 8, !"sign-return-address", i32 0}
!219 = !{i32 8, !"sign-return-address-all", i32 0}
!220 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!221 = !{i32 7, !"uwtable", i32 1}
!222 = !{i32 7, !"frame-pointer", i32 2}
!223 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!224 = !{!"auto-init"}
!225 = !{i64 2148976502, i64 2148976507, i64 2148976520, i64 2148976564, i64 2148976598, i64 2148976619}
