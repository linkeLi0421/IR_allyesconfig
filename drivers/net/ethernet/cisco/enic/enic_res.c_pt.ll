; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/cisco/enic/enic_res.c_pt.bc'
source_filename = "../drivers/net/ethernet/cisco/enic/enic_res.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.enic = type { ptr, ptr, %struct.vnic_enet_config, [6 x %struct.vnic_dev_bar], ptr, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.work_struct, [18 x %struct.msix_entry], [18 x %struct.enic_msix_entry], i32, %struct.spinlock, [6 x i8], i32, i32, i32, i32, i32, %struct.enic_rx_coal, i32, i32, i16, %struct.spinlock, i8, ptr, [76 x i8], [8 x %struct.vnic_wq], [8 x %struct.spinlock], i32, i16, i16, [24 x i8], [8 x %struct.vnic_rq], i32, %struct.vxlan_offload, i64, i64, [16 x %struct.napi_struct], [72 x i8], [18 x %struct.vnic_intr], i32, ptr, [32 x i8], [16 x %struct.vnic_cq], i32, %struct.enic_rfs_flw_tbl, i32, [40 x i8], %struct.vnic_gen_stats, [96 x i8] }
%struct.vnic_enet_config = type { i32, i32, i32, i16, i16, i8, i8, [16 x i8], i32, i16, i16, i16 }
%struct.vnic_dev_bar = type { ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.msix_entry = type { i32, i16 }
%struct.enic_msix_entry = type { i32, [24 x i8], ptr, ptr, ptr }
%struct.enic_rx_coal = type { i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.vnic_wq = type { i32, ptr, ptr, %struct.vnic_dev_ring, [64 x ptr], ptr, ptr, i32 }
%struct.vnic_dev_ring = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.vnic_rq = type { i32, ptr, ptr, %struct.vnic_dev_ring, [64 x ptr], ptr, ptr, ptr, i32 }
%struct.vxlan_offload = type { i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vnic_intr = type { i32, ptr, ptr }
%struct.vnic_cq = type { i32, ptr, ptr, %struct.vnic_dev_ring, i32, i32, i32, %struct.vnic_rx_bytes_counter, i32, i32, i64 }
%struct.vnic_rx_bytes_counter = type { i32, i32 }
%struct.enic_rfs_flw_tbl = type { i16, i32, i16, [1024 x %struct.hlist_head], %struct.spinlock, %struct.timer_list }
%struct.hlist_head = type { ptr }
%struct.vnic_gen_stats = type { i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.114, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.114 = type { ptr }

@enic_get_vnic_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 50, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error getting MAC addr, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"enic_get_vnic_config\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/cisco/enic/enic_res.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry_ptr = internal global ptr @enic_get_vnic_config._entry, section ".printk_index", align 4
@enic_get_vnic_config._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 66, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error getting %s, %d\0A\00", [42 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry_ptr.7 = internal global ptr @enic_get_vnic_config._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 67, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry_ptr.10 = internal global ptr @enic_get_vnic_config._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wq_desc_count\00", [18 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 68, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry_ptr.13 = internal global ptr @enic_get_vnic_config._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rq_desc_count\00", [18 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 69, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry_ptr.16 = internal global ptr @enic_get_vnic_config._entry.15, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mtu\00", [28 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 70, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry_ptr.19 = internal global ptr @enic_get_vnic_config._entry.18, section ".printk_index", align 4
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"intr_timer_type\00", [16 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 71, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry_ptr.22 = internal global ptr @enic_get_vnic_config._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"intr_mode\00", [22 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 72, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry_ptr.25 = internal global ptr @enic_get_vnic_config._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"intr_timer_usec\00", [16 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 73, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry_ptr.28 = internal global ptr @enic_get_vnic_config._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"loop_tag\00", [23 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 74, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry_ptr.31 = internal global ptr @enic_get_vnic_config._entry.30, section ".printk_index", align 4
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"num_arfs\00", [23 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 99, ptr @.str.35, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vNIC MAC addr %pM wq/rq %d/%d mtu %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry_ptr.36 = internal global ptr @enic_get_vnic_config._entry.33, section ".printk_index", align 4
@enic_get_vnic_config._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 117, ptr @.str.35, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"vNIC csum tx/rx %s/%s tso/lro %s/%s rss %s intr mode %s type %s timer %d usec loopback tag 0x%04x\0A\00", [61 x i8] zeroinitializer }, align 32
@enic_get_vnic_config._entry_ptr.39 = internal global ptr @enic_get_vnic_config._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INTx\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"any\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"min\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@enic_add_vlan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't add vlan id, %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enic_add_vlan\00", [18 x i8] zeroinitializer }, align 32
@enic_add_vlan._entry_ptr = internal global ptr @enic_add_vlan._entry, section ".printk_index", align 4
@enic_del_vlan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 143, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't delete vlan id, %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enic_del_vlan\00", [18 x i8] zeroinitializer }, align 32
@enic_del_vlan._entry_ptr = internal global ptr @enic_del_vlan._entry, section ".printk_index", align 4
@enic_get_res_counts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 212, ptr @.str.35, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"vNIC resources avail: wq %d rq %d cq %d intr %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"enic_get_res_counts\00", [44 x i8] zeroinitializer }, align 32
@enic_get_res_counts._entry_ptr = internal global ptr @enic_get_res_counts._entry, section ".printk_index", align 4
@enic_alloc_vnic_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 332, ptr @.str.35, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"vNIC resources used:  wq %d rq %d cq %d intr %d intr mode %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"enic_alloc_vnic_resources\00", [38 x i8] zeroinitializer }, align 32
@enic_alloc_vnic_resources._entry_ptr = internal global ptr @enic_alloc_vnic_resources._entry, section ".printk_index", align 4
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"legacy PCI INTx\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MSI-X\00", [26 x i8] zeroinitializer }, align 32
@enic_alloc_vnic_resources._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.55, ptr @.str.2, i32 379, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to hook legacy pba resource\0A\00", [60 x i8] zeroinitializer }, align 32
@enic_alloc_vnic_resources._entry_ptr.60 = internal global ptr @enic_alloc_vnic_resources._entry.58, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 49, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 66, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 67, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 68, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 69, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 70, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 71, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 72, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 73, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 74, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 97, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 101, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 130, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 143, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 209, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 325, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private constant [46 x i8] c"../drivers/net/ethernet/cisco/enic/enic_res.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 378, i32 3 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @enic_add_vlan._entry, ptr @enic_add_vlan._entry_ptr, ptr @enic_alloc_vnic_resources._entry, ptr @enic_alloc_vnic_resources._entry.58, ptr @enic_alloc_vnic_resources._entry_ptr, ptr @enic_alloc_vnic_resources._entry_ptr.60, ptr @enic_del_vlan._entry, ptr @enic_del_vlan._entry_ptr, ptr @enic_get_res_counts._entry, ptr @enic_get_res_counts._entry_ptr, ptr @enic_get_vnic_config._entry, ptr @enic_get_vnic_config._entry.12, ptr @enic_get_vnic_config._entry.15, ptr @enic_get_vnic_config._entry.18, ptr @enic_get_vnic_config._entry.21, ptr @enic_get_vnic_config._entry.24, ptr @enic_get_vnic_config._entry.27, ptr @enic_get_vnic_config._entry.30, ptr @enic_get_vnic_config._entry.33, ptr @enic_get_vnic_config._entry.37, ptr @enic_get_vnic_config._entry.5, ptr @enic_get_vnic_config._entry.9, ptr @enic_get_vnic_config._entry_ptr, ptr @enic_get_vnic_config._entry_ptr.10, ptr @enic_get_vnic_config._entry_ptr.13, ptr @enic_get_vnic_config._entry_ptr.16, ptr @enic_get_vnic_config._entry_ptr.19, ptr @enic_get_vnic_config._entry_ptr.22, ptr @enic_get_vnic_config._entry_ptr.25, ptr @enic_get_vnic_config._entry_ptr.28, ptr @enic_get_vnic_config._entry_ptr.31, ptr @enic_get_vnic_config._entry_ptr.36, ptr @enic_get_vnic_config._entry_ptr.39, ptr @enic_get_vnic_config._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_get_vnic_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_get_vnic_config._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_get_vnic_config._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_get_vnic_config._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_get_vnic_config._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_get_vnic_config._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_get_vnic_config._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_get_vnic_config._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_get_vnic_config._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_get_vnic_config._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_get_vnic_config._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_get_vnic_config._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_add_vlan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_del_vlan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_get_res_counts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_alloc_vnic_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_alloc_vnic_resources._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_get_vnic_config(ptr noundef %enic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 2
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 128
  %mac_addr = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 13
  %call = tail call i32 @vnic_dev_get_mac_addr(ptr noundef %1, ptr noundef %mac_addr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef %call) #8
  br label %cleanup

do.body2:                                         ; preds = %entry
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 128
  %call4 = tail call i32 @vnic_dev_spec(ptr noundef %5, i32 noundef 0, i32 noundef 4, ptr noundef %config) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body14, label %do.end9

do.end9:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i370 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %6 = ptrtoint ptr %pdev.i370 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i370, align 4
  %dev.i371 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i371, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, i32 noundef %call4) #8
  br label %cleanup

do.body14:                                        ; preds = %do.body2
  %8 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdev, align 128
  %wq_desc_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 2, i32 1
  %call16 = tail call i32 @vnic_dev_spec(ptr noundef %9, i32 noundef 4, i32 noundef 4, ptr noundef %wq_desc_count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body26, label %do.end21

do.end21:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i372 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %10 = ptrtoint ptr %pdev.i372 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i372, align 4
  %dev.i373 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i373, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11, i32 noundef %call16) #8
  br label %cleanup

do.body26:                                        ; preds = %do.body14
  %12 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdev, align 128
  %rq_desc_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 2, i32 2
  %call28 = tail call i32 @vnic_dev_spec(ptr noundef %13, i32 noundef 8, i32 noundef 4, ptr noundef %rq_desc_count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.body38, label %do.end33

do.end33:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i374 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %14 = ptrtoint ptr %pdev.i374 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i374, align 4
  %dev.i375 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i375, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.14, i32 noundef %call28) #8
  br label %cleanup

do.body38:                                        ; preds = %do.body26
  %16 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdev, align 128
  %mtu = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 2, i32 3
  %call40 = tail call i32 @vnic_dev_spec(ptr noundef %17, i32 noundef 12, i32 noundef 2, ptr noundef %mtu) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.body50, label %do.end45

do.end45:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i376 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %18 = ptrtoint ptr %pdev.i376 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i376, align 4
  %dev.i377 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i377, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.17, i32 noundef %call40) #8
  br label %cleanup

do.body50:                                        ; preds = %do.body38
  %20 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vdev, align 128
  %intr_timer_type = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 2, i32 5
  %call52 = tail call i32 @vnic_dev_spec(ptr noundef %21, i32 noundef 16, i32 noundef 1, ptr noundef %intr_timer_type) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.body62, label %do.end57

do.end57:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i378 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %22 = ptrtoint ptr %pdev.i378 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i378, align 4
  %dev.i379 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i379, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, i32 noundef %call52) #8
  br label %cleanup

do.body62:                                        ; preds = %do.body50
  %24 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vdev, align 128
  %intr_mode = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 2, i32 6
  %call64 = tail call i32 @vnic_dev_spec(ptr noundef %25, i32 noundef 17, i32 noundef 1, ptr noundef %intr_mode) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %do.body74, label %do.end69

do.end69:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i380 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %26 = ptrtoint ptr %pdev.i380 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev.i380, align 4
  %dev.i381 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i381, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.23, i32 noundef %call64) #8
  br label %cleanup

do.body74:                                        ; preds = %do.body62
  %28 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vdev, align 128
  %intr_timer_usec = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 2, i32 8
  %call76 = tail call i32 @vnic_dev_spec(ptr noundef %29, i32 noundef 36, i32 noundef 4, ptr noundef %intr_timer_usec) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %do.body86, label %do.end81

do.end81:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i382 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %30 = ptrtoint ptr %pdev.i382 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i382, align 4
  %dev.i383 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i383, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.26, i32 noundef %call76) #8
  br label %cleanup

do.body86:                                        ; preds = %do.body74
  %32 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vdev, align 128
  %loop_tag = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 2, i32 9
  %call88 = tail call i32 @vnic_dev_spec(ptr noundef %33, i32 noundef 40, i32 noundef 2, ptr noundef %loop_tag) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %do.body98, label %do.end93

do.end93:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i384 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %34 = ptrtoint ptr %pdev.i384 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev.i384, align 4
  %dev.i385 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i385, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.29, i32 noundef %call88) #8
  br label %cleanup

do.body98:                                        ; preds = %do.body86
  %36 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vdev, align 128
  %num_arfs = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 2, i32 11
  %call100 = tail call i32 @vnic_dev_spec(ptr noundef %37, i32 noundef 44, i32 noundef 2, ptr noundef %num_arfs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %do.end109, label %do.end105

do.end105:                                        ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i386 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %38 = ptrtoint ptr %pdev.i386 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev.i386, align 4
  %dev.i387 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i387, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32, i32 noundef %call100) #8
  br label %cleanup

do.end109:                                        ; preds = %do.body98
  %40 = ptrtoint ptr %wq_desc_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wq_desc_count, align 4
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 64)
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 4096)
  %and = and i32 %43, 8160
  %44 = ptrtoint ptr %wq_desc_count to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and, ptr %wq_desc_count, align 4
  %45 = ptrtoint ptr %rq_desc_count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rq_desc_count, align 4
  %47 = tail call i32 @llvm.umax.i32(i32 %46, i32 64)
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 4096)
  %and134 = and i32 %48, 8160
  %49 = ptrtoint ptr %rq_desc_count to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and134, ptr %rq_desc_count, align 4
  %50 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp136 = icmp eq i16 %51, 0
  br i1 %cmp136, label %if.then138, label %do.end109.if.end140_crit_edge

do.end109.if.end140_crit_edge:                    ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140

if.then138:                                       ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %mtu to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1500, ptr %mtu, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %do.end109.if.end140_crit_edge
  %53 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %mtu, align 4
  %55 = tail call i16 @llvm.umax.i16(i16 %54, i16 68)
  %56 = tail call i16 @llvm.umin.i16(i16 %55, i16 9000)
  %57 = ptrtoint ptr %mtu to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %mtu, align 4
  %58 = ptrtoint ptr %intr_timer_usec to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %intr_timer_usec, align 4
  %60 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vdev, align 128
  %call169 = tail call i32 @vnic_dev_get_intr_coal_timer_max(ptr noundef %61) #5
  %62 = tail call i32 @llvm.umin.i32(i32 %59, i32 %call169)
  %63 = ptrtoint ptr %intr_timer_usec to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %intr_timer_usec, align 4
  %pdev.i388 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %64 = ptrtoint ptr %pdev.i388 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev.i388, align 4
  %dev.i389 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %66 = ptrtoint ptr %wq_desc_count to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %wq_desc_count, align 4
  %68 = ptrtoint ptr %rq_desc_count to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rq_desc_count, align 4
  %70 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %mtu, align 4
  %conv187 = zext i16 %71 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i389, ptr noundef nonnull @.str.34, ptr noundef %mac_addr, i32 noundef %67, i32 noundef %69, i32 noundef %conv187) #8
  %72 = ptrtoint ptr %pdev.i388 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev.i388, align 4
  %dev.i391 = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %74 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %config, align 8
  %and194 = and i32 %75, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  %cond198 = select i1 %tobool195.not, ptr @.str.41, ptr @.str.40
  %and201 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  %cond205 = select i1 %tobool202.not, ptr @.str.41, ptr @.str.40
  %and208 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  %cond212 = select i1 %tobool209.not, ptr @.str.41, ptr @.str.40
  %and215 = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  %cond219 = select i1 %tobool216.not, ptr @.str.41, ptr @.str.40
  %and222 = and i32 %75, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222)
  %tobool223.not = icmp eq i32 %and222, 0
  %cond226 = select i1 %tobool223.not, ptr @.str.41, ptr @.str.40
  %76 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %intr_mode, align 1
  %78 = zext i8 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values)
  switch i8 %77, label %cond.false238 [
    i8 2, label %if.end140.cond.end246_crit_edge
    i8 1, label %cond.end246.fold.split
  ]

if.end140.cond.end246_crit_edge:                  ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end246

cond.false238:                                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp241 = icmp eq i8 %77, 0
  %cond243 = select i1 %cmp241, ptr @.str.44, ptr @.str.45
  br label %cond.end246

cond.end246.fold.split:                           ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end246

cond.end246:                                      ; preds = %cond.end246.fold.split, %cond.false238, %if.end140.cond.end246_crit_edge
  %cond247 = phi ptr [ @.str.42, %if.end140.cond.end246_crit_edge ], [ %cond243, %cond.false238 ], [ @.str.43, %cond.end246.fold.split ]
  %79 = ptrtoint ptr %intr_timer_type to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %intr_timer_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp250 = icmp eq i8 %80, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %80)
  %cmp256 = icmp eq i8 %80, 1
  %cond258 = select i1 %cmp256, ptr @.str.47, ptr @.str.45
  %cond260 = select i1 %cmp250, ptr @.str.46, ptr %cond258
  %81 = ptrtoint ptr %intr_timer_usec to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %intr_timer_usec, align 4
  %83 = ptrtoint ptr %loop_tag to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %loop_tag, align 4
  %conv263 = zext i16 %84 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i391, ptr noundef nonnull @.str.38, ptr noundef nonnull %cond198, ptr noundef nonnull %cond205, ptr noundef nonnull %cond212, ptr noundef nonnull %cond219, ptr noundef nonnull %cond226, ptr noundef nonnull %cond247, ptr noundef nonnull %cond260, i32 noundef %82, i32 noundef %conv263) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end246, %do.end105, %do.end93, %do.end81, %do.end69, %do.end57, %do.end45, %do.end33, %do.end21, %do.end9, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call4, %do.end9 ], [ %call16, %do.end21 ], [ %call28, %do.end33 ], [ %call40, %do.end45 ], [ %call52, %do.end57 ], [ %call64, %do.end69 ], [ %call76, %do.end81 ], [ %call88, %do.end93 ], [ %call100, %do.end105 ], [ 0, %cond.end246 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_get_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_spec(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_get_intr_coal_timer_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_add_vlan(ptr nocapture noundef readonly %enic, i16 noundef zeroext %vlanid) local_unnamed_addr #0 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #5
  %conv = zext i16 %vlanid to i64
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #5
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1, align 8
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 128
  %call = call i32 @vnic_dev_cmd(ptr noundef %3, i32 noundef 1090535438, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.48, i32 noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_cmd(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_del_vlan(ptr nocapture noundef readonly %enic, i16 noundef zeroext %vlanid) local_unnamed_addr #0 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #5
  %conv = zext i16 %vlanid to i64
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #5
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1, align 8
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 128
  %call = call i32 @vnic_dev_cmd(ptr noundef %3, i32 noundef 1090535439, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.50, i32 noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_set_nic_cfg(ptr nocapture noundef readonly %enic, i8 noundef zeroext %rss_default_cpu, i8 noundef zeroext %rss_hash_type, i8 noundef zeroext %rss_hash_bits, i8 noundef zeroext %rss_base_cpu, i8 noundef zeroext %rss_enable, i8 noundef zeroext %tso_ipid_split_en, i8 noundef zeroext %ig_vlan_strip_en) local_unnamed_addr #0 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #5
  %conv.i = zext i8 %rss_default_cpu to i32
  %conv1.i = zext i8 %rss_hash_type to i32
  %shl.i = shl nuw nsw i32 %conv1.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %0 = and i8 %rss_hash_bits, 7
  %and4.i = zext i8 %0 to i32
  %shl5.i = shl nuw nsw i32 %and4.i, 16
  %or6.i = or i32 %shl5.i, %or.i
  %1 = and i8 %rss_base_cpu, 7
  %and8.i = zext i8 %1 to i32
  %shl9.i = shl nuw nsw i32 %and8.i, 19
  %or10.i = or i32 %or6.i, %shl9.i
  %2 = and i8 %rss_enable, 1
  %and12.i = zext i8 %2 to i32
  %shl13.i = shl nuw nsw i32 %and12.i, 22
  %or14.i = or i32 %or10.i, %shl13.i
  %3 = and i8 %tso_ipid_split_en, 1
  %and16.i = zext i8 %3 to i32
  %shl17.i = shl nuw nsw i32 %and16.i, 23
  %or18.i = or i32 %or14.i, %shl17.i
  %4 = and i8 %ig_vlan_strip_en, 1
  %and20.i = zext i8 %4 to i32
  %shl21.i = shl nuw nsw i32 %and20.i, 24
  %or22.i = or i32 %or18.i, %shl21.i
  %conv = zext i32 %or22.i to i64
  %5 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %a0, align 8
  %6 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %a1, align 8
  %7 = and i8 %rss_hash_type, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool.not, i32 1090633744, i32 1073856528
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %8 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdev, align 128
  %call = call i32 @vnic_dev_cmd(ptr noundef %9, i32 noundef %spec.select, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_set_rss_key(ptr nocapture noundef readonly %enic, i32 noundef %key_pa, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #5
  %conv = zext i32 %key_pa to i64
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #5
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %len, ptr %a1, align 8
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 128
  %call = call i32 @vnic_dev_cmd(ptr noundef %3, i32 noundef 1073758225, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_set_rss_cpu(ptr nocapture noundef readonly %enic, i32 noundef %cpu_pa, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #5
  %conv = zext i32 %cpu_pa to i64
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #5
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %len, ptr %a1, align 8
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 128
  %call = call i32 @vnic_dev_cmd(ptr noundef %3, i32 noundef 1073758226, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enic_free_vnic_resources(ptr noundef %enic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 29
  %0 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp40.not = icmp eq i32 %1, 0
  br i1 %cmp40.not, label %entry.for.cond1.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %rq_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 34
  %2 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp242.not = icmp eq i32 %3, 0
  br i1 %cmp242.not, label %for.cond1.preheader.for.cond8.preheader_crit_edge, label %for.cond1.preheader.for.body3_crit_edge

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.cond1.preheader.for.cond8.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond8.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.041 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.enic, ptr %enic, i32 0, i32 27, i32 %i.041
  tail call void @vnic_wq_free(ptr noundef %arrayidx) #5
  %inc = add nuw i32 %i.041, 1
  %4 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wq_count, align 32
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond1.preheader_crit_edge

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body3.for.cond8.preheader_crit_edge, %for.cond1.preheader.for.cond8.preheader_crit_edge
  %cq_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 45
  %6 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cq_count, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp944.not = icmp eq i32 %7, 0
  br i1 %cmp944.not, label %for.cond8.preheader.for.cond15.preheader_crit_edge, label %for.cond8.preheader.for.body10_crit_edge

for.cond8.preheader.for.body10_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body10

for.cond8.preheader.for.cond15.preheader_crit_edge: ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond15.preheader

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %i.143 = phi i32 [ %inc6, %for.body3.for.body3_crit_edge ], [ 0, %for.cond1.preheader.for.body3_crit_edge ]
  %arrayidx4 = getelementptr %struct.enic, ptr %enic, i32 0, i32 33, i32 %i.143
  tail call void @vnic_rq_free(ptr noundef %arrayidx4) #5
  %inc6 = add nuw i32 %i.143, 1
  %8 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rq_count, align 32
  %cmp2 = icmp ult i32 %inc6, %9
  br i1 %cmp2, label %for.body3.for.body3_crit_edge, label %for.body3.for.cond8.preheader_crit_edge

for.body3.for.cond8.preheader_crit_edge:          ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond8.preheader

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3

for.cond15.preheader:                             ; preds = %for.body10.for.cond15.preheader_crit_edge, %for.cond8.preheader.for.cond15.preheader_crit_edge
  %intr_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 41
  %10 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1646.not = icmp eq i32 %11, 0
  br i1 %cmp1646.not, label %for.cond15.preheader.for.end21_crit_edge, label %for.cond15.preheader.for.body17_crit_edge

for.cond15.preheader.for.body17_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body17

for.cond15.preheader.for.end21_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end21

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.cond8.preheader.for.body10_crit_edge
  %i.245 = phi i32 [ %inc13, %for.body10.for.body10_crit_edge ], [ 0, %for.cond8.preheader.for.body10_crit_edge ]
  %arrayidx11 = getelementptr %struct.enic, ptr %enic, i32 0, i32 44, i32 %i.245
  tail call void @vnic_cq_free(ptr noundef %arrayidx11) #5
  %inc13 = add nuw i32 %i.245, 1
  %12 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cq_count, align 128
  %cmp9 = icmp ult i32 %inc13, %13
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.for.cond15.preheader_crit_edge

for.body10.for.cond15.preheader_crit_edge:        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond15.preheader

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body10

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.cond15.preheader.for.body17_crit_edge
  %i.347 = phi i32 [ %inc20, %for.body17.for.body17_crit_edge ], [ 0, %for.cond15.preheader.for.body17_crit_edge ]
  %arrayidx18 = getelementptr %struct.enic, ptr %enic, i32 0, i32 40, i32 %i.347
  tail call void @vnic_intr_free(ptr noundef %arrayidx18) #5
  %inc20 = add nuw i32 %i.347, 1
  %14 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %intr_count, align 8
  %cmp16 = icmp ult i32 %inc20, %15
  br i1 %cmp16, label %for.body17.for.body17_crit_edge, label %for.body17.for.end21_crit_edge

for.body17.for.end21_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end21

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17

for.end21:                                        ; preds = %for.body17.for.end21_crit_edge, %for.cond15.preheader.for.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_wq_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_rq_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_cq_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_intr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enic_get_res_counts(ptr nocapture noundef %enic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 128
  %call = tail call i32 @vnic_dev_get_res_count(ptr noundef %1, i32 noundef 1) #5
  %wq_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 29
  %2 = ptrtoint ptr %wq_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %wq_count, align 32
  %3 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdev, align 128
  %call2 = tail call i32 @vnic_dev_get_res_count(ptr noundef %4, i32 noundef 2) #5
  %rq_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 34
  %5 = ptrtoint ptr %rq_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call2, ptr %rq_count, align 32
  %6 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdev, align 128
  %call4 = tail call i32 @vnic_dev_get_res_count(ptr noundef %7, i32 noundef 3) #5
  %cq_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 45
  %8 = ptrtoint ptr %cq_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call4, ptr %cq_count, align 128
  %9 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vdev, align 128
  %call6 = tail call i32 @vnic_dev_get_res_count(ptr noundef %10, i32 noundef 10) #5
  %intr_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 41
  %11 = ptrtoint ptr %intr_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call6, ptr %intr_count, align 8
  %pdev.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wq_count, align 32
  %16 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rq_count, align 32
  %18 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cq_count, align 128
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.52, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %call6) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_get_res_count(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enic_init_vnic_resources(ptr noundef %enic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 128
  %call = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %1) #5
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge70
  ]

entry.sw.bb_crit_edge70:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge70
  %intr_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 41
  %3 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %intr_count, align 8
  %sub = add i32 %4, -2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %error_interrupt_enable.0 = phi i32 [ 1, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %error_interrupt_offset.0 = phi i32 [ %sub, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %rq_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 34
  %5 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp62.not = icmp eq i32 %6, 0
  br i1 %cmp62.not, label %sw.epilog.for.cond1.preheader_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.for.cond1.preheader_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %sw.epilog.for.cond1.preheader_crit_edge
  %wq_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 29
  %7 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp264.not = icmp eq i32 %8, 0
  br i1 %cmp264.not, label %for.cond1.preheader.for.cond9.preheader_crit_edge, label %for.cond1.preheader.for.body3_crit_edge

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.cond1.preheader.for.cond9.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %i.063 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sw.epilog.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.enic, ptr %enic, i32 0, i32 33, i32 %i.063
  tail call void @vnic_rq_init(ptr noundef %arrayidx, i32 noundef %i.063, i32 noundef %error_interrupt_enable.0, i32 noundef %error_interrupt_offset.0) #5
  %inc = add nuw i32 %i.063, 1
  %9 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rq_count, align 32
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond1.preheader_crit_edge

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond9.preheader:                              ; preds = %for.body3.for.cond9.preheader_crit_edge, %for.cond1.preheader.for.cond9.preheader_crit_edge
  %cq_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 45
  %11 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cq_count, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1066.not = icmp eq i32 %12, 0
  br i1 %cmp1066.not, label %for.cond9.preheader.for.end18_crit_edge, label %for.body11.lr.ph

for.cond9.preheader.for.end18_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end18

for.body11.lr.ph:                                 ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cond = icmp eq i32 %call, 3
  br label %for.body11

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %i.165 = phi i32 [ %inc7, %for.body3.for.body3_crit_edge ], [ 0, %for.cond1.preheader.for.body3_crit_edge ]
  %13 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rq_count, align 32
  %add = add i32 %14, %i.165
  %arrayidx5 = getelementptr %struct.enic, ptr %enic, i32 0, i32 27, i32 %i.165
  tail call void @vnic_wq_init(ptr noundef %arrayidx5, i32 noundef %add, i32 noundef %error_interrupt_enable.0, i32 noundef %error_interrupt_offset.0) #5
  %inc7 = add nuw i32 %i.165, 1
  %15 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wq_count, align 32
  %cmp2 = icmp ult i32 %inc7, %16
  br i1 %cmp2, label %for.body3.for.body3_crit_edge, label %for.body3.for.cond9.preheader_crit_edge

for.body3.for.cond9.preheader_crit_edge:          ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.body11.lr.ph
  %i.267 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc17, %for.body11.for.body11_crit_edge ]
  %i.2. = select i1 %cond, i32 %i.267, i32 0
  %arrayidx15 = getelementptr %struct.enic, ptr %enic, i32 0, i32 44, i32 %i.267
  tail call void @vnic_cq_init(ptr noundef %arrayidx15, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %i.2., i64 noundef 0) #5
  %inc17 = add nuw i32 %i.267, 1
  %17 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cq_count, align 128
  %cmp10 = icmp ult i32 %inc17, %18
  br i1 %cmp10, label %for.body11.for.body11_crit_edge, label %for.body11.for.end18_crit_edge

for.body11.for.end18_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end18

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11

for.end18:                                        ; preds = %for.body11.for.end18_crit_edge, %for.cond9.preheader.for.end18_crit_edge
  %19 = and i32 %call, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %switch = icmp eq i32 %19, 2
  %. = zext i1 %switch to i32
  %intr_count23 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 41
  %20 = ptrtoint ptr %intr_count23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %intr_count23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2468.not = icmp eq i32 %21, 0
  br i1 %cmp2468.not, label %for.end18.for.end30_crit_edge, label %for.body25.lr.ph

for.end18.for.end30_crit_edge:                    ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30

for.body25.lr.ph:                                 ; preds = %for.end18
  %intr_timer_usec = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 2, i32 8
  %intr_timer_type = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 2, i32 5
  br label %for.body25

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %for.body25.lr.ph
  %i.369 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc29, %for.body25.for.body25_crit_edge ]
  %arrayidx26 = getelementptr %struct.enic, ptr %enic, i32 0, i32 40, i32 %i.369
  %22 = ptrtoint ptr %intr_timer_usec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %intr_timer_usec, align 4
  %24 = ptrtoint ptr %intr_timer_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %intr_timer_type, align 8
  %conv = zext i8 %25 to i32
  tail call void @vnic_intr_init(ptr noundef %arrayidx26, i32 noundef %23, i32 noundef %conv, i32 noundef %.) #5
  %inc29 = add nuw i32 %i.369, 1
  %26 = ptrtoint ptr %intr_count23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %intr_count23, align 8
  %cmp24 = icmp ult i32 %inc29, %27
  br i1 %cmp24, label %for.body25.for.body25_crit_edge, label %for.body25.for.end30_crit_edge

for.body25.for.end30_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body25

for.end30:                                        ; preds = %for.body25.for.end30_crit_edge, %for.end18.for.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_get_intr_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_rq_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_wq_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_cq_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_intr_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_alloc_vnic_resources(ptr noundef %enic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 128
  %call = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %1) #5
  %pdev.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 1
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %wq_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 29
  %4 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wq_count, align 32
  %rq_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 34
  %6 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rq_count, align 32
  %cq_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 45
  %8 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cq_count, align 128
  %intr_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 41
  %10 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %entry.cond.end7_crit_edge, label %cond.false

entry.cond.end7_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end7

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp2 = icmp eq i32 %call, 2
  br i1 %cmp2, label %cond.false.cond.end7_crit_edge, label %cond.false4

cond.false.cond.end7_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end7

cond.false4:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp5 = icmp eq i32 %call, 3
  %cond = select i1 %cmp5, ptr @.str.57, ptr @.str.45
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false4, %cond.false.cond.end7_crit_edge, %entry.cond.end7_crit_edge
  %cond8 = phi ptr [ @.str.56, %entry.cond.end7_crit_edge ], [ %cond, %cond.false4 ], [ @.str.43, %cond.false.cond.end7_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.54, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef nonnull %cond8) #8
  %12 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp10137.not = icmp eq i32 %13, 0
  br i1 %cmp10137.not, label %cond.end7.for.cond13.preheader_crit_edge, label %for.body.lr.ph

cond.end7.for.cond13.preheader_crit_edge:         ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond13.preheader

for.body.lr.ph:                                   ; preds = %cond.end7
  %wq_desc_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 2, i32 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0138, 1
  %14 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wq_count, align 32
  %cmp10 = icmp ult i32 %inc, %15
  br i1 %cmp10, label %for.cond.for.body_crit_edge, label %for.cond.for.cond13.preheader_crit_edge

for.cond.for.cond13.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond13.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond13.preheader:                             ; preds = %for.cond.for.cond13.preheader_crit_edge, %cond.end7.for.cond13.preheader_crit_edge
  %16 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp15139.not = icmp eq i32 %17, 0
  br i1 %cmp15139.not, label %for.cond13.preheader.for.cond27.preheader_crit_edge, label %for.body16.lr.ph

for.cond13.preheader.for.cond27.preheader_crit_edge: ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond27.preheader

for.body16.lr.ph:                                 ; preds = %for.cond13.preheader
  %rq_desc_count = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 2, i32 2
  br label %for.body16

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %18 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vdev, align 128
  %arrayidx = getelementptr %struct.enic, ptr %enic, i32 0, i32 27, i32 %i.0138
  %20 = ptrtoint ptr %wq_desc_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wq_desc_count, align 4
  %call12 = tail call i32 @vnic_wq_alloc(ptr noundef %19, ptr noundef %arrayidx, i32 noundef %i.0138, i32 noundef %21, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %for.cond, label %for.body.err_out_cleanup_crit_edge

for.body.err_out_cleanup_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out_cleanup

for.cond13:                                       ; preds = %for.body16
  %inc25 = add nuw i32 %i.1140, 1
  %22 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rq_count, align 32
  %cmp15 = icmp ult i32 %inc25, %23
  br i1 %cmp15, label %for.cond13.for.body16_crit_edge, label %for.cond13.for.cond27.preheader_crit_edge

for.cond13.for.cond27.preheader_crit_edge:        ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond27.preheader

for.cond13.for.body16_crit_edge:                  ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16

for.cond27.preheader:                             ; preds = %for.cond13.for.cond27.preheader_crit_edge, %for.cond13.preheader.for.cond27.preheader_crit_edge
  %24 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cq_count, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp29141.not = icmp eq i32 %25, 0
  br i1 %cmp29141.not, label %for.cond27.preheader.for.cond52.preheader_crit_edge, label %for.body30.lr.ph

for.cond27.preheader.for.cond52.preheader_crit_edge: ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond52.preheader

for.body30.lr.ph:                                 ; preds = %for.cond27.preheader
  %wq_desc_count43 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 2, i32 1
  %rq_desc_count37 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 2, i32 2
  br label %for.body30

for.body16:                                       ; preds = %for.cond13.for.body16_crit_edge, %for.body16.lr.ph
  %i.1140 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc25, %for.cond13.for.body16_crit_edge ]
  %26 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vdev, align 128
  %arrayidx18 = getelementptr %struct.enic, ptr %enic, i32 0, i32 33, i32 %i.1140
  %28 = ptrtoint ptr %rq_desc_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rq_desc_count, align 8
  %call20 = tail call i32 @vnic_rq_alloc(ptr noundef %27, ptr noundef %arrayidx18, i32 noundef %i.1140, i32 noundef %29, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.cond13, label %for.body16.err_out_cleanup_crit_edge

for.body16.err_out_cleanup_crit_edge:             ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out_cleanup

for.cond27:                                       ; preds = %for.body30
  %inc50 = add nuw i32 %i.2142, 1
  %30 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cq_count, align 128
  %cmp29 = icmp ult i32 %inc50, %31
  br i1 %cmp29, label %for.cond27.for.body30_crit_edge, label %for.cond27.for.cond52.preheader_crit_edge

for.cond27.for.cond52.preheader_crit_edge:        ; preds = %for.cond27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond52.preheader

for.cond27.for.body30_crit_edge:                  ; preds = %for.cond27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body30

for.cond52.preheader:                             ; preds = %for.cond27.for.cond52.preheader_crit_edge, %for.cond27.preheader.for.cond52.preheader_crit_edge
  %32 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp54144.not = icmp eq i32 %33, 0
  br i1 %cmp54144.not, label %for.cond52.preheader.for.end64_crit_edge, label %for.cond52.preheader.for.body55_crit_edge

for.cond52.preheader.for.body55_crit_edge:        ; preds = %for.cond52.preheader
  br label %for.body55

for.cond52.preheader.for.end64_crit_edge:         ; preds = %for.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end64

for.body30:                                       ; preds = %for.cond27.for.body30_crit_edge, %for.body30.lr.ph
  %i.2142 = phi i32 [ 0, %for.body30.lr.ph ], [ %inc50, %for.cond27.for.body30_crit_edge ]
  %34 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rq_count, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2142, i32 %35)
  %cmp32 = icmp ult i32 %i.2142, %35
  %36 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vdev, align 128
  %arrayidx35 = getelementptr %struct.enic, ptr %enic, i32 0, i32 44, i32 %i.2142
  %rq_desc_count37.wq_desc_count43 = select i1 %cmp32, ptr %rq_desc_count37, ptr %wq_desc_count43
  %38 = ptrtoint ptr %rq_desc_count37.wq_desc_count43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.sink = load i32, ptr %rq_desc_count37.wq_desc_count43, align 4
  %call44 = tail call i32 @vnic_cq_alloc(ptr noundef %37, ptr noundef %arrayidx35, i32 noundef %i.2142, i32 noundef %.sink, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool46.not = icmp eq i32 %call44, 0
  br i1 %tobool46.not, label %for.cond27, label %for.body30.err_out_cleanup_crit_edge

for.body30.err_out_cleanup_crit_edge:             ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out_cleanup

for.cond52:                                       ; preds = %for.body55
  %inc63 = add nuw i32 %i.3145, 1
  %39 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %intr_count, align 8
  %cmp54 = icmp ult i32 %inc63, %40
  br i1 %cmp54, label %for.cond52.for.body55_crit_edge, label %for.cond52.for.end64_crit_edge

for.cond52.for.end64_crit_edge:                   ; preds = %for.cond52
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end64

for.cond52.for.body55_crit_edge:                  ; preds = %for.cond52
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body55

for.body55:                                       ; preds = %for.cond52.for.body55_crit_edge, %for.cond52.preheader.for.body55_crit_edge
  %i.3145 = phi i32 [ %inc63, %for.cond52.for.body55_crit_edge ], [ 0, %for.cond52.preheader.for.body55_crit_edge ]
  %41 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vdev, align 128
  %arrayidx57 = getelementptr %struct.enic, ptr %enic, i32 0, i32 40, i32 %i.3145
  %call58 = tail call i32 @vnic_intr_alloc(ptr noundef %42, ptr noundef %arrayidx57, i32 noundef %i.3145) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %for.cond52, label %for.body55.err_out_cleanup_crit_edge

for.body55.err_out_cleanup_crit_edge:             ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out_cleanup

for.end64:                                        ; preds = %for.cond52.for.end64_crit_edge, %for.cond52.preheader.for.end64_crit_edge
  %43 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vdev, align 128
  %call66 = tail call ptr @vnic_dev_get_res(ptr noundef %44, i32 noundef 13, i32 noundef 0) #5
  %legacy_pba = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 42
  %45 = ptrtoint ptr %legacy_pba to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call66, ptr %legacy_pba, align 4
  %tobool68.not = icmp ne ptr %call66, null
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %tobool68.not, i1 true, i1 %cmp.not
  br i1 %brmerge, label %for.end64.cleanup_crit_edge, label %do.end73

for.end64.cleanup_crit_edge:                      ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end73:                                         ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev.i, align 4
  %dev.i133 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i133, ptr noundef nonnull @.str.59) #8
  br label %err_out_cleanup

err_out_cleanup:                                  ; preds = %do.end73, %for.body55.err_out_cleanup_crit_edge, %for.body30.err_out_cleanup_crit_edge, %for.body16.err_out_cleanup_crit_edge, %for.body.err_out_cleanup_crit_edge
  %err.1 = phi i32 [ -19, %do.end73 ], [ %call58, %for.body55.err_out_cleanup_crit_edge ], [ %call44, %for.body30.err_out_cleanup_crit_edge ], [ %call20, %for.body16.err_out_cleanup_crit_edge ], [ %call12, %for.body.err_out_cleanup_crit_edge ]
  tail call void @enic_free_vnic_resources(ptr noundef %enic)
  br label %cleanup

cleanup:                                          ; preds = %err_out_cleanup, %for.end64.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_out_cleanup ], [ 0, %for.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_wq_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_rq_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_cq_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_intr_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vnic_dev_get_res(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !83, !84, !86, !87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/cisco/enic/enic_res.c", i32 49, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @enic_get_vnic_config._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @enic_get_vnic_config._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/cisco/enic/enic_res.c", i32 66, i32 2}
!10 = !{ptr @enic_get_vnic_config._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @enic_get_vnic_config._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @enic_get_vnic_config._entry.9, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/cisco/enic/enic_res.c", i32 67, i32 2}
!15 = !{ptr @enic_get_vnic_config._entry_ptr.10, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @enic_get_vnic_config._entry.12, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/cisco/enic/enic_res.c", i32 68, i32 2}
!19 = !{ptr @enic_get_vnic_config._entry_ptr.13, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @enic_get_vnic_config._entry.15, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/cisco/enic/enic_res.c", i32 69, i32 2}
!23 = !{ptr @enic_get_vnic_config._entry_ptr.16, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @enic_get_vnic_config._entry.18, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/cisco/enic/enic_res.c", i32 70, i32 2}
!27 = !{ptr @enic_get_vnic_config._entry_ptr.19, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.20, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @enic_get_vnic_config._entry.21, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/cisco/enic/enic_res.c", i32 71, i32 2}
!31 = !{ptr @enic_get_vnic_config._entry_ptr.22, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.23, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @enic_get_vnic_config._entry.24, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/cisco/enic/enic_res.c", i32 72, i32 2}
!35 = !{ptr @enic_get_vnic_config._entry_ptr.25, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.26, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @enic_get_vnic_config._entry.27, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/cisco/enic/enic_res.c", i32 73, i32 2}
!39 = !{ptr @enic_get_vnic_config._entry_ptr.28, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.29, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @enic_get_vnic_config._entry.30, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/cisco/enic/enic_res.c", i32 74, i32 2}
!43 = !{ptr @enic_get_vnic_config._entry_ptr.31, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.32, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.34, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/cisco/enic/enic_res.c", i32 97, i32 2}
!47 = !{ptr @.str.35, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @enic_get_vnic_config._entry.33, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @enic_get_vnic_config._entry_ptr.36, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.38, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/cisco/enic/enic_res.c", i32 101, i32 2}
!52 = !{ptr @enic_get_vnic_config._entry.37, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @enic_get_vnic_config._entry_ptr.39, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.40, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.41, !51, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.42, !51, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.43, !51, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.44, !51, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.45, !51, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.46, !51, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.47, !51, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.48, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/cisco/enic/enic_res.c", i32 130, i32 3}
!64 = !{ptr @.str.49, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @enic_add_vlan._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @enic_add_vlan._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.50, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/cisco/enic/enic_res.c", i32 143, i32 3}
!69 = !{ptr @.str.51, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @enic_del_vlan._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @enic_del_vlan._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.52, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/cisco/enic/enic_res.c", i32 209, i32 2}
!74 = !{ptr @.str.53, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @enic_get_res_counts._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @enic_get_res_counts._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.54, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/cisco/enic/enic_res.c", i32 325, i32 2}
!79 = !{ptr @.str.55, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @enic_alloc_vnic_resources._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @enic_alloc_vnic_resources._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.56, !78, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.57, !78, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.59, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/cisco/enic/enic_res.c", i32 378, i32 3}
!86 = !{ptr @enic_alloc_vnic_resources._entry.58, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @enic_alloc_vnic_resources._entry_ptr.60, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
