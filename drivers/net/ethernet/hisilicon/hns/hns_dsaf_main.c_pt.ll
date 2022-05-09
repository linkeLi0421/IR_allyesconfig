; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hns_dsaf_roce_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_hns_dsaf_roce_reset\09\09\09\09"
module asm "\09.long\09__crc_hns_dsaf_roce_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hns_dsaf_roce_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22hns_dsaf_roce_reset\22\09\09\09\09\09"
module asm "__kstrtabns_hns_dsaf_roce_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dsaf_tbl_tcam_ucast_cfg = type { i32, i32, i32, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dsaf_tbl_tcam_data = type { i32, i32 }
%struct.dsaf_drv_mac_single_dest_entry = type { [6 x i8], i16, i8, i8, [6 x i8] }
%struct.dsaf_drv_soft_mac_tbl = type { %struct.dsaf_drv_tbl_tcam_key, i16 }
%struct.dsaf_drv_tbl_tcam_key = type { %union.anon.132, %union.anon.134 }
%union.anon.132 = type { i32 }
%union.anon.134 = type { i32 }
%struct.dsaf_tbl_tcam_mcast_cfg = type { i8, i8, [5 x i32] }
%struct.hns_mac_cb = type { ptr, ptr, %struct.mac_priv, ptr, ptr, ptr, ptr, ptr, ptr, [6 x i8], i32, i32, i32, [128 x %struct.mac_entry_idx], i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i64, i64, i32, i32, i32, i32, ptr, %struct.mac_hw_stats }
%struct.mac_priv = type { ptr }
%struct.mac_entry_idx = type { [6 x i8], i16 }
%struct.mac_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.133 = type { i8, i8, i8, i8 }
%struct.anon.135 = type { i16, i8, i8 }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dsaf_misc_op = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@hns_dsaf_set_rx_mac_pause_en._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1193, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dsafv1 can't close rx_pause!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hns_dsaf_set_rx_mac_pause_en\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hns_dsaf_set_rx_mac_pause_en._entry_ptr = internal global ptr @hns_dsaf_set_rx_mac_pause_en._entry, section ".printk_index", align 4
@hns_dsaf_set_mac_uc_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1629, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set_uc %s Mac %pM err!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hns_dsaf_set_mac_uc_entry\00", [38 x i8] zeroinitializer }, align 32
@hns_dsaf_set_mac_uc_entry._entry_ptr = internal global ptr @hns_dsaf_set_mac_uc_entry._entry, section ".printk_index", align 4
@hns_dsaf_set_mac_uc_entry._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 1647, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"set_uc_entry failed, %s Mac key(%#x:%#x)\0A\00", [54 x i8] zeroinitializer }, align 32
@hns_dsaf_set_mac_uc_entry._entry_ptr.9 = internal global ptr @hns_dsaf_set_mac_uc_entry._entry.7, section ".printk_index", align 4
@hns_dsaf_set_mac_uc_entry.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.6, ptr @.str.2, ptr @.str.11, i8 1, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hns_dsaf\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"set_uc_entry, %s Mac key(%#x:%#x) entry_index%d\0A\00", [47 x i8] zeroinitializer }, align 32
@hns_dsaf_rm_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1689, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rm_uc_addr %s Mac %pM err!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hns_dsaf_rm_mac_addr\00", [43 x i8] zeroinitializer }, align 32
@hns_dsaf_rm_mac_addr._entry_ptr = internal global ptr @hns_dsaf_rm_mac_addr._entry, section ".printk_index", align 4
@hns_dsaf_rm_mac_addr._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 1703, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rm_uc_addr no tcam, %s Mac key(%#x:%#x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hns_dsaf_rm_mac_addr._entry_ptr.17 = internal global ptr @hns_dsaf_rm_mac_addr._entry.14, section ".printk_index", align 4
@hns_dsaf_rm_mac_addr.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.13, ptr @.str.2, ptr @.str.18, i8 1, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rm_uc_addr, %s Mac key(%#x:%#x) entry_index%d\0A\00", [49 x i8] zeroinitializer }, align 32
@hns_dsaf_add_mac_mc_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1768, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"set_entry failed,addr %pM!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hns_dsaf_add_mac_mc_port\00", [39 x i8] zeroinitializer }, align 32
@hns_dsaf_add_mac_mc_port._entry_ptr = internal global ptr @hns_dsaf_add_mac_mc_port._entry, section ".printk_index", align 4
@hns_dsaf_add_mac_mc_port._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.20, ptr @.str.2, i32 1807, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hns_dsaf_add_mac_mc_port._entry_ptr.22 = internal global ptr @hns_dsaf_add_mac_mc_port._entry.21, section ".printk_index", align 4
@hns_dsaf_add_mac_mc_port._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.2, i32 1826, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s,pnum(%d)error,key(%#x:%#x)\0A\00", [33 x i8] zeroinitializer }, align 32
@hns_dsaf_add_mac_mc_port._entry_ptr.25 = internal global ptr @hns_dsaf_add_mac_mc_port._entry.23, section ".printk_index", align 4
@hns_dsaf_add_mac_mc_port.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.20, ptr @.str.2, ptr @.str.11, i8 1, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hns_dsaf_del_mac_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1873, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"del_entry failed,addr %pM!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hns_dsaf_del_mac_entry\00", [41 x i8] zeroinitializer }, align 32
@hns_dsaf_del_mac_entry._entry_ptr = internal global ptr @hns_dsaf_del_mac_entry._entry, section ".printk_index", align 4
@hns_dsaf_del_mac_entry._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 1887, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"del_mac_entry failed, %s Mac key(%#x:%#x)\0A\00", [53 x i8] zeroinitializer }, align 32
@hns_dsaf_del_mac_entry._entry_ptr.30 = internal global ptr @hns_dsaf_del_mac_entry._entry.28, section ".printk_index", align 4
@hns_dsaf_del_mac_entry.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.27, ptr @.str.2, ptr @.str.31, i8 1, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"del_mac_entry, %s Mac key(%#x:%#x) entry_index%d\0A\00", [46 x i8] zeroinitializer }, align 32
@hns_dsaf_del_mac_mc_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 1929, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"hns_dsaf_del_mac_mc_port mac_entry is NULL\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hns_dsaf_del_mac_mc_port\00", [39 x i8] zeroinitializer }, align 32
@hns_dsaf_del_mac_mc_port._entry_ptr = internal global ptr @hns_dsaf_del_mac_mc_port._entry, section ".printk_index", align 4
@hns_dsaf_del_mac_mc_port._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 1936, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"del_port failed, addr %pM!\0A\00", [36 x i8] zeroinitializer }, align 32
@hns_dsaf_del_mac_mc_port._entry_ptr.36 = internal global ptr @hns_dsaf_del_mac_mc_port._entry.34, section ".printk_index", align 4
@hns_dsaf_del_mac_mc_port._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.2, i32 1971, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"find_soft_mac_entry failed, %s Mac key(%#x:%#x)\0A\00", [47 x i8] zeroinitializer }, align 32
@hns_dsaf_del_mac_mc_port._entry_ptr.39 = internal global ptr @hns_dsaf_del_mac_mc_port._entry.37, section ".printk_index", align 4
@hns_dsaf_del_mac_mc_port.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.33, ptr @.str.2, ptr @.str.40, i8 1, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"del_mac_mc_port, %s key(%#x:%#x) index%d\0A\00", [54 x i8] zeroinitializer }, align 32
@hns_dsaf_del_mac_mc_port._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.33, ptr @.str.2, i32 1993, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hns_dsaf_del_mac_mc_port._entry_ptr.42 = internal global ptr @hns_dsaf_del_mac_mc_port._entry.41, section ".printk_index", align 4
@hns_dsaf_wait_pkt_clean._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 2944, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"hns dsaf clean wait timeout(%u - %u).\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hns_dsaf_wait_pkt_clean\00", [40 x i8] zeroinitializer }, align 32
@hns_dsaf_wait_pkt_clean._entry_ptr = internal global ptr @hns_dsaf_wait_pkt_clean._entry, section ".printk_index", align 4
@__initcall__kmod_hns_dsaf__359_3044_g_dsaf_driver_init6 = internal global ptr @g_dsaf_driver_init, section ".initcall6.init", align 4
@g_dsaf_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hns_dsaf_probe, ptr @hns_dsaf_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @g_dsaf_match, ptr @hns_dsaf_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_g_dsaf_driver_exit = internal global ptr @g_dsaf_driver_exit, section ".exitcall.exit", align 4
@hns_dsaf_roce_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 3087, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013fwnode is neither OF or ACPI type\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hns_dsaf_roce_reset\00", [44 x i8] zeroinitializer }, align 32
@hns_dsaf_roce_reset._entry_ptr = internal global ptr @hns_dsaf_roce_reset._entry, section ".printk_index", align 4
@hns_dsaf_roce_reset._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 3093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013couldn't find platform device for node\0A\00", [54 x i8] zeroinitializer }, align 32
@hns_dsaf_roce_reset._entry_ptr.49 = internal global ptr @hns_dsaf_roce_reset._entry.47, section ".printk_index", align 4
@hns_dsaf_roce_reset._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.2, i32 3100, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dsaf_dev is NULL\0A\00", [46 x i8] zeroinitializer }, align 32
@hns_dsaf_roce_reset._entry_ptr.52 = internal global ptr @hns_dsaf_roce_reset._entry.50, section ".printk_index", align 4
@hns_dsaf_roce_reset._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.2, i32 3108, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s v1 chip doesn't support RoCE!\0A\00", [62 x i8] zeroinitializer }, align 32
@hns_dsaf_roce_reset._entry_ptr.55 = internal global ptr @hns_dsaf_roce_reset._entry.53, section ".printk_index", align 4
@__kstrtab_hns_dsaf_roce_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_hns_dsaf_roce_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_hns_dsaf_roce_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hns_dsaf_roce_reset to i32), ptr @__kstrtab_hns_dsaf_roce_reset, ptr @__kstrtabns_hns_dsaf_roce_reset }, section "___ksymtab+hns_dsaf_roce_reset", align 4
@__UNIQUE_ID_file360 = internal constant [58 x i8] c"hns_dsaf.file=drivers/net/ethernet/hisilicon/hns/hns_dsaf\00", section ".modinfo", align 1
@__UNIQUE_ID_license361 = internal constant [21 x i8] c"hns_dsaf.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author362 = internal constant [39 x i8] c"hns_dsaf.author=Huawei Tech. Co., Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description363 = internal constant [37 x i8] c"hns_dsaf.description=HNS DSAF driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version364 = internal constant [22 x i8] c"hns_dsaf.version=v1.0\00", section ".modinfo", align 1
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v1.0\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.10, ptr @.str.57 }, section "__modver", align 4
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"innod%d_pad_drop_pkts\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"innod%d_manage_pkts\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"innod%d_rx_pkts\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"innod%d_rx_pkt_id\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"innod%d_rx_pause_frame\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"innod%d_release_buf_num\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"innod%d_sbm_drop_pkts\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"innod%d_crc_false_pkts\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"innod%d_bp_drop_pkts\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"innod%d_lookup_rslt_drop_pkts\00", [34 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"innod%d_local_rslt_fail_pkts\00", [35 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"innod%d_vlan_drop_pkts\00", [41 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"innod%d_stp_drop_pkts\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"inod%d_pfc_prio%d_pkts\00", [41 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"onod%d_pfc_prio%d_pkts\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"onnod%d_tx_pkts\00", [16 x i8] zeroinitializer }, align 32
@__const.set_promisc_tcam_enable.tbl_tcam_ucast = private unnamed_addr constant %struct.dsaf_tbl_tcam_ucast_cfg { i32 0, i32 1, i32 0, i32 0, i32 128 }, align 4
@set_promisc_tcam_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 2790, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"enable uc promisc failed (port:%#x)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set_promisc_tcam_enable\00", [40 x i8] zeroinitializer }, align 32
@set_promisc_tcam_enable._entry_ptr = internal global ptr @set_promisc_tcam_enable._entry, section ".printk_index", align 4
@set_promisc_tcam_enable._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 2816, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"enable mc promisc failed (port:%#x)\0A\00", [59 x i8] zeroinitializer }, align 32
@set_promisc_tcam_enable._entry_ptr.78 = internal global ptr @set_promisc_tcam_enable._entry.76, section ".printk_index", align 4
@set_promisc_tcam_enable._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.75, ptr @.str.2, i32 2834, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@set_promisc_tcam_enable._entry_ptr.80 = internal global ptr @set_promisc_tcam_enable._entry.79, section ".printk_index", align 4
@set_promisc_tcam_enable._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.75, ptr @.str.2, i32 2846, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s, pool bit map pnum(%d)error,key(%#x:%#x)\0A\00", [51 x i8] zeroinitializer }, align 32
@set_promisc_tcam_enable._entry_ptr.83 = internal global ptr @set_promisc_tcam_enable._entry.81, section ".printk_index", align 4
@g_dsaf_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hns-dsaf-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hns-dsaf-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@hns_dsaf_acpi_match = internal constant { [3 x %struct.acpi_device_id], [56 x i8] } { [3 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"HISI00B1\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"HISI00B2\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@hns_dsaf_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 2965, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"dsaf_probe dsaf_alloc_dev failed, ret = %#x!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hns_dsaf_probe\00", [17 x i8] zeroinitializer }, align 32
@hns_dsaf_probe._entry_ptr = internal global ptr @hns_dsaf_probe._entry, section ".printk_index", align 4
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hisilicon,hns-dsaf-v1\00", [42 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 67, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot get cfg data from of or acpi\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hns_dsaf_get_cfg\00", [47 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry_ptr = internal global ptr @hns_dsaf_get_cfg._entry, section ".printk_index", align 4
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.88, ptr @.str.2, i32 73, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"get dsaf mode fail, ret=%d!\0A\00", [35 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry_ptr.92 = internal global ptr @hns_dsaf_get_cfg._entry.90, section ".printk_index", align 4
@g_dsaf_mode_match = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.128, ptr null, ptr null, ptr null, ptr @.str.129, ptr @.str.130, ptr null, ptr null, ptr @.str.131], [60 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.88, ptr @.str.2, i32 84, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s prs mode str fail!\0A\00", [41 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry_ptr.95 = internal global ptr @hns_dsaf_get_cfg._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"subctrl-syscon\00", [17 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.88, ptr @.str.2, i32 109, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"subctrl info is needed!\0A\00", [39 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry_ptr.99 = internal global ptr @hns_dsaf_get_cfg._entry.97, section ".printk_index", align 4
@hns_dsaf_get_cfg._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.88, ptr @.str.2, i32 121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"serdes-ctrl info is needed!\0A\00", [35 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry_ptr.102 = internal global ptr @hns_dsaf_get_cfg._entry.100, section ".printk_index", align 4
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ppe-base\00", [23 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.88, ptr @.str.2, i32 138, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ppe-base info is needed!\0A\00", [38 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry_ptr.106 = internal global ptr @hns_dsaf_get_cfg._entry.104, section ".printk_index", align 4
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsaf-base\00", [22 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.88, ptr @.str.2, i32 155, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dsaf-base info is needed!\0A\00", [37 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry_ptr.110 = internal global ptr @hns_dsaf_get_cfg._entry.108, section ".printk_index", align 4
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"desc-num\00", [23 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.88, ptr @.str.2, i32 168, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"get desc-num(%d) fail, ret=%d!\0A\00", [32 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry_ptr.114 = internal global ptr @hns_dsaf_get_cfg._entry.112, section ".printk_index", align 4
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reset-field-offset\00", [45 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.88, ptr @.str.2, ptr @.str.116, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"get reset-field-offset fail, ret=%d!\0D\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"buf-size\00", [23 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.88, ptr @.str.2, i32 184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"get buf-size fail, ret=%d!\0D\0A\00", [35 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry_ptr.120 = internal global ptr @hns_dsaf_get_cfg._entry.118, section ".printk_index", align 4
@hns_dsaf_get_cfg._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.88, ptr @.str.2, i32 192, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"buf_size(%d) is wrong!\0A\00", [40 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry_ptr.123 = internal global ptr @hns_dsaf_get_cfg._entry.121, section ".printk_index", align 4
@hns_dsaf_get_cfg.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.88, ptr @.str.2, ptr @.str.124, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set mask to 64bit\0A\00", [45 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.88, ptr @.str.2, i32 203, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set mask to 64bit fail!\0A\00", [39 x i8] zeroinitializer }, align 32
@hns_dsaf_get_cfg._entry_ptr.127 = internal global ptr @hns_dsaf_get_cfg._entry.125, section ".printk_index", align 4
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"single-port\00", [20 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2port-64vf\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"6port-16rss\00", [20 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"6port-16vf\00", [21 x i8] zeroinitializer }, align 32
@hns_dsaf_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dsaf_dev->tcam_lock\00", [43 x i8] zeroinitializer }, align 32
@hns_dsaf_init_hw.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.133, ptr @.str.2, ptr @.str.134, i8 1, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hns_dsaf_init_hw\00", [47 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hns_dsaf_init_hw begin %s !\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hns_dsaf_set_pfc_pause._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 1177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dsaf v1 can not close pfc!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hns_dsaf_set_pfc_pause\00", [41 x i8] zeroinitializer }, align 32
@hns_dsaf_set_pfc_pause._entry_ptr = internal global ptr @hns_dsaf_set_pfc_pause._entry, section ".printk_index", align 4
@hns_dsaf_sbm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.2, i32 1347, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"hns_dsaf_sbm_cfg_mib_en fail,%s, ret=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hns_dsaf_sbm_init\00", [46 x i8] zeroinitializer }, align 32
@hns_dsaf_sbm_init._entry_ptr = internal global ptr @hns_dsaf_sbm_init._entry, section ".printk_index", align 4
@hns_dsaf_sbm_init._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.2, i32 1365, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"hns_dsaf_sbm_init fail %s, flag=%d, cnt=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@hns_dsaf_sbm_init._entry_ptr.141 = internal global ptr @hns_dsaf_sbm_init._entry.139, section ".printk_index", align 4
@hns_dsaf_sbm_cfg_mib_en._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 380, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sbm_cfg_mib_en fail,%s,sbm_num=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hns_dsaf_sbm_cfg_mib_en\00", [40 x i8] zeroinitializer }, align 32
@hns_dsaf_sbm_cfg_mib_en._entry_ptr = internal global ptr @hns_dsaf_sbm_cfg_mib_en._entry, section ".printk_index", align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.146 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 10, i64 14]
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1193, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1628, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1644, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1652, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1688, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1700, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1707, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1767, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1804, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1823, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1872, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1884, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1890, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1928, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1935, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1968, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1975, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1990, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2943, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [14 x i8] c"g_dsaf_driver\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 3034, i32 31 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 3087, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 3093, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 3100, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 3107, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 3158, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2600, i32 34 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2602, i32 34 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2604, i32 34 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2606, i32 34 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2608, i32 34 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2610, i32 34 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2612, i32 34 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2614, i32 34 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2616, i32 34 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2618, i32 34 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2620, i32 34 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2622, i32 34 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2624, i32 34 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2629, i32 23 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2632, i32 23 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2638, i32 34 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2788, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2814, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2832, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2843, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant [13 x i8] c"g_dsaf_match\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 3027, i32 34 }
@___asan_gen_.390 = private unnamed_addr constant [20 x i8] c"hns_dsaf_acpi_match\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 34, i32 36 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2964, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 55, i32 35 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 67, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 71, i32 51 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 73, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant [18 x i8] c"g_dsaf_mode_match\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 27, i32 20 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 83, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 102, i32 34 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 109, i32 5 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 121, i32 5 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 134, i32 59 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 138, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 149, i32 10 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 154, i32 5 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 164, i32 48 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 167, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 173, i32 48 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 176, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 181, i32 48 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 183, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 191, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 201, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 203, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 31, i32 27 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 28, i32 35 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 29, i32 34 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 30, i32 35 }
@___asan_gen_.516 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1460, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1403, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1177, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1345, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1363, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.558 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.559 = private constant [54 x i8] c"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 378, i32 4 }
@llvm.compiler.used = appending global [187 x ptr] [ptr @__UNIQUE_ID_author362, ptr @__UNIQUE_ID_description363, ptr @__UNIQUE_ID_file360, ptr @__UNIQUE_ID_license361, ptr @__UNIQUE_ID_version364, ptr @__exitcall_g_dsaf_driver_exit, ptr @__initcall__kmod_hns_dsaf__359_3044_g_dsaf_driver_init6, ptr @__ksymtab_hns_dsaf_roce_reset, ptr @__modver_attr, ptr @g_dsaf_driver_exit, ptr @hns_dsaf_add_mac_mc_port._entry, ptr @hns_dsaf_add_mac_mc_port._entry.21, ptr @hns_dsaf_add_mac_mc_port._entry.23, ptr @hns_dsaf_add_mac_mc_port._entry_ptr, ptr @hns_dsaf_add_mac_mc_port._entry_ptr.22, ptr @hns_dsaf_add_mac_mc_port._entry_ptr.25, ptr @hns_dsaf_del_mac_entry._entry, ptr @hns_dsaf_del_mac_entry._entry.28, ptr @hns_dsaf_del_mac_entry._entry_ptr, ptr @hns_dsaf_del_mac_entry._entry_ptr.30, ptr @hns_dsaf_del_mac_mc_port._entry, ptr @hns_dsaf_del_mac_mc_port._entry.34, ptr @hns_dsaf_del_mac_mc_port._entry.37, ptr @hns_dsaf_del_mac_mc_port._entry.41, ptr @hns_dsaf_del_mac_mc_port._entry_ptr, ptr @hns_dsaf_del_mac_mc_port._entry_ptr.36, ptr @hns_dsaf_del_mac_mc_port._entry_ptr.39, ptr @hns_dsaf_del_mac_mc_port._entry_ptr.42, ptr @hns_dsaf_get_cfg._entry, ptr @hns_dsaf_get_cfg._entry.100, ptr @hns_dsaf_get_cfg._entry.104, ptr @hns_dsaf_get_cfg._entry.108, ptr @hns_dsaf_get_cfg._entry.112, ptr @hns_dsaf_get_cfg._entry.118, ptr @hns_dsaf_get_cfg._entry.121, ptr @hns_dsaf_get_cfg._entry.125, ptr @hns_dsaf_get_cfg._entry.90, ptr @hns_dsaf_get_cfg._entry.93, ptr @hns_dsaf_get_cfg._entry.97, ptr @hns_dsaf_get_cfg._entry_ptr, ptr @hns_dsaf_get_cfg._entry_ptr.102, ptr @hns_dsaf_get_cfg._entry_ptr.106, ptr @hns_dsaf_get_cfg._entry_ptr.110, ptr @hns_dsaf_get_cfg._entry_ptr.114, ptr @hns_dsaf_get_cfg._entry_ptr.120, ptr @hns_dsaf_get_cfg._entry_ptr.123, ptr @hns_dsaf_get_cfg._entry_ptr.127, ptr @hns_dsaf_get_cfg._entry_ptr.92, ptr @hns_dsaf_get_cfg._entry_ptr.95, ptr @hns_dsaf_get_cfg._entry_ptr.99, ptr @hns_dsaf_probe._entry, ptr @hns_dsaf_probe._entry_ptr, ptr @hns_dsaf_rm_mac_addr._entry, ptr @hns_dsaf_rm_mac_addr._entry.14, ptr @hns_dsaf_rm_mac_addr._entry_ptr, ptr @hns_dsaf_rm_mac_addr._entry_ptr.17, ptr @hns_dsaf_roce_reset._entry, ptr @hns_dsaf_roce_reset._entry.47, ptr @hns_dsaf_roce_reset._entry.50, ptr @hns_dsaf_roce_reset._entry.53, ptr @hns_dsaf_roce_reset._entry_ptr, ptr @hns_dsaf_roce_reset._entry_ptr.49, ptr @hns_dsaf_roce_reset._entry_ptr.52, ptr @hns_dsaf_roce_reset._entry_ptr.55, ptr @hns_dsaf_sbm_cfg_mib_en._entry, ptr @hns_dsaf_sbm_cfg_mib_en._entry_ptr, ptr @hns_dsaf_sbm_init._entry, ptr @hns_dsaf_sbm_init._entry.139, ptr @hns_dsaf_sbm_init._entry_ptr, ptr @hns_dsaf_sbm_init._entry_ptr.141, ptr @hns_dsaf_set_mac_uc_entry._entry, ptr @hns_dsaf_set_mac_uc_entry._entry.7, ptr @hns_dsaf_set_mac_uc_entry._entry_ptr, ptr @hns_dsaf_set_mac_uc_entry._entry_ptr.9, ptr @hns_dsaf_set_pfc_pause._entry, ptr @hns_dsaf_set_pfc_pause._entry_ptr, ptr @hns_dsaf_set_rx_mac_pause_en._entry, ptr @hns_dsaf_set_rx_mac_pause_en._entry_ptr, ptr @hns_dsaf_wait_pkt_clean._entry, ptr @hns_dsaf_wait_pkt_clean._entry_ptr, ptr @set_promisc_tcam_enable._entry, ptr @set_promisc_tcam_enable._entry.76, ptr @set_promisc_tcam_enable._entry.79, ptr @set_promisc_tcam_enable._entry.81, ptr @set_promisc_tcam_enable._entry_ptr, ptr @set_promisc_tcam_enable._entry_ptr.78, ptr @set_promisc_tcam_enable._entry_ptr.80, ptr @set_promisc_tcam_enable._entry_ptr.83, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.44, ptr @g_dsaf_driver, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.82, ptr @g_dsaf_match, ptr @hns_dsaf_acpi_match, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @g_dsaf_mode_match, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @hns_dsaf_init.__key, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @.str.143], section "llvm.metadata"
@0 = internal global [138 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_set_rx_mac_pause_en._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_set_mac_uc_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_set_mac_uc_entry._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_rm_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_rm_mac_addr._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_add_mac_mc_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_add_mac_mc_port._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_add_mac_mc_port._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_del_mac_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_del_mac_entry._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_del_mac_mc_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_del_mac_mc_port._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_del_mac_mc_port._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_del_mac_mc_port._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_wait_pkt_clean._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_dsaf_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_roce_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_roce_reset._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_roce_reset._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_roce_reset._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_promisc_tcam_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_promisc_tcam_enable._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_promisc_tcam_enable._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_promisc_tcam_enable._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_dsaf_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_acpi_match to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_get_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_get_cfg._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_dsaf_mode_match to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_get_cfg._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_get_cfg._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_get_cfg._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_get_cfg._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_get_cfg._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_get_cfg._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_get_cfg._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_get_cfg._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_get_cfg._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_set_pfc_pause._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_sbm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_sbm_init._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_dsaf_sbm_cfg_mib_en._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_dsaf_set_promisc_mode(ptr nocapture noundef readonly %dsaf_dev, i32 noundef %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 15
  %0 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %1)
  %cmp = icmp eq i32 %1, 3552816
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dsaf_mode = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %2 = ptrtoint ptr %dsaf_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsaf_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp1 = icmp eq i32 %3, 8
  br i1 %cmp1, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %io_base = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 5
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %en)
  %tobool.not = icmp eq i32 %en, 0
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %7 = and i32 %6, -268435457
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %shl.i = select i1 %tobool.not, i32 0, i32 16
  %or.i = or i32 %8, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #15, !srcloc !296
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_dsaf_set_rx_mac_pause_en(ptr nocapture noundef readonly %dsaf_dev, i32 noundef %mac_id, i32 noundef %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 15
  %0 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %1)
  %cmp = icmp eq i32 %1, 3552816
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %en)
  %tobool.not = icmp eq i32 %en, 0
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %do.end, label %if.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsaf_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #18
  br label %return

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %io_base = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 5
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 4
  %mul = shl i32 %mac_id, 2
  %add = add i32 %mul, 576
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %7 = and i32 %6, -67108865
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %shl.i = select i1 %tobool.not, i32 0, i32 4
  %or.i = or i32 %8, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #15, !srcloc !296
  br label %return

return:                                           ; preds = %if.end2, %do.end
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_dsaf_get_rx_mac_pause_en(ptr nocapture noundef readonly %dsaf_dev, i32 noundef %mac_id, ptr nocapture noundef writeonly %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 15
  %0 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %1)
  %cmp = icmp eq i32 %1, 3552816
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %io_base = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 5
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 4
  %mul = shl i32 %mac_id, 2
  %add = add i32 %mul, 576
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !293
  %5 = lshr i32 %4, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %and.i = and i32 %5, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %and.i, %if.else ], [ 1, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge, ptr %en, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_dsaf_set_mac_uc_entry(ptr noundef %dsaf_dev, ptr noundef %mac_entry) local_unnamed_addr #0 align 64 {
entry:
  %mac_data = alloca %struct.dsaf_tbl_tcam_ucast_cfg, align 4
  %tcam_data = alloca %struct.dsaf_tbl_tcam_data, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %mac_data) #15
  %0 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, ptr %mac_data, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, ptr %mac_data, i32 0, i32 2
  %2 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, ptr %mac_data, i32 0, i32 3
  %3 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, ptr %mac_data, i32 0, i32 4
  %add.ptr.i = getelementptr i8, ptr %dsaf_dev, i32 6544
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tcam_data) #15
  %6 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, ptr %tcam_data, i32 0, i32 1
  %7 = ptrtoint ptr %mac_entry to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mac_entry, align 2
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %lor.lhs.false75 [
    i8 0, label %land.lhs.true
    i8 -1, label %entry.do.end_crit_edge
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %mac_entry, i32 1
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp5 = icmp eq i8 %11, 0
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %add.ptr10 = getelementptr i8, ptr %mac_entry, i32 2
  %12 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp12 = icmp eq i8 %13, 0
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true14:                                  ; preds = %land.lhs.true7
  %add.ptr17 = getelementptr i8, ptr %mac_entry, i32 3
  %14 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp19 = icmp eq i8 %15, 0
  br i1 %cmp19, label %land.lhs.true21, label %land.lhs.true14.if.end_crit_edge

land.lhs.true14.if.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true21:                                  ; preds = %land.lhs.true14
  %add.ptr24 = getelementptr i8, ptr %mac_entry, i32 4
  %16 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp26 = icmp eq i8 %17, 0
  br i1 %cmp26, label %land.lhs.true28, label %land.lhs.true21.if.end_crit_edge

land.lhs.true21.if.end_crit_edge:                 ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true28:                                  ; preds = %land.lhs.true21
  %add.ptr31 = getelementptr i8, ptr %mac_entry, i32 5
  %18 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp33 = icmp eq i8 %19, 0
  br i1 %cmp33, label %land.lhs.true28.do.end_crit_edge, label %land.lhs.true28.if.end_crit_edge

land.lhs.true28.if.end_crit_edge:                 ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true28.do.end_crit_edge:                 ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

lor.lhs.false75:                                  ; preds = %entry
  %20 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %lor.lhs.false75.if.end_crit_edge, label %lor.lhs.false75.do.end_crit_edge

lor.lhs.false75.do.end_crit_edge:                 ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

lor.lhs.false75.if.end_crit_edge:                 ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %lor.lhs.false75.do.end_crit_edge, %land.lhs.true28.do.end_crit_edge, %entry.do.end_crit_edge
  %21 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dsaf_dev, align 8
  %name = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.5, ptr noundef %name, ptr noundef %mac_entry) #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false75.if.end_crit_edge, %land.lhs.true28.if.end_crit_edge, %land.lhs.true21.if.end_crit_edge, %land.lhs.true14.if.end_crit_edge, %land.lhs.true7.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %in_vlan_id = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 1
  %23 = ptrtoint ptr %in_vlan_id to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %in_vlan_id, align 2
  %in_port_num = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 2
  %25 = ptrtoint ptr %in_port_num to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %in_port_num, align 2
  %dsaf_mode.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %27 = ptrtoint ptr %dsaf_mode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dsaf_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %28)
  %cmp.i = icmp ult i32 %28, 8
  %29 = and i8 %26, 15
  %phi.cast.i = zext i8 %29 to i16
  %port.0.i = select i1 %cmp.i, i16 0, i16 %phi.cast.i
  %arrayidx1.i = getelementptr i8, ptr %mac_entry, i32 1
  %30 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx1.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %mac_entry, i32 2
  %32 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx3.i, align 1
  %arrayidx5.i = getelementptr i8, ptr %mac_entry, i32 3
  %34 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx5.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %mac_entry, i32 4
  %36 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx7.i, align 1
  %mac_key.sroa.12.7.insert.ext = zext i8 %37 to i32
  %arrayidx8.i = getelementptr i8, ptr %mac_entry, i32 5
  %38 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx8.i, align 1
  %mac_key.sroa.12.6.insert.ext = zext i8 %39 to i32
  %mac_key.sroa.12.6.insert.shift = shl nuw nsw i32 %mac_key.sroa.12.6.insert.ext, 8
  %mac_key.sroa.12.7.insert.insert = or i32 %mac_key.sroa.12.6.insert.shift, %mac_key.sroa.12.7.insert.ext
  %shl.i = shl i16 %24, 4
  %or34.i = or i16 %port.0.i, %shl.i
  %mac_key.sroa.12.4.insert.ext = zext i16 %or34.i to i32
  %mac_key.sroa.12.4.insert.shift = shl nuw i32 %mac_key.sroa.12.4.insert.ext, 16
  %mac_key.sroa.12.4.insert.insert = or i32 %mac_key.sroa.12.7.insert.insert, %mac_key.sroa.12.4.insert.shift
  %tcam_max_num.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 16
  %40 = ptrtoint ptr %tcam_max_num.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tcam_max_num.i, align 8
  %conv.i = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp23.not.i = icmp eq i16 %41, 0
  %.pre = zext i8 %8 to i32
  %.pre264 = zext i8 %31 to i32
  %.pre265 = shl nuw nsw i32 %.pre264, 8
  %.pre266 = or i32 %.pre265, %.pre
  %.pre267 = zext i8 %33 to i32
  %.pre268 = shl nuw nsw i32 %.pre267, 16
  %.pre269 = or i32 %.pre266, %.pre268
  %.pre270 = zext i8 %35 to i32
  %.pre271 = shl nuw i32 %.pre270, 24
  %.pre272 = or i32 %.pre269, %.pre271
  br i1 %cmp23.not.i, label %if.end.do.end97_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.do.end97_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end97

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %soft_mac_entry.024.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ %5, %if.end.for.body.i_crit_edge ]
  %index.i = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.024.i, i32 0, i32 1
  %42 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %43)
  %cmp3.not.i = icmp eq i16 %43, -1
  br i1 %cmp3.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %44 = ptrtoint ptr %soft_mac_entry.024.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %soft_mac_entry.024.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %.pre272)
  %cmp6.i = icmp eq i32 %45, %.pre272
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %low.i171 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, ptr %soft_mac_entry.024.i, i32 0, i32 1
  %46 = ptrtoint ptr %low.i171 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %low.i171, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %mac_key.sroa.12.4.insert.insert)
  %cmp11.i = icmp eq i32 %47, %mac_key.sroa.12.4.insert.insert
  br i1 %cmp11.i, label %land.lhs.true8.i.do.body104_crit_edge, label %land.lhs.true8.i.if.end.i_crit_edge

land.lhs.true8.i.if.end.i_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true8.i.do.body104_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body104

if.end.i:                                         ; preds = %land.lhs.true8.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.024.i, i32 1
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %if.end.i.for.body.i177_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end.i.for.body.i177_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i177

for.body.i177:                                    ; preds = %if.end.i181.for.body.i177_crit_edge, %if.end.i.for.body.i177_crit_edge
  %i.015.i = phi i32 [ %inc.i179, %if.end.i181.for.body.i177_crit_edge ], [ 0, %if.end.i.for.body.i177_crit_edge ]
  %soft_mac_entry.014.i = phi ptr [ %incdec.ptr.i178, %if.end.i181.for.body.i177_crit_edge ], [ %5, %if.end.i.for.body.i177_crit_edge ]
  %index.i176 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.014.i, i32 0, i32 1
  %48 = ptrtoint ptr %index.i176 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %index.i176, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %49)
  %cmp3.i = icmp eq i16 %49, -1
  br i1 %cmp3.i, label %hns_dsaf_find_empty_mac_entry.exit, label %if.end.i181

if.end.i181:                                      ; preds = %for.body.i177
  %incdec.ptr.i178 = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.014.i, i32 1
  %inc.i179 = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i180 = icmp eq i32 %inc.i179, %conv.i
  br i1 %exitcond.not.i180, label %if.end.i181.do.end97_crit_edge, label %if.end.i181.for.body.i177_crit_edge

if.end.i181.for.body.i177_crit_edge:              ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i177

if.end.i181.do.end97_crit_edge:                   ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end97

hns_dsaf_find_empty_mac_entry.exit:               ; preds = %for.body.i177
  %conv5.i = trunc i32 %i.015.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv5.i)
  %cmp92 = icmp eq i16 %conv5.i, -1
  br i1 %cmp92, label %hns_dsaf_find_empty_mac_entry.exit.do.end97_crit_edge, label %hns_dsaf_find_empty_mac_entry.exit.do.body104_crit_edge

hns_dsaf_find_empty_mac_entry.exit.do.body104_crit_edge: ; preds = %hns_dsaf_find_empty_mac_entry.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body104

hns_dsaf_find_empty_mac_entry.exit.do.end97_crit_edge: ; preds = %hns_dsaf_find_empty_mac_entry.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end97

do.end97:                                         ; preds = %hns_dsaf_find_empty_mac_entry.exit.do.end97_crit_edge, %if.end.i181.do.end97_crit_edge, %if.end.do.end97_crit_edge
  %50 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dsaf_dev, align 8
  %name100 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.8, ptr noundef %name100, i32 noundef %.pre272, i32 noundef %mac_key.sroa.12.4.insert.insert) #18
  br label %cleanup

do.body104:                                       ; preds = %hns_dsaf_find_empty_mac_entry.exit.do.body104_crit_edge, %land.lhs.true8.i.do.body104_crit_edge
  %entry_index.0 = phi i16 [ %conv5.i, %hns_dsaf_find_empty_mac_entry.exit.do.body104_crit_edge ], [ %43, %land.lhs.true8.i.do.body104_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_dsaf_set_mac_uc_entry.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_dsaf_set_mac_uc_entry, %if.then109)) #15
          to label %do.end119 [label %if.then109], !srcloc !297

if.then109:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #17
  %52 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dsaf_dev, align 8
  %name112 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  %conv116 = zext i16 %entry_index.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_dsaf_set_mac_uc_entry.__UNIQUE_ID_ddebug354, ptr noundef %53, ptr noundef nonnull @.str.11, ptr noundef %name112, i32 noundef %.pre272, i32 noundef %mac_key.sroa.12.4.insert.insert, i32 noundef %conv116) #15
  br label %do.end119

do.end119:                                        ; preds = %if.then109, %do.body104
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %0, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %1, align 4
  %56 = ptrtoint ptr %mac_data to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %mac_data, align 4
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %2, align 4
  %port_num = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 3
  %58 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %port_num, align 1
  %conv120 = zext i8 %59 to i32
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv120, ptr %3, align 4
  %61 = ptrtoint ptr %tcam_data to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.pre272, ptr %tcam_data, align 4
  %62 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %mac_key.sroa.12.4.insert.insert, ptr %6, align 4
  %conv123 = zext i16 %entry_index.0 to i32
  call fastcc void @hns_dsaf_tcam_uc_cfg(ptr noundef %dsaf_dev, i32 noundef %conv123, ptr noundef nonnull %tcam_data, ptr noundef nonnull %mac_data)
  %add.ptr125 = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %5, i32 %conv123
  %index = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %5, i32 %conv123, i32 1
  %63 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %entry_index.0, ptr %index, align 4
  %64 = ptrtoint ptr %add.ptr125 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.pre272, ptr %add.ptr125, align 4
  %low130 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, ptr %add.ptr125, i32 0, i32 1
  %65 = ptrtoint ptr %low130 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %mac_key.sroa.12.4.insert.insert, ptr %low130, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end119, %do.end97, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end97 ], [ 0, %do.end119 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tcam_data) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %mac_data) #15
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hns_dsaf_tcam_uc_cfg(ptr noundef %dsaf_dev, i32 noundef %address, ptr nocapture noundef readonly %ptbl_tcam_data, ptr nocapture noundef readonly %ptbl_tcam_ucast) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tcam_lock = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 23
  tail call void @_raw_spin_lock_bh(ptr noundef %tcam_lock) #15
  %io_base.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 5
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 20492
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %3 = and i32 %2, 16711679
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #15
  %and1.i.i = and i32 %address, 511
  %or.i.i = or i32 %4, %and1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %5) #15, !srcloc !296
  %6 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base.i, align 4
  %tbl_tcam_data_low.i = getelementptr inbounds %struct.dsaf_tbl_tcam_data, ptr %ptbl_tcam_data, i32 0, i32 1
  %8 = ptrtoint ptr %tbl_tcam_data_low.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tbl_tcam_data_low.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #15
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 20504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #15, !srcloc !296
  %11 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base.i, align 4
  %13 = ptrtoint ptr %ptbl_tcam_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ptbl_tcam_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #15
  %add.ptr.i4.i = getelementptr i8, ptr %12, i32 20500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %15) #15, !srcloc !296
  %16 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %17, i32 20528
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %19 = and i32 %18, 15794175
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #15
  %tbl_ucast_mac_discard.i = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, ptr %ptbl_tcam_ucast, i32 0, i32 2
  %21 = ptrtoint ptr %tbl_ucast_mac_discard.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tbl_ucast_mac_discard.i, align 4
  %shl.i = shl i32 %22, 9
  %23 = and i32 %shl.i, 512
  %or70.i = or i32 %23, %20
  %tbl_ucast_item_vld.i = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, ptr %ptbl_tcam_ucast, i32 0, i32 1
  %24 = ptrtoint ptr %tbl_ucast_item_vld.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tbl_ucast_item_vld.i, align 4
  %shl10.i = shl i32 %25, 10
  %26 = and i32 %shl10.i, 1024
  %or1471.i = or i32 %or70.i, %26
  %27 = ptrtoint ptr %ptbl_tcam_ucast to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ptbl_tcam_ucast, align 4
  %shl22.i = shl i32 %28, 11
  %29 = and i32 %shl22.i, 2048
  %or2672.i = or i32 %or1471.i, %29
  %tbl_ucast_dvc.i = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, ptr %ptbl_tcam_ucast, i32 0, i32 3
  %30 = ptrtoint ptr %tbl_ucast_dvc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tbl_ucast_dvc.i, align 4
  %shl34.i = shl i32 %31, 8
  %32 = and i32 %shl34.i, 256
  %or3873.i = or i32 %or2672.i, %32
  %tbl_ucast_out_port.i = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, ptr %ptbl_tcam_ucast, i32 0, i32 4
  %33 = ptrtoint ptr %tbl_ucast_out_port.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tbl_ucast_out_port.i, align 4
  %35 = and i32 %34, 255
  %or5074.i = or i32 %or3873.i, %35
  %36 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %38 = tail call i32 @llvm.bswap.i32(i32 %or5074.i) #15
  %add.ptr.i75.i = getelementptr i8, ptr %37, i32 20528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 %38) #15, !srcloc !296
  %39 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i11 = getelementptr i8, ptr %40, i32 20640
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i11) #15, !srcloc !293
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %43 = or i32 %42, 12
  %44 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #15
  %add.ptr.i44.i = getelementptr i8, ptr %45, i32 20640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %46) #15, !srcloc !296
  %47 = and i32 %42, -13
  %48 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %50 = tail call i32 @llvm.bswap.i32(i32 %47) #15
  %add.ptr.i45.i = getelementptr i8, ptr %49, i32 20640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 %50) #15, !srcloc !296
  tail call void @_raw_spin_unlock_bh(ptr noundef %tcam_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_dsaf_rm_mac_addr(ptr noundef %dsaf_dev, ptr noundef %mac_entry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_entry, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %mac_entry, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end_crit_edge, label %if.end

is_valid_ether_addr.exit.do.end_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %is_valid_ether_addr.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %5 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsaf_dev, align 8
  %name = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef %mac_entry) #18
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %in_vlan_id = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 1
  %7 = ptrtoint ptr %in_vlan_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %in_vlan_id, align 2
  %in_port_num = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 2
  %9 = ptrtoint ptr %in_port_num to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %in_port_num, align 2
  %dsaf_mode.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %11 = ptrtoint ptr %dsaf_mode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dsaf_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp.i = icmp ult i32 %12, 8
  %13 = and i8 %10, 15
  %phi.cast.i = zext i8 %13 to i16
  %port.0.i = select i1 %cmp.i, i16 0, i16 %phi.cast.i
  %14 = ptrtoint ptr %mac_entry to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mac_entry, align 1
  %arrayidx1.i = getelementptr i8, ptr %mac_entry, i32 1
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx1.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %mac_entry, i32 2
  %18 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx3.i, align 1
  %arrayidx5.i = getelementptr i8, ptr %mac_entry, i32 3
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx5.i, align 1
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr.i.i, align 1
  %mac_key.sroa.11.7.insert.ext = zext i8 %23 to i32
  %arrayidx8.i = getelementptr i8, ptr %mac_entry, i32 5
  %24 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx8.i, align 1
  %mac_key.sroa.11.6.insert.ext = zext i8 %25 to i32
  %mac_key.sroa.11.6.insert.shift = shl nuw nsw i32 %mac_key.sroa.11.6.insert.ext, 8
  %mac_key.sroa.11.7.insert.insert = or i32 %mac_key.sroa.11.6.insert.shift, %mac_key.sroa.11.7.insert.ext
  %shl.i = shl i16 %8, 4
  %or34.i = or i16 %port.0.i, %shl.i
  %mac_key.sroa.11.4.insert.ext = zext i16 %or34.i to i32
  %mac_key.sroa.11.4.insert.shift = shl nuw i32 %mac_key.sroa.11.4.insert.ext, 16
  %mac_key.sroa.11.4.insert.insert = or i32 %mac_key.sroa.11.7.insert.insert, %mac_key.sroa.11.4.insert.shift
  %tcam_max_num.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 16
  %26 = ptrtoint ptr %tcam_max_num.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tcam_max_num.i, align 8
  %conv.i = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp23.not.i = icmp eq i16 %27, 0
  br i1 %cmp23.not.i, label %if.end.do.end11_crit_edge, label %for.body.lr.ph.i

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %.pre = zext i8 %15 to i32
  %.pre109 = zext i8 %17 to i32
  %.pre110 = shl nuw nsw i32 %.pre109, 8
  %.pre111 = or i32 %.pre110, %.pre
  %.pre112 = zext i8 %19 to i32
  %.pre113 = shl nuw nsw i32 %.pre112, 16
  %.pre114 = or i32 %.pre111, %.pre113
  %.pre115 = zext i8 %21 to i32
  %.pre116 = shl nuw i32 %.pre115, 24
  %.pre117 = or i32 %.pre114, %.pre116
  br label %do.end11

for.body.lr.ph.i:                                 ; preds = %if.end
  %add.ptr.i.i64 = getelementptr i8, ptr %dsaf_dev, i32 6544
  %28 = ptrtoint ptr %add.ptr.i.i64 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i.i64, align 4
  %mac_key.sroa.0.sroa.10.0.insert.ext99 = zext i8 %15 to i32
  %mac_key.sroa.0.sroa.9.0.insert.ext92 = zext i8 %17 to i32
  %mac_key.sroa.0.sroa.9.0.insert.shift93 = shl nuw nsw i32 %mac_key.sroa.0.sroa.9.0.insert.ext92, 8
  %mac_key.sroa.0.sroa.9.0.insert.insert95 = or i32 %mac_key.sroa.0.sroa.9.0.insert.shift93, %mac_key.sroa.0.sroa.10.0.insert.ext99
  %mac_key.sroa.0.sroa.8.0.insert.ext84 = zext i8 %19 to i32
  %mac_key.sroa.0.sroa.8.0.insert.shift85 = shl nuw nsw i32 %mac_key.sroa.0.sroa.8.0.insert.ext84, 16
  %mac_key.sroa.0.sroa.8.0.insert.insert87 = or i32 %mac_key.sroa.0.sroa.9.0.insert.insert95, %mac_key.sroa.0.sroa.8.0.insert.shift85
  %mac_key.sroa.0.sroa.0.0.insert.ext76 = zext i8 %21 to i32
  %mac_key.sroa.0.sroa.0.0.insert.shift77 = shl nuw i32 %mac_key.sroa.0.sroa.0.0.insert.ext76, 24
  %mac_key.sroa.0.sroa.0.0.insert.insert79 = or i32 %mac_key.sroa.0.sroa.8.0.insert.insert87, %mac_key.sroa.0.sroa.0.0.insert.shift77
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %soft_mac_entry.024.i = phi ptr [ %29, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ]
  %index.i = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.024.i, i32 0, i32 1
  %30 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %31)
  %cmp3.not.i = icmp eq i16 %31, -1
  br i1 %cmp3.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %32 = ptrtoint ptr %soft_mac_entry.024.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %soft_mac_entry.024.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %mac_key.sroa.0.sroa.0.0.insert.insert79)
  %cmp6.i = icmp eq i32 %33, %mac_key.sroa.0.sroa.0.0.insert.insert79
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %low.i65 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, ptr %soft_mac_entry.024.i, i32 0, i32 1
  %34 = ptrtoint ptr %low.i65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %low.i65, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %mac_key.sroa.11.4.insert.insert)
  %cmp11.i = icmp eq i32 %35, %mac_key.sroa.11.4.insert.insert
  br i1 %cmp11.i, label %do.body17, label %land.lhs.true8.i.if.end.i_crit_edge

land.lhs.true8.i.if.end.i_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true8.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.024.i, i32 1
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %if.end.i.do.end11_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end.i.do.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end11

do.end11:                                         ; preds = %if.end.i.do.end11_crit_edge, %if.end.do.end11_crit_edge
  %mac_key.sroa.0.sroa.0.0.insert.insert.pre-phi = phi i32 [ %.pre117, %if.end.do.end11_crit_edge ], [ %mac_key.sroa.0.sroa.0.0.insert.insert79, %if.end.i.do.end11_crit_edge ]
  %36 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dsaf_dev, align 8
  %name14 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.15, ptr noundef %name14, i32 noundef %mac_key.sroa.0.sroa.0.0.insert.insert.pre-phi, i32 noundef %mac_key.sroa.11.4.insert.insert) #18
  br label %cleanup

do.body17:                                        ; preds = %land.lhs.true8.i
  %conv = zext i16 %31 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_dsaf_rm_mac_addr.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_dsaf_rm_mac_addr, %if.then21)) #15
          to label %do.end31 [label %if.then21], !srcloc !297

if.then21:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dsaf_dev, align 8
  %name24 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_dsaf_rm_mac_addr.__UNIQUE_ID_ddebug355, ptr noundef %39, ptr noundef nonnull @.str.18, ptr noundef %name24, i32 noundef %mac_key.sroa.0.sroa.0.0.insert.insert79, i32 noundef %mac_key.sroa.11.4.insert.insert, i32 noundef %conv) #15
  br label %do.end31

do.end31:                                         ; preds = %if.then21, %do.body17
  %tcam_lock.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 23
  tail call void @_raw_spin_lock_bh(ptr noundef %tcam_lock.i) #15
  %io_base.i.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 5
  %40 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %41, i32 20492
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %43 = and i32 %42, 16711679
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #15
  %and1.i.i.i = and i32 %conv, 511
  %or.i.i.i = or i32 %44, %and1.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %45 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %45) #15, !srcloc !296
  %46 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %47, i32 20640
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #15, !srcloc !293
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %50 = or i32 %49, 32
  %51 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %io_base.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %53 = tail call i32 @llvm.bswap.i32(i32 %50) #15
  %add.ptr.i22.i.i = getelementptr i8, ptr %52, i32 20640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 %53) #15, !srcloc !296
  %54 = and i32 %49, -33
  %55 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_base.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %57 = tail call i32 @llvm.bswap.i32(i32 %54) #15
  %add.ptr.i23.i.i = getelementptr i8, ptr %56, i32 20640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i.i, i32 %57) #15, !srcloc !296
  %58 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %59, i32 20536
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i67) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %61 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %62, i32 20540
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %64 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %65, i32 20560
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i) #15, !srcloc !293
  %67 = lshr i32 %66, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %68 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %69, i32 20544
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  tail call void @_raw_spin_unlock_bh(ptr noundef %tcam_lock.i) #15
  %port_num = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 3
  %71 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %port_num, align 1
  %conv33 = zext i8 %72 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %conv33)
  %cmp34.not = icmp eq i32 %67, %conv33
  br i1 %cmp34.not, label %if.end37, label %do.end31.cleanup_crit_edge

do.end31.cleanup_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end37:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %in_vlan_id to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %in_vlan_id, align 2
  %75 = ptrtoint ptr %in_port_num to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %in_port_num, align 2
  %call42 = tail call i32 @hns_dsaf_del_mac_entry(ptr noundef %dsaf_dev, i16 noundef zeroext %74, i8 noundef zeroext %76, ptr noundef %mac_entry)
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end31.cleanup_crit_edge, %do.end11, %do.end
  %retval.0 = phi i32 [ 0, %do.end11 ], [ %call42, %if.end37 ], [ -22, %do.end ], [ -14, %do.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_dsaf_del_mac_entry(ptr noundef %dsaf_dev, i16 noundef zeroext %vlan_id, i8 noundef zeroext %in_port_num, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dsaf_dev, i32 6544
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %3, label %entry.if.end_crit_edge [
    i8 0, label %land.lhs.true
    i8 -1, label %land.lhs.true28
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %addr, i32 1
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp3 = icmp eq i8 %6, 0
  br i1 %cmp3, label %land.lhs.true5, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %add.ptr6 = getelementptr i8, ptr %addr, i32 2
  %7 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp8 = icmp eq i8 %8, 0
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true5.if.end_crit_edge

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true5
  %add.ptr11 = getelementptr i8, ptr %addr, i32 3
  %9 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp13 = icmp eq i8 %10, 0
  br i1 %cmp13, label %land.lhs.true15, label %land.lhs.true10.if.end_crit_edge

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true10
  %add.ptr16 = getelementptr i8, ptr %addr, i32 4
  %11 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp18 = icmp eq i8 %12, 0
  br i1 %cmp18, label %land.lhs.true20, label %land.lhs.true15.if.end_crit_edge

land.lhs.true15.if.end_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %add.ptr21 = getelementptr i8, ptr %addr, i32 5
  %13 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp23 = icmp eq i8 %14, 0
  br i1 %cmp23, label %land.lhs.true20.do.end_crit_edge, label %land.lhs.true20.if.end_crit_edge

land.lhs.true20.if.end_crit_edge:                 ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true20.do.end_crit_edge:                 ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true28:                                  ; preds = %entry
  %add.ptr29 = getelementptr i8, ptr %addr, i32 1
  %15 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp31 = icmp eq i8 %16, -1
  br i1 %cmp31, label %land.lhs.true33, label %land.lhs.true28.if.end_crit_edge

land.lhs.true28.if.end_crit_edge:                 ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true33:                                  ; preds = %land.lhs.true28
  %add.ptr34 = getelementptr i8, ptr %addr, i32 2
  %17 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp36 = icmp eq i8 %18, -1
  br i1 %cmp36, label %land.lhs.true38, label %land.lhs.true33.if.end_crit_edge

land.lhs.true33.if.end_crit_edge:                 ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true38:                                  ; preds = %land.lhs.true33
  %add.ptr39 = getelementptr i8, ptr %addr, i32 3
  %19 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp41 = icmp eq i8 %20, -1
  br i1 %cmp41, label %land.lhs.true43, label %land.lhs.true38.if.end_crit_edge

land.lhs.true38.if.end_crit_edge:                 ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true43:                                  ; preds = %land.lhs.true38
  %add.ptr44 = getelementptr i8, ptr %addr, i32 4
  %21 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %cmp46 = icmp eq i8 %22, -1
  br i1 %cmp46, label %land.lhs.true48, label %land.lhs.true43.if.end_crit_edge

land.lhs.true43.if.end_crit_edge:                 ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true48:                                  ; preds = %land.lhs.true43
  %add.ptr49 = getelementptr i8, ptr %addr, i32 5
  %23 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp51 = icmp eq i8 %24, -1
  br i1 %cmp51, label %land.lhs.true48.do.end_crit_edge, label %land.lhs.true48.if.end_crit_edge

land.lhs.true48.if.end_crit_edge:                 ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true48.do.end_crit_edge:                 ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %land.lhs.true48.do.end_crit_edge, %land.lhs.true20.do.end_crit_edge
  %25 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dsaf_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.26, ptr noundef %addr) #18
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true48.if.end_crit_edge, %land.lhs.true43.if.end_crit_edge, %land.lhs.true38.if.end_crit_edge, %land.lhs.true33.if.end_crit_edge, %land.lhs.true28.if.end_crit_edge, %land.lhs.true20.if.end_crit_edge, %land.lhs.true15.if.end_crit_edge, %land.lhs.true10.if.end_crit_edge, %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dsaf_mode.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %27 = ptrtoint ptr %dsaf_mode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dsaf_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %28)
  %cmp.i = icmp ult i32 %28, 8
  %29 = and i8 %in_port_num, 15
  %phi.cast.i = zext i8 %29 to i16
  %port.0.i = select i1 %cmp.i, i16 0, i16 %phi.cast.i
  %arrayidx1.i = getelementptr i8, ptr %addr, i32 1
  %30 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx1.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %addr, i32 2
  %32 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx3.i, align 1
  %arrayidx5.i = getelementptr i8, ptr %addr, i32 3
  %34 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx5.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %addr, i32 4
  %36 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx7.i, align 1
  %mac_key.sroa.10.7.insert.ext = zext i8 %37 to i32
  %arrayidx8.i = getelementptr i8, ptr %addr, i32 5
  %38 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx8.i, align 1
  %mac_key.sroa.10.6.insert.ext = zext i8 %39 to i32
  %mac_key.sroa.10.6.insert.shift = shl nuw nsw i32 %mac_key.sroa.10.6.insert.ext, 8
  %mac_key.sroa.10.7.insert.insert = or i32 %mac_key.sroa.10.6.insert.shift, %mac_key.sroa.10.7.insert.ext
  %shl.i = shl i16 %vlan_id, 4
  %or34.i = or i16 %port.0.i, %shl.i
  %mac_key.sroa.10.4.insert.ext = zext i16 %or34.i to i32
  %mac_key.sroa.10.4.insert.shift = shl nuw i32 %mac_key.sroa.10.4.insert.ext, 16
  %mac_key.sroa.10.4.insert.insert = or i32 %mac_key.sroa.10.7.insert.insert, %mac_key.sroa.10.4.insert.shift
  %tcam_max_num.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 16
  %40 = ptrtoint ptr %tcam_max_num.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tcam_max_num.i, align 8
  %conv.i = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp23.not.i = icmp eq i16 %41, 0
  %.pre = zext i8 %3 to i32
  %.pre152 = zext i8 %31 to i32
  %.pre153 = shl nuw nsw i32 %.pre152, 8
  %.pre154 = or i32 %.pre153, %.pre
  %.pre155 = zext i8 %33 to i32
  %.pre156 = shl nuw nsw i32 %.pre155, 16
  %.pre157 = or i32 %.pre154, %.pre156
  %.pre158 = zext i8 %35 to i32
  %.pre159 = shl nuw i32 %.pre158, 24
  %.pre160 = or i32 %.pre157, %.pre159
  br i1 %cmp23.not.i, label %if.end.do.end60_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.do.end60_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end60

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %soft_mac_entry.024.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ %1, %if.end.for.body.i_crit_edge ]
  %index.i = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.024.i, i32 0, i32 1
  %42 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %43)
  %cmp3.not.i = icmp eq i16 %43, -1
  br i1 %cmp3.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %44 = ptrtoint ptr %soft_mac_entry.024.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %soft_mac_entry.024.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %.pre160)
  %cmp6.i = icmp eq i32 %45, %.pre160
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %low.i109 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, ptr %soft_mac_entry.024.i, i32 0, i32 1
  %46 = ptrtoint ptr %low.i109 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %low.i109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %mac_key.sroa.10.4.insert.insert)
  %cmp11.i = icmp eq i32 %47, %mac_key.sroa.10.4.insert.insert
  br i1 %cmp11.i, label %do.body63, label %land.lhs.true8.i.if.end.i_crit_edge

land.lhs.true8.i.if.end.i_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true8.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.024.i, i32 1
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %if.end.i.do.end60_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end.i.do.end60_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end60

do.end60:                                         ; preds = %if.end.i.do.end60_crit_edge, %if.end.do.end60_crit_edge
  %48 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dsaf_dev, align 8
  %name = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.29, ptr noundef %name, i32 noundef %.pre160, i32 noundef %mac_key.sroa.10.4.insert.insert) #18
  br label %cleanup

do.body63:                                        ; preds = %land.lhs.true8.i
  %conv54 = zext i16 %43 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_dsaf_del_mac_entry.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_dsaf_del_mac_entry, %if.then67)) #15
          to label %do.end77 [label %if.then67], !srcloc !297

if.then67:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dsaf_dev, align 8
  %name70 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_dsaf_del_mac_entry.__UNIQUE_ID_ddebug357, ptr noundef %51, ptr noundef nonnull @.str.31, ptr noundef %name70, i32 noundef %.pre160, i32 noundef %mac_key.sroa.10.4.insert.insert, i32 noundef %conv54) #15
  br label %do.end77

do.end77:                                         ; preds = %if.then67, %do.body63
  tail call fastcc void @hns_dsaf_tcam_mc_invld(ptr noundef %dsaf_dev, i32 noundef %conv54)
  %index = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %1, i32 %conv54, i32 1
  %52 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 -1, ptr %index, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %do.end60, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end60 ], [ 0, %do.end77 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_dsaf_add_mac_mc_port(ptr noundef %dsaf_dev, ptr noundef %mac_entry) local_unnamed_addr #0 align 64 {
entry:
  %mask_key = alloca %struct.dsaf_drv_tbl_tcam_key, align 4
  %mac_data = alloca %struct.dsaf_tbl_tcam_mcast_cfg, align 4
  %tcam_data = alloca %struct.dsaf_tbl_tcam_data, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask_key) #15
  %0 = ptrtoint ptr %mask_key to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask_key, align 4, !annotation !298
  %1 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, ptr %mask_key, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !298
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mac_data) #15
  %add.ptr.i = getelementptr i8, ptr %dsaf_dev, i32 6544
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tcam_data) #15
  %5 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, ptr %tcam_data, i32 0, i32 1
  %6 = ptrtoint ptr %mac_entry to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mac_entry, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %mac_entry, i32 1
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp5 = icmp eq i8 %9, 0
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %add.ptr10 = getelementptr i8, ptr %mac_entry, i32 2
  %10 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp12 = icmp eq i8 %11, 0
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true14:                                  ; preds = %land.lhs.true7
  %add.ptr17 = getelementptr i8, ptr %mac_entry, i32 3
  %12 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp19 = icmp eq i8 %13, 0
  br i1 %cmp19, label %land.lhs.true21, label %land.lhs.true14.if.end_crit_edge

land.lhs.true14.if.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true21:                                  ; preds = %land.lhs.true14
  %add.ptr24 = getelementptr i8, ptr %mac_entry, i32 4
  %14 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp26 = icmp eq i8 %15, 0
  br i1 %cmp26, label %land.lhs.true28, label %land.lhs.true21.if.end_crit_edge

land.lhs.true21.if.end_crit_edge:                 ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true28:                                  ; preds = %land.lhs.true21
  %add.ptr31 = getelementptr i8, ptr %mac_entry, i32 5
  %16 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp33 = icmp eq i8 %17, 0
  br i1 %cmp33, label %do.end, label %land.lhs.true28.if.end_crit_edge

land.lhs.true28.if.end_crit_edge:                 ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dsaf_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.19, ptr noundef %mac_entry) #18
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true28.if.end_crit_edge, %land.lhs.true21.if.end_crit_edge, %land.lhs.true14.if.end_crit_edge, %land.lhs.true7.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %mac_entry to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mac_entry, align 4
  %mc_addr.sroa.0.sroa.0.0.extract.shift = lshr i32 %21, 16
  %mc_addr.sroa.0.sroa.0.sroa.0.0.extract.shift240335 = lshr i32 %21, 24
  %mc_addr.sroa.0.sroa.9.sroa.0.0.extract.shift336 = lshr i32 %21, 8
  %add.ptr.i194 = getelementptr i8, ptr %mac_entry, i32 4
  %22 = ptrtoint ptr %add.ptr.i194 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i194, align 2
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 15
  %24 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %25)
  %cmp40 = icmp eq i32 %25, 3552816
  br i1 %cmp40, label %if.end.if.end49_crit_edge, label %if.then42

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

if.then42:                                        ; preds = %if.end
  %in_port_num = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 2
  %26 = ptrtoint ptr %in_port_num to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %in_port_num, align 2
  %28 = ptrtoint ptr %mac_entry to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mac_entry, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %cmp.i = icmp eq i8 %29, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then42.if.else.i_crit_edge

if.then42.if.else.i_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then42
  %add.ptr.i195 = getelementptr i8, ptr %mac_entry, i32 1
  %30 = ptrtoint ptr %add.ptr.i195 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr.i195, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %cmp3.i = icmp eq i8 %31, -1
  br i1 %cmp3.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %add.ptr6.i = getelementptr i8, ptr %mac_entry, i32 2
  %32 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp8.i = icmp eq i8 %33, -1
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true5.i.if.else.i_crit_edge

land.lhs.true5.i.if.else.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true10.i:                                ; preds = %land.lhs.true5.i
  %add.ptr11.i = getelementptr i8, ptr %mac_entry, i32 3
  %34 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %cmp13.i = icmp eq i8 %35, -1
  br i1 %cmp13.i, label %land.lhs.true15.i, label %land.lhs.true10.i.if.else.i_crit_edge

land.lhs.true10.i.if.else.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true15.i:                                ; preds = %land.lhs.true10.i
  %36 = ptrtoint ptr %add.ptr.i194 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr.i194, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %cmp18.i = icmp eq i8 %37, -1
  br i1 %cmp18.i, label %land.lhs.true20.i, label %land.lhs.true15.i.if.else.i_crit_edge

land.lhs.true15.i.if.else.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true20.i:                                ; preds = %land.lhs.true15.i
  %add.ptr21.i = getelementptr i8, ptr %mac_entry, i32 5
  %38 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %39)
  %cmp23.i = icmp eq i8 %39, -1
  br i1 %cmp23.i, label %land.lhs.true20.i.hns_dsaf_setup_mc_mask.exit_crit_edge, label %land.lhs.true20.i.if.else.i_crit_edge

land.lhs.true20.i.if.else.i_crit_edge:            ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true20.i.hns_dsaf_setup_mc_mask.exit_crit_edge: ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hns_dsaf_setup_mc_mask.exit

if.else.i:                                        ; preds = %land.lhs.true20.i.if.else.i_crit_edge, %land.lhs.true15.i.if.else.i_crit_edge, %land.lhs.true10.i.if.else.i_crit_edge, %land.lhs.true5.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then42.if.else.i_crit_edge
  %idxprom.i = zext i8 %27 to i32
  %arrayidx.i = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 19, i32 %idxprom.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %mc_mask.i = getelementptr inbounds %struct.hns_mac_cb, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %mc_mask.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %mc_mask.sroa.0.0.copyload = load i16, ptr %mc_mask.i, align 4
  %mc_mask.sroa.0.sroa.0.0.extract.shift = lshr i16 %mc_mask.sroa.0.0.copyload, 8
  %mc_mask.sroa.0.sroa.0.0.extract.trunc = trunc i16 %mc_mask.sroa.0.sroa.0.0.extract.shift to i8
  %mc_mask.sroa.0.sroa.7.0.extract.trunc = trunc i16 %mc_mask.sroa.0.0.copyload to i8
  %mc_mask.sroa.9.0.mc_mask.i.sroa_idx = getelementptr inbounds %struct.hns_mac_cb, ptr %41, i32 0, i32 9, i32 2
  %43 = ptrtoint ptr %mc_mask.sroa.9.0.mc_mask.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %43)
  %mc_mask.sroa.9.0.copyload = load i16, ptr %mc_mask.sroa.9.0.mc_mask.i.sroa_idx, align 2
  %mc_mask.sroa.9.sroa.0.0.extract.shift = lshr i16 %mc_mask.sroa.9.0.copyload, 8
  %mc_mask.sroa.9.sroa.0.0.extract.trunc = trunc i16 %mc_mask.sroa.9.sroa.0.0.extract.shift to i8
  %mc_mask.sroa.9.sroa.7.0.extract.trunc = trunc i16 %mc_mask.sroa.9.0.copyload to i8
  %mc_mask.sroa.14.0.mc_mask.i.sroa_idx = getelementptr inbounds %struct.hns_mac_cb, ptr %41, i32 0, i32 9, i32 4
  %44 = ptrtoint ptr %mc_mask.sroa.14.0.mc_mask.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %44)
  %mc_mask.sroa.14.0.copyload = load i16, ptr %mc_mask.sroa.14.0.mc_mask.i.sroa_idx, align 4
  br label %hns_dsaf_setup_mc_mask.exit

hns_dsaf_setup_mc_mask.exit:                      ; preds = %if.else.i, %land.lhs.true20.i.hns_dsaf_setup_mc_mask.exit_crit_edge
  %mc_mask.sroa.0.sroa.0.0 = phi i8 [ %mc_mask.sroa.0.sroa.0.0.extract.trunc, %if.else.i ], [ -1, %land.lhs.true20.i.hns_dsaf_setup_mc_mask.exit_crit_edge ]
  %mc_mask.sroa.0.sroa.7.0 = phi i8 [ %mc_mask.sroa.0.sroa.7.0.extract.trunc, %if.else.i ], [ -1, %land.lhs.true20.i.hns_dsaf_setup_mc_mask.exit_crit_edge ]
  %mc_mask.sroa.9.sroa.0.0 = phi i8 [ %mc_mask.sroa.9.sroa.0.0.extract.trunc, %if.else.i ], [ -1, %land.lhs.true20.i.hns_dsaf_setup_mc_mask.exit_crit_edge ]
  %mc_mask.sroa.9.sroa.7.0 = phi i8 [ %mc_mask.sroa.9.sroa.7.0.extract.trunc, %if.else.i ], [ -1, %land.lhs.true20.i.hns_dsaf_setup_mc_mask.exit_crit_edge ]
  %mc_mask.sroa.14.0 = phi i16 [ %mc_mask.sroa.14.0.copyload, %if.else.i ], [ -1, %land.lhs.true20.i.hns_dsaf_setup_mc_mask.exit_crit_edge ]
  %mc_mask.sroa.0.sroa.7.0.insert.ext = zext i8 %mc_mask.sroa.0.sroa.7.0 to i16
  %mc_mask.sroa.0.sroa.0.0.insert.ext = zext i8 %mc_mask.sroa.0.sroa.0.0 to i16
  %mc_mask.sroa.0.sroa.0.0.insert.shift = shl nuw i16 %mc_mask.sroa.0.sroa.0.0.insert.ext, 8
  %mc_mask.sroa.0.sroa.0.0.insert.insert = or i16 %mc_mask.sroa.0.sroa.0.0.insert.shift, %mc_mask.sroa.0.sroa.7.0.insert.ext
  %45 = trunc i32 %mc_addr.sroa.0.sroa.0.0.extract.shift to i16
  %mc_addr.sroa.0.sroa.0.sroa.7.0.insert.ext = and i16 %45, 255
  %46 = trunc i32 %mc_addr.sroa.0.sroa.0.sroa.0.0.extract.shift240335 to i16
  %mc_addr.sroa.0.sroa.0.sroa.0.0.insert.shift = shl nuw i16 %46, 8
  %mc_addr.sroa.0.sroa.0.sroa.0.0.insert.insert = or i16 %mc_addr.sroa.0.sroa.0.sroa.7.0.insert.ext, %mc_addr.sroa.0.sroa.0.sroa.0.0.insert.shift
  %and20.i = and i16 %mc_mask.sroa.0.sroa.0.0.insert.insert, %mc_addr.sroa.0.sroa.0.sroa.0.0.insert.insert
  %mc_addr.sroa.0.sroa.0.sroa.0.0.extract.shift = lshr i16 %and20.i, 8
  %mc_addr.sroa.0.sroa.0.sroa.0.0.extract.trunc = zext i16 %mc_addr.sroa.0.sroa.0.sroa.0.0.extract.shift to i32
  %mc_addr.sroa.0.sroa.0.sroa.7.0.extract.trunc = zext i16 %and20.i to i32
  %mc_mask.sroa.9.sroa.7.0.insert.ext = zext i8 %mc_mask.sroa.9.sroa.7.0 to i16
  %mc_mask.sroa.9.sroa.0.0.insert.ext = zext i8 %mc_mask.sroa.9.sroa.0.0 to i16
  %mc_mask.sroa.9.sroa.0.0.insert.shift = shl nuw i16 %mc_mask.sroa.9.sroa.0.0.insert.ext, 8
  %mc_mask.sroa.9.sroa.0.0.insert.insert = or i16 %mc_mask.sroa.9.sroa.0.0.insert.shift, %mc_mask.sroa.9.sroa.7.0.insert.ext
  %47 = trunc i32 %21 to i16
  %mc_addr.sroa.0.sroa.9.sroa.7.0.insert.ext = and i16 %47, 255
  %48 = trunc i32 %mc_addr.sroa.0.sroa.9.sroa.0.0.extract.shift336 to i16
  %mc_addr.sroa.0.sroa.9.sroa.0.0.insert.ext = shl i16 %48, 8
  %mc_addr.sroa.0.sroa.9.sroa.0.0.insert.insert = or i16 %mc_addr.sroa.0.sroa.9.sroa.0.0.insert.ext, %mc_addr.sroa.0.sroa.9.sroa.7.0.insert.ext
  %and821.i = and i16 %mc_mask.sroa.9.sroa.0.0.insert.insert, %mc_addr.sroa.0.sroa.9.sroa.0.0.insert.insert
  %mc_addr.sroa.0.sroa.9.sroa.0.0.extract.shift237 = lshr i16 %and821.i, 8
  %mc_addr.sroa.0.sroa.9.sroa.0.0.extract.trunc238 = zext i16 %mc_addr.sroa.0.sroa.9.sroa.0.0.extract.shift237 to i32
  %mc_addr.sroa.0.sroa.9.sroa.7.0.extract.trunc239 = zext i16 %and821.i to i32
  %and1422.i = and i16 %mc_mask.sroa.14.0, %23
  %dsaf_mode.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %49 = ptrtoint ptr %dsaf_mode.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dsaf_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %50)
  %cmp.i196 = icmp ult i32 %50, 8
  %port.0.i = select i1 %cmp.i196, i16 0, i16 15
  %mac_0.i = getelementptr inbounds %struct.anon.133, ptr %mask_key, i32 0, i32 3
  %51 = ptrtoint ptr %mac_0.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %mc_mask.sroa.0.sroa.0.0, ptr %mac_0.i, align 1
  %mac_1.i = getelementptr inbounds %struct.anon.133, ptr %mask_key, i32 0, i32 2
  %52 = ptrtoint ptr %mac_1.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %mc_mask.sroa.0.sroa.7.0, ptr %mac_1.i, align 2
  %mac_2.i = getelementptr inbounds %struct.anon.133, ptr %mask_key, i32 0, i32 1
  %53 = ptrtoint ptr %mac_2.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %mc_mask.sroa.9.sroa.0.0, ptr %mac_2.i, align 1
  %54 = ptrtoint ptr %mask_key to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %mc_mask.sroa.9.sroa.7.0, ptr %mask_key, align 4
  %mc_mask.sroa.14.4.extract.shift = lshr i16 %mc_mask.sroa.14.0, 8
  %mc_mask.sroa.14.4.extract.trunc = trunc i16 %mc_mask.sroa.14.4.extract.shift to i8
  %mac_4.i = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %mac_4.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %mc_mask.sroa.14.4.extract.trunc, ptr %mac_4.i, align 1
  %mc_mask.sroa.14.5.extract.trunc = trunc i16 %mc_mask.sroa.14.0 to i8
  %mac_5.i = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 1
  %56 = ptrtoint ptr %mac_5.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %mc_mask.sroa.14.5.extract.trunc, ptr %mac_5.i, align 2
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %port.0.i, ptr %1, align 4
  br label %if.end49

if.end49:                                         ; preds = %hns_dsaf_setup_mc_mask.exit, %if.end.if.end49_crit_edge
  %mc_addr.sroa.0.sroa.0.sroa.7.0 = phi i32 [ %mc_addr.sroa.0.sroa.0.0.extract.shift, %if.end.if.end49_crit_edge ], [ %mc_addr.sroa.0.sroa.0.sroa.7.0.extract.trunc, %hns_dsaf_setup_mc_mask.exit ]
  %mc_addr.sroa.0.sroa.0.sroa.0.0 = phi i32 [ %mc_addr.sroa.0.sroa.0.sroa.0.0.extract.shift240335, %if.end.if.end49_crit_edge ], [ %mc_addr.sroa.0.sroa.0.sroa.0.0.extract.trunc, %hns_dsaf_setup_mc_mask.exit ]
  %mc_addr.sroa.0.sroa.9.sroa.7.0 = phi i32 [ %21, %if.end.if.end49_crit_edge ], [ %mc_addr.sroa.0.sroa.9.sroa.7.0.extract.trunc239, %hns_dsaf_setup_mc_mask.exit ]
  %mc_addr.sroa.0.sroa.9.sroa.0.0 = phi i32 [ %mc_addr.sroa.0.sroa.9.sroa.0.0.extract.shift336, %if.end.if.end49_crit_edge ], [ %mc_addr.sroa.0.sroa.9.sroa.0.0.extract.trunc238, %hns_dsaf_setup_mc_mask.exit ]
  %mc_addr.sroa.15.0.off8.in.in = phi i16 [ %23, %if.end.if.end49_crit_edge ], [ %and1422.i, %hns_dsaf_setup_mc_mask.exit ]
  %pmask_key.0 = phi ptr [ null, %if.end.if.end49_crit_edge ], [ %mask_key, %hns_dsaf_setup_mc_mask.exit ]
  %in_vlan_id = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 1
  %58 = ptrtoint ptr %in_vlan_id to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %in_vlan_id, align 2
  %in_port_num50 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 2
  %60 = ptrtoint ptr %in_port_num50 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %in_port_num50, align 2
  %dsaf_mode.i197 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %62 = ptrtoint ptr %dsaf_mode.i197 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dsaf_mode.i197, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %63)
  %cmp.i198 = icmp ult i32 %63, 8
  %64 = and i8 %61, 15
  %phi.cast.i = zext i8 %64 to i16
  %port.0.i199 = select i1 %cmp.i198, i16 0, i16 %phi.cast.i
  %rev = tail call i16 @llvm.bswap.i16(i16 %mc_addr.sroa.15.0.off8.in.in)
  %mac_key.sroa.13.7.insert.insert = zext i16 %rev to i32
  %shl.i = shl i16 %59, 4
  %or34.i = or i16 %port.0.i199, %shl.i
  %mac_key.sroa.13.4.insert.ext = zext i16 %or34.i to i32
  %mac_key.sroa.13.4.insert.shift = shl nuw i32 %mac_key.sroa.13.4.insert.ext, 16
  %mac_key.sroa.13.4.insert.insert = or i32 %mac_key.sroa.13.4.insert.shift, %mac_key.sroa.13.7.insert.insert
  %65 = call ptr @memset(ptr %mac_data, i32 0, i32 24)
  %tcam_max_num.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 16
  %66 = ptrtoint ptr %tcam_max_num.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %tcam_max_num.i, align 8
  %conv.i = zext i16 %67 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp23.not.i = icmp eq i16 %67, 0
  %.pre = and i32 %mc_addr.sroa.0.sroa.0.sroa.0.0, 255
  %.pre345 = shl nuw nsw i32 %mc_addr.sroa.0.sroa.0.sroa.7.0, 8
  %.pre346 = and i32 %.pre345, 65280
  %.pre347 = or i32 %.pre346, %.pre
  %.pre348 = shl i32 %mc_addr.sroa.0.sroa.9.sroa.0.0, 16
  %.pre349 = and i32 %.pre348, 16711680
  %.pre350 = or i32 %.pre349, %.pre347
  %.pre351 = shl i32 %mc_addr.sroa.0.sroa.9.sroa.7.0, 24
  %.pre353 = or i32 %.pre350, %.pre351
  br i1 %cmp23.not.i, label %if.end49.do.end64_crit_edge, label %if.end49.for.body.i_crit_edge

if.end49.for.body.i_crit_edge:                    ; preds = %if.end49
  br label %for.body.i

if.end49.do.end64_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end64

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end49.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end49.for.body.i_crit_edge ]
  %soft_mac_entry.024.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ %4, %if.end49.for.body.i_crit_edge ]
  %index.i = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.024.i, i32 0, i32 1
  %68 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %69)
  %cmp3.not.i = icmp eq i16 %69, -1
  br i1 %cmp3.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i211

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i211:                               ; preds = %for.body.i
  %70 = ptrtoint ptr %soft_mac_entry.024.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %soft_mac_entry.024.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %.pre353)
  %cmp6.i = icmp eq i32 %71, %.pre353
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i211.if.end.i_crit_edge

land.lhs.true.i211.if.end.i_crit_edge:            ; preds = %land.lhs.true.i211
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i211
  %low.i212 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, ptr %soft_mac_entry.024.i, i32 0, i32 1
  %72 = ptrtoint ptr %low.i212 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %low.i212, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %mac_key.sroa.13.4.insert.insert)
  %cmp11.i = icmp eq i32 %73, %mac_key.sroa.13.4.insert.insert
  br i1 %cmp11.i, label %if.else, label %land.lhs.true8.i.if.end.i_crit_edge

land.lhs.true8.i.if.end.i_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true8.i.if.end.i_crit_edge, %land.lhs.true.i211.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.024.i, i32 1
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %if.end.i.for.body.i219_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end.i.for.body.i219_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i219

for.body.i219:                                    ; preds = %if.end.i224.for.body.i219_crit_edge, %if.end.i.for.body.i219_crit_edge
  %i.015.i = phi i32 [ %inc.i222, %if.end.i224.for.body.i219_crit_edge ], [ 0, %if.end.i.for.body.i219_crit_edge ]
  %soft_mac_entry.014.i = phi ptr [ %incdec.ptr.i221, %if.end.i224.for.body.i219_crit_edge ], [ %4, %if.end.i.for.body.i219_crit_edge ]
  %index.i217 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.014.i, i32 0, i32 1
  %74 = ptrtoint ptr %index.i217 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %index.i217, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %75)
  %cmp3.i218 = icmp eq i16 %75, -1
  br i1 %cmp3.i218, label %hns_dsaf_find_empty_mac_entry.exit, label %if.end.i224

if.end.i224:                                      ; preds = %for.body.i219
  %incdec.ptr.i221 = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.014.i, i32 1
  %inc.i222 = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i223 = icmp eq i32 %inc.i222, %conv.i
  br i1 %exitcond.not.i223, label %if.end.i224.do.end64_crit_edge, label %if.end.i224.for.body.i219_crit_edge

if.end.i224.for.body.i219_crit_edge:              ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i219

if.end.i224.do.end64_crit_edge:                   ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end64

hns_dsaf_find_empty_mac_entry.exit:               ; preds = %for.body.i219
  %conv5.i = trunc i32 %i.015.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv5.i)
  %cmp59 = icmp eq i16 %conv5.i, -1
  br i1 %cmp59, label %hns_dsaf_find_empty_mac_entry.exit.do.end64_crit_edge, label %hns_dsaf_find_empty_mac_entry.exit.if.end69_crit_edge

hns_dsaf_find_empty_mac_entry.exit.if.end69_crit_edge: ; preds = %hns_dsaf_find_empty_mac_entry.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

hns_dsaf_find_empty_mac_entry.exit.do.end64_crit_edge: ; preds = %hns_dsaf_find_empty_mac_entry.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end64

do.end64:                                         ; preds = %hns_dsaf_find_empty_mac_entry.exit.do.end64_crit_edge, %if.end.i224.do.end64_crit_edge, %if.end49.do.end64_crit_edge
  %76 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dsaf_dev, align 8
  %name = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %.pre353, i32 noundef %mac_key.sroa.13.4.insert.insert) #18
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv53 = zext i16 %69 to i32
  call fastcc void @hns_dsaf_tcam_mc_get(ptr noundef %dsaf_dev, i32 noundef %conv53, ptr noundef nonnull %tcam_data, ptr noundef nonnull %mac_data)
  br label %if.end69

if.end69:                                         ; preds = %if.else, %hns_dsaf_find_empty_mac_entry.exit.if.end69_crit_edge
  %entry_index.0 = phi i16 [ %conv5.i, %hns_dsaf_find_empty_mac_entry.exit.if.end69_crit_edge ], [ %69, %if.else ]
  %port_num = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 3
  %78 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %port_num, align 1
  %conv70 = zext i8 %79 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %79)
  %cmp71 = icmp ult i8 %79, 6
  br i1 %cmp71, label %if.end69.do.body98_crit_edge, label %if.else76

if.end69.do.body98_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body98

if.else76:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %79)
  %cmp79 = icmp ugt i8 %79, 126
  br i1 %cmp79, label %if.then81, label %do.end87

if.then81:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #17
  %add = add nsw i32 %conv70, -121
  br label %do.body98

do.end87:                                         ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #17
  %80 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dsaf_dev, align 8
  %name90 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.24, ptr noundef %name90, i32 noundef %conv70, i32 noundef %.pre353, i32 noundef %mac_key.sroa.13.4.insert.insert) #18
  br label %cleanup

do.body98:                                        ; preds = %if.then81, %if.end69.do.body98_crit_edge
  %mskid.0 = phi i32 [ %add, %if.then81 ], [ %conv70, %if.end69.do.body98_crit_edge ]
  %rem.lhs.trunc = trunc i32 %mskid.0 to i16
  %rem.lhs.trunc.frozen = freeze i16 %rem.lhs.trunc
  %div334 = sdiv i16 %rem.lhs.trunc.frozen, 32
  %82 = mul i16 %div334, 32
  %rem333.decomposed = sub i16 %rem.lhs.trunc.frozen, %82
  %rem.sext = sext i16 %rem333.decomposed to i32
  %sh_prom = zext i32 %rem.sext to i64
  %shl = shl nuw i64 1, %sh_prom
  %div.sext = sext i16 %div334 to i32
  %arrayidx = getelementptr %struct.dsaf_tbl_tcam_mcast_cfg, ptr %mac_data, i32 0, i32 2, i32 %div.sext
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx, align 4
  %85 = trunc i64 %shl to i32
  %86 = xor i32 %85, -1
  %conv100 = and i32 %84, %86
  %shl102 = shl nuw i32 1, %rem.sext
  %87 = and i32 %shl102, %85
  %conv112 = or i32 %87, %conv100
  store i32 %conv112, ptr %arrayidx, align 4
  %88 = ptrtoint ptr %mac_data to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %mac_data, align 4
  %tbl_mcast_item_vld = getelementptr inbounds %struct.dsaf_tbl_tcam_mcast_cfg, ptr %mac_data, i32 0, i32 1
  %89 = ptrtoint ptr %tbl_mcast_item_vld to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %tbl_mcast_item_vld, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_dsaf_add_mac_mc_port.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_dsaf_add_mac_mc_port, %if.then119)) #15
          to label %do.end129 [label %if.then119], !srcloc !297

if.then119:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #17
  %90 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dsaf_dev, align 8
  %name122 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  %conv126 = zext i16 %entry_index.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_dsaf_add_mac_mc_port.__UNIQUE_ID_ddebug356, ptr noundef %91, ptr noundef nonnull @.str.11, ptr noundef %name122, i32 noundef %.pre353, i32 noundef %mac_key.sroa.13.4.insert.insert, i32 noundef %conv126) #15
  br label %do.end129

do.end129:                                        ; preds = %if.then119, %do.body98
  %92 = ptrtoint ptr %tcam_data to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %.pre353, ptr %tcam_data, align 4
  %93 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %mac_key.sroa.13.4.insert.insert, ptr %5, align 4
  %conv132 = zext i16 %entry_index.0 to i32
  call fastcc void @hns_dsaf_tcam_mc_cfg(ptr noundef %dsaf_dev, i32 noundef %conv132, ptr noundef nonnull %tcam_data, ptr noundef %pmask_key.0, ptr noundef nonnull %mac_data)
  %add.ptr134 = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %4, i32 %conv132
  %index = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %4, i32 %conv132, i32 1
  %94 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %entry_index.0, ptr %index, align 4
  %95 = ptrtoint ptr %add.ptr134 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %.pre353, ptr %add.ptr134, align 4
  %low139 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, ptr %add.ptr134, i32 0, i32 1
  %96 = ptrtoint ptr %low139 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %mac_key.sroa.13.4.insert.insert, ptr %low139, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end129, %do.end87, %do.end64, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end64 ], [ 0, %do.end129 ], [ -22, %do.end87 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tcam_data) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mac_data) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask_key) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hns_dsaf_tcam_mc_get(ptr noundef %dsaf_dev, i32 noundef %address, ptr nocapture noundef writeonly %ptbl_tcam_data, ptr nocapture noundef writeonly %ptbl_tcam_mcast) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tcam_lock = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 23
  tail call void @_raw_spin_lock_bh(ptr noundef %tcam_lock) #15
  %io_base.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 5
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 20492
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %3 = and i32 %2, 16711679
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #15
  %and1.i.i = and i32 %address, 511
  %or.i.i = or i32 %4, %and1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %5) #15, !srcloc !296
  %6 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 20640
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !293
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %10 = or i32 %9, 32
  %11 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #15
  %add.ptr.i22.i = getelementptr i8, ptr %12, i32 20640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %13) #15, !srcloc !296
  %14 = and i32 %9, -33
  %15 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #15
  %add.ptr.i23.i = getelementptr i8, ptr %16, i32 20640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %17) #15, !srcloc !296
  %18 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 20536
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !293
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %22 = ptrtoint ptr %ptbl_tcam_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ptbl_tcam_data, align 4
  %23 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %24, i32 20540
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #15, !srcloc !293
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %tbl_tcam_data_low = getelementptr inbounds %struct.dsaf_tbl_tcam_data, ptr %ptbl_tcam_data, i32 0, i32 1
  %27 = ptrtoint ptr %tbl_tcam_data_low to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tbl_tcam_data_low, align 4
  %28 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %29, i32 20560
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #15, !srcloc !293
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %tbl_mcast_port_msk = getelementptr inbounds %struct.dsaf_tbl_tcam_mcast_cfg, ptr %ptbl_tcam_mcast, i32 0, i32 2
  %32 = ptrtoint ptr %tbl_mcast_port_msk to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %tbl_mcast_port_msk, align 4
  %33 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %34, i32 20556
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #15, !srcloc !293
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx8 = getelementptr %struct.dsaf_tbl_tcam_mcast_cfg, ptr %ptbl_tcam_mcast, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx8, align 4
  %38 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %39, i32 20552
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #15, !srcloc !293
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx12 = getelementptr %struct.dsaf_tbl_tcam_mcast_cfg, ptr %ptbl_tcam_mcast, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx12, align 4
  %43 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %44, i32 20548
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #15, !srcloc !293
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx16 = getelementptr %struct.dsaf_tbl_tcam_mcast_cfg, ptr %ptbl_tcam_mcast, i32 0, i32 2, i32 3
  %47 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx16, align 4
  %48 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %49, i32 20544
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #15, !srcloc !293
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %52 = trunc i32 %51 to i8
  %53 = lshr i8 %52, 7
  %tbl_mcast_item_vld = getelementptr inbounds %struct.dsaf_tbl_tcam_mcast_cfg, ptr %ptbl_tcam_mcast, i32 0, i32 1
  %54 = ptrtoint ptr %tbl_mcast_item_vld to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %tbl_mcast_item_vld, align 1
  %55 = lshr i32 %51, 8
  %56 = trunc i32 %55 to i8
  %conv23 = and i8 %56, 1
  %57 = ptrtoint ptr %ptbl_tcam_mcast to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv23, ptr %ptbl_tcam_mcast, align 4
  %and25 = and i32 %51, 127
  %arrayidx29 = getelementptr %struct.dsaf_tbl_tcam_mcast_cfg, ptr %ptbl_tcam_mcast, i32 0, i32 2, i32 4
  %58 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and25, ptr %arrayidx29, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tcam_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hns_dsaf_tcam_mc_cfg(ptr noundef %dsaf_dev, i32 noundef %address, ptr nocapture noundef readonly %ptbl_tcam_data, ptr noundef readonly %ptbl_tcam_mask, ptr nocapture noundef readonly %ptbl_tcam_mcast) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tcam_lock = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 23
  tail call void @_raw_spin_lock_bh(ptr noundef %tcam_lock) #15
  %io_base.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 5
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 20492
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %3 = and i32 %2, 16711679
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #15
  %and1.i.i = and i32 %address, 511
  %or.i.i = or i32 %4, %and1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %5) #15, !srcloc !296
  %6 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base.i, align 4
  %tbl_tcam_data_low.i = getelementptr inbounds %struct.dsaf_tbl_tcam_data, ptr %ptbl_tcam_data, i32 0, i32 1
  %8 = ptrtoint ptr %tbl_tcam_data_low.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tbl_tcam_data_low.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #15
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 20504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #15, !srcloc !296
  %11 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base.i, align 4
  %13 = ptrtoint ptr %ptbl_tcam_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ptbl_tcam_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #15
  %add.ptr.i4.i = getelementptr i8, ptr %12, i32 20500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %15) #15, !srcloc !296
  tail call fastcc void @hns_dsaf_tbl_tcam_mcast_cfg(ptr noundef %dsaf_dev, ptr noundef %ptbl_tcam_mcast)
  %tobool.not = icmp eq ptr %ptbl_tcam_mask, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base.i, align 4
  %tbl_tcam_data_low.i11 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, ptr %ptbl_tcam_mask, i32 0, i32 1
  %18 = ptrtoint ptr %tbl_tcam_data_low.i11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tbl_tcam_data_low.i11, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #15
  %add.ptr.i.i12 = getelementptr i8, ptr %17, i32 20788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i12, i32 %20) #15, !srcloc !296
  %21 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_base.i, align 4
  %23 = ptrtoint ptr %ptbl_tcam_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ptbl_tcam_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #15
  %add.ptr.i4.i13 = getelementptr i8, ptr %22, i32 20784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i13, i32 %25) #15, !srcloc !296
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %26 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %27, i32 20640
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #15, !srcloc !293
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %30 = or i32 %29, 6
  %31 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %33 = tail call i32 @llvm.bswap.i32(i32 %30) #15
  %add.ptr.i44.i = getelementptr i8, ptr %32, i32 20640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %33) #15, !srcloc !296
  %34 = and i32 %29, -7
  %35 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %37 = tail call i32 @llvm.bswap.i32(i32 %34) #15
  %add.ptr.i45.i = getelementptr i8, ptr %36, i32 20640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 %37) #15, !srcloc !296
  tail call void @_raw_spin_unlock_bh(ptr noundef %tcam_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hns_dsaf_tcam_mc_invld(ptr noundef %dsaf_dev, i32 noundef %address) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tcam_lock = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 23
  tail call void @_raw_spin_lock_bh(ptr noundef %tcam_lock) #15
  %io_base.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 5
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 20492
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %3 = and i32 %2, 16711679
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #15
  %and1.i.i = and i32 %address, 511
  %or.i.i = or i32 %4, %and1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %5) #15, !srcloc !296
  %6 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %add.ptr.i = getelementptr i8, ptr %7, i32 20524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #15, !srcloc !296
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %add.ptr.i14 = getelementptr i8, ptr %9, i32 20520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 0) #15, !srcloc !296
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %add.ptr.i15 = getelementptr i8, ptr %11, i32 20516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 0) #15, !srcloc !296
  %12 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %add.ptr.i16 = getelementptr i8, ptr %13, i32 20512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 0) #15, !srcloc !296
  %14 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %add.ptr.i17 = getelementptr i8, ptr %15, i32 20508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 0) #15, !srcloc !296
  %16 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 20640
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !293
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %20 = or i32 %19, 2
  %21 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #15
  %add.ptr.i22.i = getelementptr i8, ptr %22, i32 20640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %23) #15, !srcloc !296
  %24 = and i32 %19, -3
  %25 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #15
  %add.ptr.i23.i = getelementptr i8, ptr %26, i32 20640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %27) #15, !srcloc !296
  tail call void @_raw_spin_unlock_bh(ptr noundef %tcam_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_dsaf_del_mac_mc_port(ptr noundef %dsaf_dev, ptr noundef %mac_entry) local_unnamed_addr #0 align 64 {
entry:
  %mac_data = alloca %struct.dsaf_tbl_tcam_mcast_cfg, align 4
  %tcam_data = alloca %struct.dsaf_tbl_tcam_data, align 4
  %empty_msk = alloca [20 x i8], align 1
  %mask_key = alloca %struct.dsaf_drv_tbl_tcam_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dsaf_dev, i32 6544
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mac_data) #15
  %2 = call ptr @memset(ptr %mac_data, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tcam_data) #15
  %3 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, ptr %tcam_data, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %empty_msk) #15
  %4 = call ptr @memset(ptr %empty_msk, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask_key) #15
  %5 = ptrtoint ptr %mask_key to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %mask_key, align 4, !annotation !298
  %6 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, ptr %mask_key, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !298
  %tobool.not = icmp eq ptr %mac_entry, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dsaf_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.32) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %mac_entry to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mac_entry, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp eq i8 %11, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end42_crit_edge

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %mac_entry, i32 1
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp5 = icmp eq i8 %13, 0
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.end42_crit_edge

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

land.lhs.true7:                                   ; preds = %land.lhs.true
  %add.ptr10 = getelementptr i8, ptr %mac_entry, i32 2
  %14 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp12 = icmp eq i8 %15, 0
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true7.if.end42_crit_edge

land.lhs.true7.if.end42_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

land.lhs.true14:                                  ; preds = %land.lhs.true7
  %add.ptr17 = getelementptr i8, ptr %mac_entry, i32 3
  %16 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp19 = icmp eq i8 %17, 0
  br i1 %cmp19, label %land.lhs.true21, label %land.lhs.true14.if.end42_crit_edge

land.lhs.true14.if.end42_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

land.lhs.true21:                                  ; preds = %land.lhs.true14
  %add.ptr24 = getelementptr i8, ptr %mac_entry, i32 4
  %18 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp26 = icmp eq i8 %19, 0
  br i1 %cmp26, label %land.lhs.true28, label %land.lhs.true21.if.end42_crit_edge

land.lhs.true21.if.end42_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

land.lhs.true28:                                  ; preds = %land.lhs.true21
  %add.ptr31 = getelementptr i8, ptr %mac_entry, i32 5
  %20 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp33 = icmp eq i8 %21, 0
  br i1 %cmp33, label %do.end38, label %land.lhs.true28.if.end42_crit_edge

land.lhs.true28.if.end42_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

do.end38:                                         ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dsaf_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.35, ptr noundef nonnull %mac_entry) #18
  br label %cleanup

if.end42:                                         ; preds = %land.lhs.true28.if.end42_crit_edge, %land.lhs.true21.if.end42_crit_edge, %land.lhs.true14.if.end42_crit_edge, %land.lhs.true7.if.end42_crit_edge, %land.lhs.true.if.end42_crit_edge, %if.end.if.end42_crit_edge
  %24 = ptrtoint ptr %mac_entry to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mac_entry, align 4
  %mc_addr.sroa.0.sroa.0.0.extract.shift = lshr i32 %25, 16
  %mc_addr.sroa.0.sroa.0.sroa.0.0.extract.shift234311 = lshr i32 %25, 24
  %mc_addr.sroa.0.sroa.9.sroa.0.0.extract.shift312 = lshr i32 %25, 8
  %add.ptr.i200 = getelementptr i8, ptr %mac_entry, i32 4
  %26 = ptrtoint ptr %add.ptr.i200 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i200, align 2
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 15
  %28 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %29)
  %cmp46 = icmp eq i32 %29, 3552816
  br i1 %cmp46, label %if.end42.if.end56_crit_edge, label %if.then48

if.end42.if.end56_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then48:                                        ; preds = %if.end42
  %in_port_num49 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 2
  %30 = ptrtoint ptr %in_port_num49 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %in_port_num49, align 2
  %32 = ptrtoint ptr %mac_entry to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mac_entry, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp.i = icmp eq i8 %33, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then48.if.else.i_crit_edge

if.then48.if.else.i_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then48
  %add.ptr.i201 = getelementptr i8, ptr %mac_entry, i32 1
  %34 = ptrtoint ptr %add.ptr.i201 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr.i201, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %cmp3.i = icmp eq i8 %35, -1
  br i1 %cmp3.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %add.ptr6.i = getelementptr i8, ptr %mac_entry, i32 2
  %36 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %cmp8.i = icmp eq i8 %37, -1
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true5.i.if.else.i_crit_edge

land.lhs.true5.i.if.else.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true10.i:                                ; preds = %land.lhs.true5.i
  %add.ptr11.i = getelementptr i8, ptr %mac_entry, i32 3
  %38 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %39)
  %cmp13.i = icmp eq i8 %39, -1
  br i1 %cmp13.i, label %land.lhs.true15.i, label %land.lhs.true10.i.if.else.i_crit_edge

land.lhs.true10.i.if.else.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true15.i:                                ; preds = %land.lhs.true10.i
  %40 = ptrtoint ptr %add.ptr.i200 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr.i200, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %41)
  %cmp18.i = icmp eq i8 %41, -1
  br i1 %cmp18.i, label %land.lhs.true20.i, label %land.lhs.true15.i.if.else.i_crit_edge

land.lhs.true15.i.if.else.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true20.i:                                ; preds = %land.lhs.true15.i
  %add.ptr21.i = getelementptr i8, ptr %mac_entry, i32 5
  %42 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %cmp23.i = icmp eq i8 %43, -1
  br i1 %cmp23.i, label %land.lhs.true20.i.hns_dsaf_setup_mc_mask.exit_crit_edge, label %land.lhs.true20.i.if.else.i_crit_edge

land.lhs.true20.i.if.else.i_crit_edge:            ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true20.i.hns_dsaf_setup_mc_mask.exit_crit_edge: ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hns_dsaf_setup_mc_mask.exit

if.else.i:                                        ; preds = %land.lhs.true20.i.if.else.i_crit_edge, %land.lhs.true15.i.if.else.i_crit_edge, %land.lhs.true10.i.if.else.i_crit_edge, %land.lhs.true5.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then48.if.else.i_crit_edge
  %idxprom.i = zext i8 %31 to i32
  %arrayidx.i = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 19, i32 %idxprom.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 4
  %mc_mask.i = getelementptr inbounds %struct.hns_mac_cb, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %mc_mask.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %mc_mask.sroa.0.0.copyload = load i16, ptr %mc_mask.i, align 4
  %mc_mask.sroa.0.sroa.0.0.extract.shift = lshr i16 %mc_mask.sroa.0.0.copyload, 8
  %mc_mask.sroa.0.sroa.0.0.extract.trunc = trunc i16 %mc_mask.sroa.0.sroa.0.0.extract.shift to i8
  %mc_mask.sroa.0.sroa.7.0.extract.trunc = trunc i16 %mc_mask.sroa.0.0.copyload to i8
  %mc_mask.sroa.9.0.mc_mask.i.sroa_idx = getelementptr inbounds %struct.hns_mac_cb, ptr %45, i32 0, i32 9, i32 2
  %47 = ptrtoint ptr %mc_mask.sroa.9.0.mc_mask.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %47)
  %mc_mask.sroa.9.0.copyload = load i16, ptr %mc_mask.sroa.9.0.mc_mask.i.sroa_idx, align 2
  %mc_mask.sroa.9.sroa.0.0.extract.shift = lshr i16 %mc_mask.sroa.9.0.copyload, 8
  %mc_mask.sroa.9.sroa.0.0.extract.trunc = trunc i16 %mc_mask.sroa.9.sroa.0.0.extract.shift to i8
  %mc_mask.sroa.9.sroa.7.0.extract.trunc = trunc i16 %mc_mask.sroa.9.0.copyload to i8
  %mc_mask.sroa.14.0.mc_mask.i.sroa_idx = getelementptr inbounds %struct.hns_mac_cb, ptr %45, i32 0, i32 9, i32 4
  %48 = ptrtoint ptr %mc_mask.sroa.14.0.mc_mask.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %48)
  %mc_mask.sroa.14.0.copyload = load i16, ptr %mc_mask.sroa.14.0.mc_mask.i.sroa_idx, align 4
  br label %hns_dsaf_setup_mc_mask.exit

hns_dsaf_setup_mc_mask.exit:                      ; preds = %if.else.i, %land.lhs.true20.i.hns_dsaf_setup_mc_mask.exit_crit_edge
  %mc_mask.sroa.0.sroa.0.0 = phi i8 [ %mc_mask.sroa.0.sroa.0.0.extract.trunc, %if.else.i ], [ -1, %land.lhs.true20.i.hns_dsaf_setup_mc_mask.exit_crit_edge ]
  %mc_mask.sroa.0.sroa.7.0 = phi i8 [ %mc_mask.sroa.0.sroa.7.0.extract.trunc, %if.else.i ], [ -1, %land.lhs.true20.i.hns_dsaf_setup_mc_mask.exit_crit_edge ]
  %mc_mask.sroa.9.sroa.0.0 = phi i8 [ %mc_mask.sroa.9.sroa.0.0.extract.trunc, %if.else.i ], [ -1, %land.lhs.true20.i.hns_dsaf_setup_mc_mask.exit_crit_edge ]
  %mc_mask.sroa.9.sroa.7.0 = phi i8 [ %mc_mask.sroa.9.sroa.7.0.extract.trunc, %if.else.i ], [ -1, %land.lhs.true20.i.hns_dsaf_setup_mc_mask.exit_crit_edge ]
  %mc_mask.sroa.14.0 = phi i16 [ %mc_mask.sroa.14.0.copyload, %if.else.i ], [ -1, %land.lhs.true20.i.hns_dsaf_setup_mc_mask.exit_crit_edge ]
  %mc_mask.sroa.0.sroa.7.0.insert.ext = zext i8 %mc_mask.sroa.0.sroa.7.0 to i16
  %mc_mask.sroa.0.sroa.0.0.insert.ext = zext i8 %mc_mask.sroa.0.sroa.0.0 to i16
  %mc_mask.sroa.0.sroa.0.0.insert.shift = shl nuw i16 %mc_mask.sroa.0.sroa.0.0.insert.ext, 8
  %mc_mask.sroa.0.sroa.0.0.insert.insert = or i16 %mc_mask.sroa.0.sroa.0.0.insert.shift, %mc_mask.sroa.0.sroa.7.0.insert.ext
  %49 = trunc i32 %mc_addr.sroa.0.sroa.0.0.extract.shift to i16
  %mc_addr.sroa.0.sroa.0.sroa.7.0.insert.ext = and i16 %49, 255
  %50 = trunc i32 %mc_addr.sroa.0.sroa.0.sroa.0.0.extract.shift234311 to i16
  %mc_addr.sroa.0.sroa.0.sroa.0.0.insert.shift = shl nuw i16 %50, 8
  %mc_addr.sroa.0.sroa.0.sroa.0.0.insert.insert = or i16 %mc_addr.sroa.0.sroa.0.sroa.7.0.insert.ext, %mc_addr.sroa.0.sroa.0.sroa.0.0.insert.shift
  %and20.i = and i16 %mc_mask.sroa.0.sroa.0.0.insert.insert, %mc_addr.sroa.0.sroa.0.sroa.0.0.insert.insert
  %mc_addr.sroa.0.sroa.0.sroa.0.0.extract.shift = lshr i16 %and20.i, 8
  %mc_addr.sroa.0.sroa.0.sroa.0.0.extract.trunc = zext i16 %mc_addr.sroa.0.sroa.0.sroa.0.0.extract.shift to i32
  %mc_addr.sroa.0.sroa.0.sroa.7.0.extract.trunc = zext i16 %and20.i to i32
  %mc_mask.sroa.9.sroa.7.0.insert.ext = zext i8 %mc_mask.sroa.9.sroa.7.0 to i16
  %mc_mask.sroa.9.sroa.0.0.insert.ext = zext i8 %mc_mask.sroa.9.sroa.0.0 to i16
  %mc_mask.sroa.9.sroa.0.0.insert.shift = shl nuw i16 %mc_mask.sroa.9.sroa.0.0.insert.ext, 8
  %mc_mask.sroa.9.sroa.0.0.insert.insert = or i16 %mc_mask.sroa.9.sroa.0.0.insert.shift, %mc_mask.sroa.9.sroa.7.0.insert.ext
  %51 = trunc i32 %25 to i16
  %mc_addr.sroa.0.sroa.9.sroa.7.0.insert.ext = and i16 %51, 255
  %52 = trunc i32 %mc_addr.sroa.0.sroa.9.sroa.0.0.extract.shift312 to i16
  %mc_addr.sroa.0.sroa.9.sroa.0.0.insert.ext = shl i16 %52, 8
  %mc_addr.sroa.0.sroa.9.sroa.0.0.insert.insert = or i16 %mc_addr.sroa.0.sroa.9.sroa.0.0.insert.ext, %mc_addr.sroa.0.sroa.9.sroa.7.0.insert.ext
  %and821.i = and i16 %mc_mask.sroa.9.sroa.0.0.insert.insert, %mc_addr.sroa.0.sroa.9.sroa.0.0.insert.insert
  %mc_addr.sroa.0.sroa.9.sroa.0.0.extract.shift231 = lshr i16 %and821.i, 8
  %mc_addr.sroa.0.sroa.9.sroa.0.0.extract.trunc232 = zext i16 %mc_addr.sroa.0.sroa.9.sroa.0.0.extract.shift231 to i32
  %mc_addr.sroa.0.sroa.9.sroa.7.0.extract.trunc233 = zext i16 %and821.i to i32
  %and1422.i = and i16 %mc_mask.sroa.14.0, %27
  %dsaf_mode.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %53 = ptrtoint ptr %dsaf_mode.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dsaf_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %54)
  %cmp.i202 = icmp ult i32 %54, 8
  %port.0.i = select i1 %cmp.i202, i16 0, i16 15
  %mac_0.i = getelementptr inbounds %struct.anon.133, ptr %mask_key, i32 0, i32 3
  %55 = ptrtoint ptr %mac_0.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %mc_mask.sroa.0.sroa.0.0, ptr %mac_0.i, align 1
  %mac_1.i = getelementptr inbounds %struct.anon.133, ptr %mask_key, i32 0, i32 2
  %56 = ptrtoint ptr %mac_1.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %mc_mask.sroa.0.sroa.7.0, ptr %mac_1.i, align 2
  %mac_2.i = getelementptr inbounds %struct.anon.133, ptr %mask_key, i32 0, i32 1
  %57 = ptrtoint ptr %mac_2.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %mc_mask.sroa.9.sroa.0.0, ptr %mac_2.i, align 1
  %58 = ptrtoint ptr %mask_key to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %mc_mask.sroa.9.sroa.7.0, ptr %mask_key, align 4
  %mc_mask.sroa.14.4.extract.shift = lshr i16 %mc_mask.sroa.14.0, 8
  %mc_mask.sroa.14.4.extract.trunc = trunc i16 %mc_mask.sroa.14.4.extract.shift to i8
  %mac_4.i = getelementptr inbounds %struct.anon.135, ptr %6, i32 0, i32 2
  %59 = ptrtoint ptr %mac_4.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %mc_mask.sroa.14.4.extract.trunc, ptr %mac_4.i, align 1
  %mc_mask.sroa.14.5.extract.trunc = trunc i16 %mc_mask.sroa.14.0 to i8
  %mac_5.i = getelementptr inbounds %struct.anon.135, ptr %6, i32 0, i32 1
  %60 = ptrtoint ptr %mac_5.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %mc_mask.sroa.14.5.extract.trunc, ptr %mac_5.i, align 2
  %61 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %port.0.i, ptr %6, align 4
  br label %if.end56

if.end56:                                         ; preds = %hns_dsaf_setup_mc_mask.exit, %if.end42.if.end56_crit_edge
  %mc_addr.sroa.0.sroa.0.sroa.7.0 = phi i32 [ %mc_addr.sroa.0.sroa.0.0.extract.shift, %if.end42.if.end56_crit_edge ], [ %mc_addr.sroa.0.sroa.0.sroa.7.0.extract.trunc, %hns_dsaf_setup_mc_mask.exit ]
  %mc_addr.sroa.0.sroa.0.sroa.0.0 = phi i32 [ %mc_addr.sroa.0.sroa.0.sroa.0.0.extract.shift234311, %if.end42.if.end56_crit_edge ], [ %mc_addr.sroa.0.sroa.0.sroa.0.0.extract.trunc, %hns_dsaf_setup_mc_mask.exit ]
  %mc_addr.sroa.0.sroa.9.sroa.7.0 = phi i32 [ %25, %if.end42.if.end56_crit_edge ], [ %mc_addr.sroa.0.sroa.9.sroa.7.0.extract.trunc233, %hns_dsaf_setup_mc_mask.exit ]
  %mc_addr.sroa.0.sroa.9.sroa.0.0 = phi i32 [ %mc_addr.sroa.0.sroa.9.sroa.0.0.extract.shift312, %if.end42.if.end56_crit_edge ], [ %mc_addr.sroa.0.sroa.9.sroa.0.0.extract.trunc232, %hns_dsaf_setup_mc_mask.exit ]
  %mc_addr.sroa.15.0.off8.in.in = phi i16 [ %27, %if.end42.if.end56_crit_edge ], [ %and1422.i, %hns_dsaf_setup_mc_mask.exit ]
  %pmask_key.0 = phi ptr [ null, %if.end42.if.end56_crit_edge ], [ %mask_key, %hns_dsaf_setup_mc_mask.exit ]
  %in_vlan_id = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 1
  %62 = ptrtoint ptr %in_vlan_id to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %in_vlan_id, align 2
  %in_port_num57 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 2
  %64 = ptrtoint ptr %in_port_num57 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %in_port_num57, align 2
  %dsaf_mode.i203 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %66 = ptrtoint ptr %dsaf_mode.i203 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dsaf_mode.i203, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %67)
  %cmp.i204 = icmp ult i32 %67, 8
  %68 = and i8 %65, 15
  %phi.cast.i = zext i8 %68 to i16
  %port.0.i205 = select i1 %cmp.i204, i16 0, i16 %phi.cast.i
  %rev = tail call i16 @llvm.bswap.i16(i16 %mc_addr.sroa.15.0.off8.in.in)
  %mac_key.sroa.12.7.insert.insert = zext i16 %rev to i32
  %shl.i = shl i16 %63, 4
  %or34.i = or i16 %port.0.i205, %shl.i
  %mac_key.sroa.12.4.insert.ext = zext i16 %or34.i to i32
  %mac_key.sroa.12.4.insert.shift = shl nuw i32 %mac_key.sroa.12.4.insert.ext, 16
  %mac_key.sroa.12.4.insert.insert = or i32 %mac_key.sroa.12.4.insert.shift, %mac_key.sroa.12.7.insert.insert
  %tcam_max_num.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 16
  %69 = ptrtoint ptr %tcam_max_num.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %tcam_max_num.i, align 8
  %conv.i = zext i16 %70 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %cmp23.not.i = icmp eq i16 %70, 0
  %.pre = and i32 %mc_addr.sroa.0.sroa.0.sroa.0.0, 255
  %.pre319 = shl nuw nsw i32 %mc_addr.sroa.0.sroa.0.sroa.7.0, 8
  %.pre320 = and i32 %.pre319, 65280
  %.pre321 = or i32 %.pre320, %.pre
  %.pre322 = shl i32 %mc_addr.sroa.0.sroa.9.sroa.0.0, 16
  %.pre323 = and i32 %.pre322, 16711680
  %.pre324 = or i32 %.pre323, %.pre321
  %.pre325 = shl i32 %mc_addr.sroa.0.sroa.9.sroa.7.0, 24
  %.pre327 = or i32 %.pre324, %.pre325
  br i1 %cmp23.not.i, label %if.end56.do.end66_crit_edge, label %if.end56.for.body.i_crit_edge

if.end56.for.body.i_crit_edge:                    ; preds = %if.end56
  br label %for.body.i

if.end56.do.end66_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end66

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end56.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end56.for.body.i_crit_edge ]
  %soft_mac_entry.024.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ %1, %if.end56.for.body.i_crit_edge ]
  %index.i = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.024.i, i32 0, i32 1
  %71 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %72)
  %cmp3.not.i = icmp eq i16 %72, -1
  br i1 %cmp3.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i217

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i217:                               ; preds = %for.body.i
  %73 = ptrtoint ptr %soft_mac_entry.024.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %soft_mac_entry.024.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %.pre327)
  %cmp6.i = icmp eq i32 %74, %.pre327
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i217.if.end.i_crit_edge

land.lhs.true.i217.if.end.i_crit_edge:            ; preds = %land.lhs.true.i217
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i217
  %low.i218 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, ptr %soft_mac_entry.024.i, i32 0, i32 1
  %75 = ptrtoint ptr %low.i218 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %low.i218, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %mac_key.sroa.12.4.insert.insert)
  %cmp11.i = icmp eq i32 %76, %mac_key.sroa.12.4.insert.insert
  br i1 %cmp11.i, label %do.body70, label %land.lhs.true8.i.if.end.i_crit_edge

land.lhs.true8.i.if.end.i_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true8.i.if.end.i_crit_edge, %land.lhs.true.i217.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.024.i, i32 1
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %if.end.i.do.end66_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end.i.do.end66_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end66

do.end66:                                         ; preds = %if.end.i.do.end66_crit_edge, %if.end56.do.end66_crit_edge
  %77 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dsaf_dev, align 8
  %name = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.38, ptr noundef %name, i32 noundef %.pre327, i32 noundef %mac_key.sroa.12.4.insert.insert) #18
  br label %cleanup

do.body70:                                        ; preds = %land.lhs.true8.i
  %conv60 = zext i16 %72 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_dsaf_del_mac_mc_port.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_dsaf_del_mac_mc_port, %if.then75)) #15
          to label %do.end85 [label %if.then75], !srcloc !297

if.then75:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #17
  %79 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dsaf_dev, align 8
  %name78 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_dsaf_del_mac_mc_port.__UNIQUE_ID_ddebug358, ptr noundef %80, ptr noundef nonnull @.str.40, ptr noundef %name78, i32 noundef %.pre327, i32 noundef %mac_key.sroa.12.4.insert.insert, i32 noundef %conv60) #15
  br label %do.end85

do.end85:                                         ; preds = %if.then75, %do.body70
  call fastcc void @hns_dsaf_tcam_mc_get(ptr noundef %dsaf_dev, i32 noundef %conv60, ptr noundef nonnull %tcam_data, ptr noundef nonnull %mac_data)
  %port_num = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 3
  %81 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %port_num, align 1
  %conv87 = zext i8 %82 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %82)
  %cmp88 = icmp ult i8 %82, 6
  br i1 %cmp88, label %do.end85.do.body114_crit_edge, label %if.else

do.end85.do.body114_crit_edge:                    ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body114

if.else:                                          ; preds = %do.end85
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %82)
  %cmp95 = icmp ugt i8 %82, 126
  br i1 %cmp95, label %if.then97, label %do.end103

if.then97:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %add = add nsw i32 %conv87, -121
  br label %do.body114

do.end103:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %83 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dsaf_dev, align 8
  %name106 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.24, ptr noundef %name106, i32 noundef %conv87, i32 noundef %.pre327, i32 noundef %mac_key.sroa.12.4.insert.insert) #18
  br label %cleanup

do.body114:                                       ; preds = %if.then97, %do.end85.do.body114_crit_edge
  %mskid.0 = phi i32 [ %add, %if.then97 ], [ %conv87, %do.end85.do.body114_crit_edge ]
  %rem.lhs.trunc = trunc i32 %mskid.0 to i16
  %rem.lhs.trunc.frozen = freeze i16 %rem.lhs.trunc
  %div310 = sdiv i16 %rem.lhs.trunc.frozen, 32
  %85 = mul i16 %div310, 32
  %rem309.decomposed = sub i16 %rem.lhs.trunc.frozen, %85
  %rem.sext = sext i16 %rem309.decomposed to i32
  %sh_prom = zext i32 %rem.sext to i64
  %shl = shl nuw i64 1, %sh_prom
  %tbl_mcast_port_msk = getelementptr inbounds %struct.dsaf_tbl_tcam_mcast_cfg, ptr %mac_data, i32 0, i32 2
  %div.sext = sext i16 %div310 to i32
  %arrayidx = getelementptr %struct.dsaf_tbl_tcam_mcast_cfg, ptr %mac_data, i32 0, i32 2, i32 %div.sext
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx, align 4
  %88 = trunc i64 %shl to i32
  %89 = xor i32 %88, -1
  %conv116 = and i32 %87, %89
  store i32 %conv116, ptr %arrayidx, align 4
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(20) %tbl_mcast_port_msk, ptr noundef nonnull dereferenceable(20) %empty_msk, i32 20) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool135.not = icmp eq i32 %bcmp, 0
  br i1 %tobool135.not, label %if.then136, label %if.else140

if.then136:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @hns_dsaf_tcam_mc_invld(ptr noundef %dsaf_dev, i32 noundef %conv60)
  %index = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %1, i32 %conv60, i32 1
  %90 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 -1, ptr %index, align 4
  br label %cleanup

if.else140:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #17
  %91 = ptrtoint ptr %tcam_data to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %.pre327, ptr %tcam_data, align 4
  %92 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %mac_key.sroa.12.4.insert.insert, ptr %3, align 4
  call fastcc void @hns_dsaf_tcam_mc_cfg(ptr noundef %dsaf_dev, i32 noundef %conv60, ptr noundef nonnull %tcam_data, ptr noundef %pmask_key.0, ptr noundef nonnull %mac_data)
  br label %cleanup

cleanup:                                          ; preds = %if.else140, %if.then136, %do.end103, %do.end66, %do.end38, %do.end
  %retval.0 = phi i32 [ -22, %do.end38 ], [ -22, %do.end66 ], [ -22, %do.end103 ], [ -22, %do.end ], [ 0, %if.else140 ], [ 0, %if.then136 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask_key) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %empty_msk) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tcam_data) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mac_data) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_dsaf_clr_mac_mc_port(ptr noundef %dsaf_dev, i8 noundef zeroext %mac_id, i8 noundef zeroext %port_num) local_unnamed_addr #0 align 64 {
entry:
  %mac_data = alloca %struct.dsaf_tbl_tcam_mcast_cfg, align 4
  %empty_msk = alloca [5 x i32], align 4
  %mac_entry = alloca %struct.dsaf_drv_mac_single_dest_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dsaf_dev, i32 6544
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mac_data) #15
  %0 = call ptr @memset(ptr %mac_data, i32 255, i32 24)
  %dsaf_mode = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %1 = ptrtoint ptr %dsaf_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dsaf_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp = icmp eq i32 %2, 8
  br i1 %cmp, label %entry.cleanup72_crit_edge, label %for.cond.preheader

entry.cleanup72_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

for.cond.preheader:                               ; preds = %entry
  %3 = zext i8 %mac_id to i16
  %4 = getelementptr inbounds [6 x i8], ptr %mac_entry, i32 0, i32 4
  %5 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 1
  %6 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 2
  %7 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, ptr %mac_entry, i32 0, i32 3
  %8 = and i8 %mac_id, 31
  %sh_prom = zext i8 %8 to i32
  %shl = shl nuw i32 1, %sh_prom
  %neg = xor i32 %shl, -1
  %tbl_mcast_port_msk = getelementptr inbounds %struct.dsaf_tbl_tcam_mcast_cfg, ptr %mac_data, i32 0, i32 2
  %9 = getelementptr inbounds i8, ptr %mac_entry, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup68.for.body_crit_edge, %for.cond.preheader
  %i.0142 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %cleanup68.for.body_crit_edge ]
  %ret.0141 = phi i32 [ 0, %for.cond.preheader ], [ %ret.3, %cleanup68.for.body_crit_edge ]
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %11, i32 %i.0142
  %mac_0.i = getelementptr inbounds %struct.anon.133, ptr %add.ptr, i32 0, i32 3
  %12 = ptrtoint ptr %mac_0.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mac_0.i, align 1
  %mac_1.i = getelementptr inbounds %struct.anon.133, ptr %add.ptr, i32 0, i32 2
  %14 = ptrtoint ptr %mac_1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mac_1.i, align 2
  %mac_2.i = getelementptr inbounds %struct.anon.133, ptr %add.ptr, i32 0, i32 1
  %16 = ptrtoint ptr %mac_2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mac_2.i, align 1
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr, align 4
  %low.i = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, ptr %add.ptr, i32 0, i32 1
  %mac_4.i = getelementptr inbounds %struct.anon.135, ptr %low.i, i32 0, i32 2
  %20 = ptrtoint ptr %mac_4.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mac_4.i, align 1
  %addr.sroa.14.4.insert.ext = zext i8 %21 to i16
  %addr.sroa.14.4.insert.shift = shl nuw i16 %addr.sroa.14.4.insert.ext, 8
  %mac_5.i = getelementptr inbounds %struct.anon.135, ptr %low.i, i32 0, i32 1
  %22 = ptrtoint ptr %mac_5.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mac_5.i, align 2
  %addr.sroa.14.5.insert.ext = zext i8 %23 to i16
  %addr.sroa.14.5.insert.insert105 = or i16 %addr.sroa.14.4.insert.shift, %addr.sroa.14.5.insert.ext
  %index = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %11, i32 %i.0142, i32 1
  %24 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %25)
  %cmp5.not = icmp eq i16 %25, -1
  br i1 %cmp5.not, label %for.body.cleanup68_crit_edge, label %land.lhs.true

for.body.cleanup68_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup68

land.lhs.true:                                    ; preds = %for.body
  %26 = ptrtoint ptr %low.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %low.i, align 4
  %28 = and i16 %27, 15
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %3)
  %cmp9 = icmp eq i16 %28, %3
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true.cleanup68_crit_edge

land.lhs.true.cleanup68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup68

land.lhs.true11:                                  ; preds = %land.lhs.true
  %addr.sroa.0.sroa.0.sroa.7.0.insert.ext135 = zext i8 %15 to i16
  %addr.sroa.0.sroa.0.sroa.0.0.insert.ext127 = zext i8 %13 to i16
  %addr.sroa.0.sroa.0.sroa.0.0.insert.shift128 = shl nuw i16 %addr.sroa.0.sroa.0.sroa.0.0.insert.ext127, 8
  %addr.sroa.0.sroa.0.sroa.0.0.insert.insert130 = or i16 %addr.sroa.0.sroa.0.sroa.0.0.insert.shift128, %addr.sroa.0.sroa.0.sroa.7.0.insert.ext135
  %addr.sroa.0.sroa.9.sroa.7.0.insert.ext = zext i8 %19 to i16
  %addr.sroa.0.sroa.9.sroa.0.0.insert.ext = zext i8 %17 to i16
  %addr.sroa.0.sroa.9.sroa.0.0.insert.shift = shl nuw i16 %addr.sroa.0.sroa.9.sroa.0.0.insert.ext, 8
  %addr.sroa.0.sroa.9.sroa.0.0.insert.insert = or i16 %addr.sroa.0.sroa.9.sroa.0.0.insert.shift, %addr.sroa.0.sroa.9.sroa.7.0.insert.ext
  %addr.sroa.0.sroa.9.0.insert.ext = zext i16 %addr.sroa.0.sroa.9.sroa.0.0.insert.insert to i32
  %addr.sroa.0.sroa.0.0.insert.ext = zext i16 %addr.sroa.0.sroa.0.sroa.0.0.insert.insert130 to i32
  %addr.sroa.0.sroa.0.0.insert.shift = shl nuw i32 %addr.sroa.0.sroa.0.0.insert.ext, 16
  %addr.sroa.0.sroa.0.0.insert.insert = or i32 %addr.sroa.0.sroa.0.0.insert.shift, %addr.sroa.0.sroa.9.0.insert.ext
  %29 = and i32 %addr.sroa.0.sroa.0.0.insert.ext, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not = icmp eq i32 %29, 0
  br i1 %tobool.i.not, label %land.lhs.true11.cleanup68_crit_edge, label %land.lhs.true15

land.lhs.true11.cleanup68_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup68

land.lhs.true15:                                  ; preds = %land.lhs.true11
  %and9.i = and i16 %addr.sroa.0.sroa.9.sroa.0.0.insert.insert, %addr.sroa.0.sroa.0.sroa.0.0.insert.insert130
  %and510.i = and i16 %and9.i, %addr.sroa.14.5.insert.insert105
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %land.lhs.true15.cleanup68_crit_edge, label %if.then18

land.lhs.true15.cleanup68_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup68

if.then18:                                        ; preds = %land.lhs.true15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %empty_msk) #15
  %30 = call ptr @memset(ptr %empty_msk, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mac_entry) #15
  %31 = call ptr @memset(ptr %9, i32 255, i32 12)
  %32 = ptrtoint ptr %mac_entry to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %addr.sroa.0.sroa.0.0.insert.insert, ptr %mac_entry, align 4
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %addr.sroa.14.5.insert.insert105, ptr %4, align 4
  %34 = ptrtoint ptr %low.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %low.i, align 4
  %36 = lshr i16 %35, 4
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %5, align 2
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %mac_id, ptr %6, align 4
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %port_num, ptr %7, align 1
  %call30 = call i32 @hns_dsaf_del_mac_mc_port(ptr noundef %dsaf_dev, ptr noundef nonnull %mac_entry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool.not = icmp eq i32 %call30, 0
  br i1 %tobool.not, label %if.end32, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end32:                                         ; preds = %if.then18
  call fastcc void @hns_dsaf_tcam_mc_get(ptr noundef %dsaf_dev, i32 noundef %i.0142, ptr noundef %add.ptr, ptr noundef nonnull %mac_data)
  %40 = ptrtoint ptr %tbl_mcast_port_msk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tbl_mcast_port_msk, align 4
  %and37 = and i32 %41, %neg
  store i32 %and37, ptr %tbl_mcast_port_msk, align 4
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(20) %tbl_mcast_port_msk, ptr noundef nonnull dereferenceable(20) %empty_msk, i32 20) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool58.not = icmp eq i32 %bcmp, 0
  br i1 %tobool58.not, label %if.then59, label %if.end32.if.end65_crit_edge

if.end32.if.end65_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

if.then59:                                        ; preds = %if.end32
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %mac_id, ptr %7, align 1
  %call61 = call i32 @hns_dsaf_del_mac_mc_port(ptr noundef %dsaf_dev, ptr noundef nonnull %mac_entry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then59.if.end65_crit_edge, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then59.if.end65_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

if.end65:                                         ; preds = %if.then59.if.end65_crit_edge, %if.end32.if.end65_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then59.cleanup_crit_edge, %if.then18.cleanup_crit_edge
  %ret.1 = phi i32 [ %ret.0141, %if.end65 ], [ -22, %if.then18.cleanup_crit_edge ], [ -22, %if.then59.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mac_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %empty_msk) #15
  br label %cleanup68

cleanup68:                                        ; preds = %cleanup, %land.lhs.true15.cleanup68_crit_edge, %land.lhs.true11.cleanup68_crit_edge, %land.lhs.true.cleanup68_crit_edge, %for.body.cleanup68_crit_edge
  %ret.3 = phi i32 [ %ret.0141, %land.lhs.true15.cleanup68_crit_edge ], [ %ret.1, %cleanup ], [ %ret.0141, %land.lhs.true11.cleanup68_crit_edge ], [ %ret.0141, %land.lhs.true.cleanup68_crit_edge ], [ %ret.0141, %for.body.cleanup68_crit_edge ]
  %inc = add nuw nsw i32 %i.0142, 1
  %exitcond.not = icmp eq i32 %inc, 506
  br i1 %exitcond.not, label %cleanup68.cleanup72_crit_edge, label %cleanup68.for.body_crit_edge

cleanup68.for.body_crit_edge:                     ; preds = %cleanup68
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup68.cleanup72_crit_edge:                    ; preds = %cleanup68
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

cleanup72:                                        ; preds = %cleanup68.cleanup72_crit_edge, %entry.cleanup72_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup72_crit_edge ], [ %ret.3, %cleanup68.cleanup72_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mac_data) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_dsaf_fix_mac_mode(ptr nocapture noundef readonly %mac_cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_type = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 26
  %0 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %mac_id2 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 16
  %2 = ptrtoint ptr %mac_id2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac_id2, align 2
  %conv = zext i8 %3 to i32
  %dsaf_dev1 = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 1
  %4 = ptrtoint ptr %dsaf_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsaf_dev1, align 4
  %phy_if = getelementptr inbounds %struct.hns_mac_cb, ptr %mac_cb, i32 0, i32 28
  %6 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_if, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %7)
  %cmp4 = icmp eq i32 %7, 15
  %io_base.i = getelementptr inbounds %struct.dsaf_device, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base.i, align 4
  %mul.i = shl nuw nsw i32 %conv, 2
  %add.i = add nuw nsw i32 %mul.i, 24640
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %add.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %11 = and i32 %10, -16777217
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #15
  %masksel.i = zext i1 %cmp4 to i32
  %port_work_mode.0.i = or i32 %12, %masksel.i
  %13 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %15 = tail call i32 @llvm.bswap.i32(i32 %port_work_mode.0.i) #15
  %add.ptr.i30.i = getelementptr i8, ptr %14, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 %15) #15, !srcloc !296
  %16 = select i1 %cmp4, i32 41, i32 410
  %17 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base.i, align 4
  %add.i.i = add nuw nsw i32 %mul.i, 112
  %add.ptr.i.i.i.i = getelementptr i8, ptr %18, i32 %add.i.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %20 = and i32 %19, 16711679
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #15
  %or.i.i.i = or i32 %21, %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %22) #15, !srcloc !296
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_dsaf_update_stats(ptr nocapture noundef %dsaf_dev, i32 noundef %node_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 21, i32 %node_num
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 15
  %0 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %1)
  %cmp = icmp eq i32 %1, 3552816
  %io_base = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 5
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 4
  %mul = shl i32 %node_num, 7
  %conv2 = add i32 %mul, 4136
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !293
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %conv3 = zext i32 %5 to i64
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  %add4 = add i64 %7, %conv3
  store i64 %add4, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base, align 4
  %conv9 = add i32 %mul, 4140
  %add.ptr.i195 = getelementptr i8, ptr %9, i32 %conv9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i195) #15, !srcloc !293
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %conv11 = zext i32 %11 to i64
  %man_pkts = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 21, i32 %node_num, i32 1
  %12 = ptrtoint ptr %man_pkts to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %man_pkts, align 8
  %add12 = add i64 %13, %conv11
  store i64 %add12, ptr %man_pkts, align 8
  %14 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base, align 4
  %conv17 = add i32 %mul, 4144
  %add.ptr.i196 = getelementptr i8, ptr %15, i32 %conv17
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196) #15, !srcloc !293
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %conv19 = zext i32 %17 to i64
  %rx_pkts = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 21, i32 %node_num, i32 2
  %18 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_pkts, align 8
  %add20 = add i64 %19, %conv19
  store i64 %add20, ptr %rx_pkts, align 8
  %20 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base, align 4
  %conv25 = add i32 %mul, 4152
  %add.ptr.i197 = getelementptr i8, ptr %21, i32 %conv25
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #15, !srcloc !293
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %conv27 = zext i32 %23 to i64
  %rx_pkt_id = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 21, i32 %node_num, i32 3
  %24 = ptrtoint ptr %rx_pkt_id to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rx_pkt_id, align 8
  %add28 = add i64 %25, %conv27
  store i64 %add28, ptr %rx_pkt_id, align 8
  %cond = select i1 %cmp, i32 4156, i32 4132
  %26 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base, align 4
  %conv35 = add i32 %cond, %mul
  %add.ptr.i198 = getelementptr i8, ptr %27, i32 %conv35
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i198) #15, !srcloc !293
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %conv37 = zext i32 %29 to i64
  %rx_pause_frame = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 21, i32 %node_num, i32 4
  %30 = ptrtoint ptr %rx_pause_frame to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rx_pause_frame, align 8
  %add38 = add i64 %31, %conv37
  store i64 %add38, ptr %rx_pause_frame, align 8
  %32 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base, align 4
  %conv43 = add i32 %mul, 4172
  %add.ptr.i199 = getelementptr i8, ptr %33, i32 %conv43
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199) #15, !srcloc !293
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %conv45 = zext i32 %35 to i64
  %release_buf_num = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 21, i32 %node_num, i32 5
  %36 = ptrtoint ptr %release_buf_num to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %release_buf_num, align 8
  %add46 = add i64 %37, %conv45
  store i64 %add46, ptr %release_buf_num, align 8
  %38 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_base, align 4
  %conv51 = add i32 %mul, 4176
  %add.ptr.i200 = getelementptr i8, ptr %39, i32 %conv51
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i200) #15, !srcloc !293
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %conv53 = zext i32 %41 to i64
  %sbm_drop = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 21, i32 %node_num, i32 6
  %42 = ptrtoint ptr %sbm_drop to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %sbm_drop, align 8
  %add54 = add i64 %43, %conv53
  store i64 %add54, ptr %sbm_drop, align 8
  %44 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io_base, align 4
  %conv59 = add i32 %mul, 4180
  %add.ptr.i201 = getelementptr i8, ptr %45, i32 %conv59
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i201) #15, !srcloc !293
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %conv61 = zext i32 %47 to i64
  %crc_false = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 21, i32 %node_num, i32 7
  %48 = ptrtoint ptr %crc_false to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %crc_false, align 8
  %add62 = add i64 %49, %conv61
  store i64 %add62, ptr %crc_false, align 8
  %50 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io_base, align 4
  %conv67 = add i32 %mul, 4184
  %add.ptr.i202 = getelementptr i8, ptr %51, i32 %conv67
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i202) #15, !srcloc !293
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %conv69 = zext i32 %53 to i64
  %bp_drop = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 21, i32 %node_num, i32 8
  %54 = ptrtoint ptr %bp_drop to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %bp_drop, align 8
  %add70 = add i64 %55, %conv69
  store i64 %add70, ptr %bp_drop, align 8
  %56 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %io_base, align 4
  %conv75 = add i32 %mul, 4188
  %add.ptr.i203 = getelementptr i8, ptr %57, i32 %conv75
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i203) #15, !srcloc !293
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %conv77 = zext i32 %59 to i64
  %rslt_drop = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 21, i32 %node_num, i32 9
  %60 = ptrtoint ptr %rslt_drop to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %rslt_drop, align 8
  %add78 = add i64 %61, %conv77
  store i64 %add78, ptr %rslt_drop, align 8
  %62 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %io_base, align 4
  %conv83 = add i32 %mul, 4192
  %add.ptr.i204 = getelementptr i8, ptr %63, i32 %conv83
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i204) #15, !srcloc !293
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %conv85 = zext i32 %65 to i64
  %local_addr_false = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 21, i32 %node_num, i32 10
  %66 = ptrtoint ptr %local_addr_false to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %local_addr_false, align 8
  %add86 = add i64 %67, %conv85
  store i64 %add86, ptr %local_addr_false, align 8
  %68 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %io_base, align 4
  %mul89 = shl i32 %node_num, 2
  %conv91 = add i32 %mul89, 6656
  %add.ptr.i205 = getelementptr i8, ptr %69, i32 %conv91
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i205) #15, !srcloc !293
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %conv93 = zext i32 %71 to i64
  %vlan_drop = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 21, i32 %node_num, i32 11
  %72 = ptrtoint ptr %vlan_drop to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %vlan_drop, align 8
  %add94 = add i64 %73, %conv93
  store i64 %add94, ptr %vlan_drop, align 8
  %74 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %io_base, align 4
  %conv99 = add i32 %mul89, 6736
  %add.ptr.i206 = getelementptr i8, ptr %75, i32 %conv99
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i206) #15, !srcloc !293
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %conv101 = zext i32 %77 to i64
  %stp_drop = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 21, i32 %node_num, i32 12
  %78 = ptrtoint ptr %stp_drop to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %stp_drop, align 8
  %add102 = add i64 %79, %conv101
  store i64 %add102, ptr %stp_drop, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %node_num)
  %cmp103 = icmp ugt i32 %node_num, 5
  %brmerge = select i1 %cmp103, i1 true, i1 %cmp
  br i1 %brmerge, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %add4.i = add i32 %mul89, 7168
  %mul124 = mul nuw nsw i32 %node_num, 240
  %add121 = add nuw nsw i32 %mul124, 14848
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.0210 = phi i32 [ 0, %for.cond.preheader ], [ %add.i, %for.body.for.body_crit_edge ]
  %add.i = add nuw nsw i32 %i.0210, 1
  %add.i.frozen = freeze i32 %add.i
  %div.i = udiv i32 %add.i.frozen, 3
  %80 = mul i32 %div.i, 3
  %rem.i.decomposed = sub i32 %add.i.frozen, %80
  %mul.i = shl i32 %div.i, 8
  %mul3.i = mul nuw nsw i32 %rem.i.decomposed, 80
  %81 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %io_base, align 4
  %add2.i = add i32 %add4.i, %mul.i
  %conv114 = add i32 %add2.i, %mul3.i
  %add.ptr.i207 = getelementptr i8, ptr %82, i32 %conv114
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i207) #15, !srcloc !293
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %conv116 = zext i32 %84 to i64
  %arrayidx117 = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 21, i32 %node_num, i32 13, i32 %i.0210
  %85 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx117, align 8
  %add118 = add i64 %86, %conv116
  store i64 %add118, ptr %arrayidx117, align 8
  %87 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %io_base, align 4
  %mul120 = shl i32 %i.0210, 2
  %add125 = add i32 %add121, %mul120
  %add.ptr.i208 = getelementptr i8, ptr %88, i32 %add125
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i208) #15, !srcloc !293
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %conv128 = zext i32 %90 to i64
  %arrayidx129 = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 21, i32 %node_num, i32 14, i32 %i.0210
  %91 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %arrayidx129, align 8
  %add130 = add i64 %92, %conv128
  store i64 %add130, ptr %arrayidx129, align 8
  %exitcond.not = icmp eq i32 %add.i, 8
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  %93 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %io_base, align 4
  %mul133 = mul i32 %node_num, 144
  %add134 = add i32 %mul133, 12336
  %add.ptr.i209 = getelementptr i8, ptr %94, i32 %add134
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i209) #15, !srcloc !293
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %conv137 = zext i32 %96 to i64
  %tx_pkts = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 21, i32 %node_num, i32 15
  %97 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %tx_pkts, align 8
  %add138 = add i64 %98, %conv137
  store i64 %add138, ptr %tx_pkts, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_dsaf_get_regs(ptr noundef readonly %ddev, i32 noundef %port, ptr noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %ddev, i32 0, i32 15
  %0 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsaf_ver, align 4
  %io_base = getelementptr inbounds %struct.dsaf_device, ptr %ddev, i32 0, i32 5
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #15, !srcloc !293
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %data, align 4
  %7 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !293
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx3 = getelementptr i32, ptr %data, i32 1
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx3, align 4
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base, align 4
  %add.ptr.i1456 = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1456) #15, !srcloc !293
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx6 = getelementptr i32, ptr %data, i32 2
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx6, align 4
  %17 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base, align 4
  %add.ptr.i1457 = getelementptr i8, ptr %18, i32 28
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1457) #15, !srcloc !293
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx9 = getelementptr i32, ptr %data, i32 3
  %21 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx9, align 4
  %22 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base, align 4
  %add.ptr.i1458 = getelementptr i8, ptr %23, i32 32
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1458) #15, !srcloc !293
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx12 = getelementptr i32, ptr %data, i32 4
  %26 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx12, align 4
  %27 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base, align 4
  %add.ptr.i1459 = getelementptr i8, ptr %28, i32 44
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1459) #15, !srcloc !293
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx15 = getelementptr i32, ptr %data, i32 5
  %31 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx15, align 4
  %32 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base, align 4
  %add.ptr.i1460 = getelementptr i8, ptr %33, i32 48
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1460) #15, !srcloc !293
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx18 = getelementptr i32, ptr %data, i32 6
  %36 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx18, align 4
  %37 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_base, align 4
  %add.ptr.i1461 = getelementptr i8, ptr %38, i32 52
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1461) #15, !srcloc !293
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx21 = getelementptr i32, ptr %data, i32 7
  %41 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx21, align 4
  %42 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_base, align 4
  %add.ptr.i1462 = getelementptr i8, ptr %43, i32 56
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1462) #15, !srcloc !293
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx24 = getelementptr i32, ptr %data, i32 8
  %46 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx24, align 4
  %47 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io_base, align 4
  %mul = shl i32 %port, 2
  %add = add i32 %mul, 80
  %add.ptr.i1463 = getelementptr i8, ptr %48, i32 %add
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1463) #15, !srcloc !293
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx27 = getelementptr i32, ptr %data, i32 9
  %51 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx27, align 4
  %52 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %io_base, align 4
  %add30 = add i32 %mul, 112
  %add.ptr.i1464 = getelementptr i8, ptr %53, i32 %add30
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1464) #15, !srcloc !293
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx32 = getelementptr i32, ptr %data, i32 10
  %56 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx32, align 4
  %57 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %io_base, align 4
  %add35 = add i32 %mul, 256
  %add.ptr.i1465 = getelementptr i8, ptr %58, i32 %add35
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1465) #15, !srcloc !293
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx37 = getelementptr i32, ptr %data, i32 11
  %61 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx37, align 4
  %62 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %io_base, align 4
  %add40 = add i32 %mul, 352
  %add.ptr.i1466 = getelementptr i8, ptr %63, i32 %add40
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1466) #15, !srcloc !293
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx42 = getelementptr i32, ptr %data, i32 12
  %66 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx42, align 4
  %67 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %io_base, align 4
  %add45 = add i32 %mul, 448
  %add.ptr.i1467 = getelementptr i8, ptr %68, i32 %add45
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1467) #15, !srcloc !293
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx47 = getelementptr i32, ptr %data, i32 13
  %71 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx47, align 4
  %72 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %io_base, align 4
  %add.ptr.i1468 = getelementptr i8, ptr %73, i32 %add35
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1468) #15, !srcloc !293
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx52 = getelementptr i32, ptr %data, i32 14
  %76 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx52, align 4
  %77 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %io_base, align 4
  %add55 = add i32 %mul, 288
  %add.ptr.i1469 = getelementptr i8, ptr %78, i32 %add55
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1469) #15, !srcloc !293
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx57 = getelementptr i32, ptr %data, i32 15
  %81 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx57, align 4
  %82 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %io_base, align 4
  %add60 = add i32 %mul, 320
  %add.ptr.i1470 = getelementptr i8, ptr %83, i32 %add60
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1470) #15, !srcloc !293
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx62 = getelementptr i32, ptr %data, i32 16
  %86 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %arrayidx62, align 4
  %87 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %io_base, align 4
  %add.ptr.i1471 = getelementptr i8, ptr %88, i32 %add40
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1471) #15, !srcloc !293
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx67 = getelementptr i32, ptr %data, i32 17
  %91 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %arrayidx67, align 4
  %92 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %io_base, align 4
  %add70 = add i32 %mul, 384
  %add.ptr.i1472 = getelementptr i8, ptr %93, i32 %add70
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1472) #15, !srcloc !293
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx72 = getelementptr i32, ptr %data, i32 18
  %96 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %arrayidx72, align 4
  %97 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %io_base, align 4
  %add75 = add i32 %mul, 416
  %add.ptr.i1473 = getelementptr i8, ptr %98, i32 %add75
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1473) #15, !srcloc !293
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx77 = getelementptr i32, ptr %data, i32 19
  %101 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %arrayidx77, align 4
  %102 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %io_base, align 4
  %add.ptr.i1474 = getelementptr i8, ptr %103, i32 %add45
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1474) #15, !srcloc !293
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx82 = getelementptr i32, ptr %data, i32 20
  %106 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %arrayidx82, align 4
  %107 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %io_base, align 4
  %add85 = add i32 %mul, 480
  %add.ptr.i1475 = getelementptr i8, ptr %108, i32 %add85
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1475) #15, !srcloc !293
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx87 = getelementptr i32, ptr %data, i32 21
  %111 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %arrayidx87, align 4
  %112 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %io_base, align 4
  %add90 = add i32 %mul, 512
  %add.ptr.i1476 = getelementptr i8, ptr %113, i32 %add90
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1476) #15, !srcloc !293
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx92 = getelementptr i32, ptr %data, i32 22
  %116 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %arrayidx92, align 4
  %117 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %io_base, align 4
  %add95 = add i32 %mul, 768
  %add.ptr.i1477 = getelementptr i8, ptr %118, i32 %add95
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1477) #15, !srcloc !293
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx97 = getelementptr i32, ptr %data, i32 23
  %121 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %arrayidx97, align 4
  %122 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %io_base, align 4
  %add.ptr.i1478 = getelementptr i8, ptr %123, i32 800
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1478) #15, !srcloc !293
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx104 = getelementptr i32, ptr %data, i32 24
  %126 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %arrayidx104, align 4
  %127 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %io_base, align 4
  %add.ptr.i1478.1 = getelementptr i8, ptr %128, i32 804
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1478.1) #15, !srcloc !293
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx104.1 = getelementptr i32, ptr %data, i32 25
  %131 = ptrtoint ptr %arrayidx104.1 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %arrayidx104.1, align 4
  %132 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %io_base, align 4
  %add.ptr.i1478.2 = getelementptr i8, ptr %133, i32 808
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1478.2) #15, !srcloc !293
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx104.2 = getelementptr i32, ptr %data, i32 26
  %136 = ptrtoint ptr %arrayidx104.2 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %arrayidx104.2, align 4
  %137 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %io_base, align 4
  %add.ptr.i1478.3 = getelementptr i8, ptr %138, i32 812
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1478.3) #15, !srcloc !293
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx104.3 = getelementptr i32, ptr %data, i32 27
  %141 = ptrtoint ptr %arrayidx104.3 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %arrayidx104.3, align 4
  %142 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %io_base, align 4
  %add.ptr.i1478.4 = getelementptr i8, ptr %143, i32 816
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1478.4) #15, !srcloc !293
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx104.4 = getelementptr i32, ptr %data, i32 28
  %146 = ptrtoint ptr %arrayidx104.4 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %arrayidx104.4, align 4
  %147 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %io_base, align 4
  %add.ptr.i1478.5 = getelementptr i8, ptr %148, i32 820
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1478.5) #15, !srcloc !293
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx104.5 = getelementptr i32, ptr %data, i32 29
  %151 = ptrtoint ptr %arrayidx104.5 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %arrayidx104.5, align 4
  %152 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %io_base, align 4
  %add.ptr.i1478.6 = getelementptr i8, ptr %153, i32 824
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1478.6) #15, !srcloc !293
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx104.6 = getelementptr i32, ptr %data, i32 30
  %156 = ptrtoint ptr %arrayidx104.6 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %arrayidx104.6, align 4
  %157 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %io_base, align 4
  %add.ptr.i1478.7 = getelementptr i8, ptr %158, i32 828
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1478.7) #15, !srcloc !293
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx104.7 = getelementptr i32, ptr %data, i32 31
  %161 = ptrtoint ptr %arrayidx104.7 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %arrayidx104.7, align 4
  %162 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %io_base, align 4
  %add107 = add i32 %mul, 864
  %add.ptr.i1479 = getelementptr i8, ptr %163, i32 %add107
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1479) #15, !srcloc !293
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx109 = getelementptr i32, ptr %data, i32 32
  %166 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %arrayidx109, align 4
  %167 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %io_base, align 4
  %add.ptr.i1480 = getelementptr i8, ptr %168, i32 896
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1480) #15, !srcloc !293
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx118 = getelementptr i32, ptr %data, i32 33
  %171 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %arrayidx118, align 4
  %172 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %io_base, align 4
  %add.ptr.i1480.1 = getelementptr i8, ptr %173, i32 900
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1480.1) #15, !srcloc !293
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx118.1 = getelementptr i32, ptr %data, i32 34
  %176 = ptrtoint ptr %arrayidx118.1 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %arrayidx118.1, align 4
  %177 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %io_base, align 4
  %add.ptr.i1480.2 = getelementptr i8, ptr %178, i32 904
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1480.2) #15, !srcloc !293
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx118.2 = getelementptr i32, ptr %data, i32 35
  %181 = ptrtoint ptr %arrayidx118.2 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %arrayidx118.2, align 4
  %182 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %io_base, align 4
  %add.ptr.i1480.3 = getelementptr i8, ptr %183, i32 908
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1480.3) #15, !srcloc !293
  %185 = tail call i32 @llvm.bswap.i32(i32 %184) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx118.3 = getelementptr i32, ptr %data, i32 36
  %186 = ptrtoint ptr %arrayidx118.3 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %arrayidx118.3, align 4
  %187 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %io_base, align 4
  %add.ptr.i1480.4 = getelementptr i8, ptr %188, i32 912
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1480.4) #15, !srcloc !293
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx118.4 = getelementptr i32, ptr %data, i32 37
  %191 = ptrtoint ptr %arrayidx118.4 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %arrayidx118.4, align 4
  %192 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %io_base, align 4
  %add.ptr.i1480.5 = getelementptr i8, ptr %193, i32 916
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1480.5) #15, !srcloc !293
  %195 = tail call i32 @llvm.bswap.i32(i32 %194) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx118.5 = getelementptr i32, ptr %data, i32 38
  %196 = ptrtoint ptr %arrayidx118.5 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %arrayidx118.5, align 4
  %197 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %io_base, align 4
  %add.ptr.i1480.6 = getelementptr i8, ptr %198, i32 920
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1480.6) #15, !srcloc !293
  %200 = tail call i32 @llvm.bswap.i32(i32 %199) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx118.6 = getelementptr i32, ptr %data, i32 39
  %201 = ptrtoint ptr %arrayidx118.6 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %arrayidx118.6, align 4
  %202 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %io_base, align 4
  %add.ptr.i1480.7 = getelementptr i8, ptr %203, i32 924
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1480.7) #15, !srcloc !293
  %205 = tail call i32 @llvm.bswap.i32(i32 %204) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx118.7 = getelementptr i32, ptr %data, i32 40
  %206 = ptrtoint ptr %arrayidx118.7 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %arrayidx118.7, align 4
  br label %for.body124

for.body124:                                      ; preds = %for.body124.for.body124_crit_edge, %entry
  %i.21623 = phi i32 [ %inc132, %for.body124.for.body124_crit_edge ], [ 0, %entry ]
  %207 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %io_base, align 4
  %mul126 = shl nuw nsw i32 %i.21623, 2
  %add127 = add nuw nsw i32 %mul126, 1024
  %add.ptr.i1481 = getelementptr i8, ptr %208, i32 %add127
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1481) #15, !srcloc !293
  %210 = tail call i32 @llvm.bswap.i32(i32 %209) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add129 = add nuw nsw i32 %i.21623, 41
  %arrayidx130 = getelementptr i32, ptr %data, i32 %add129
  %211 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %arrayidx130, align 4
  %inc132 = add nuw nsw i32 %i.21623, 1
  %exitcond.not = icmp eq i32 %inc132, 129
  br i1 %exitcond.not, label %for.end133, label %for.body124.for.body124_crit_edge

for.body124.for.body124_crit_edge:                ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body124

for.end133:                                       ; preds = %for.body124
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %1)
  %cmp = icmp eq i32 %1, 3552816
  %212 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %io_base, align 4
  %add.ptr.i1482 = getelementptr i8, ptr %213, i32 4096
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1482) #15, !srcloc !293
  %215 = tail call i32 @llvm.bswap.i32(i32 %214) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx136 = getelementptr i32, ptr %data, i32 170
  %216 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %arrayidx136, align 4
  %217 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %io_base, align 4
  %mul138 = shl i32 %port, 7
  %add139 = add i32 %mul138, 4108
  %add.ptr.i1483 = getelementptr i8, ptr %218, i32 %add139
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1483) #15, !srcloc !293
  %220 = tail call i32 @llvm.bswap.i32(i32 %219) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx141 = getelementptr i32, ptr %data, i32 171
  %221 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %arrayidx141, align 4
  %cond = select i1 %cmp, i32 4156, i32 4132
  br label %for.body144

for.body144:                                      ; preds = %for.body144.for.body144_crit_edge, %for.end133
  %i.31624 = phi i32 [ 0, %for.end133 ], [ %inc262, %for.body144.for.body144_crit_edge ]
  %mul145 = mul nuw nsw i32 %i.31624, 6
  %add146 = add i32 %mul145, %port
  %222 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %io_base, align 4
  %mul148 = shl i32 %add146, 7
  %add149 = add i32 %mul148, 4120
  %add.ptr.i1484 = getelementptr i8, ptr %223, i32 %add149
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1484) #15, !srcloc !293
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add151 = add nuw nsw i32 %i.31624, 172
  %arrayidx152 = getelementptr i32, ptr %data, i32 %add151
  %226 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %225, ptr %arrayidx152, align 4
  %227 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %io_base, align 4
  %add155 = add i32 %mul148, 4124
  %add.ptr.i1485 = getelementptr i8, ptr %228, i32 %add155
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1485) #15, !srcloc !293
  %230 = tail call i32 @llvm.bswap.i32(i32 %229) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add157 = add nuw nsw i32 %i.31624, 175
  %arrayidx158 = getelementptr i32, ptr %data, i32 %add157
  %231 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %arrayidx158, align 4
  %232 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %io_base, align 4
  %add161 = add i32 %mul148, 4128
  %add.ptr.i1486 = getelementptr i8, ptr %233, i32 %add161
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1486) #15, !srcloc !293
  %235 = tail call i32 @llvm.bswap.i32(i32 %234) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add163 = add nuw nsw i32 %i.31624, 178
  %arrayidx164 = getelementptr i32, ptr %data, i32 %add163
  %236 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %arrayidx164, align 4
  %237 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %io_base, align 4
  %add167 = add i32 %mul148, 4136
  %add.ptr.i1487 = getelementptr i8, ptr %238, i32 %add167
  %239 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1487) #15, !srcloc !293
  %240 = tail call i32 @llvm.bswap.i32(i32 %239) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add169 = add nuw nsw i32 %i.31624, 181
  %arrayidx170 = getelementptr i32, ptr %data, i32 %add169
  %241 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %arrayidx170, align 4
  %242 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %io_base, align 4
  %add173 = add i32 %mul148, 4140
  %add.ptr.i1488 = getelementptr i8, ptr %243, i32 %add173
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1488) #15, !srcloc !293
  %245 = tail call i32 @llvm.bswap.i32(i32 %244) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add175 = add nuw nsw i32 %i.31624, 184
  %arrayidx176 = getelementptr i32, ptr %data, i32 %add175
  %246 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %arrayidx176, align 4
  %247 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %io_base, align 4
  %add179 = add i32 %mul148, 4144
  %add.ptr.i1489 = getelementptr i8, ptr %248, i32 %add179
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1489) #15, !srcloc !293
  %250 = tail call i32 @llvm.bswap.i32(i32 %249) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add181 = add nuw nsw i32 %i.31624, 187
  %arrayidx182 = getelementptr i32, ptr %data, i32 %add181
  %251 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %arrayidx182, align 4
  %252 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %io_base, align 4
  %add185 = add i32 %mul148, 4152
  %add.ptr.i1490 = getelementptr i8, ptr %253, i32 %add185
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1490) #15, !srcloc !293
  %255 = tail call i32 @llvm.bswap.i32(i32 %254) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add187 = add nuw nsw i32 %i.31624, 190
  %arrayidx188 = getelementptr i32, ptr %data, i32 %add187
  %256 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %arrayidx188, align 4
  %257 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %io_base, align 4
  %add191 = add i32 %mul148, %cond
  %add.ptr.i1491 = getelementptr i8, ptr %258, i32 %add191
  %259 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1491) #15, !srcloc !293
  %260 = tail call i32 @llvm.bswap.i32(i32 %259) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add193 = add nuw nsw i32 %i.31624, 193
  %arrayidx194 = getelementptr i32, ptr %data, i32 %add193
  %261 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %260, ptr %arrayidx194, align 4
  %262 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %io_base, align 4
  %add197 = add i32 %mul148, 4172
  %add.ptr.i1492 = getelementptr i8, ptr %263, i32 %add197
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1492) #15, !srcloc !293
  %265 = tail call i32 @llvm.bswap.i32(i32 %264) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add199 = add nuw nsw i32 %i.31624, 196
  %arrayidx200 = getelementptr i32, ptr %data, i32 %add199
  %266 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %arrayidx200, align 4
  %267 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %io_base, align 4
  %add203 = add i32 %mul148, 4176
  %add.ptr.i1493 = getelementptr i8, ptr %268, i32 %add203
  %269 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1493) #15, !srcloc !293
  %270 = tail call i32 @llvm.bswap.i32(i32 %269) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add205 = add nuw nsw i32 %i.31624, 199
  %arrayidx206 = getelementptr i32, ptr %data, i32 %add205
  %271 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %270, ptr %arrayidx206, align 4
  %272 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %io_base, align 4
  %add209 = add i32 %mul148, 4180
  %add.ptr.i1494 = getelementptr i8, ptr %273, i32 %add209
  %274 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1494) #15, !srcloc !293
  %275 = tail call i32 @llvm.bswap.i32(i32 %274) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add211 = add nuw nsw i32 %i.31624, 202
  %arrayidx212 = getelementptr i32, ptr %data, i32 %add211
  %276 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %275, ptr %arrayidx212, align 4
  %277 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %io_base, align 4
  %add215 = add i32 %mul148, 4184
  %add.ptr.i1495 = getelementptr i8, ptr %278, i32 %add215
  %279 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1495) #15, !srcloc !293
  %280 = tail call i32 @llvm.bswap.i32(i32 %279) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add217 = add nuw nsw i32 %i.31624, 205
  %arrayidx218 = getelementptr i32, ptr %data, i32 %add217
  %281 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %280, ptr %arrayidx218, align 4
  %282 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %io_base, align 4
  %add221 = add i32 %mul148, 4188
  %add.ptr.i1496 = getelementptr i8, ptr %283, i32 %add221
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1496) #15, !srcloc !293
  %285 = tail call i32 @llvm.bswap.i32(i32 %284) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add223 = add nuw nsw i32 %i.31624, 208
  %arrayidx224 = getelementptr i32, ptr %data, i32 %add223
  %286 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %285, ptr %arrayidx224, align 4
  %287 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %io_base, align 4
  %add227 = add i32 %mul148, 4192
  %add.ptr.i1497 = getelementptr i8, ptr %288, i32 %add227
  %289 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1497) #15, !srcloc !293
  %290 = tail call i32 @llvm.bswap.i32(i32 %289) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add229 = add nuw nsw i32 %i.31624, 211
  %arrayidx230 = getelementptr i32, ptr %data, i32 %add229
  %291 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %290, ptr %arrayidx230, align 4
  %292 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %io_base, align 4
  %add233 = add i32 %mul148, 4200
  %add.ptr.i1498 = getelementptr i8, ptr %293, i32 %add233
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1498) #15, !srcloc !293
  %295 = tail call i32 @llvm.bswap.i32(i32 %294) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add235 = add nuw nsw i32 %i.31624, 214
  %arrayidx236 = getelementptr i32, ptr %data, i32 %add235
  %296 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %295, ptr %arrayidx236, align 4
  %297 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %io_base, align 4
  %mul238 = shl i32 %add146, 2
  %add239 = add i32 %mul238, 6400
  %add.ptr.i1499 = getelementptr i8, ptr %298, i32 %add239
  %299 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1499) #15, !srcloc !293
  %300 = tail call i32 @llvm.bswap.i32(i32 %299) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add241 = add nuw nsw i32 %i.31624, 217
  %arrayidx242 = getelementptr i32, ptr %data, i32 %add241
  %301 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %300, ptr %arrayidx242, align 4
  %302 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %io_base, align 4
  %add245 = add i32 %mul238, 6480
  %add.ptr.i1500 = getelementptr i8, ptr %303, i32 %add245
  %304 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1500) #15, !srcloc !293
  %305 = tail call i32 @llvm.bswap.i32(i32 %304) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add247 = add nuw nsw i32 %i.31624, 220
  %arrayidx248 = getelementptr i32, ptr %data, i32 %add247
  %306 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %arrayidx248, align 4
  %307 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %io_base, align 4
  %add251 = add i32 %mul238, 6656
  %add.ptr.i1501 = getelementptr i8, ptr %308, i32 %add251
  %309 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1501) #15, !srcloc !293
  %310 = tail call i32 @llvm.bswap.i32(i32 %309) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add253 = add nuw nsw i32 %i.31624, 223
  %arrayidx254 = getelementptr i32, ptr %data, i32 %add253
  %311 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %310, ptr %arrayidx254, align 4
  %312 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %io_base, align 4
  %add257 = add i32 %mul238, 6736
  %add.ptr.i1502 = getelementptr i8, ptr %313, i32 %add257
  %314 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1502) #15, !srcloc !293
  %315 = tail call i32 @llvm.bswap.i32(i32 %314) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add259 = add nuw nsw i32 %i.31624, 226
  %arrayidx260 = getelementptr i32, ptr %data, i32 %add259
  %316 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %315, ptr %arrayidx260, align 4
  %inc262 = add nuw nsw i32 %i.31624, 1
  %exitcond1633.not = icmp eq i32 %inc262, 3
  br i1 %exitcond1633.not, label %for.end263, label %for.body144.for.body144_crit_edge

for.body144.for.body144_crit_edge:                ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body144

for.end263:                                       ; preds = %for.body144
  %317 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %io_base, align 4
  %add266 = add i32 %mul, 6912
  %add.ptr.i1503 = getelementptr i8, ptr %318, i32 %add266
  %319 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1503) #15, !srcloc !293
  %320 = tail call i32 @llvm.bswap.i32(i32 %319) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx268 = getelementptr i32, ptr %data, i32 229
  %321 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %320, ptr %arrayidx268, align 4
  %322 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %io_base, align 4
  %add276 = add i32 %mul, 6992
  %add.ptr.i1504 = getelementptr i8, ptr %323, i32 %add276
  %324 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1504) #15, !srcloc !293
  %325 = tail call i32 @llvm.bswap.i32(i32 %324) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx279 = getelementptr i32, ptr %data, i32 230
  %326 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %325, ptr %arrayidx279, align 4
  %327 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %io_base, align 4
  %add273.1 = shl i32 %port, 2
  %add276.1 = add i32 %add273.1, 7016
  %add.ptr.i1504.1 = getelementptr i8, ptr %328, i32 %add276.1
  %329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1504.1) #15, !srcloc !293
  %330 = tail call i32 @llvm.bswap.i32(i32 %329) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx279.1 = getelementptr i32, ptr %data, i32 231
  %331 = ptrtoint ptr %arrayidx279.1 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %330, ptr %arrayidx279.1, align 4
  %332 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %io_base, align 4
  %add273.2 = shl i32 %port, 2
  %add276.2 = add i32 %add273.2, 7040
  %add.ptr.i1504.2 = getelementptr i8, ptr %333, i32 %add276.2
  %334 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1504.2) #15, !srcloc !293
  %335 = tail call i32 @llvm.bswap.i32(i32 %334) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx279.2 = getelementptr i32, ptr %data, i32 232
  %336 = ptrtoint ptr %arrayidx279.2 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %335, ptr %arrayidx279.2, align 4
  %337 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %io_base, align 4
  %add285 = add i32 %mul138, 4156
  %add.ptr.i1505 = getelementptr i8, ptr %338, i32 %add285
  %339 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1505) #15, !srcloc !293
  %340 = tail call i32 @llvm.bswap.i32(i32 %339) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx287 = getelementptr i32, ptr %data, i32 233
  %341 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %340, ptr %arrayidx287, align 4
  br label %for.body293

for.body293:                                      ; preds = %for.body293.for.body293_crit_edge, %for.end263
  %i.51628 = phi i32 [ 0, %for.end263 ], [ %inc459, %for.body293.for.body293_crit_edge ]
  %mul294 = mul nuw nsw i32 %i.51628, 6
  %add295 = add i32 %mul294, %port
  %342 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %io_base, align 4
  %mul297 = shl i32 %add295, 7
  %add298 = add i32 %mul297, 8192
  %add.ptr.i1506 = getelementptr i8, ptr %343, i32 %add298
  %344 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1506) #15, !srcloc !293
  %345 = tail call i32 @llvm.bswap.i32(i32 %344) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add300 = add nuw nsw i32 %i.51628, 234
  %arrayidx301 = getelementptr i32, ptr %data, i32 %add300
  %346 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %345, ptr %arrayidx301, align 4
  %347 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %io_base, align 4
  %add304 = add i32 %mul297, 8196
  %add.ptr.i1507 = getelementptr i8, ptr %348, i32 %add304
  %349 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1507) #15, !srcloc !293
  %350 = tail call i32 @llvm.bswap.i32(i32 %349) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add306 = add nuw nsw i32 %i.51628, 237
  %arrayidx307 = getelementptr i32, ptr %data, i32 %add306
  %351 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %350, ptr %arrayidx307, align 4
  %352 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %io_base, align 4
  %add310 = add i32 %mul297, 8200
  %add.ptr.i1508 = getelementptr i8, ptr %353, i32 %add310
  %354 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1508) #15, !srcloc !293
  %355 = tail call i32 @llvm.bswap.i32(i32 %354) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add312 = add nuw nsw i32 %i.51628, 240
  %arrayidx313 = getelementptr i32, ptr %data, i32 %add312
  %356 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 %355, ptr %arrayidx313, align 4
  %357 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %io_base, align 4
  %add316 = add i32 %mul297, 8204
  %add.ptr.i1509 = getelementptr i8, ptr %358, i32 %add316
  %359 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1509) #15, !srcloc !293
  %360 = tail call i32 @llvm.bswap.i32(i32 %359) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add318 = add nuw nsw i32 %i.51628, 243
  %arrayidx319 = getelementptr i32, ptr %data, i32 %add318
  %361 = ptrtoint ptr %arrayidx319 to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 %360, ptr %arrayidx319, align 4
  %362 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %io_base, align 4
  %add322 = add i32 %mul297, 8208
  %add.ptr.i1510 = getelementptr i8, ptr %363, i32 %add322
  %364 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1510) #15, !srcloc !293
  %365 = tail call i32 @llvm.bswap.i32(i32 %364) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add324 = add nuw nsw i32 %i.51628, 246
  %arrayidx325 = getelementptr i32, ptr %data, i32 %add324
  %366 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %365, ptr %arrayidx325, align 4
  %367 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %io_base, align 4
  %add328 = add i32 %mul297, 8212
  %add.ptr.i1511 = getelementptr i8, ptr %368, i32 %add328
  %369 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1511) #15, !srcloc !293
  %370 = tail call i32 @llvm.bswap.i32(i32 %369) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add330 = add nuw nsw i32 %i.51628, 249
  %arrayidx331 = getelementptr i32, ptr %data, i32 %add330
  %371 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 %370, ptr %arrayidx331, align 4
  %372 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %io_base, align 4
  %add334 = add i32 %mul297, 8216
  %add.ptr.i1512 = getelementptr i8, ptr %373, i32 %add334
  %374 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1512) #15, !srcloc !293
  %375 = tail call i32 @llvm.bswap.i32(i32 %374) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add336 = add nuw nsw i32 %i.51628, 252
  %arrayidx337 = getelementptr i32, ptr %data, i32 %add336
  %376 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %375, ptr %arrayidx337, align 4
  %377 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %io_base, align 4
  %add340 = add i32 %mul297, 8220
  %add.ptr.i1513 = getelementptr i8, ptr %378, i32 %add340
  %379 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1513) #15, !srcloc !293
  %380 = tail call i32 @llvm.bswap.i32(i32 %379) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add342 = add nuw nsw i32 %i.51628, 255
  %arrayidx343 = getelementptr i32, ptr %data, i32 %add342
  %381 = ptrtoint ptr %arrayidx343 to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %380, ptr %arrayidx343, align 4
  %382 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %io_base, align 4
  %add346 = add i32 %mul297, 8224
  %add.ptr.i1514 = getelementptr i8, ptr %383, i32 %add346
  %384 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1514) #15, !srcloc !293
  %385 = tail call i32 @llvm.bswap.i32(i32 %384) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add348 = add nuw nsw i32 %i.51628, 258
  %arrayidx349 = getelementptr i32, ptr %data, i32 %add348
  %386 = ptrtoint ptr %arrayidx349 to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %385, ptr %arrayidx349, align 4
  %387 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %io_base, align 4
  %add352 = add i32 %mul297, 8228
  %add.ptr.i1515 = getelementptr i8, ptr %388, i32 %add352
  %389 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1515) #15, !srcloc !293
  %390 = tail call i32 @llvm.bswap.i32(i32 %389) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add354 = add nuw nsw i32 %i.51628, 261
  %arrayidx355 = getelementptr i32, ptr %data, i32 %add354
  %391 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %390, ptr %arrayidx355, align 4
  %392 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %io_base, align 4
  %add358 = add i32 %mul297, 8232
  %add.ptr.i1516 = getelementptr i8, ptr %393, i32 %add358
  %394 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1516) #15, !srcloc !293
  %395 = tail call i32 @llvm.bswap.i32(i32 %394) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add360 = add nuw nsw i32 %i.51628, 264
  %arrayidx361 = getelementptr i32, ptr %data, i32 %add360
  %396 = ptrtoint ptr %arrayidx361 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %395, ptr %arrayidx361, align 4
  %397 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %io_base, align 4
  %add364 = add i32 %mul297, 8236
  %add.ptr.i1517 = getelementptr i8, ptr %398, i32 %add364
  %399 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1517) #15, !srcloc !293
  %400 = tail call i32 @llvm.bswap.i32(i32 %399) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add366 = add nuw nsw i32 %i.51628, 267
  %arrayidx367 = getelementptr i32, ptr %data, i32 %add366
  %401 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %400, ptr %arrayidx367, align 4
  %402 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %io_base, align 4
  %add370 = add i32 %mul297, 8240
  %add.ptr.i1518 = getelementptr i8, ptr %403, i32 %add370
  %404 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1518) #15, !srcloc !293
  %405 = tail call i32 @llvm.bswap.i32(i32 %404) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add372 = add nuw nsw i32 %i.51628, 270
  %arrayidx373 = getelementptr i32, ptr %data, i32 %add372
  %406 = ptrtoint ptr %arrayidx373 to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %405, ptr %arrayidx373, align 4
  %407 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %io_base, align 4
  %add376 = add i32 %mul297, 8244
  %add.ptr.i1519 = getelementptr i8, ptr %408, i32 %add376
  %409 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1519) #15, !srcloc !293
  %410 = tail call i32 @llvm.bswap.i32(i32 %409) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add378 = add nuw nsw i32 %i.51628, 273
  %arrayidx379 = getelementptr i32, ptr %data, i32 %add378
  %411 = ptrtoint ptr %arrayidx379 to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %410, ptr %arrayidx379, align 4
  %412 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %io_base, align 4
  %add382 = add i32 %mul297, 8248
  %add.ptr.i1520 = getelementptr i8, ptr %413, i32 %add382
  %414 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1520) #15, !srcloc !293
  %415 = tail call i32 @llvm.bswap.i32(i32 %414) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add384 = add nuw nsw i32 %i.51628, 276
  %arrayidx385 = getelementptr i32, ptr %data, i32 %add384
  %416 = ptrtoint ptr %arrayidx385 to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %415, ptr %arrayidx385, align 4
  %417 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %io_base, align 4
  %add388 = add i32 %mul297, 8252
  %add.ptr.i1521 = getelementptr i8, ptr %418, i32 %add388
  %419 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1521) #15, !srcloc !293
  %420 = tail call i32 @llvm.bswap.i32(i32 %419) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add390 = add nuw nsw i32 %i.51628, 279
  %arrayidx391 = getelementptr i32, ptr %data, i32 %add390
  %421 = ptrtoint ptr %arrayidx391 to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 %420, ptr %arrayidx391, align 4
  %422 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %io_base, align 4
  %add394 = add i32 %mul297, 8256
  %add.ptr.i1522 = getelementptr i8, ptr %423, i32 %add394
  %424 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1522) #15, !srcloc !293
  %425 = tail call i32 @llvm.bswap.i32(i32 %424) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add396 = add nuw nsw i32 %i.51628, 282
  %arrayidx397 = getelementptr i32, ptr %data, i32 %add396
  %426 = ptrtoint ptr %arrayidx397 to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 %425, ptr %arrayidx397, align 4
  %427 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %io_base, align 4
  %add400 = add i32 %mul297, 8260
  %add.ptr.i1523 = getelementptr i8, ptr %428, i32 %add400
  %429 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1523) #15, !srcloc !293
  %430 = tail call i32 @llvm.bswap.i32(i32 %429) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add402 = add nuw nsw i32 %i.51628, 285
  %arrayidx403 = getelementptr i32, ptr %data, i32 %add402
  %431 = ptrtoint ptr %arrayidx403 to i32
  call void @__asan_store4_noabort(i32 %431)
  store i32 %430, ptr %arrayidx403, align 4
  %432 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %io_base, align 4
  %add406 = add i32 %mul297, 8264
  %add.ptr.i1524 = getelementptr i8, ptr %433, i32 %add406
  %434 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1524) #15, !srcloc !293
  %435 = tail call i32 @llvm.bswap.i32(i32 %434) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add408 = add nuw nsw i32 %i.51628, 288
  %arrayidx409 = getelementptr i32, ptr %data, i32 %add408
  %436 = ptrtoint ptr %arrayidx409 to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 %435, ptr %arrayidx409, align 4
  %437 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %io_base, align 4
  %add412 = add i32 %mul297, 8268
  %add.ptr.i1525 = getelementptr i8, ptr %438, i32 %add412
  %439 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1525) #15, !srcloc !293
  %440 = tail call i32 @llvm.bswap.i32(i32 %439) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add414 = add nuw nsw i32 %i.51628, 291
  %arrayidx415 = getelementptr i32, ptr %data, i32 %add414
  %441 = ptrtoint ptr %arrayidx415 to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 %440, ptr %arrayidx415, align 4
  %442 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %io_base, align 4
  %add418 = add i32 %mul297, 8272
  %add.ptr.i1526 = getelementptr i8, ptr %443, i32 %add418
  %444 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1526) #15, !srcloc !293
  %445 = tail call i32 @llvm.bswap.i32(i32 %444) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add420 = add nuw nsw i32 %i.51628, 294
  %arrayidx421 = getelementptr i32, ptr %data, i32 %add420
  %446 = ptrtoint ptr %arrayidx421 to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 %445, ptr %arrayidx421, align 4
  %447 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %io_base, align 4
  %add424 = add i32 %mul297, 8276
  %add.ptr.i1527 = getelementptr i8, ptr %448, i32 %add424
  %449 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1527) #15, !srcloc !293
  %450 = tail call i32 @llvm.bswap.i32(i32 %449) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add426 = add nuw nsw i32 %i.51628, 297
  %arrayidx427 = getelementptr i32, ptr %data, i32 %add426
  %451 = ptrtoint ptr %arrayidx427 to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 %450, ptr %arrayidx427, align 4
  %452 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %io_base, align 4
  %add430 = add i32 %mul297, 8280
  %add.ptr.i1528 = getelementptr i8, ptr %453, i32 %add430
  %454 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1528) #15, !srcloc !293
  %455 = tail call i32 @llvm.bswap.i32(i32 %454) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add432 = add nuw nsw i32 %i.51628, 300
  %arrayidx433 = getelementptr i32, ptr %data, i32 %add432
  %456 = ptrtoint ptr %arrayidx433 to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 %455, ptr %arrayidx433, align 4
  %457 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %io_base, align 4
  %add436 = add i32 %mul297, 8284
  %add.ptr.i1529 = getelementptr i8, ptr %458, i32 %add436
  %459 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1529) #15, !srcloc !293
  %460 = tail call i32 @llvm.bswap.i32(i32 %459) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add438 = add nuw nsw i32 %i.51628, 303
  %arrayidx439 = getelementptr i32, ptr %data, i32 %add438
  %461 = ptrtoint ptr %arrayidx439 to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 %460, ptr %arrayidx439, align 4
  %462 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %io_base, align 4
  %add442 = add i32 %mul297, 8288
  %add.ptr.i1530 = getelementptr i8, ptr %463, i32 %add442
  %464 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1530) #15, !srcloc !293
  %465 = tail call i32 @llvm.bswap.i32(i32 %464) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add444 = add nuw nsw i32 %i.51628, 306
  %arrayidx445 = getelementptr i32, ptr %data, i32 %add444
  %466 = ptrtoint ptr %arrayidx445 to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %465, ptr %arrayidx445, align 4
  %467 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %io_base, align 4
  %add448 = add i32 %mul297, 8296
  %add.ptr.i1531 = getelementptr i8, ptr %468, i32 %add448
  %469 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1531) #15, !srcloc !293
  %470 = tail call i32 @llvm.bswap.i32(i32 %469) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add450 = add nuw nsw i32 %i.51628, 309
  %arrayidx451 = getelementptr i32, ptr %data, i32 %add450
  %471 = ptrtoint ptr %arrayidx451 to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 %470, ptr %arrayidx451, align 4
  %472 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %io_base, align 4
  %add454 = add i32 %mul297, 8300
  %add.ptr.i1532 = getelementptr i8, ptr %473, i32 %add454
  %474 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1532) #15, !srcloc !293
  %475 = tail call i32 @llvm.bswap.i32(i32 %474) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add456 = add nuw nsw i32 %i.51628, 312
  %arrayidx457 = getelementptr i32, ptr %data, i32 %add456
  %476 = ptrtoint ptr %arrayidx457 to i32
  call void @__asan_store4_noabort(i32 %476)
  store i32 %475, ptr %arrayidx457, align 4
  %inc459 = add nuw nsw i32 %i.51628, 1
  %477 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %478)
  %cmp290 = icmp eq i32 %478, 3552816
  %div = select i1 %cmp290, i32 3, i32 1
  %cmp292 = icmp ult i32 %inc459, %div
  br i1 %cmp292, label %for.body293.for.body293_crit_edge, label %for.body293.for.body463_crit_edge

for.body293.for.body463_crit_edge:                ; preds = %for.body293
  br label %for.body463

for.body293.for.body293_crit_edge:                ; preds = %for.body293
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body293

for.body463:                                      ; preds = %for.body463.for.body463_crit_edge, %for.body293.for.body463_crit_edge
  %i.61629 = phi i32 [ %inc501, %for.body463.for.body463_crit_edge ], [ 0, %for.body293.for.body463_crit_edge ]
  %479 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %io_base, align 4
  %mul465 = mul nuw nsw i32 %i.61629, 144
  %add466 = add nuw nsw i32 %mul465, 12288
  %add.ptr.i1533 = getelementptr i8, ptr %480, i32 %add466
  %481 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1533) #15, !srcloc !293
  %482 = tail call i32 @llvm.bswap.i32(i32 %481) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add468 = add nuw nsw i32 %i.61629, 315
  %arrayidx469 = getelementptr i32, ptr %data, i32 %add468
  %483 = ptrtoint ptr %arrayidx469 to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 %482, ptr %arrayidx469, align 4
  %484 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %io_base, align 4
  %add472 = add nuw nsw i32 %mul465, 12292
  %add.ptr.i1534 = getelementptr i8, ptr %485, i32 %add472
  %486 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1534) #15, !srcloc !293
  %487 = tail call i32 @llvm.bswap.i32(i32 %486) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add474 = add nuw nsw i32 %i.61629, 323
  %arrayidx475 = getelementptr i32, ptr %data, i32 %add474
  %488 = ptrtoint ptr %arrayidx475 to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 %487, ptr %arrayidx475, align 4
  %489 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %io_base, align 4
  %add478 = add nuw nsw i32 %mul465, 12296
  %add.ptr.i1535 = getelementptr i8, ptr %490, i32 %add478
  %491 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1535) #15, !srcloc !293
  %492 = tail call i32 @llvm.bswap.i32(i32 %491) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add480 = add nuw nsw i32 %i.61629, 331
  %arrayidx481 = getelementptr i32, ptr %data, i32 %add480
  %493 = ptrtoint ptr %arrayidx481 to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 %492, ptr %arrayidx481, align 4
  %494 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %io_base, align 4
  %add484 = add nuw nsw i32 %mul465, 12300
  %add.ptr.i1536 = getelementptr i8, ptr %495, i32 %add484
  %496 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1536) #15, !srcloc !293
  %497 = tail call i32 @llvm.bswap.i32(i32 %496) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add486 = add nuw nsw i32 %i.61629, 339
  %arrayidx487 = getelementptr i32, ptr %data, i32 %add486
  %498 = ptrtoint ptr %arrayidx487 to i32
  call void @__asan_store4_noabort(i32 %498)
  store i32 %497, ptr %arrayidx487, align 4
  %499 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %io_base, align 4
  %add490 = add nuw nsw i32 %mul465, 12304
  %add.ptr.i1537 = getelementptr i8, ptr %500, i32 %add490
  %501 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1537) #15, !srcloc !293
  %502 = tail call i32 @llvm.bswap.i32(i32 %501) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add492 = add nuw nsw i32 %i.61629, 347
  %arrayidx493 = getelementptr i32, ptr %data, i32 %add492
  %503 = ptrtoint ptr %arrayidx493 to i32
  call void @__asan_store4_noabort(i32 %503)
  store i32 %502, ptr %arrayidx493, align 4
  %504 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %io_base, align 4
  %add496 = add nuw nsw i32 %mul465, 12308
  %add.ptr.i1538 = getelementptr i8, ptr %505, i32 %add496
  %506 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1538) #15, !srcloc !293
  %507 = tail call i32 @llvm.bswap.i32(i32 %506) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add498 = add nuw nsw i32 %i.61629, 355
  %arrayidx499 = getelementptr i32, ptr %data, i32 %add498
  %508 = ptrtoint ptr %arrayidx499 to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 %507, ptr %arrayidx499, align 4
  %inc501 = add nuw nsw i32 %i.61629, 1
  %exitcond1635.not = icmp eq i32 %inc501, 8
  br i1 %exitcond1635.not, label %for.end502, label %for.body463.for.body463_crit_edge

for.body463.for.body463_crit_edge:                ; preds = %for.body463
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body463

for.end502:                                       ; preds = %for.body463
  %509 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %io_base, align 4
  %mul504 = mul i32 %port, 144
  %add505 = add i32 %mul504, 12312
  %add.ptr.i1539 = getelementptr i8, ptr %510, i32 %add505
  %511 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1539) #15, !srcloc !293
  %512 = tail call i32 @llvm.bswap.i32(i32 %511) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx507 = getelementptr i32, ptr %data, i32 363
  %513 = ptrtoint ptr %arrayidx507 to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 %512, ptr %arrayidx507, align 4
  %514 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %io_base, align 4
  %add510 = add i32 %mul504, 12316
  %add.ptr.i1540 = getelementptr i8, ptr %515, i32 %add510
  %516 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1540) #15, !srcloc !293
  %517 = tail call i32 @llvm.bswap.i32(i32 %516) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx512 = getelementptr i32, ptr %data, i32 364
  %518 = ptrtoint ptr %arrayidx512 to i32
  call void @__asan_store4_noabort(i32 %518)
  store i32 %517, ptr %arrayidx512, align 4
  %519 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %io_base, align 4
  %add515 = add i32 %mul504, 12320
  %add.ptr.i1541 = getelementptr i8, ptr %520, i32 %add515
  %521 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1541) #15, !srcloc !293
  %522 = tail call i32 @llvm.bswap.i32(i32 %521) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx517 = getelementptr i32, ptr %data, i32 365
  %523 = ptrtoint ptr %arrayidx517 to i32
  call void @__asan_store4_noabort(i32 %523)
  store i32 %522, ptr %arrayidx517, align 4
  br label %for.body520

for.body520:                                      ; preds = %for.body520.for.body520_crit_edge, %for.end502
  %i.71630 = phi i32 [ 0, %for.end502 ], [ %inc584, %for.body520.for.body520_crit_edge ]
  %mul521 = mul nuw nsw i32 %i.71630, 6
  %add522 = add i32 %mul521, %port
  %524 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %io_base, align 4
  %mul524 = mul i32 %add522, 144
  %add525 = add i32 %mul524, 12324
  %add.ptr.i1542 = getelementptr i8, ptr %525, i32 %add525
  %526 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1542) #15, !srcloc !293
  %527 = tail call i32 @llvm.bswap.i32(i32 %526) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add527 = add nuw nsw i32 %i.71630, 366
  %arrayidx528 = getelementptr i32, ptr %data, i32 %add527
  %528 = ptrtoint ptr %arrayidx528 to i32
  call void @__asan_store4_noabort(i32 %528)
  store i32 %527, ptr %arrayidx528, align 4
  %529 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %io_base, align 4
  %add531 = add i32 %mul524, 12328
  %add.ptr.i1543 = getelementptr i8, ptr %530, i32 %add531
  %531 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1543) #15, !srcloc !293
  %532 = tail call i32 @llvm.bswap.i32(i32 %531) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add533 = add nuw nsw i32 %i.71630, 369
  %arrayidx534 = getelementptr i32, ptr %data, i32 %add533
  %533 = ptrtoint ptr %arrayidx534 to i32
  call void @__asan_store4_noabort(i32 %533)
  store i32 %532, ptr %arrayidx534, align 4
  %534 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %io_base, align 4
  %add537 = add i32 %mul524, 12332
  %add.ptr.i1544 = getelementptr i8, ptr %535, i32 %add537
  %536 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1544) #15, !srcloc !293
  %537 = tail call i32 @llvm.bswap.i32(i32 %536) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add539 = add nuw nsw i32 %i.71630, 372
  %arrayidx540 = getelementptr i32, ptr %data, i32 %add539
  %538 = ptrtoint ptr %arrayidx540 to i32
  call void @__asan_store4_noabort(i32 %538)
  store i32 %537, ptr %arrayidx540, align 4
  %539 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %io_base, align 4
  %add543 = add i32 %mul524, 12336
  %add.ptr.i1545 = getelementptr i8, ptr %540, i32 %add543
  %541 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1545) #15, !srcloc !293
  %542 = tail call i32 @llvm.bswap.i32(i32 %541) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add545 = add nuw nsw i32 %i.71630, 375
  %arrayidx546 = getelementptr i32, ptr %data, i32 %add545
  %543 = ptrtoint ptr %arrayidx546 to i32
  call void @__asan_store4_noabort(i32 %543)
  store i32 %542, ptr %arrayidx546, align 4
  %544 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %io_base, align 4
  %add549 = add i32 %mul524, 12340
  %add.ptr.i1546 = getelementptr i8, ptr %545, i32 %add549
  %546 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1546) #15, !srcloc !293
  %547 = tail call i32 @llvm.bswap.i32(i32 %546) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add551 = add nuw nsw i32 %i.71630, 378
  %arrayidx552 = getelementptr i32, ptr %data, i32 %add551
  %548 = ptrtoint ptr %arrayidx552 to i32
  call void @__asan_store4_noabort(i32 %548)
  store i32 %547, ptr %arrayidx552, align 4
  %549 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %io_base, align 4
  %add555 = add i32 %mul524, 12344
  %add.ptr.i1547 = getelementptr i8, ptr %550, i32 %add555
  %551 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1547) #15, !srcloc !293
  %552 = tail call i32 @llvm.bswap.i32(i32 %551) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add557 = add nuw nsw i32 %i.71630, 381
  %arrayidx558 = getelementptr i32, ptr %data, i32 %add557
  %553 = ptrtoint ptr %arrayidx558 to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 %552, ptr %arrayidx558, align 4
  %554 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %io_base, align 4
  %add561 = add i32 %mul524, 12348
  %add.ptr.i1548 = getelementptr i8, ptr %555, i32 %add561
  %556 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1548) #15, !srcloc !293
  %557 = tail call i32 @llvm.bswap.i32(i32 %556) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add563 = add nuw nsw i32 %i.71630, 384
  %arrayidx564 = getelementptr i32, ptr %data, i32 %add563
  %558 = ptrtoint ptr %arrayidx564 to i32
  call void @__asan_store4_noabort(i32 %558)
  store i32 %557, ptr %arrayidx564, align 4
  %559 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %io_base, align 4
  %add567 = add i32 %mul524, 12352
  %add.ptr.i1549 = getelementptr i8, ptr %560, i32 %add567
  %561 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1549) #15, !srcloc !293
  %562 = tail call i32 @llvm.bswap.i32(i32 %561) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add569 = add nuw nsw i32 %i.71630, 387
  %arrayidx570 = getelementptr i32, ptr %data, i32 %add569
  %563 = ptrtoint ptr %arrayidx570 to i32
  call void @__asan_store4_noabort(i32 %563)
  store i32 %562, ptr %arrayidx570, align 4
  %564 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %io_base, align 4
  %add573 = add i32 %mul524, 12356
  %add.ptr.i1550 = getelementptr i8, ptr %565, i32 %add573
  %566 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1550) #15, !srcloc !293
  %567 = tail call i32 @llvm.bswap.i32(i32 %566) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add575 = add nuw nsw i32 %i.71630, 390
  %arrayidx576 = getelementptr i32, ptr %data, i32 %add575
  %568 = ptrtoint ptr %arrayidx576 to i32
  call void @__asan_store4_noabort(i32 %568)
  store i32 %567, ptr %arrayidx576, align 4
  %569 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %io_base, align 4
  %add579 = add i32 %mul524, 12360
  %add.ptr.i1551 = getelementptr i8, ptr %570, i32 %add579
  %571 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1551) #15, !srcloc !293
  %572 = tail call i32 @llvm.bswap.i32(i32 %571) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add581 = add nuw nsw i32 %i.71630, 393
  %arrayidx582 = getelementptr i32, ptr %data, i32 %add581
  %573 = ptrtoint ptr %arrayidx582 to i32
  call void @__asan_store4_noabort(i32 %573)
  store i32 %572, ptr %arrayidx582, align 4
  %inc584 = add nuw nsw i32 %i.71630, 1
  %exitcond1636.not = icmp eq i32 %inc584, 3
  br i1 %exitcond1636.not, label %for.end585, label %for.body520.for.body520_crit_edge

for.body520.for.body520_crit_edge:                ; preds = %for.body520
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body520

for.end585:                                       ; preds = %for.body520
  %574 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %io_base, align 4
  %add588 = add i32 %mul504, 12364
  %add.ptr.i1552 = getelementptr i8, ptr %575, i32 %add588
  %576 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1552) #15, !srcloc !293
  %577 = tail call i32 @llvm.bswap.i32(i32 %576) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx590 = getelementptr i32, ptr %data, i32 396
  %578 = ptrtoint ptr %arrayidx590 to i32
  call void @__asan_store4_noabort(i32 %578)
  store i32 %577, ptr %arrayidx590, align 4
  %579 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %io_base, align 4
  %add593 = add i32 %mul504, 12368
  %add.ptr.i1553 = getelementptr i8, ptr %580, i32 %add593
  %581 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1553) #15, !srcloc !293
  %582 = tail call i32 @llvm.bswap.i32(i32 %581) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx595 = getelementptr i32, ptr %data, i32 397
  %583 = ptrtoint ptr %arrayidx595 to i32
  call void @__asan_store4_noabort(i32 %583)
  store i32 %582, ptr %arrayidx595, align 4
  %584 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %io_base, align 4
  %add598 = add i32 %mul504, 12372
  %add.ptr.i1554 = getelementptr i8, ptr %585, i32 %add598
  %586 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1554) #15, !srcloc !293
  %587 = tail call i32 @llvm.bswap.i32(i32 %586) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx600 = getelementptr i32, ptr %data, i32 398
  %588 = ptrtoint ptr %arrayidx600 to i32
  call void @__asan_store4_noabort(i32 %588)
  store i32 %587, ptr %arrayidx600, align 4
  %589 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %io_base, align 4
  %add603 = add i32 %mul504, 12376
  %add.ptr.i1555 = getelementptr i8, ptr %590, i32 %add603
  %591 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1555) #15, !srcloc !293
  %592 = tail call i32 @llvm.bswap.i32(i32 %591) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx605 = getelementptr i32, ptr %data, i32 399
  %593 = ptrtoint ptr %arrayidx605 to i32
  call void @__asan_store4_noabort(i32 %593)
  store i32 %592, ptr %arrayidx605, align 4
  %594 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %io_base, align 4
  %add608 = add i32 %mul504, 12380
  %add.ptr.i1556 = getelementptr i8, ptr %595, i32 %add608
  %596 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1556) #15, !srcloc !293
  %597 = tail call i32 @llvm.bswap.i32(i32 %596) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx610 = getelementptr i32, ptr %data, i32 400
  %598 = ptrtoint ptr %arrayidx610 to i32
  call void @__asan_store4_noabort(i32 %598)
  store i32 %597, ptr %arrayidx610, align 4
  %599 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %io_base, align 4
  %add613 = add i32 %mul504, 12384
  %add.ptr.i1557 = getelementptr i8, ptr %600, i32 %add613
  %601 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1557) #15, !srcloc !293
  %602 = tail call i32 @llvm.bswap.i32(i32 %601) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx615 = getelementptr i32, ptr %data, i32 401
  %603 = ptrtoint ptr %arrayidx615 to i32
  call void @__asan_store4_noabort(i32 %603)
  store i32 %602, ptr %arrayidx615, align 4
  %604 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %io_base, align 4
  %add618 = add i32 %mul504, 12388
  %add.ptr.i1558 = getelementptr i8, ptr %605, i32 %add618
  %606 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1558) #15, !srcloc !293
  %607 = tail call i32 @llvm.bswap.i32(i32 %606) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx620 = getelementptr i32, ptr %data, i32 402
  %608 = ptrtoint ptr %arrayidx620 to i32
  call void @__asan_store4_noabort(i32 %608)
  store i32 %607, ptr %arrayidx620, align 4
  %609 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %io_base, align 4
  %add623 = add i32 %mul504, 12392
  %add.ptr.i1559 = getelementptr i8, ptr %610, i32 %add623
  %611 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1559) #15, !srcloc !293
  %612 = tail call i32 @llvm.bswap.i32(i32 %611) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx625 = getelementptr i32, ptr %data, i32 403
  %613 = ptrtoint ptr %arrayidx625 to i32
  call void @__asan_store4_noabort(i32 %613)
  store i32 %612, ptr %arrayidx625, align 4
  %614 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %io_base, align 4
  %add628 = add i32 %mul504, 12396
  %add.ptr.i1560 = getelementptr i8, ptr %615, i32 %add628
  %616 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1560) #15, !srcloc !293
  %617 = tail call i32 @llvm.bswap.i32(i32 %616) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx630 = getelementptr i32, ptr %data, i32 404
  %618 = ptrtoint ptr %arrayidx630 to i32
  call void @__asan_store4_noabort(i32 %618)
  store i32 %617, ptr %arrayidx630, align 4
  %619 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %io_base, align 4
  %add633 = add i32 %mul504, 12400
  %add.ptr.i1561 = getelementptr i8, ptr %620, i32 %add633
  %621 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1561) #15, !srcloc !293
  %622 = tail call i32 @llvm.bswap.i32(i32 %621) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx635 = getelementptr i32, ptr %data, i32 405
  %623 = ptrtoint ptr %arrayidx635 to i32
  call void @__asan_store4_noabort(i32 %623)
  store i32 %622, ptr %arrayidx635, align 4
  %624 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %io_base, align 4
  %add638 = add i32 %mul504, 12404
  %add.ptr.i1562 = getelementptr i8, ptr %625, i32 %add638
  %626 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1562) #15, !srcloc !293
  %627 = tail call i32 @llvm.bswap.i32(i32 %626) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx640 = getelementptr i32, ptr %data, i32 406
  %628 = ptrtoint ptr %arrayidx640 to i32
  call void @__asan_store4_noabort(i32 %628)
  store i32 %627, ptr %arrayidx640, align 4
  %629 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %io_base, align 4
  %add643 = add i32 %mul504, 12408
  %add.ptr.i1563 = getelementptr i8, ptr %630, i32 %add643
  %631 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1563) #15, !srcloc !293
  %632 = tail call i32 @llvm.bswap.i32(i32 %631) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx645 = getelementptr i32, ptr %data, i32 407
  %633 = ptrtoint ptr %arrayidx645 to i32
  call void @__asan_store4_noabort(i32 %633)
  store i32 %632, ptr %arrayidx645, align 4
  %634 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %io_base, align 4
  %add648 = add i32 %mul504, 12412
  %add.ptr.i1564 = getelementptr i8, ptr %635, i32 %add648
  %636 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1564) #15, !srcloc !293
  %637 = tail call i32 @llvm.bswap.i32(i32 %636) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx650 = getelementptr i32, ptr %data, i32 408
  %638 = ptrtoint ptr %arrayidx650 to i32
  call void @__asan_store4_noabort(i32 %638)
  store i32 %637, ptr %arrayidx650, align 4
  br label %for.body653

for.body653:                                      ; preds = %for.body653.for.body653_crit_edge, %for.end585
  %i.81631 = phi i32 [ 0, %for.end585 ], [ %inc718, %for.body653.for.body653_crit_edge ]
  %mul654 = mul nuw nsw i32 %i.81631, 6
  %add655 = add i32 %mul654, %port
  %mul656 = mul i32 %add655, 144
  %639 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %io_base, align 4
  %add658 = add i32 %mul656, 16388
  %add.ptr.i1565 = getelementptr i8, ptr %640, i32 %add658
  %641 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1565) #15, !srcloc !293
  %642 = tail call i32 @llvm.bswap.i32(i32 %641) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add660 = add nuw nsw i32 %i.81631, 409
  %arrayidx661 = getelementptr i32, ptr %data, i32 %add660
  %643 = ptrtoint ptr %arrayidx661 to i32
  call void @__asan_store4_noabort(i32 %643)
  store i32 %642, ptr %arrayidx661, align 4
  %644 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %io_base, align 4
  %add663 = add i32 %mul656, 16392
  %add.ptr.i1566 = getelementptr i8, ptr %645, i32 %add663
  %646 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1566) #15, !srcloc !293
  %647 = tail call i32 @llvm.bswap.i32(i32 %646) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add665 = add nuw nsw i32 %i.81631, 412
  %arrayidx666 = getelementptr i32, ptr %data, i32 %add665
  %648 = ptrtoint ptr %arrayidx666 to i32
  call void @__asan_store4_noabort(i32 %648)
  store i32 %647, ptr %arrayidx666, align 4
  %649 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %io_base, align 4
  %add668 = add i32 %mul656, 16396
  %add.ptr.i1567 = getelementptr i8, ptr %650, i32 %add668
  %651 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1567) #15, !srcloc !293
  %652 = tail call i32 @llvm.bswap.i32(i32 %651) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add670 = add nuw nsw i32 %i.81631, 415
  %arrayidx671 = getelementptr i32, ptr %data, i32 %add670
  %653 = ptrtoint ptr %arrayidx671 to i32
  call void @__asan_store4_noabort(i32 %653)
  store i32 %652, ptr %arrayidx671, align 4
  %654 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %io_base, align 4
  %add673 = add i32 %mul656, 16400
  %add.ptr.i1568 = getelementptr i8, ptr %655, i32 %add673
  %656 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1568) #15, !srcloc !293
  %657 = tail call i32 @llvm.bswap.i32(i32 %656) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add675 = add nuw nsw i32 %i.81631, 418
  %arrayidx676 = getelementptr i32, ptr %data, i32 %add675
  %658 = ptrtoint ptr %arrayidx676 to i32
  call void @__asan_store4_noabort(i32 %658)
  store i32 %657, ptr %arrayidx676, align 4
  %659 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %io_base, align 4
  %add678 = add i32 %mul656, 16404
  %add.ptr.i1569 = getelementptr i8, ptr %660, i32 %add678
  %661 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1569) #15, !srcloc !293
  %662 = tail call i32 @llvm.bswap.i32(i32 %661) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add680 = add nuw nsw i32 %i.81631, 421
  %arrayidx681 = getelementptr i32, ptr %data, i32 %add680
  %663 = ptrtoint ptr %arrayidx681 to i32
  call void @__asan_store4_noabort(i32 %663)
  store i32 %662, ptr %arrayidx681, align 4
  %664 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %io_base, align 4
  %add683 = add i32 %mul656, 16408
  %add.ptr.i1570 = getelementptr i8, ptr %665, i32 %add683
  %666 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1570) #15, !srcloc !293
  %667 = tail call i32 @llvm.bswap.i32(i32 %666) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add685 = add nuw nsw i32 %i.81631, 424
  %arrayidx686 = getelementptr i32, ptr %data, i32 %add685
  %668 = ptrtoint ptr %arrayidx686 to i32
  call void @__asan_store4_noabort(i32 %668)
  store i32 %667, ptr %arrayidx686, align 4
  %669 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %io_base, align 4
  %add688 = add i32 %mul656, 16412
  %add.ptr.i1571 = getelementptr i8, ptr %670, i32 %add688
  %671 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1571) #15, !srcloc !293
  %672 = tail call i32 @llvm.bswap.i32(i32 %671) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add690 = add nuw nsw i32 %i.81631, 427
  %arrayidx691 = getelementptr i32, ptr %data, i32 %add690
  %673 = ptrtoint ptr %arrayidx691 to i32
  call void @__asan_store4_noabort(i32 %673)
  store i32 %672, ptr %arrayidx691, align 4
  %674 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %io_base, align 4
  %add693 = add i32 %mul656, 16420
  %add.ptr.i1572 = getelementptr i8, ptr %675, i32 %add693
  %676 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1572) #15, !srcloc !293
  %677 = tail call i32 @llvm.bswap.i32(i32 %676) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add695 = add nuw nsw i32 %i.81631, 430
  %arrayidx696 = getelementptr i32, ptr %data, i32 %add695
  %678 = ptrtoint ptr %arrayidx696 to i32
  call void @__asan_store4_noabort(i32 %678)
  store i32 %677, ptr %arrayidx696, align 4
  %679 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %io_base, align 4
  %add698 = add i32 %mul656, 16424
  %add.ptr.i1573 = getelementptr i8, ptr %680, i32 %add698
  %681 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1573) #15, !srcloc !293
  %682 = tail call i32 @llvm.bswap.i32(i32 %681) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add700 = add nuw nsw i32 %i.81631, 433
  %arrayidx701 = getelementptr i32, ptr %data, i32 %add700
  %683 = ptrtoint ptr %arrayidx701 to i32
  call void @__asan_store4_noabort(i32 %683)
  store i32 %682, ptr %arrayidx701, align 4
  %684 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %io_base, align 4
  %add703 = add i32 %mul656, 16428
  %add.ptr.i1574 = getelementptr i8, ptr %685, i32 %add703
  %686 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1574) #15, !srcloc !293
  %687 = tail call i32 @llvm.bswap.i32(i32 %686) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add705 = add nuw nsw i32 %i.81631, 436
  %arrayidx706 = getelementptr i32, ptr %data, i32 %add705
  %688 = ptrtoint ptr %arrayidx706 to i32
  call void @__asan_store4_noabort(i32 %688)
  store i32 %687, ptr %arrayidx706, align 4
  %689 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load ptr, ptr %io_base, align 4
  %add708 = add i32 %mul656, 16432
  %add.ptr.i1575 = getelementptr i8, ptr %690, i32 %add708
  %691 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1575) #15, !srcloc !293
  %692 = tail call i32 @llvm.bswap.i32(i32 %691) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add710 = add nuw nsw i32 %i.81631, 439
  %arrayidx711 = getelementptr i32, ptr %data, i32 %add710
  %693 = ptrtoint ptr %arrayidx711 to i32
  call void @__asan_store4_noabort(i32 %693)
  store i32 %692, ptr %arrayidx711, align 4
  %694 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %io_base, align 4
  %add713 = add i32 %mul656, 16436
  %add.ptr.i1576 = getelementptr i8, ptr %695, i32 %add713
  %696 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1576) #15, !srcloc !293
  %697 = tail call i32 @llvm.bswap.i32(i32 %696) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add715 = add nuw nsw i32 %i.81631, 442
  %arrayidx716 = getelementptr i32, ptr %data, i32 %add715
  %698 = ptrtoint ptr %arrayidx716 to i32
  call void @__asan_store4_noabort(i32 %698)
  store i32 %697, ptr %arrayidx716, align 4
  %inc718 = add nuw nsw i32 %i.81631, 1
  %exitcond1637.not = icmp eq i32 %inc718, 3
  br i1 %exitcond1637.not, label %for.end719, label %for.body653.for.body653_crit_edge

for.body653.for.body653_crit_edge:                ; preds = %for.body653
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body653

for.end719:                                       ; preds = %for.body653
  %699 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %io_base, align 4
  %add.ptr.i1577 = getelementptr i8, ptr %700, i32 20480
  %701 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1577) #15, !srcloc !293
  %702 = tail call i32 @llvm.bswap.i32(i32 %701) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx722 = getelementptr i32, ptr %data, i32 445
  %703 = ptrtoint ptr %arrayidx722 to i32
  call void @__asan_store4_noabort(i32 %703)
  store i32 %702, ptr %arrayidx722, align 4
  %704 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %io_base, align 4
  %add.ptr.i1578 = getelementptr i8, ptr %705, i32 20484
  %706 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1578) #15, !srcloc !293
  %707 = tail call i32 @llvm.bswap.i32(i32 %706) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx725 = getelementptr i32, ptr %data, i32 446
  %708 = ptrtoint ptr %arrayidx725 to i32
  call void @__asan_store4_noabort(i32 %708)
  store i32 %707, ptr %arrayidx725, align 4
  %709 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %io_base, align 4
  %add.ptr.i1579 = getelementptr i8, ptr %710, i32 20488
  %711 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1579) #15, !srcloc !293
  %712 = tail call i32 @llvm.bswap.i32(i32 %711) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx728 = getelementptr i32, ptr %data, i32 447
  %713 = ptrtoint ptr %arrayidx728 to i32
  call void @__asan_store4_noabort(i32 %713)
  store i32 %712, ptr %arrayidx728, align 4
  %714 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %io_base, align 4
  %add.ptr.i1580 = getelementptr i8, ptr %715, i32 20736
  %716 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1580) #15, !srcloc !293
  %717 = tail call i32 @llvm.bswap.i32(i32 %716) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx731 = getelementptr i32, ptr %data, i32 448
  %718 = ptrtoint ptr %arrayidx731 to i32
  call void @__asan_store4_noabort(i32 %718)
  store i32 %717, ptr %arrayidx731, align 4
  %719 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %io_base, align 4
  %add.ptr.i1581 = getelementptr i8, ptr %720, i32 20492
  %721 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1581) #15, !srcloc !293
  %722 = tail call i32 @llvm.bswap.i32(i32 %721) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx734 = getelementptr i32, ptr %data, i32 449
  %723 = ptrtoint ptr %arrayidx734 to i32
  call void @__asan_store4_noabort(i32 %723)
  store i32 %722, ptr %arrayidx734, align 4
  %724 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %io_base, align 4
  %add.ptr.i1582 = getelementptr i8, ptr %725, i32 20496
  %726 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1582) #15, !srcloc !293
  %727 = tail call i32 @llvm.bswap.i32(i32 %726) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx737 = getelementptr i32, ptr %data, i32 450
  %728 = ptrtoint ptr %arrayidx737 to i32
  call void @__asan_store4_noabort(i32 %728)
  store i32 %727, ptr %arrayidx737, align 4
  %729 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %io_base, align 4
  %add.ptr.i1583 = getelementptr i8, ptr %730, i32 20500
  %731 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1583) #15, !srcloc !293
  %732 = tail call i32 @llvm.bswap.i32(i32 %731) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx740 = getelementptr i32, ptr %data, i32 451
  %733 = ptrtoint ptr %arrayidx740 to i32
  call void @__asan_store4_noabort(i32 %733)
  store i32 %732, ptr %arrayidx740, align 4
  %734 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %io_base, align 4
  %add.ptr.i1584 = getelementptr i8, ptr %735, i32 20504
  %736 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1584) #15, !srcloc !293
  %737 = tail call i32 @llvm.bswap.i32(i32 %736) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx743 = getelementptr i32, ptr %data, i32 452
  %738 = ptrtoint ptr %arrayidx743 to i32
  call void @__asan_store4_noabort(i32 %738)
  store i32 %737, ptr %arrayidx743, align 4
  %739 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load ptr, ptr %io_base, align 4
  %add.ptr.i1585 = getelementptr i8, ptr %740, i32 20508
  %741 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1585) #15, !srcloc !293
  %742 = tail call i32 @llvm.bswap.i32(i32 %741) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx746 = getelementptr i32, ptr %data, i32 453
  %743 = ptrtoint ptr %arrayidx746 to i32
  call void @__asan_store4_noabort(i32 %743)
  store i32 %742, ptr %arrayidx746, align 4
  %744 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %io_base, align 4
  %add.ptr.i1586 = getelementptr i8, ptr %745, i32 20512
  %746 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1586) #15, !srcloc !293
  %747 = tail call i32 @llvm.bswap.i32(i32 %746) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx749 = getelementptr i32, ptr %data, i32 454
  %748 = ptrtoint ptr %arrayidx749 to i32
  call void @__asan_store4_noabort(i32 %748)
  store i32 %747, ptr %arrayidx749, align 4
  %749 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %io_base, align 4
  %add.ptr.i1587 = getelementptr i8, ptr %750, i32 20516
  %751 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1587) #15, !srcloc !293
  %752 = tail call i32 @llvm.bswap.i32(i32 %751) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx752 = getelementptr i32, ptr %data, i32 455
  %753 = ptrtoint ptr %arrayidx752 to i32
  call void @__asan_store4_noabort(i32 %753)
  store i32 %752, ptr %arrayidx752, align 4
  %754 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %io_base, align 4
  %add.ptr.i1588 = getelementptr i8, ptr %755, i32 20520
  %756 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1588) #15, !srcloc !293
  %757 = tail call i32 @llvm.bswap.i32(i32 %756) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx755 = getelementptr i32, ptr %data, i32 456
  %758 = ptrtoint ptr %arrayidx755 to i32
  call void @__asan_store4_noabort(i32 %758)
  store i32 %757, ptr %arrayidx755, align 4
  %759 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load ptr, ptr %io_base, align 4
  %add.ptr.i1589 = getelementptr i8, ptr %760, i32 20524
  %761 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1589) #15, !srcloc !293
  %762 = tail call i32 @llvm.bswap.i32(i32 %761) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx758 = getelementptr i32, ptr %data, i32 457
  %763 = ptrtoint ptr %arrayidx758 to i32
  call void @__asan_store4_noabort(i32 %763)
  store i32 %762, ptr %arrayidx758, align 4
  %764 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %io_base, align 4
  %add.ptr.i1590 = getelementptr i8, ptr %765, i32 20528
  %766 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1590) #15, !srcloc !293
  %767 = tail call i32 @llvm.bswap.i32(i32 %766) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx761 = getelementptr i32, ptr %data, i32 458
  %768 = ptrtoint ptr %arrayidx761 to i32
  call void @__asan_store4_noabort(i32 %768)
  store i32 %767, ptr %arrayidx761, align 4
  %769 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %io_base, align 4
  %add.ptr.i1591 = getelementptr i8, ptr %770, i32 20532
  %771 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1591) #15, !srcloc !293
  %772 = tail call i32 @llvm.bswap.i32(i32 %771) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx764 = getelementptr i32, ptr %data, i32 459
  %773 = ptrtoint ptr %arrayidx764 to i32
  call void @__asan_store4_noabort(i32 %773)
  store i32 %772, ptr %arrayidx764, align 4
  %774 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %io_base, align 4
  %add.ptr.i1592 = getelementptr i8, ptr %775, i32 20536
  %776 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1592) #15, !srcloc !293
  %777 = tail call i32 @llvm.bswap.i32(i32 %776) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx767 = getelementptr i32, ptr %data, i32 460
  %778 = ptrtoint ptr %arrayidx767 to i32
  call void @__asan_store4_noabort(i32 %778)
  store i32 %777, ptr %arrayidx767, align 4
  %779 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %io_base, align 4
  %add.ptr.i1593 = getelementptr i8, ptr %780, i32 20540
  %781 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1593) #15, !srcloc !293
  %782 = tail call i32 @llvm.bswap.i32(i32 %781) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx770 = getelementptr i32, ptr %data, i32 461
  %783 = ptrtoint ptr %arrayidx770 to i32
  call void @__asan_store4_noabort(i32 %783)
  store i32 %782, ptr %arrayidx770, align 4
  %784 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %io_base, align 4
  %add.ptr.i1594 = getelementptr i8, ptr %785, i32 20544
  %786 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1594) #15, !srcloc !293
  %787 = tail call i32 @llvm.bswap.i32(i32 %786) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx773 = getelementptr i32, ptr %data, i32 462
  %788 = ptrtoint ptr %arrayidx773 to i32
  call void @__asan_store4_noabort(i32 %788)
  store i32 %787, ptr %arrayidx773, align 4
  %789 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %io_base, align 4
  %add.ptr.i1595 = getelementptr i8, ptr %790, i32 20548
  %791 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1595) #15, !srcloc !293
  %792 = tail call i32 @llvm.bswap.i32(i32 %791) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx776 = getelementptr i32, ptr %data, i32 463
  %793 = ptrtoint ptr %arrayidx776 to i32
  call void @__asan_store4_noabort(i32 %793)
  store i32 %792, ptr %arrayidx776, align 4
  %794 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %io_base, align 4
  %add.ptr.i1596 = getelementptr i8, ptr %795, i32 20552
  %796 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1596) #15, !srcloc !293
  %797 = tail call i32 @llvm.bswap.i32(i32 %796) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx779 = getelementptr i32, ptr %data, i32 464
  %798 = ptrtoint ptr %arrayidx779 to i32
  call void @__asan_store4_noabort(i32 %798)
  store i32 %797, ptr %arrayidx779, align 4
  %799 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load ptr, ptr %io_base, align 4
  %add.ptr.i1597 = getelementptr i8, ptr %800, i32 20556
  %801 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1597) #15, !srcloc !293
  %802 = tail call i32 @llvm.bswap.i32(i32 %801) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx782 = getelementptr i32, ptr %data, i32 465
  %803 = ptrtoint ptr %arrayidx782 to i32
  call void @__asan_store4_noabort(i32 %803)
  store i32 %802, ptr %arrayidx782, align 4
  %804 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %io_base, align 4
  %add.ptr.i1598 = getelementptr i8, ptr %805, i32 20560
  %806 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1598) #15, !srcloc !293
  %807 = tail call i32 @llvm.bswap.i32(i32 %806) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx785 = getelementptr i32, ptr %data, i32 466
  %808 = ptrtoint ptr %arrayidx785 to i32
  call void @__asan_store4_noabort(i32 %808)
  store i32 %807, ptr %arrayidx785, align 4
  %809 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load ptr, ptr %io_base, align 4
  %add.ptr.i1599 = getelementptr i8, ptr %810, i32 20564
  %811 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1599) #15, !srcloc !293
  %812 = tail call i32 @llvm.bswap.i32(i32 %811) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx788 = getelementptr i32, ptr %data, i32 467
  %813 = ptrtoint ptr %arrayidx788 to i32
  call void @__asan_store4_noabort(i32 %813)
  store i32 %812, ptr %arrayidx788, align 4
  br label %for.body791

for.body791:                                      ; preds = %for.body791.for.body791_crit_edge, %for.end719
  %i.91632 = phi i32 [ 0, %for.end719 ], [ %inc806, %for.body791.for.body791_crit_edge ]
  %mul792 = shl nuw nsw i32 %i.91632, 3
  %814 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %io_base, align 4
  %add794 = add nuw nsw i32 %mul792, 20568
  %add.ptr.i1600 = getelementptr i8, ptr %815, i32 %add794
  %816 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1600) #15, !srcloc !293
  %817 = tail call i32 @llvm.bswap.i32(i32 %816) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %mul796 = shl nuw nsw i32 %i.91632, 1
  %add797 = add nuw nsw i32 %mul796, 468
  %arrayidx798 = getelementptr i32, ptr %data, i32 %add797
  %818 = ptrtoint ptr %arrayidx798 to i32
  call void @__asan_store4_noabort(i32 %818)
  store i32 %817, ptr %arrayidx798, align 4
  %819 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %io_base, align 4
  %add800 = add nuw nsw i32 %mul792, 20572
  %add.ptr.i1601 = getelementptr i8, ptr %820, i32 %add800
  %821 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1601) #15, !srcloc !293
  %822 = tail call i32 @llvm.bswap.i32(i32 %821) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %add803 = add nuw nsw i32 %mul796, 469
  %arrayidx804 = getelementptr i32, ptr %data, i32 %add803
  %823 = ptrtoint ptr %arrayidx804 to i32
  call void @__asan_store4_noabort(i32 %823)
  store i32 %822, ptr %arrayidx804, align 4
  %inc806 = add nuw nsw i32 %i.91632, 1
  %exitcond1638.not = icmp eq i32 %inc806, 8
  br i1 %exitcond1638.not, label %for.end807, label %for.body791.for.body791_crit_edge

for.body791.for.body791_crit_edge:                ; preds = %for.body791
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body791

for.end807:                                       ; preds = %for.body791
  %824 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %io_base, align 4
  %add.ptr.i1602 = getelementptr i8, ptr %825, i32 20740
  %826 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1602) #15, !srcloc !293
  %827 = tail call i32 @llvm.bswap.i32(i32 %826) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx810 = getelementptr i32, ptr %data, i32 484
  %828 = ptrtoint ptr %arrayidx810 to i32
  call void @__asan_store4_noabort(i32 %828)
  store i32 %827, ptr %arrayidx810, align 4
  %829 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load ptr, ptr %io_base, align 4
  %add.ptr.i1603 = getelementptr i8, ptr %830, i32 20632
  %831 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1603) #15, !srcloc !293
  %832 = tail call i32 @llvm.bswap.i32(i32 %831) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx813 = getelementptr i32, ptr %data, i32 485
  %833 = ptrtoint ptr %arrayidx813 to i32
  call void @__asan_store4_noabort(i32 %833)
  store i32 %832, ptr %arrayidx813, align 4
  %834 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load ptr, ptr %io_base, align 4
  %add.ptr.i1604 = getelementptr i8, ptr %835, i32 20636
  %836 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1604) #15, !srcloc !293
  %837 = tail call i32 @llvm.bswap.i32(i32 %836) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx816 = getelementptr i32, ptr %data, i32 486
  %838 = ptrtoint ptr %arrayidx816 to i32
  call void @__asan_store4_noabort(i32 %838)
  store i32 %837, ptr %arrayidx816, align 4
  %839 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load ptr, ptr %io_base, align 4
  %add.ptr.i1605 = getelementptr i8, ptr %840, i32 20640
  %841 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1605) #15, !srcloc !293
  %842 = tail call i32 @llvm.bswap.i32(i32 %841) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx819 = getelementptr i32, ptr %data, i32 487
  %843 = ptrtoint ptr %arrayidx819 to i32
  call void @__asan_store4_noabort(i32 %843)
  store i32 %842, ptr %arrayidx819, align 4
  %844 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %io_base, align 4
  %add.ptr.i1606 = getelementptr i8, ptr %845, i32 20644
  %846 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1606) #15, !srcloc !293
  %847 = tail call i32 @llvm.bswap.i32(i32 %846) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx822 = getelementptr i32, ptr %data, i32 488
  %848 = ptrtoint ptr %arrayidx822 to i32
  call void @__asan_store4_noabort(i32 %848)
  store i32 %847, ptr %arrayidx822, align 4
  %849 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load ptr, ptr %io_base, align 4
  %add.ptr.i1607 = getelementptr i8, ptr %850, i32 20648
  %851 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1607) #15, !srcloc !293
  %852 = tail call i32 @llvm.bswap.i32(i32 %851) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx825 = getelementptr i32, ptr %data, i32 489
  %853 = ptrtoint ptr %arrayidx825 to i32
  call void @__asan_store4_noabort(i32 %853)
  store i32 %852, ptr %arrayidx825, align 4
  %854 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %io_base, align 4
  %add.ptr.i1608 = getelementptr i8, ptr %855, i32 20652
  %856 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1608) #15, !srcloc !293
  %857 = tail call i32 @llvm.bswap.i32(i32 %856) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx828 = getelementptr i32, ptr %data, i32 490
  %858 = ptrtoint ptr %arrayidx828 to i32
  call void @__asan_store4_noabort(i32 %858)
  store i32 %857, ptr %arrayidx828, align 4
  %859 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load ptr, ptr %io_base, align 4
  %add.ptr.i1609 = getelementptr i8, ptr %860, i32 20656
  %861 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1609) #15, !srcloc !293
  %862 = tail call i32 @llvm.bswap.i32(i32 %861) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx831 = getelementptr i32, ptr %data, i32 491
  %863 = ptrtoint ptr %arrayidx831 to i32
  call void @__asan_store4_noabort(i32 %863)
  store i32 %862, ptr %arrayidx831, align 4
  %864 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %io_base, align 4
  %add.ptr.i1610 = getelementptr i8, ptr %865, i32 20744
  %866 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1610) #15, !srcloc !293
  %867 = tail call i32 @llvm.bswap.i32(i32 %866) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx834 = getelementptr i32, ptr %data, i32 492
  %868 = ptrtoint ptr %arrayidx834 to i32
  call void @__asan_store4_noabort(i32 %868)
  store i32 %867, ptr %arrayidx834, align 4
  %869 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %869)
  %870 = load ptr, ptr %io_base, align 4
  %add.ptr.i1611 = getelementptr i8, ptr %870, i32 20672
  %871 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1611) #15, !srcloc !293
  %872 = tail call i32 @llvm.bswap.i32(i32 %871) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx837 = getelementptr i32, ptr %data, i32 493
  %873 = ptrtoint ptr %arrayidx837 to i32
  call void @__asan_store4_noabort(i32 %873)
  store i32 %872, ptr %arrayidx837, align 4
  %874 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %io_base, align 4
  %add.ptr.i1612 = getelementptr i8, ptr %875, i32 20704
  %876 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1612) #15, !srcloc !293
  %877 = tail call i32 @llvm.bswap.i32(i32 %876) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx840 = getelementptr i32, ptr %data, i32 494
  %878 = ptrtoint ptr %arrayidx840 to i32
  call void @__asan_store4_noabort(i32 %878)
  store i32 %877, ptr %arrayidx840, align 4
  %879 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load ptr, ptr %io_base, align 4
  %add.ptr.i1613 = getelementptr i8, ptr %880, i32 20748
  %881 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1613) #15, !srcloc !293
  %882 = tail call i32 @llvm.bswap.i32(i32 %881) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx843 = getelementptr i32, ptr %data, i32 495
  %883 = ptrtoint ptr %arrayidx843 to i32
  call void @__asan_store4_noabort(i32 %883)
  store i32 %882, ptr %arrayidx843, align 4
  %884 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %884)
  %885 = load ptr, ptr %io_base, align 4
  %add846 = add i32 %mul, 24576
  %add.ptr.i1614 = getelementptr i8, ptr %885, i32 %add846
  %886 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1614) #15, !srcloc !293
  %887 = tail call i32 @llvm.bswap.i32(i32 %886) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx848 = getelementptr i32, ptr %data, i32 496
  %888 = ptrtoint ptr %arrayidx848 to i32
  call void @__asan_store4_noabort(i32 %888)
  store i32 %887, ptr %arrayidx848, align 4
  %889 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load ptr, ptr %io_base, align 4
  %add851 = add i32 %mul, 24608
  %add.ptr.i1615 = getelementptr i8, ptr %890, i32 %add851
  %891 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1615) #15, !srcloc !293
  %892 = tail call i32 @llvm.bswap.i32(i32 %891) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx853 = getelementptr i32, ptr %data, i32 497
  %893 = ptrtoint ptr %arrayidx853 to i32
  call void @__asan_store4_noabort(i32 %893)
  store i32 %892, ptr %arrayidx853, align 4
  %894 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %io_base, align 4
  %add856 = add i32 %mul, 24640
  %add.ptr.i1616 = getelementptr i8, ptr %895, i32 %add856
  %896 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1616) #15, !srcloc !293
  %897 = tail call i32 @llvm.bswap.i32(i32 %896) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx858 = getelementptr i32, ptr %data, i32 498
  %898 = ptrtoint ptr %arrayidx858 to i32
  call void @__asan_store4_noabort(i32 %898)
  store i32 %897, ptr %arrayidx858, align 4
  %899 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %899)
  %900 = load ptr, ptr %io_base, align 4
  %add861 = add i32 %mul, 24704
  %add.ptr.i1617 = getelementptr i8, ptr %900, i32 %add861
  %901 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1617) #15, !srcloc !293
  %902 = tail call i32 @llvm.bswap.i32(i32 %901) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx863 = getelementptr i32, ptr %data, i32 499
  %903 = ptrtoint ptr %arrayidx863 to i32
  call void @__asan_store4_noabort(i32 %903)
  store i32 %902, ptr %arrayidx863, align 4
  %904 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %io_base, align 4
  %add866 = add i32 %mul, 24736
  %add.ptr.i1618 = getelementptr i8, ptr %905, i32 %add866
  %906 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1618) #15, !srcloc !293
  %907 = tail call i32 @llvm.bswap.i32(i32 %906) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx868 = getelementptr i32, ptr %data, i32 500
  %908 = ptrtoint ptr %arrayidx868 to i32
  call void @__asan_store4_noabort(i32 %908)
  store i32 %907, ptr %arrayidx868, align 4
  %909 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load ptr, ptr %io_base, align 4
  %add871 = add i32 %mul, 24768
  %add.ptr.i1619 = getelementptr i8, ptr %910, i32 %add871
  %911 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1619) #15, !srcloc !293
  %912 = tail call i32 @llvm.bswap.i32(i32 %911) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx873 = getelementptr i32, ptr %data, i32 501
  %913 = ptrtoint ptr %arrayidx873 to i32
  call void @__asan_store4_noabort(i32 %913)
  store i32 %912, ptr %arrayidx873, align 4
  br i1 %cmp, label %for.end807.if.end_crit_edge, label %if.then

for.end807.if.end_crit_edge:                      ; preds = %for.end807
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %for.end807
  call void @__sanitizer_cov_trace_pc() #17
  %914 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load ptr, ptr %io_base, align 4
  %add877 = add i32 %mul, 576
  %add.ptr.i1620 = getelementptr i8, ptr %915, i32 %add877
  %916 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1620) #15, !srcloc !293
  %917 = tail call i32 @llvm.bswap.i32(i32 %916) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %arrayidx879 = getelementptr i32, ptr %data, i32 502
  %918 = ptrtoint ptr %arrayidx879 to i32
  call void @__asan_store4_noabort(i32 %918)
  store i32 %917, ptr %arrayidx879, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end807.if.end_crit_edge
  %arrayidx883 = getelementptr i32, ptr %data, i32 503
  %919 = ptrtoint ptr %arrayidx883 to i32
  call void @__asan_store4_noabort(i32 %919)
  store i32 -572662307, ptr %arrayidx883, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_dsaf_get_stats(ptr nocapture noundef readonly %ddev, ptr noundef %data, i32 noundef %port) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @hns_dsaf_get_node_stats(ptr noundef %ddev, ptr noundef %data, i32 noundef %port)
  %add = add i32 %port, 6
  %call1 = tail call fastcc ptr @hns_dsaf_get_node_stats(ptr noundef %ddev, ptr noundef %call, i32 noundef %add)
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hns_dsaf_get_node_stats(ptr nocapture noundef readonly %ddev, ptr noundef writeonly %data, i32 noundef %node_num) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %ddev, i32 0, i32 15
  %0 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsaf_ver, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %data, align 8
  %man_pkts = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 1
  %5 = ptrtoint ptr %man_pkts to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %man_pkts, align 8
  %arrayidx3 = getelementptr i64, ptr %data, i32 1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %arrayidx3, align 8
  %rx_pkts = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 2
  %8 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rx_pkts, align 8
  %arrayidx4 = getelementptr i64, ptr %data, i32 2
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %arrayidx4, align 8
  %rx_pkt_id = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 3
  %11 = ptrtoint ptr %rx_pkt_id to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rx_pkt_id, align 8
  %arrayidx5 = getelementptr i64, ptr %data, i32 3
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %arrayidx5, align 8
  %rx_pause_frame = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 4
  %14 = ptrtoint ptr %rx_pause_frame to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rx_pause_frame, align 8
  %arrayidx6 = getelementptr i64, ptr %data, i32 4
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %arrayidx6, align 8
  %release_buf_num = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 5
  %17 = ptrtoint ptr %release_buf_num to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %release_buf_num, align 8
  %arrayidx7 = getelementptr i64, ptr %data, i32 5
  %19 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %arrayidx7, align 8
  %sbm_drop = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 6
  %20 = ptrtoint ptr %sbm_drop to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %sbm_drop, align 8
  %arrayidx8 = getelementptr i64, ptr %data, i32 6
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %arrayidx8, align 8
  %crc_false = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 7
  %23 = ptrtoint ptr %crc_false to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %crc_false, align 8
  %arrayidx9 = getelementptr i64, ptr %data, i32 7
  %25 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx9, align 8
  %bp_drop = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 8
  %26 = ptrtoint ptr %bp_drop to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %bp_drop, align 8
  %arrayidx10 = getelementptr i64, ptr %data, i32 8
  %28 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx10, align 8
  %rslt_drop = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 9
  %29 = ptrtoint ptr %rslt_drop to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %rslt_drop, align 8
  %arrayidx11 = getelementptr i64, ptr %data, i32 9
  %31 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx11, align 8
  %local_addr_false = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 10
  %32 = ptrtoint ptr %local_addr_false to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %local_addr_false, align 8
  %arrayidx12 = getelementptr i64, ptr %data, i32 10
  %34 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %arrayidx12, align 8
  %vlan_drop = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 11
  %35 = ptrtoint ptr %vlan_drop to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %vlan_drop, align 8
  %arrayidx13 = getelementptr i64, ptr %data, i32 11
  %37 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %arrayidx13, align 8
  %stp_drop = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 12
  %38 = ptrtoint ptr %stp_drop to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %stp_drop, align 8
  %arrayidx14 = getelementptr i64, ptr %data, i32 12
  %40 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %node_num)
  %cmp15 = icmp sgt i32 %node_num, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %1)
  %cmp = icmp eq i32 %1, 3552816
  %or.cond = select i1 %cmp15, i1 true, i1 %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx17 = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 13, i32 0
  %41 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx17, align 8
  %arrayidx19 = getelementptr i64, ptr %data, i32 13
  %43 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %arrayidx19, align 8
  %arrayidx20 = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 14, i32 0
  %44 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx20, align 8
  %arrayidx23 = getelementptr i64, ptr %data, i32 21
  %46 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %arrayidx23, align 8
  %arrayidx17.1 = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 13, i32 1
  %47 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx17.1, align 8
  %arrayidx19.1 = getelementptr i64, ptr %data, i32 14
  %49 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %arrayidx19.1, align 8
  %arrayidx20.1 = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 14, i32 1
  %50 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx20.1, align 8
  %arrayidx23.1 = getelementptr i64, ptr %data, i32 22
  %52 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %arrayidx23.1, align 8
  %arrayidx17.2 = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 13, i32 2
  %53 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx17.2, align 8
  %arrayidx19.2 = getelementptr i64, ptr %data, i32 15
  %55 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %arrayidx19.2, align 8
  %arrayidx20.2 = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 14, i32 2
  %56 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx20.2, align 8
  %arrayidx23.2 = getelementptr i64, ptr %data, i32 23
  %58 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %arrayidx23.2, align 8
  %arrayidx17.3 = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 13, i32 3
  %59 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx17.3, align 8
  %arrayidx19.3 = getelementptr i64, ptr %data, i32 16
  %61 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %arrayidx19.3, align 8
  %arrayidx20.3 = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 14, i32 3
  %62 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx20.3, align 8
  %arrayidx23.3 = getelementptr i64, ptr %data, i32 24
  %64 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %arrayidx23.3, align 8
  %arrayidx17.4 = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 13, i32 4
  %65 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx17.4, align 8
  %arrayidx19.4 = getelementptr i64, ptr %data, i32 17
  %67 = ptrtoint ptr %arrayidx19.4 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %arrayidx19.4, align 8
  %arrayidx20.4 = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 14, i32 4
  %68 = ptrtoint ptr %arrayidx20.4 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx20.4, align 8
  %arrayidx23.4 = getelementptr i64, ptr %data, i32 25
  %70 = ptrtoint ptr %arrayidx23.4 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %arrayidx23.4, align 8
  %arrayidx17.5 = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 13, i32 5
  %71 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx17.5, align 8
  %arrayidx19.5 = getelementptr i64, ptr %data, i32 18
  %73 = ptrtoint ptr %arrayidx19.5 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %arrayidx19.5, align 8
  %arrayidx20.5 = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 14, i32 5
  %74 = ptrtoint ptr %arrayidx20.5 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx20.5, align 8
  %arrayidx23.5 = getelementptr i64, ptr %data, i32 26
  %76 = ptrtoint ptr %arrayidx23.5 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %arrayidx23.5, align 8
  %arrayidx17.6 = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 13, i32 6
  %77 = ptrtoint ptr %arrayidx17.6 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx17.6, align 8
  %arrayidx19.6 = getelementptr i64, ptr %data, i32 19
  %79 = ptrtoint ptr %arrayidx19.6 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %arrayidx19.6, align 8
  %arrayidx20.6 = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 14, i32 6
  %80 = ptrtoint ptr %arrayidx20.6 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx20.6, align 8
  %arrayidx23.6 = getelementptr i64, ptr %data, i32 27
  %82 = ptrtoint ptr %arrayidx23.6 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %arrayidx23.6, align 8
  %arrayidx17.7 = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 13, i32 7
  %83 = ptrtoint ptr %arrayidx17.7 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx17.7, align 8
  %arrayidx19.7 = getelementptr i64, ptr %data, i32 20
  %85 = ptrtoint ptr %arrayidx19.7 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %arrayidx19.7, align 8
  %arrayidx20.7 = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 14, i32 7
  %86 = ptrtoint ptr %arrayidx20.7 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx20.7, align 8
  %arrayidx23.7 = getelementptr i64, ptr %data, i32 28
  %88 = ptrtoint ptr %arrayidx23.7 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %arrayidx23.7, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  %.sink75 = phi i32 [ 29, %for.body.preheader ], [ 13, %entry.cleanup_crit_edge ]
  %.sink = phi i32 [ 30, %for.body.preheader ], [ 14, %entry.cleanup_crit_edge ]
  %tx_pkts26 = getelementptr %struct.dsaf_device, ptr %ddev, i32 0, i32 21, i32 %node_num, i32 15
  %89 = ptrtoint ptr %tx_pkts26 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %tx_pkts26, align 8
  %arrayidx27 = getelementptr i64, ptr %data, i32 %.sink75
  %91 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %arrayidx27, align 8
  %arrayidx28 = getelementptr i64, ptr %data, i32 %.sink
  ret ptr %arrayidx28
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hns_dsaf_get_sset_count(ptr nocapture noundef readonly %dsaf_dev, i32 noundef %stringset) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp1 = icmp eq i32 %stringset, 1
  br i1 %cmp1, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 15
  %0 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %1)
  %cmp = icmp eq i32 %1, 3552816
  %. = select i1 %cmp, i32 28, i32 44
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_dsaf_get_strings(i32 noundef %stringset, ptr noundef %data, i32 noundef %port, ptr nocapture noundef readonly %dsaf_dev) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call fastcc ptr @hns_dsaf_get_node_stats_strings(ptr noundef %data, i32 noundef %port, ptr noundef %dsaf_dev)
  %add = add i32 %port, 6
  %call1 = tail call fastcc ptr @hns_dsaf_get_node_stats_strings(ptr noundef %call, i32 noundef %add, ptr noundef %dsaf_dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hns_dsaf_get_node_stats_strings(ptr noundef writeonly %data, i32 noundef %node, ptr nocapture noundef readonly %dsaf_dev) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 15
  %0 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsaf_ver, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data, i32 noundef 32, ptr noundef nonnull @.str.58, i32 noundef %node)
  %add.ptr = getelementptr i8, ptr %data, i32 32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 32, ptr noundef nonnull @.str.59, i32 noundef %node)
  %add.ptr2 = getelementptr i8, ptr %data, i32 64
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr2, i32 noundef 32, ptr noundef nonnull @.str.60, i32 noundef %node)
  %add.ptr4 = getelementptr i8, ptr %data, i32 96
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr4, i32 noundef 32, ptr noundef nonnull @.str.61, i32 noundef %node)
  %add.ptr6 = getelementptr i8, ptr %data, i32 128
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr6, i32 noundef 32, ptr noundef nonnull @.str.62, i32 noundef %node)
  %add.ptr8 = getelementptr i8, ptr %data, i32 160
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr8, i32 noundef 32, ptr noundef nonnull @.str.63, i32 noundef %node)
  %add.ptr10 = getelementptr i8, ptr %data, i32 192
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr10, i32 noundef 32, ptr noundef nonnull @.str.64, i32 noundef %node)
  %add.ptr12 = getelementptr i8, ptr %data, i32 224
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr12, i32 noundef 32, ptr noundef nonnull @.str.65, i32 noundef %node)
  %add.ptr14 = getelementptr i8, ptr %data, i32 256
  %call15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr14, i32 noundef 32, ptr noundef nonnull @.str.66, i32 noundef %node)
  %add.ptr16 = getelementptr i8, ptr %data, i32 288
  %call17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr16, i32 noundef 32, ptr noundef nonnull @.str.67, i32 noundef %node)
  %add.ptr18 = getelementptr i8, ptr %data, i32 320
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr18, i32 noundef 32, ptr noundef nonnull @.str.68, i32 noundef %node)
  %add.ptr20 = getelementptr i8, ptr %data, i32 352
  %call21 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr20, i32 noundef 32, ptr noundef nonnull @.str.69, i32 noundef %node)
  %add.ptr22 = getelementptr i8, ptr %data, i32 384
  %call23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr22, i32 noundef 32, ptr noundef nonnull @.str.70, i32 noundef %node)
  %add.ptr24 = getelementptr i8, ptr %data, i32 416
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %node)
  %cmp25 = icmp sgt i32 %node, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %1)
  %cmp = icmp eq i32 %1, 3552816
  %or.cond = select i1 %cmp25, i1 true, i1 %cmp
  br i1 %or.cond, label %entry.if.end_crit_edge, label %for.body.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call28 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr24, i32 noundef 32, ptr noundef nonnull @.str.71, i32 noundef %node, i32 noundef 0)
  %add.ptr29 = getelementptr i8, ptr %data, i32 672
  %call30 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr29, i32 noundef 32, ptr noundef nonnull @.str.72, i32 noundef %node, i32 noundef 0)
  %add.ptr31 = getelementptr i8, ptr %data, i32 448
  %call28.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr31, i32 noundef 32, ptr noundef nonnull @.str.71, i32 noundef %node, i32 noundef 1)
  %add.ptr29.1 = getelementptr i8, ptr %data, i32 704
  %call30.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr29.1, i32 noundef 32, ptr noundef nonnull @.str.72, i32 noundef %node, i32 noundef 1)
  %add.ptr31.1 = getelementptr i8, ptr %data, i32 480
  %call28.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr31.1, i32 noundef 32, ptr noundef nonnull @.str.71, i32 noundef %node, i32 noundef 2)
  %add.ptr29.2 = getelementptr i8, ptr %data, i32 736
  %call30.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr29.2, i32 noundef 32, ptr noundef nonnull @.str.72, i32 noundef %node, i32 noundef 2)
  %add.ptr31.2 = getelementptr i8, ptr %data, i32 512
  %call28.3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr31.2, i32 noundef 32, ptr noundef nonnull @.str.71, i32 noundef %node, i32 noundef 3)
  %add.ptr29.3 = getelementptr i8, ptr %data, i32 768
  %call30.3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr29.3, i32 noundef 32, ptr noundef nonnull @.str.72, i32 noundef %node, i32 noundef 3)
  %add.ptr31.3 = getelementptr i8, ptr %data, i32 544
  %call28.4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr31.3, i32 noundef 32, ptr noundef nonnull @.str.71, i32 noundef %node, i32 noundef 4)
  %add.ptr29.4 = getelementptr i8, ptr %data, i32 800
  %call30.4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr29.4, i32 noundef 32, ptr noundef nonnull @.str.72, i32 noundef %node, i32 noundef 4)
  %add.ptr31.4 = getelementptr i8, ptr %data, i32 576
  %call28.5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr31.4, i32 noundef 32, ptr noundef nonnull @.str.71, i32 noundef %node, i32 noundef 5)
  %add.ptr29.5 = getelementptr i8, ptr %data, i32 832
  %call30.5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr29.5, i32 noundef 32, ptr noundef nonnull @.str.72, i32 noundef %node, i32 noundef 5)
  %add.ptr31.5 = getelementptr i8, ptr %data, i32 608
  %call28.6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr31.5, i32 noundef 32, ptr noundef nonnull @.str.71, i32 noundef %node, i32 noundef 6)
  %add.ptr29.6 = getelementptr i8, ptr %data, i32 864
  %call30.6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr29.6, i32 noundef 32, ptr noundef nonnull @.str.72, i32 noundef %node, i32 noundef 6)
  %add.ptr31.6 = getelementptr i8, ptr %data, i32 640
  %call28.7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr31.6, i32 noundef 32, ptr noundef nonnull @.str.71, i32 noundef %node, i32 noundef 7)
  %add.ptr29.7 = getelementptr i8, ptr %data, i32 896
  %call30.7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr29.7, i32 noundef 32, ptr noundef nonnull @.str.72, i32 noundef %node, i32 noundef 7)
  %add.ptr32 = getelementptr i8, ptr %data, i32 928
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry.if.end_crit_edge
  %buff.1 = phi ptr [ %add.ptr32, %for.body.preheader ], [ %add.ptr24, %entry.if.end_crit_edge ]
  %call33 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buff.1, i32 noundef 32, ptr noundef nonnull @.str.73, i32 noundef %node)
  %add.ptr34 = getelementptr i8, ptr %buff.1, i32 32
  ret ptr %add.ptr34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hns_dsaf_get_regs_count() local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 504
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_dsaf_set_promisc_tcam(ptr noundef %dsaf_dev, i32 noundef %port, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %tbl_tcam_data_mc.i3 = alloca %struct.dsaf_tbl_tcam_data, align 4
  %tbl_tcam_ucast.i4 = alloca %struct.dsaf_tbl_tcam_ucast_cfg, align 4
  %tbl_tcam_mcast.i5 = alloca %struct.dsaf_tbl_tcam_mcast_cfg, align 4
  %tbl_tcam_data_uc.i6 = alloca %struct.dsaf_tbl_tcam_data, align 8
  %tbl_tcam_mask.i = alloca %struct.dsaf_tbl_tcam_data, align 8
  %tbl_tcam_ucast.i = alloca %struct.dsaf_tbl_tcam_ucast_cfg, align 4
  %tbl_tcam_data_mc.i = alloca %struct.dsaf_tbl_tcam_data, align 4
  %tbl_tcam_mask_uc.i = alloca %struct.dsaf_tbl_tcam_data, align 8
  %tbl_tcam_mcast.i = alloca %struct.dsaf_tbl_tcam_mcast_cfg, align 4
  %tbl_tcam_data_uc.i = alloca %struct.dsaf_tbl_tcam_data, align 4
  %mask_key.i = alloca %struct.dsaf_drv_tbl_tcam_key, align 8
  %port_num.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tbl_tcam_ucast.i) #15
  %0 = call ptr @memcpy(ptr %tbl_tcam_ucast.i, ptr @__const.set_promisc_tcam_enable.tbl_tcam_ucast, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tbl_tcam_data_mc.i) #15
  %1 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, ptr %tbl_tcam_data_mc.i, i32 0, i32 1
  %2 = ptrtoint ptr %tbl_tcam_data_mc.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16777216, ptr %tbl_tcam_data_mc.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %port, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tbl_tcam_mask_uc.i) #15
  %4 = ptrtoint ptr %tbl_tcam_mask_uc.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 72057594037927951, ptr %tbl_tcam_mask_uc.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tbl_tcam_mcast.i) #15
  %5 = call ptr @memset(ptr %tbl_tcam_mcast.i, i32 0, i32 24)
  %add.ptr.i.i = getelementptr i8, ptr %dsaf_dev, i32 6544
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tbl_tcam_data_uc.i) #15
  %6 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, ptr %tbl_tcam_data_uc.i, i32 0, i32 1
  %7 = ptrtoint ptr %tbl_tcam_data_uc.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tbl_tcam_data_uc.i, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %port, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask_key.i) #15
  %9 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, ptr %mask_key.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %port_num.i) #15
  %10 = ptrtoint ptr %port_num.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %port_num.i, align 1, !annotation !298
  %conv.i = trunc i32 %port to i8
  %dsaf_mode.i.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %11 = ptrtoint ptr %dsaf_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dsaf_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp.i.i = icmp ult i32 %12, 8
  %13 = shl i32 %port, 16
  %.op.i = and i32 %13, 983040
  %mac_key.sroa.9.4.insert.shift.i = select i1 %cmp.i.i, i32 0, i32 %.op.i
  %tcam_max_num.i.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 16
  %14 = ptrtoint ptr %tcam_max_num.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tcam_max_num.i.i, align 8
  %conv.i.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp23.not.i.i = icmp eq i16 %15, 0
  br i1 %cmp23.not.i.i, label %if.then.if.end.i_crit_edge, label %for.body.lr.ph.i.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %if.then
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.026.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %soft_mac_entry.024.i.i = phi ptr [ %17, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %index.i.i = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.024.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %19)
  %cmp3.not.i.i = icmp eq i16 %19, -1
  br i1 %cmp3.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %20 = ptrtoint ptr %soft_mac_entry.024.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %soft_mac_entry.024.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp6.i.i = icmp eq i32 %21, 0
  br i1 %cmp6.i.i, label %land.lhs.true8.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %low.i182.i = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, ptr %soft_mac_entry.024.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %low.i182.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %low.i182.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %mac_key.sroa.9.4.insert.shift.i)
  %cmp11.i.i = icmp eq i32 %23, %mac_key.sroa.9.4.insert.shift.i
  br i1 %cmp11.i.i, label %land.lhs.true8.i.i.set_promisc_tcam_enable.exit_crit_edge, label %land.lhs.true8.i.i.if.end.i.i_crit_edge

land.lhs.true8.i.i.if.end.i.i_crit_edge:          ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true8.i.i.set_promisc_tcam_enable.exit_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_promisc_tcam_enable.exit

if.end.i.i:                                       ; preds = %land.lhs.true8.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body.i.i.if.end.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.024.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.026.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i184.i = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %25, i32 511
  br label %for.body.i186.i

for.body.i186.i:                                  ; preds = %if.end.i189.i.for.body.i186.i_crit_edge, %if.end.i
  %i.011.i.i = phi i32 [ 511, %if.end.i ], [ %dec.i.i, %if.end.i189.i.for.body.i186.i_crit_edge ]
  %soft_mac_entry.010.i.i = phi ptr [ %add.ptr.i184.i, %if.end.i ], [ %incdec.ptr.i187.i, %if.end.i189.i.for.body.i186.i_crit_edge ]
  %index.i185.i = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.010.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %index.i185.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %index.i185.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %27)
  %cmp1.i.i = icmp eq i16 %27, -1
  br i1 %cmp1.i.i, label %hns_dsaf_find_empty_mac_entry_reverse.exit.i, label %if.end.i189.i

if.end.i189.i:                                    ; preds = %for.body.i186.i
  %incdec.ptr.i187.i = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.010.i.i, i32 -1
  %dec.i.i = add nsw i32 %i.011.i.i, -1
  %cmp.i188.i = icmp ugt i32 %i.011.i.i, 1
  br i1 %cmp.i188.i, label %if.end.i189.i.for.body.i186.i_crit_edge, label %if.end.i189.i.do.end.i_crit_edge

if.end.i189.i.do.end.i_crit_edge:                 ; preds = %if.end.i189.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

if.end.i189.i.for.body.i186.i_crit_edge:          ; preds = %if.end.i189.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i186.i

hns_dsaf_find_empty_mac_entry_reverse.exit.i:     ; preds = %for.body.i186.i
  %conv3.i.i = trunc i32 %i.011.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv3.i.i)
  %cmp8.i = icmp eq i16 %conv3.i.i, -1
  br i1 %cmp8.i, label %hns_dsaf_find_empty_mac_entry_reverse.exit.i.do.end.i_crit_edge, label %if.end11.i

hns_dsaf_find_empty_mac_entry_reverse.exit.i.do.end.i_crit_edge: ; preds = %hns_dsaf_find_empty_mac_entry_reverse.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i:                                         ; preds = %hns_dsaf_find_empty_mac_entry_reverse.exit.i.do.end.i_crit_edge, %if.end.i189.i.do.end.i_crit_edge
  %28 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dsaf_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.74, i32 noundef %port) #18
  br label %set_promisc_tcam_enable.exit

if.end11.i:                                       ; preds = %hns_dsaf_find_empty_mac_entry_reverse.exit.i
  %conv7.i = and i32 %i.011.i.i, 65535
  %arrayidx.i = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 19, i32 %port
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %call13.i = call i32 @hns_mac_get_inner_port_num(ptr noundef %31, i8 noundef zeroext 0, ptr noundef nonnull %port_num.i) #15
  %32 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %port_num.i, align 1
  %conv14.i = zext i8 %33 to i32
  %tbl_ucast_out_port.i = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, ptr %tbl_tcam_ucast.i, i32 0, i32 4
  %34 = ptrtoint ptr %tbl_ucast_out_port.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv14.i, ptr %tbl_ucast_out_port.i, align 4
  call fastcc void @hns_dsaf_tcam_uc_cfg_vague(ptr noundef %dsaf_dev, i32 noundef %conv7.i, ptr noundef nonnull %tbl_tcam_data_uc.i, ptr noundef nonnull %tbl_tcam_mask_uc.i, ptr noundef nonnull %tbl_tcam_ucast.i) #15
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %36, i32 %conv7.i
  %index.i = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %36, i32 %conv7.i, i32 1
  %37 = ptrtoint ptr %index.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv3.i.i, ptr %index.i, align 4
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %add.ptr.i, align 4
  %low19.i = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, ptr %add.ptr.i, i32 0, i32 1
  %39 = ptrtoint ptr %low19.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mac_key.sroa.9.4.insert.shift.i, ptr %low19.i, align 4
  %40 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i192.i = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %40, i32 511
  br label %for.body.i197.i

for.body.i197.i:                                  ; preds = %if.end.i203.i.for.body.i197.i_crit_edge, %if.end11.i
  %i.011.i193.i = phi i32 [ 511, %if.end11.i ], [ %dec.i201.i, %if.end.i203.i.for.body.i197.i_crit_edge ]
  %soft_mac_entry.010.i194.i = phi ptr [ %add.ptr.i192.i, %if.end11.i ], [ %incdec.ptr.i200.i, %if.end.i203.i.for.body.i197.i_crit_edge ]
  %index.i195.i = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.010.i194.i, i32 0, i32 1
  %41 = ptrtoint ptr %index.i195.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %index.i195.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %42)
  %cmp1.i196.i = icmp eq i16 %42, -1
  br i1 %cmp1.i196.i, label %hns_dsaf_find_empty_mac_entry_reverse.exit205.i, label %if.end.i203.i

if.end.i203.i:                                    ; preds = %for.body.i197.i
  %incdec.ptr.i200.i = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.010.i194.i, i32 -1
  %dec.i201.i = add nsw i32 %i.011.i193.i, -1
  %cmp.i202.i = icmp ugt i32 %i.011.i193.i, 1
  br i1 %cmp.i202.i, label %if.end.i203.i.for.body.i197.i_crit_edge, label %if.end.i203.i.do.end28.i_crit_edge

if.end.i203.i.do.end28.i_crit_edge:               ; preds = %if.end.i203.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end28.i

if.end.i203.i.for.body.i197.i_crit_edge:          ; preds = %if.end.i203.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i197.i

hns_dsaf_find_empty_mac_entry_reverse.exit205.i:  ; preds = %for.body.i197.i
  %conv3.i198.i = trunc i32 %i.011.i193.i to i16
  %conv22.i = and i32 %i.011.i193.i, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv3.i198.i)
  %cmp23.i = icmp eq i16 %conv3.i198.i, -1
  br i1 %cmp23.i, label %hns_dsaf_find_empty_mac_entry_reverse.exit205.i.do.end28.i_crit_edge, label %if.end30.i

hns_dsaf_find_empty_mac_entry_reverse.exit205.i.do.end28.i_crit_edge: ; preds = %hns_dsaf_find_empty_mac_entry_reverse.exit205.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end28.i

do.end28.i:                                       ; preds = %hns_dsaf_find_empty_mac_entry_reverse.exit205.i.do.end28.i_crit_edge, %if.end.i203.i.do.end28.i_crit_edge
  %43 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dsaf_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.77, i32 noundef %port) #18
  br label %set_promisc_tcam_enable.exit

if.end30.i:                                       ; preds = %hns_dsaf_find_empty_mac_entry_reverse.exit205.i
  %45 = ptrtoint ptr %mask_key.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 4294967296, ptr %mask_key.i, align 8
  %46 = ptrtoint ptr %dsaf_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dsaf_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %47)
  %cmp.i207.i = icmp ult i32 %47, 8
  %port.0.i208.i = select i1 %cmp.i207.i, i16 0, i16 15
  %48 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %port.0.i208.i, ptr %9, align 4
  %tbl_mcast_item_vld.i = getelementptr inbounds %struct.dsaf_tbl_tcam_mcast_cfg, ptr %tbl_tcam_mcast.i, i32 0, i32 1
  %49 = ptrtoint ptr %tbl_mcast_item_vld.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %tbl_mcast_item_vld.i, align 1
  %50 = ptrtoint ptr %tbl_tcam_mcast.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %tbl_tcam_mcast.i, align 4
  %conv.i220.i = and i32 %port, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %conv.i)
  %cmp.i221.i = icmp ult i8 %conv.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %conv.i)
  %cmp4.i.i = icmp ugt i8 %conv.i, 126
  %add.i.i = add nsw i32 %conv.i220.i, -121
  %spec.select.i.i = select i1 %cmp4.i.i, i32 %add.i.i, i32 -22
  %retval.0.i222.i = select i1 %cmp.i221.i, i32 %conv.i220.i, i32 %spec.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %retval.0.i222.i)
  %cmp37.i = icmp eq i32 %retval.0.i222.i, -22
  br i1 %cmp37.i, label %do.end42.i, label %do.body48.i

do.end42.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dsaf_dev, align 8
  %name.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  %53 = ptrtoint ptr %mask_key.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mask_key.i, align 8
  %55 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.24, ptr noundef %name.i, i32 noundef %port, i32 noundef %54, i32 noundef %56) #18
  br label %set_promisc_tcam_enable.exit

do.body48.i:                                      ; preds = %if.end30.i
  %rem.lhs.trunc.i = trunc i32 %retval.0.i222.i to i16
  %rem.lhs.trunc.i.frozen = freeze i16 %rem.lhs.trunc.i
  %div254.i = sdiv i16 %rem.lhs.trunc.i.frozen, 32
  %57 = mul i16 %div254.i, 32
  %rem253.i.decomposed = sub i16 %rem.lhs.trunc.i.frozen, %57
  %rem.sext.i = sext i16 %rem253.i.decomposed to i32
  %sh_prom.i = zext i32 %rem.sext.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.sext.i = sext i16 %div254.i to i32
  %arrayidx49.i = getelementptr %struct.dsaf_tbl_tcam_mcast_cfg, ptr %tbl_tcam_mcast.i, i32 0, i32 2, i32 %div.sext.i
  %58 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx49.i, align 4
  %60 = trunc i64 %shl.i to i32
  %61 = xor i32 %60, -1
  %conv51.i = and i32 %59, %61
  %shl53.i = shl nuw i32 1, %rem.sext.i
  %62 = and i32 %shl53.i, %60
  %conv63.i = or i32 %conv51.i, %62
  store i32 %conv63.i, ptr %arrayidx49.i, align 4
  %63 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %port_num.i, align 1
  %conv.i223.i = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %64)
  %cmp.i224.i = icmp ult i8 %64, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %64)
  %cmp4.i225.i = icmp ugt i8 %64, 126
  %add.i226.i = add nsw i32 %conv.i223.i, -121
  %spec.select.i227.i = select i1 %cmp4.i225.i, i32 %add.i226.i, i32 -22
  %retval.0.i228.i = select i1 %cmp.i224.i, i32 %conv.i223.i, i32 %spec.select.i227.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %retval.0.i228.i)
  %cmp67.i = icmp eq i32 %retval.0.i228.i, -22
  br i1 %cmp67.i, label %do.end72.i, label %do.body81.i

do.end72.i:                                       ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #17
  %65 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dsaf_dev, align 8
  %name75.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  %67 = ptrtoint ptr %mask_key.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mask_key.i, align 8
  %69 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.82, ptr noundef %name75.i, i32 noundef %conv.i223.i, i32 noundef %68, i32 noundef %70) #18
  br label %set_promisc_tcam_enable.exit

do.body81.i:                                      ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #17
  %rem82.lhs.trunc.i = trunc i32 %retval.0.i228.i to i16
  %rem82.lhs.trunc.i.frozen = freeze i16 %rem82.lhs.trunc.i
  %div87256.i = sdiv i16 %rem82.lhs.trunc.i.frozen, 32
  %71 = mul i16 %div87256.i, 32
  %rem82255.i.decomposed = sub i16 %rem82.lhs.trunc.i.frozen, %71
  %rem82.sext.i = sext i16 %rem82255.i.decomposed to i32
  %sh_prom83.i = zext i32 %rem82.sext.i to i64
  %shl84.i = shl nuw i64 1, %sh_prom83.i
  %div87.sext.i = sext i16 %div87256.i to i32
  %arrayidx88.i = getelementptr %struct.dsaf_tbl_tcam_mcast_cfg, ptr %tbl_tcam_mcast.i, i32 0, i32 2, i32 %div87.sext.i
  %72 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx88.i, align 4
  %74 = trunc i64 %shl84.i to i32
  %75 = xor i32 %74, -1
  %conv91.i = and i32 %73, %75
  %shl93.i = shl nuw i32 1, %rem82.sext.i
  %76 = and i32 %shl93.i, %74
  %conv104.i = or i32 %conv91.i, %76
  store i32 %conv104.i, ptr %arrayidx88.i, align 4
  %77 = ptrtoint ptr %mask_key.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %temp_key.sroa.0.0.copyload.i = load i32, ptr %mask_key.i, align 8
  %78 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %78)
  %temp_key.sroa.6.0.copyload.i = load i32, ptr %9, align 4
  call fastcc void @hns_dsaf_tcam_mc_cfg_vague(ptr noundef %dsaf_dev, i32 noundef %conv22.i, ptr noundef nonnull %tbl_tcam_data_mc.i, ptr noundef nonnull %mask_key.i, ptr noundef nonnull %tbl_tcam_mcast.i) #15
  %add.ptr109.i = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %40, i32 %conv22.i
  %index110.i = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %40, i32 %conv22.i, i32 1
  %79 = ptrtoint ptr %index110.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv3.i198.i, ptr %index110.i, align 4
  %80 = ptrtoint ptr %add.ptr109.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %temp_key.sroa.0.0.copyload.i, ptr %add.ptr109.i, align 4
  %low116.i = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, ptr %add.ptr109.i, i32 0, i32 1
  %81 = ptrtoint ptr %low116.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %temp_key.sroa.6.0.copyload.i, ptr %low116.i, align 4
  br label %set_promisc_tcam_enable.exit

set_promisc_tcam_enable.exit:                     ; preds = %do.body81.i, %do.end72.i, %do.end42.i, %do.end28.i, %do.end.i, %land.lhs.true8.i.i.set_promisc_tcam_enable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port_num.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask_key.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tbl_tcam_data_uc.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tbl_tcam_mcast.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tbl_tcam_mask_uc.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tbl_tcam_data_mc.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tbl_tcam_ucast.i) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tbl_tcam_data_mc.i3) #15
  %82 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, ptr %tbl_tcam_data_mc.i3, i32 0, i32 1
  %83 = ptrtoint ptr %tbl_tcam_data_mc.i3 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 16777216, ptr %tbl_tcam_data_mc.i3, align 4
  %84 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %port, ptr %82, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tbl_tcam_ucast.i4) #15
  %85 = call ptr @memset(ptr %tbl_tcam_ucast.i4, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tbl_tcam_mcast.i5) #15
  %86 = call ptr @memset(ptr %tbl_tcam_mcast.i5, i32 0, i32 24)
  %add.ptr.i.i7 = getelementptr i8, ptr %dsaf_dev, i32 6544
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tbl_tcam_data_uc.i6) #15
  %87 = ptrtoint ptr %tbl_tcam_data_uc.i6 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 0, ptr %tbl_tcam_data_uc.i6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tbl_tcam_mask.i) #15
  %88 = ptrtoint ptr %tbl_tcam_mask.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 0, ptr %tbl_tcam_mask.i, align 8
  %dsaf_mode.i.i8 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %tcam_max_num.i.i9 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 16
  %89 = ptrtoint ptr %tcam_max_num.i.i9 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %tcam_max_num.i.i9, align 8
  %conv.i.i10 = zext i16 %90 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %cmp23.not.i.i11 = icmp eq i16 %90, 0
  br i1 %cmp23.not.i.i11, label %if.else.set_promisc_tcam_disable.exit_crit_edge, label %for.body.lr.ph.i.i14

if.else.set_promisc_tcam_disable.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_promisc_tcam_disable.exit

for.body.lr.ph.i.i14:                             ; preds = %if.else
  %91 = ptrtoint ptr %dsaf_mode.i.i8 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dsaf_mode.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %92)
  %cmp.i.i12 = icmp ult i32 %92, 8
  %93 = ptrtoint ptr %add.ptr.i.i7 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr.i.i7, align 4
  %95 = shl i32 %port, 16
  %.op.i13 = and i32 %95, 983040
  %mac_key.sroa.14.sroa.0.0.insert.shift.i = select i1 %cmp.i.i12, i32 0, i32 %.op.i13
  br label %for.body.i.i19

for.body.i.i19:                                   ; preds = %if.end.i.i27.for.body.i.i19_crit_edge, %for.body.lr.ph.i.i14
  %i.026.i.i15 = phi i32 [ 0, %for.body.lr.ph.i.i14 ], [ %inc.i.i25, %if.end.i.i27.for.body.i.i19_crit_edge ]
  %soft_mac_entry.024.i.i16 = phi ptr [ %94, %for.body.lr.ph.i.i14 ], [ %incdec.ptr.i.i24, %if.end.i.i27.for.body.i.i19_crit_edge ]
  %index.i.i17 = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.024.i.i16, i32 0, i32 1
  %96 = ptrtoint ptr %index.i.i17 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %index.i.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %97)
  %cmp3.not.i.i18 = icmp eq i16 %97, -1
  br i1 %cmp3.not.i.i18, label %for.body.i.i19.if.end.i.i27_crit_edge, label %land.lhs.true.i.i21

for.body.i.i19.if.end.i.i27_crit_edge:            ; preds = %for.body.i.i19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i27

land.lhs.true.i.i21:                              ; preds = %for.body.i.i19
  %98 = ptrtoint ptr %soft_mac_entry.024.i.i16 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %soft_mac_entry.024.i.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp6.i.i20 = icmp eq i32 %99, 0
  br i1 %cmp6.i.i20, label %land.lhs.true8.i.i23, label %land.lhs.true.i.i21.if.end.i.i27_crit_edge

land.lhs.true.i.i21.if.end.i.i27_crit_edge:       ; preds = %land.lhs.true.i.i21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i27

land.lhs.true8.i.i23:                             ; preds = %land.lhs.true.i.i21
  %low.i45.i = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, ptr %soft_mac_entry.024.i.i16, i32 0, i32 1
  %100 = ptrtoint ptr %low.i45.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %low.i45.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %mac_key.sroa.14.sroa.0.0.insert.shift.i)
  %cmp11.i.i22 = icmp eq i32 %101, %mac_key.sroa.14.sroa.0.0.insert.shift.i
  br i1 %cmp11.i.i22, label %if.end.i29, label %land.lhs.true8.i.i23.if.end.i.i27_crit_edge

land.lhs.true8.i.i23.if.end.i.i27_crit_edge:      ; preds = %land.lhs.true8.i.i23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i27

if.end.i.i27:                                     ; preds = %land.lhs.true8.i.i23.if.end.i.i27_crit_edge, %land.lhs.true.i.i21.if.end.i.i27_crit_edge, %for.body.i.i19.if.end.i.i27_crit_edge
  %incdec.ptr.i.i24 = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.024.i.i16, i32 1
  %inc.i.i25 = add nuw nsw i32 %i.026.i.i15, 1
  %exitcond.not.i.i26 = icmp eq i32 %inc.i.i25, %conv.i.i10
  br i1 %exitcond.not.i.i26, label %if.end.i.i27.set_promisc_tcam_disable.exit_crit_edge, label %if.end.i.i27.for.body.i.i19_crit_edge

if.end.i.i27.for.body.i.i19_crit_edge:            ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i19

if.end.i.i27.set_promisc_tcam_disable.exit_crit_edge: ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_promisc_tcam_disable.exit

if.end.i29:                                       ; preds = %land.lhs.true8.i.i23
  %conv2.i = zext i16 %97 to i32
  call fastcc void @hns_dsaf_tcam_uc_cfg_vague(ptr noundef %dsaf_dev, i32 noundef %conv2.i, ptr noundef nonnull %tbl_tcam_data_uc.i6, ptr noundef nonnull %tbl_tcam_mask.i, ptr noundef nonnull %tbl_tcam_ucast.i4) #15
  %102 = ptrtoint ptr %add.ptr.i.i7 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i.i7, align 4
  %index.i28 = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %103, i32 %conv2.i, i32 1
  %104 = ptrtoint ptr %index.i28 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 -1, ptr %index.i28, align 4
  %105 = load ptr, ptr %add.ptr.i.i7, align 4
  %106 = ptrtoint ptr %tcam_max_num.i.i9 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %tcam_max_num.i.i9, align 8
  %conv.i62.i = zext i16 %107 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %cmp23.not.i63.i = icmp eq i16 %107, 0
  br i1 %cmp23.not.i63.i, label %if.end.i29.set_promisc_tcam_disable.exit_crit_edge, label %for.body.i71.preheader.i

if.end.i29.set_promisc_tcam_disable.exit_crit_edge: ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_promisc_tcam_disable.exit

for.body.i71.preheader.i:                         ; preds = %if.end.i29
  %108 = ptrtoint ptr %dsaf_mode.i.i8 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dsaf_mode.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %109)
  %cmp.i47.i = icmp ult i32 %109, 8
  %mac_key.sroa.14.sroa.0.0.insert.shift97.i = select i1 %cmp.i47.i, i32 0, i32 %.op.i13
  br label %for.body.i71.i

for.body.i71.i:                                   ; preds = %if.end.i80.i.for.body.i71.i_crit_edge, %for.body.i71.preheader.i
  %i.026.i67.i = phi i32 [ %inc.i78.i, %if.end.i80.i.for.body.i71.i_crit_edge ], [ 0, %for.body.i71.preheader.i ]
  %soft_mac_entry.024.i68.i = phi ptr [ %incdec.ptr.i77.i, %if.end.i80.i.for.body.i71.i_crit_edge ], [ %105, %for.body.i71.preheader.i ]
  %index.i69.i = getelementptr inbounds %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.024.i68.i, i32 0, i32 1
  %110 = ptrtoint ptr %index.i69.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %index.i69.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %111)
  %cmp3.not.i70.i = icmp eq i16 %111, -1
  br i1 %cmp3.not.i70.i, label %for.body.i71.i.if.end.i80.i_crit_edge, label %land.lhs.true.i73.i

for.body.i71.i.if.end.i80.i_crit_edge:            ; preds = %for.body.i71.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i80.i

land.lhs.true.i73.i:                              ; preds = %for.body.i71.i
  %112 = ptrtoint ptr %soft_mac_entry.024.i68.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %soft_mac_entry.024.i68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp6.i72.i = icmp eq i32 %113, 1
  br i1 %cmp6.i72.i, label %land.lhs.true8.i76.i, label %land.lhs.true.i73.i.if.end.i80.i_crit_edge

land.lhs.true.i73.i.if.end.i80.i_crit_edge:       ; preds = %land.lhs.true.i73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i80.i

land.lhs.true8.i76.i:                             ; preds = %land.lhs.true.i73.i
  %low.i74.i = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, ptr %soft_mac_entry.024.i68.i, i32 0, i32 1
  %114 = ptrtoint ptr %low.i74.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %low.i74.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %mac_key.sroa.14.sroa.0.0.insert.shift97.i)
  %cmp11.i75.i = icmp eq i32 %115, %mac_key.sroa.14.sroa.0.0.insert.shift97.i
  br i1 %cmp11.i75.i, label %if.end14.i, label %land.lhs.true8.i76.i.if.end.i80.i_crit_edge

land.lhs.true8.i76.i.if.end.i80.i_crit_edge:      ; preds = %land.lhs.true8.i76.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i80.i

if.end.i80.i:                                     ; preds = %land.lhs.true8.i76.i.if.end.i80.i_crit_edge, %land.lhs.true.i73.i.if.end.i80.i_crit_edge, %for.body.i71.i.if.end.i80.i_crit_edge
  %incdec.ptr.i77.i = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %soft_mac_entry.024.i68.i, i32 1
  %inc.i78.i = add nuw nsw i32 %i.026.i67.i, 1
  %exitcond.not.i79.i = icmp eq i32 %inc.i78.i, %conv.i62.i
  br i1 %exitcond.not.i79.i, label %if.end.i80.i.set_promisc_tcam_disable.exit_crit_edge, label %if.end.i80.i.for.body.i71.i_crit_edge

if.end.i80.i.for.body.i71.i_crit_edge:            ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i71.i

if.end.i80.i.set_promisc_tcam_disable.exit_crit_edge: ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_promisc_tcam_disable.exit

if.end14.i:                                       ; preds = %land.lhs.true8.i76.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv10.i = zext i16 %111 to i32
  call fastcc void @hns_dsaf_tcam_mc_cfg_vague(ptr noundef %dsaf_dev, i32 noundef %conv10.i, ptr noundef nonnull %tbl_tcam_data_mc.i3, ptr noundef nonnull %tbl_tcam_mask.i, ptr noundef nonnull %tbl_tcam_mcast.i5) #15
  %index18.i = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %105, i32 %conv10.i, i32 1
  %116 = ptrtoint ptr %index18.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 -1, ptr %index18.i, align 4
  br label %set_promisc_tcam_disable.exit

set_promisc_tcam_disable.exit:                    ; preds = %if.end14.i, %if.end.i80.i.set_promisc_tcam_disable.exit_crit_edge, %if.end.i29.set_promisc_tcam_disable.exit_crit_edge, %if.end.i.i27.set_promisc_tcam_disable.exit_crit_edge, %if.else.set_promisc_tcam_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tbl_tcam_mask.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tbl_tcam_data_uc.i6) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tbl_tcam_mcast.i5) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tbl_tcam_ucast.i4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tbl_tcam_data_mc.i3) #15
  br label %if.end

if.end:                                           ; preds = %set_promisc_tcam_disable.exit, %set_promisc_tcam_enable.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_dsaf_wait_pkt_clean(ptr nocapture noundef readonly %dsaf_dev, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %port)
  %cmp = icmp sgt i32 %port, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %io_base = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 5
  %add = shl i32 %port, 6
  %add2 = add i32 %add, 16780
  %add6 = add i32 %add, 16784
  br label %while.body

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %while.cond.preheader
  %inc24 = phi i32 [ 1, %while.cond.preheader ], [ %inc, %if.end10.while.body_crit_edge ]
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %3 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_base, align 4
  %add.ptr.i23 = getelementptr i8, ptr %4, i32 %add6
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %5)
  %cmp8 = icmp eq i32 %2, %5
  br i1 %cmp8, label %while.end, label %if.end10

if.end10:                                         ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #15
  %inc = add nuw nsw i32 %inc24, 1
  %exitcond.not = icmp eq i32 %inc, 10001
  br i1 %exitcond.not, label %if.end10.do.end_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end10.do.end_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %inc24)
  %cmp11 = icmp ugt i32 %inc24, 9999
  br i1 %cmp11, label %while.end.do.end_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %while.end.do.end_crit_edge, %if.end10.do.end_crit_edge
  %.lcssa30 = phi i32 [ %2, %while.end.do.end_crit_edge ], [ %5, %if.end10.do.end_crit_edge ]
  %6 = tail call i32 @llvm.bswap.i32(i32 %.lcssa30) #15
  %7 = tail call i32 @llvm.bswap.i32(i32 %2) #15
  %8 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dsaf_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.43, i32 noundef %7, i32 noundef %6) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @g_dsaf_driver_init() #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @g_dsaf_driver, ptr noundef null) #15
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @g_dsaf_driver_exit() #9 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @platform_driver_unregister(ptr noundef nonnull @g_dsaf_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_dsaf_roce_reset(ptr noundef %dsaf_fwnode, i1 noundef zeroext %dereset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %dsaf_fwnode, null
  %cmp.i.i = icmp ugt ptr %dsaf_fwnode, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.if.else_crit_edge, label %is_of_node.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

is_of_node.exit:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %dsaf_fwnode, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %1, @of_fwnode_ops
  br i1 %cmp.i, label %is_of_node.exit177, label %is_of_node.exit.if.else_crit_edge

is_of_node.exit.if.else_crit_edge:                ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

is_of_node.exit177:                               ; preds = %is_of_node.exit
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.i175 = icmp eq ptr %3, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %dsaf_fwnode, i32 -12
  %spec.select = select i1 %cmp.i175, ptr %add.ptr, ptr null
  %call3 = tail call ptr @of_find_device_by_node(ptr noundef %spec.select) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end14, label %if.end17

if.else:                                          ; preds = %is_of_node.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #18
  br label %cleanup

do.end14:                                         ; preds = %is_of_node.exit177
  call void @__sanitizer_cov_trace_pc() #17
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #18
  br label %cleanup

if.end17:                                         ; preds = %is_of_node.exit177
  %dev = getelementptr inbounds %struct.platform_device, ptr %call3, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %call3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %tobool19.not = icmp eq ptr %5, null
  br i1 %tobool19.not, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51) #18
  tail call void @put_device(ptr noundef %dev) #15
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %dsaf_ver = getelementptr inbounds %struct.dsaf_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dsaf_ver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsaf_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %7)
  %cmp = icmp eq i32 %7, 3552816
  br i1 %cmp, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  %name = getelementptr inbounds %struct.dsaf_device, ptr %5, i32 0, i32 1, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.54, ptr noundef %name) #18
  tail call void @put_device(ptr noundef %dev) #15
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  br i1 %dereset, label %if.else37, label %if.then35

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %misc_op = getelementptr inbounds %struct.dsaf_device, ptr %5, i32 0, i32 20
  %10 = ptrtoint ptr %misc_op to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %misc_op, align 4
  %hns_dsaf_srst_chns = getelementptr inbounds %struct.dsaf_misc_op, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %hns_dsaf_srst_chns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hns_dsaf_srst_chns, align 4
  tail call void %13(ptr noundef nonnull %5, i32 noundef 258048, i1 noundef zeroext false) #15
  %14 = ptrtoint ptr %misc_op to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %misc_op, align 4
  %hns_dsaf_roce_srst = getelementptr inbounds %struct.dsaf_misc_op, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %hns_dsaf_roce_srst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hns_dsaf_roce_srst, align 4
  tail call void %17(ptr noundef nonnull %5, i1 noundef zeroext false) #15
  br label %if.end112

if.else37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %io_base = getelementptr inbounds %struct.dsaf_device, ptr %5, i32 0, i32 5
  %18 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 672
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %21 = and i32 %20, 252
  %22 = or i32 %21, -2008631808
  %23 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %add.ptr.i178 = getelementptr i8, ptr %24, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 %22) #15, !srcloc !296
  %25 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base, align 4
  %add.ptr.i179 = getelementptr i8, ptr %26, i32 676
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %28 = and i32 %27, 65535
  %29 = or i32 %28, 4456448
  %30 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %add.ptr.i180 = getelementptr i8, ptr %31, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 %29) #15, !srcloc !296
  %misc_op87 = getelementptr inbounds %struct.dsaf_device, ptr %5, i32 0, i32 20
  %32 = ptrtoint ptr %misc_op87 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %misc_op87, align 4
  %hns_dsaf_srst_chns88 = getelementptr inbounds %struct.dsaf_misc_op, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %hns_dsaf_srst_chns88 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hns_dsaf_srst_chns88, align 4
  tail call void %35(ptr noundef nonnull %5, i32 noundef 258048, i1 noundef zeroext true) #15
  tail call void @msleep(i32 noundef 20) #15
  %36 = ptrtoint ptr %misc_op87 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %misc_op87, align 4
  %hns_dsaf_roce_srst90 = getelementptr inbounds %struct.dsaf_misc_op, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %hns_dsaf_roce_srst90 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hns_dsaf_roce_srst90, align 4
  tail call void %39(ptr noundef nonnull %5, i1 noundef zeroext true) #15
  %40 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_base, align 4
  %add.ptr.i181 = getelementptr i8, ptr %41, i32 9088
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i181) #15, !srcloc !293
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %44 = and i32 %43, -5
  %45 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %47 = tail call i32 @llvm.bswap.i32(i32 %44) #15
  %add.ptr.i182 = getelementptr i8, ptr %46, i32 9088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 %47) #15, !srcloc !296
  %48 = or i32 %43, 4
  %49 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %51 = tail call i32 @llvm.bswap.i32(i32 %48) #15
  %add.ptr.i183 = getelementptr i8, ptr %50, i32 9088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183, i32 %51) #15, !srcloc !296
  br label %if.end112

if.end112:                                        ; preds = %if.else37, %if.then35
  tail call void @put_device(ptr noundef %dev) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %do.end30, %do.end23, %do.end14, %if.else
  %retval.0 = phi i32 [ -19, %do.end30 ], [ 0, %if.end112 ], [ -19, %do.end23 ], [ -19, %do.end14 ], [ -22, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hns_dsaf_tbl_tcam_mcast_cfg(ptr nocapture noundef readonly %dsaf_dev, ptr nocapture noundef readonly %mcast) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 5
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20508
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %3 = and i32 %2, 16711679
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %tbl_mcast_item_vld = getelementptr inbounds %struct.dsaf_tbl_tcam_mcast_cfg, ptr %mcast, i32 0, i32 1
  %5 = ptrtoint ptr %tbl_mcast_item_vld to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tbl_mcast_item_vld, align 1
  %conv2 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv2, 7
  %7 = and i32 %shl, 128
  %or62 = or i32 %7, %4
  %8 = ptrtoint ptr %mcast to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mcast, align 4
  %conv11 = zext i8 %9 to i32
  %shl12 = shl nuw nsw i32 %conv11, 8
  %10 = and i32 %shl12, 256
  %tbl_mcast_port_msk = getelementptr inbounds %struct.dsaf_tbl_tcam_mcast_cfg, ptr %mcast, i32 0, i32 2
  %arrayidx = getelementptr %struct.dsaf_tbl_tcam_mcast_cfg, ptr %mcast, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = and i32 %12, 127
  %or1663 = or i32 %or62, %13
  %or2864 = or i32 %or1663, %10
  %14 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %16 = tail call i32 @llvm.bswap.i32(i32 %or2864) #15
  %add.ptr.i65 = getelementptr i8, ptr %15, i32 20508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %16) #15, !srcloc !296
  %17 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base, align 4
  %arrayidx35 = getelementptr %struct.dsaf_tbl_tcam_mcast_cfg, ptr %mcast, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx35, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #15
  %add.ptr.i66 = getelementptr i8, ptr %18, i32 20512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %21) #15, !srcloc !296
  %22 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base, align 4
  %arrayidx38 = getelementptr %struct.dsaf_tbl_tcam_mcast_cfg, ptr %mcast, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx38, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #15
  %add.ptr.i67 = getelementptr i8, ptr %23, i32 20516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %26) #15, !srcloc !296
  %27 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base, align 4
  %arrayidx41 = getelementptr %struct.dsaf_tbl_tcam_mcast_cfg, ptr %mcast, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx41, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #15
  %add.ptr.i68 = getelementptr i8, ptr %28, i32 20520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %31) #15, !srcloc !296
  %32 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base, align 4
  %34 = ptrtoint ptr %tbl_mcast_port_msk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tbl_mcast_port_msk, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #15
  %add.ptr.i69 = getelementptr i8, ptr %33, i32 20524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %36) #15, !srcloc !296
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_mac_get_inner_port_num(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hns_dsaf_tcam_uc_cfg_vague(ptr noundef %dsaf_dev, i32 noundef %address, ptr nocapture noundef readonly %tcam_data, ptr nocapture noundef %tcam_mask, ptr nocapture noundef readonly %tcam_uc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tcam_lock = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 23
  tail call void @_raw_spin_lock_bh(ptr noundef %tcam_lock) #15
  %io_base.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 5
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 20492
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %3 = and i32 %2, 16711679
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #15
  %and1.i.i = and i32 %address, 511
  %or.i.i = or i32 %4, %and1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %5) #15, !srcloc !296
  %6 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base.i, align 4
  %tbl_tcam_data_low.i = getelementptr inbounds %struct.dsaf_tbl_tcam_data, ptr %tcam_data, i32 0, i32 1
  %8 = ptrtoint ptr %tbl_tcam_data_low.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tbl_tcam_data_low.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #15
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 20504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #15, !srcloc !296
  %11 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base.i, align 4
  %13 = ptrtoint ptr %tcam_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tcam_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #15
  %add.ptr.i4.i = getelementptr i8, ptr %12, i32 20500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %15) #15, !srcloc !296
  %16 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %17, i32 20528
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %19 = and i32 %18, 15794175
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #15
  %tbl_ucast_mac_discard.i = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, ptr %tcam_uc, i32 0, i32 2
  %21 = ptrtoint ptr %tbl_ucast_mac_discard.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tbl_ucast_mac_discard.i, align 4
  %shl.i = shl i32 %22, 9
  %23 = and i32 %shl.i, 512
  %or70.i = or i32 %23, %20
  %tbl_ucast_item_vld.i = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, ptr %tcam_uc, i32 0, i32 1
  %24 = ptrtoint ptr %tbl_ucast_item_vld.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tbl_ucast_item_vld.i, align 4
  %shl10.i = shl i32 %25, 10
  %26 = and i32 %shl10.i, 1024
  %or1471.i = or i32 %or70.i, %26
  %27 = ptrtoint ptr %tcam_uc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tcam_uc, align 4
  %shl22.i = shl i32 %28, 11
  %29 = and i32 %shl22.i, 2048
  %or2672.i = or i32 %or1471.i, %29
  %tbl_ucast_dvc.i = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, ptr %tcam_uc, i32 0, i32 3
  %30 = ptrtoint ptr %tbl_ucast_dvc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tbl_ucast_dvc.i, align 4
  %shl34.i = shl i32 %31, 8
  %32 = and i32 %shl34.i, 256
  %or3873.i = or i32 %or2672.i, %32
  %tbl_ucast_out_port.i = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, ptr %tcam_uc, i32 0, i32 4
  %33 = ptrtoint ptr %tbl_ucast_out_port.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tbl_ucast_out_port.i, align 4
  %35 = and i32 %34, 255
  %or5074.i = or i32 %or3873.i, %35
  %36 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %38 = tail call i32 @llvm.bswap.i32(i32 %or5074.i) #15
  %add.ptr.i75.i = getelementptr i8, ptr %37, i32 20528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 %38) #15, !srcloc !296
  %39 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_base.i, align 4
  %tbl_tcam_data_low.i16 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, ptr %tcam_mask, i32 0, i32 1
  %41 = ptrtoint ptr %tbl_tcam_data_low.i16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tbl_tcam_data_low.i16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #15
  %add.ptr.i.i17 = getelementptr i8, ptr %40, i32 20788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17, i32 %43) #15, !srcloc !296
  %44 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io_base.i, align 4
  %46 = ptrtoint ptr %tcam_mask to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tcam_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #15
  %add.ptr.i4.i18 = getelementptr i8, ptr %45, i32 20784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i18, i32 %48) #15, !srcloc !296
  %49 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %50, i32 20640
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20) #15, !srcloc !293
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %53 = or i32 %52, 12
  %54 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %56 = tail call i32 @llvm.bswap.i32(i32 %53) #15
  %add.ptr.i44.i = getelementptr i8, ptr %55, i32 20640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %56) #15, !srcloc !296
  %57 = and i32 %52, -13
  %58 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %60 = tail call i32 @llvm.bswap.i32(i32 %57) #15
  %add.ptr.i45.i = getelementptr i8, ptr %59, i32 20640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 %60) #15, !srcloc !296
  %61 = ptrtoint ptr %tcam_mask to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %tcam_mask, align 4
  %62 = ptrtoint ptr %tbl_tcam_data_low.i16 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %tbl_tcam_data_low.i16, align 4
  %63 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %add.ptr.i.i23 = getelementptr i8, ptr %64, i32 20788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23, i32 -1) #15, !srcloc !296
  %65 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %io_base.i, align 4
  %67 = ptrtoint ptr %tcam_mask to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tcam_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #15
  %add.ptr.i4.i24 = getelementptr i8, ptr %66, i32 20784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i24, i32 %69) #15, !srcloc !296
  tail call void @_raw_spin_unlock_bh(ptr noundef %tcam_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hns_dsaf_tcam_mc_cfg_vague(ptr noundef %dsaf_dev, i32 noundef %address, ptr nocapture noundef readonly %tcam_data, ptr nocapture noundef %tcam_mask, ptr nocapture noundef readonly %tcam_mc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tcam_lock = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 23
  tail call void @_raw_spin_lock_bh(ptr noundef %tcam_lock) #15
  %io_base.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 5
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 20492
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %3 = and i32 %2, 16711679
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #15
  %and1.i.i = and i32 %address, 511
  %or.i.i = or i32 %4, %and1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %5) #15, !srcloc !296
  %6 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base.i, align 4
  %tbl_tcam_data_low.i = getelementptr inbounds %struct.dsaf_tbl_tcam_data, ptr %tcam_data, i32 0, i32 1
  %8 = ptrtoint ptr %tbl_tcam_data_low.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tbl_tcam_data_low.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #15
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 20504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #15, !srcloc !296
  %11 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base.i, align 4
  %13 = ptrtoint ptr %tcam_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tcam_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #15
  %add.ptr.i4.i = getelementptr i8, ptr %12, i32 20500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %15) #15, !srcloc !296
  tail call fastcc void @hns_dsaf_tbl_tcam_mcast_cfg(ptr noundef %dsaf_dev, ptr noundef %tcam_mc)
  %16 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base.i, align 4
  %tbl_tcam_data_low.i14 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, ptr %tcam_mask, i32 0, i32 1
  %18 = ptrtoint ptr %tbl_tcam_data_low.i14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tbl_tcam_data_low.i14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #15
  %add.ptr.i.i15 = getelementptr i8, ptr %17, i32 20788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15, i32 %20) #15, !srcloc !296
  %21 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_base.i, align 4
  %23 = ptrtoint ptr %tcam_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tcam_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #15
  %add.ptr.i4.i16 = getelementptr i8, ptr %22, i32 20784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i16, i32 %25) #15, !srcloc !296
  %26 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %27, i32 20640
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18) #15, !srcloc !293
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %30 = or i32 %29, 6
  %31 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %33 = tail call i32 @llvm.bswap.i32(i32 %30) #15
  %add.ptr.i44.i = getelementptr i8, ptr %32, i32 20640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %33) #15, !srcloc !296
  %34 = and i32 %29, -7
  %35 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %37 = tail call i32 @llvm.bswap.i32(i32 %34) #15
  %add.ptr.i45.i = getelementptr i8, ptr %36, i32 20640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 %37) #15, !srcloc !296
  %38 = ptrtoint ptr %tcam_mask to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %tcam_mask, align 4
  %39 = ptrtoint ptr %tbl_tcam_data_low.i14 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %tbl_tcam_data_low.i14, align 4
  %40 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %add.ptr.i.i21 = getelementptr i8, ptr %41, i32 20788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21, i32 -1) #15, !srcloc !296
  %42 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_base.i, align 4
  %44 = ptrtoint ptr %tcam_mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tcam_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #15
  %add.ptr.i4.i22 = getelementptr i8, ptr %43, i32 20784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i22, i32 %46) #15, !srcloc !296
  tail call void @_raw_spin_unlock_bh(ptr noundef %tcam_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_dsaf_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 6548, i32 noundef 3520) #15
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %hns_dsaf_alloc_dev.exit, !prof !299

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

hns_dsaf_alloc_dev.exit:                          ; preds = %entry
  %0 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i.i, ptr %driver_data.i.i, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %hns_dsaf_alloc_dev.exit.if.then_crit_edge, label %if.end

hns_dsaf_alloc_dev.exit.if.then_crit_edge:        ; preds = %hns_dsaf_alloc_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %hns_dsaf_alloc_dev.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %dsaf_dev.0.i50 = phi ptr [ %call.i.i, %hns_dsaf_alloc_dev.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %2 = ptrtoint ptr %dsaf_dev.0.i50 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.84, i32 noundef %2) #18
  br label %cleanup

if.end:                                           ; preds = %hns_dsaf_alloc_dev.exit
  %call4 = tail call fastcc i32 @hns_dsaf_get_cfg(ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.free_dev_crit_edge

if.end.free_dev_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_dev

if.end6:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 6544
  %dsaf_mode.i = getelementptr inbounds %struct.dsaf_device, ptr %call.i.i, i32 0, i32 12
  %3 = ptrtoint ptr %dsaf_mode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dsaf_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp.i42 = icmp eq i32 %4, 8
  br i1 %cmp.i42, label %if.end6.if.end10_crit_edge, label %if.end.i

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.end.i:                                         ; preds = %if.end6
  %dsaf_ver.i = getelementptr inbounds %struct.dsaf_device, ptr %call.i.i, i32 0, i32 15
  %5 = ptrtoint ptr %dsaf_ver.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dsaf_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %6)
  %cmp1.i = icmp eq i32 %6, 3552816
  %spec.select.i = select i1 %cmp1.i, i16 512, i16 506
  %7 = getelementptr inbounds %struct.dsaf_device, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %spec.select.i, ptr %7, align 8
  %tcam_lock.i = getelementptr inbounds %struct.dsaf_device, ptr %call.i.i, i32 0, i32 23
  tail call void @__raw_spin_lock_init(ptr noundef %tcam_lock.i, ptr noundef nonnull @.str.132, ptr noundef nonnull @hns_dsaf_init.__key, i16 noundef signext 3) #15
  %call6.i = tail call fastcc i32 @hns_dsaf_init_hw(ptr noundef nonnull %call.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i43 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i43, label %if.end8.i, label %if.end.i.free_dev_crit_edge

if.end.i.free_dev_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_dev

if.end8.i:                                        ; preds = %if.end.i
  %call10.i = tail call noalias ptr @vzalloc(i32 noundef 6144) #20
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10.i, ptr %add.ptr.i.i, align 4
  %tobool12.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  br label %for.body.i

if.then13.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  %misc_op.i.i = getelementptr inbounds %struct.dsaf_device, ptr %call.i.i, i32 0, i32 20
  %10 = ptrtoint ptr %misc_op.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %misc_op.i.i, align 4
  %dsaf_reset.i.i = getelementptr inbounds %struct.dsaf_misc_op, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dsaf_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dsaf_reset.i.i, align 4
  tail call void %13(ptr noundef nonnull %call.i.i, i1 noundef zeroext false) #15
  br label %free_dev

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end8.i.for.body.i_crit_edge
  %i.032.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end8.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 4
  %index.i = getelementptr %struct.dsaf_drv_soft_mac_tbl, ptr %15, i32 %i.032.i, i32 1
  %16 = ptrtoint ptr %index.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %index.i, align 4
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 512
  br i1 %exitcond.not.i, label %for.body.i.if.end10_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.if.end10_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.end10:                                         ; preds = %for.body.i.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %call11 = tail call i32 @hns_mac_init(ptr noundef %call.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.uninit_dsaf_crit_edge

if.end10.uninit_dsaf_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %uninit_dsaf

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @hns_ppe_init(ptr noundef %call.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.uninit_mac_crit_edge

if.end14.uninit_mac_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %uninit_mac

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @hns_dsaf_ae_init(ptr noundef %call.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %uninit_ppe

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

uninit_ppe:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @hns_ppe_uninit(ptr noundef %call.i.i) #15
  br label %uninit_mac

uninit_mac:                                       ; preds = %uninit_ppe, %if.end14.uninit_mac_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end14.uninit_mac_crit_edge ], [ %call19, %uninit_ppe ]
  tail call void @hns_mac_uninit(ptr noundef %call.i.i) #15
  br label %uninit_dsaf

uninit_dsaf:                                      ; preds = %uninit_mac, %if.end10.uninit_dsaf_crit_edge
  %ret.1 = phi i32 [ %call11, %if.end10.uninit_dsaf_crit_edge ], [ %ret.0, %uninit_mac ]
  %misc_op.i.i45 = getelementptr inbounds %struct.dsaf_device, ptr %call.i.i, i32 0, i32 20
  %17 = ptrtoint ptr %misc_op.i.i45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %misc_op.i.i45, align 4
  %dsaf_reset.i.i46 = getelementptr inbounds %struct.dsaf_misc_op, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dsaf_reset.i.i46 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dsaf_reset.i.i46, align 4
  tail call void %20(ptr noundef %call.i.i, i1 noundef zeroext false) #15
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void @vfree(ptr noundef %22) #15
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %add.ptr.i.i, align 4
  br label %free_dev

free_dev:                                         ; preds = %uninit_dsaf, %if.then13.i, %if.end.i.free_dev_crit_edge, %if.end.free_dev_crit_edge
  %ret.2 = phi i32 [ %call4, %if.end.free_dev_crit_edge ], [ %ret.1, %uninit_dsaf ], [ -12, %if.then13.i ], [ %call6.i, %if.end.i.free_dev_crit_edge ]
  %24 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i.i, align 8
  %driver_data.i.i47 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %driver_data.i.i47 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %driver_data.i.i47, align 4
  br label %cleanup

cleanup:                                          ; preds = %free_dev, %if.end18.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %ret.2, %free_dev ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_dsaf_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @hns_dsaf_ae_uninit(ptr noundef %1) #15
  tail call void @hns_ppe_uninit(ptr noundef %1) #15
  tail call void @hns_mac_uninit(ptr noundef %1) #15
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 6544
  %misc_op.i.i = getelementptr inbounds %struct.dsaf_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %misc_op.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %misc_op.i.i, align 4
  %dsaf_reset.i.i = getelementptr inbounds %struct.dsaf_misc_op, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dsaf_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsaf_reset.i.i, align 4
  tail call void %5(ptr noundef %1, i1 noundef zeroext false) #15
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void @vfree(ptr noundef %7) #15
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %add.ptr.i.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hns_dsaf_get_cfg(ptr noundef %dsaf_dev) unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %desc_num = alloca i32, align 4
  %buf_size = alloca i32, align 4
  %reset_offset = alloca i32, align 4
  %mode_str = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_num) #15
  %0 = ptrtoint ptr %desc_num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %desc_num, align 4, !annotation !298
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_size) #15
  %1 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %buf_size, align 4, !annotation !298
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset_offset) #15
  %2 = ptrtoint ptr %reset_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reset_offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode_str) #15
  %3 = ptrtoint ptr %mode_str to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %mode_str, align 4, !annotation !298
  %4 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsaf_dev, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 -16
  %tobool.not.i = icmp eq ptr %5, null
  %tobool.not = icmp eq ptr %7, null
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.else7, label %if.then

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %7, ptr noundef nonnull @.str.86) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool4.not, i32 825635120, i32 3552816
  %8 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 15
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %8, align 4
  %10 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dsaf_dev, align 8
  %call26 = call i32 @device_property_read_string(ptr noundef %11, ptr noundef nonnull @.str.89, ptr noundef nonnull %mode_str) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then.for.body_crit_edge, label %do.end31

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.else7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.87) #18
  br label %cleanup

do.end31:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dsaf_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.91, i32 noundef %call26) #18
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.0382 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %14 = lshr i32 52991, %i.0382
  %15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool34.not.not = icmp eq i32 %15, 0
  br i1 %tobool34.not.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr [17 x ptr], ptr @g_dsaf_mode_match, i32 0, i32 %i.0382
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %mode_str to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mode_str, align 4
  %call36 = call i32 @strcmp(ptr noundef %19, ptr noundef %17) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %switch.early.test, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0382, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.inc.do.end47_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.do.end47_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end47

switch.early.test:                                ; preds = %land.lhs.true
  %20 = zext i32 %i.0382 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %i.0382, label %if.end49 [
    i32 7, label %switch.early.test.do.end47_crit_edge
    i32 0, label %switch.early.test.do.end47_crit_edge391
  ]

switch.early.test.do.end47_crit_edge391:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end47

switch.early.test.do.end47_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end47

do.end47:                                         ; preds = %switch.early.test.do.end47_crit_edge, %switch.early.test.do.end47_crit_edge391, %for.inc.do.end47_crit_edge
  %21 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dsaf_dev, align 8
  %name = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.94, ptr noundef %name) #18
  br label %cleanup

if.end49:                                         ; preds = %switch.early.test
  %dsaf_mode = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %23 = ptrtoint ptr %dsaf_mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %i.0382, ptr %dsaf_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0382)
  %cmp51 = icmp ult i32 %i.0382, 8
  %spec.select387 = zext i1 %cmp51 to i32
  %24 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 13
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select387, ptr %24, align 4
  %26 = zext i32 %i.0382 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %i.0382, label %if.else62 [
    i32 4, label %if.end49.if.end64_crit_edge
    i32 10, label %if.end49.if.end64_crit_edge392
    i32 14, label %if.end49.if.end64_crit_edge393
  ]

if.end49.if.end64_crit_edge393:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.end49.if.end64_crit_edge392:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.end49.if.end64_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.else62:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.end64:                                         ; preds = %if.else62, %if.end49.if.end64_crit_edge, %if.end49.if.end64_crit_edge392, %if.end49.if.end64_crit_edge393
  %.sink = phi i32 [ 0, %if.else62 ], [ 1, %if.end49.if.end64_crit_edge ], [ 1, %if.end49.if.end64_crit_edge392 ], [ 1, %if.end49.if.end64_crit_edge393 ]
  %dsaf_tc_mode63 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 14
  %27 = ptrtoint ptr %dsaf_tc_mode63 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %dsaf_tc_mode63, align 8
  %28 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dsaf_dev, align 8
  %tobool.not.i355 = icmp eq ptr %29, null
  br i1 %tobool.not.i355, label %if.end64.if.end109_crit_edge, label %dev_of_node.exit359

if.end64.if.end109_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end109

dev_of_node.exit359:                              ; preds = %if.end64
  %of_node.i356 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %of_node.i356 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node.i356, align 8
  %tobool67.not = icmp eq ptr %31, null
  br i1 %tobool67.not, label %dev_of_node.exit359.if.end109_crit_edge, label %if.then68

dev_of_node.exit359.if.end109_crit_edge:          ; preds = %dev_of_node.exit359
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end109

if.then68:                                        ; preds = %dev_of_node.exit359
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #15
  %32 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.96, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i360 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i360, label %if.end.i361, label %if.then68.of_parse_phandle.exit_crit_edge

if.then68.of_parse_phandle.exit_crit_edge:        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  br label %of_parse_phandle.exit

if.end.i361:                                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i361, %if.then68.of_parse_phandle.exit_crit_edge
  %retval.0.i362 = phi ptr [ %34, %if.end.i361 ], [ null, %if.then68.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #15
  %call70 = call ptr @syscon_node_to_regmap(ptr noundef %retval.0.i362) #15
  call void @of_node_put(ptr noundef %retval.0.i362) #15
  %tobool.not.i363 = icmp eq ptr %call70, null
  %cmp.i = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i363, %cmp.i
  br i1 %spec.select.i, label %if.then72, label %if.else107

if.then72:                                        ; preds = %of_parse_phandle.exit
  %call74 = call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 0) #15
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %do.end79, label %if.end81

do.end79:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dsaf_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.98) #18
  br label %cleanup

if.end81:                                         ; preds = %if.then72
  %call83 = call ptr @devm_ioremap_resource(ptr noundef %5, ptr noundef nonnull %call74) #15
  %sc_base = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 2
  %37 = ptrtoint ptr %sc_base to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call83, ptr %sc_base, align 8
  %cmp.i364 = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i364, label %if.then86, label %if.end89

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %call83 to i32
  br label %cleanup

if.end89:                                         ; preds = %if.end81
  %call91 = call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 1) #15
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %do.end96, label %if.end98

do.end96:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dsaf_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.101) #18
  br label %cleanup

if.end98:                                         ; preds = %if.end89
  %call100 = call ptr @devm_ioremap_resource(ptr noundef %5, ptr noundef nonnull %call91) #15
  %sds_base = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 3
  %41 = ptrtoint ptr %sds_base to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call100, ptr %sds_base, align 4
  %cmp.i365 = icmp ugt ptr %call100, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i365, label %if.then103, label %if.end98.if.end109_crit_edge

if.end98.if.end109_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end109

if.then103:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %call100 to i32
  br label %cleanup

if.else107:                                       ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub_ctrl = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 6
  %43 = ptrtoint ptr %sub_ctrl to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call70, ptr %sub_ctrl, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.else107, %if.end98.if.end109_crit_edge, %dev_of_node.exit359.if.end109_crit_edge, %if.end64.if.end109_crit_edge
  %res_idx.0 = phi i32 [ 2, %if.end98.if.end109_crit_edge ], [ 0, %if.else107 ], [ 0, %dev_of_node.exit359.if.end109_crit_edge ], [ 0, %if.end64.if.end109_crit_edge ]
  %call110 = call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str.103) #15
  %tobool111.not = icmp eq ptr %call110, null
  br i1 %tobool111.not, label %if.then112, label %if.end109.if.end122_crit_edge

if.end109.if.end122_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end122

if.then112:                                       ; preds = %if.end109
  %inc113 = or i32 %res_idx.0, 1
  %call114 = call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef %res_idx.0) #15
  %tobool115.not = icmp eq ptr %call114, null
  br i1 %tobool115.not, label %do.end119, label %if.then112.if.end122_crit_edge

if.then112.if.end122_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end122

do.end119:                                        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dsaf_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.105) #18
  br label %cleanup

if.end122:                                        ; preds = %if.then112.if.end122_crit_edge, %if.end109.if.end122_crit_edge
  %res.0 = phi ptr [ %call110, %if.end109.if.end122_crit_edge ], [ %call114, %if.then112.if.end122_crit_edge ]
  %res_idx.1 = phi i32 [ %res_idx.0, %if.end109.if.end122_crit_edge ], [ %inc113, %if.then112.if.end122_crit_edge ]
  %call124 = call ptr @devm_ioremap_resource(ptr noundef %5, ptr noundef nonnull %res.0) #15
  %ppe_base = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 4
  %46 = ptrtoint ptr %ppe_base to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call124, ptr %ppe_base, align 8
  %cmp.i366 = icmp ugt ptr %call124, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i366, label %if.then127, label %if.end130

if.then127:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #17
  %47 = ptrtoint ptr %call124 to i32
  br label %cleanup

if.end130:                                        ; preds = %if.end122
  %48 = ptrtoint ptr %res.0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %res.0, align 4
  %ppe_paddr = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 7
  %50 = ptrtoint ptr %ppe_paddr to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %ppe_paddr, align 4
  %51 = ptrtoint ptr %dsaf_mode to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dsaf_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %52)
  %cmp132 = icmp eq i32 %52, 8
  br i1 %cmp132, label %if.end130.if.end154_crit_edge, label %if.then133

if.end130.if.end154_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end154

if.then133:                                       ; preds = %if.end130
  %call134 = call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str.107) #15
  %tobool135.not = icmp eq ptr %call134, null
  br i1 %tobool135.not, label %if.then136, label %if.then133.if.end145_crit_edge

if.then133.if.end145_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

if.then136:                                       ; preds = %if.then133
  %call137 = call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef %res_idx.1) #15
  %tobool138.not = icmp eq ptr %call137, null
  br i1 %tobool138.not, label %do.end142, label %if.then136.if.end145_crit_edge

if.then136.if.end145_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

do.end142:                                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dsaf_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.109) #18
  br label %cleanup

if.end145:                                        ; preds = %if.then136.if.end145_crit_edge, %if.then133.if.end145_crit_edge
  %res.1 = phi ptr [ %call134, %if.then133.if.end145_crit_edge ], [ %call137, %if.then136.if.end145_crit_edge ]
  %call147 = call ptr @devm_ioremap_resource(ptr noundef %5, ptr noundef nonnull %res.1) #15
  %io_base = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 5
  %55 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call147, ptr %io_base, align 4
  %cmp.i367 = icmp ugt ptr %call147, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i367, label %if.then150, label %if.end145.if.end154_crit_edge

if.end145.if.end154_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end154

if.then150:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %call147 to i32
  br label %cleanup

if.end154:                                        ; preds = %if.end145.if.end154_crit_edge, %if.end130.if.end154_crit_edge
  %57 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dsaf_dev, align 8
  %call.i368 = call i32 @device_property_read_u32_array(ptr noundef %58, ptr noundef nonnull @.str.111, ptr noundef nonnull %desc_num, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i368)
  %cmp157 = icmp slt i32 %call.i368, 0
  br i1 %cmp157, label %if.end154.do.end165_crit_edge, label %lor.lhs.false158

if.end154.do.end165_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end165

lor.lhs.false158:                                 ; preds = %if.end154
  %59 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %desc_num, align 4
  %61 = add i32 %60, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1009, i32 %61)
  %62 = icmp ult i32 %61, -1009
  br i1 %62, label %lor.lhs.false158.do.end165_crit_edge, label %if.end167

lor.lhs.false158.do.end165_crit_edge:             ; preds = %lor.lhs.false158
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end165

do.end165:                                        ; preds = %lor.lhs.false158.do.end165_crit_edge, %if.end154.do.end165_crit_edge
  %63 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dsaf_dev, align 8
  %65 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %desc_num, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.113, i32 noundef %66, i32 noundef %call.i368) #18
  br label %cleanup

if.end167:                                        ; preds = %lor.lhs.false158
  %desc_num168 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 8
  %67 = ptrtoint ptr %desc_num168 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %60, ptr %desc_num168, align 8
  %68 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dsaf_dev, align 8
  %call.i369 = call i32 @device_property_read_u32_array(ptr noundef %69, ptr noundef nonnull @.str.115, ptr noundef nonnull %reset_offset, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i369)
  %cmp171 = icmp slt i32 %call.i369, 0
  br i1 %cmp171, label %do.body173, label %if.end167.if.end184_crit_edge

if.end167.if.end184_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end184

do.body173:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_dsaf_get_cfg.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_dsaf_get_cfg, %if.then179)) #15
          to label %if.end184 [label %if.then179], !srcloc !297

if.then179:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #17
  %70 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dsaf_dev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_dsaf_get_cfg.__UNIQUE_ID_ddebug351, ptr noundef %71, ptr noundef nonnull @.str.116, i32 noundef %call.i369) #15
  br label %if.end184

if.end184:                                        ; preds = %if.then179, %do.body173, %if.end167.if.end184_crit_edge
  %72 = ptrtoint ptr %reset_offset to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reset_offset, align 4
  %reset_offset185 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 10
  %74 = ptrtoint ptr %reset_offset185 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %reset_offset185, align 8
  %75 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dsaf_dev, align 8
  %call.i370 = call i32 @device_property_read_u32_array(ptr noundef %76, ptr noundef nonnull @.str.117, ptr noundef nonnull %buf_size, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i370)
  %cmp188 = icmp slt i32 %call.i370, 0
  br i1 %cmp188, label %do.end192, label %if.end194

do.end192:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #17
  %77 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dsaf_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.119, i32 noundef %call.i370) #18
  br label %cleanup

if.end194:                                        ; preds = %if.end184
  %79 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %buf_size, align 4
  %buf_size195 = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 9
  %81 = ptrtoint ptr %buf_size195 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %buf_size195, align 4
  %call196 = call i32 @hns_rcb_buf_size2type(i32 noundef %80) #15
  %buf_size_type = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 11
  %82 = ptrtoint ptr %buf_size_type to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call196, ptr %buf_size_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %cmp198 = icmp slt i32 %call196, 0
  br i1 %cmp198, label %do.end202, label %if.end204

do.end202:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #17
  %83 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dsaf_dev, align 8
  %85 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %buf_size, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.122, i32 noundef %86) #18
  br label %cleanup

if.end204:                                        ; preds = %if.end194
  %call205 = call ptr @hns_misc_op_get(ptr noundef %dsaf_dev) #15
  %misc_op = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 20
  %87 = ptrtoint ptr %misc_op to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call205, ptr %misc_op, align 4
  %tobool207.not = icmp eq ptr %call205, null
  br i1 %tobool207.not, label %if.end204.cleanup_crit_edge, label %if.end209

if.end204.cleanup_crit_edge:                      ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end209:                                        ; preds = %if.end204
  %88 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dsaf_dev, align 8
  %call.i371 = call i32 @dma_set_mask(ptr noundef %89, i64 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i371)
  %cmp.i372 = icmp eq i32 %call.i371, 0
  br i1 %cmp.i372, label %do.body214, label %do.end234

do.body214:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %89, i64 noundef -1) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_dsaf_get_cfg.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_dsaf_get_cfg, %if.then226)) #15
          to label %cleanup [label %if.then226], !srcloc !297

if.then226:                                       ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #17
  %90 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dsaf_dev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_dsaf_get_cfg.__UNIQUE_ID_ddebug352, ptr noundef %91, ptr noundef nonnull @.str.124) #15
  br label %cleanup

do.end234:                                        ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #17
  %92 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dsaf_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.126) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end234, %if.then226, %do.body214, %if.end204.cleanup_crit_edge, %do.end202, %do.end192, %do.end165, %if.then150, %do.end142, %if.then127, %do.end119, %if.then103, %do.end96, %if.then86, %do.end79, %do.end47, %do.end31, %if.else7
  %retval.0 = phi i32 [ %call26, %do.end31 ], [ -22, %do.end47 ], [ %38, %if.then86 ], [ %42, %if.then103 ], [ %47, %if.then127 ], [ -22, %do.end165 ], [ %call.i370, %do.end192 ], [ -22, %do.end202 ], [ %56, %if.then150 ], [ -12, %do.end142 ], [ -12, %do.end119 ], [ -12, %do.end96 ], [ -12, %do.end79 ], [ -6, %if.else7 ], [ -12, %if.end204.cleanup_crit_edge ], [ 0, %if.then226 ], [ 0, %do.end234 ], [ 0, %do.body214 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode_str) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset_offset) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_size) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_num) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_mac_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_ppe_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_dsaf_ae_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_ppe_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_mac_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_rcb_buf_size2type(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hns_misc_op_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hns_dsaf_init_hw(ptr noundef %dsaf_dev) unnamed_addr #0 align 64 {
entry:
  %tcam_data.i.i = alloca [1 x %struct.dsaf_tbl_tcam_data], align 8
  %tcam_ucast.i.i = alloca [1 x %struct.dsaf_tbl_tcam_ucast_cfg], align 4
  %max_q_per_vf.i119.i = alloca i16, align 2
  %max_vfn.i120.i = alloca i16, align 2
  %max_q_per_vf.i.i = alloca i16, align 2
  %max_vfn.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_dsaf_init_hw.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_dsaf_init_hw, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !297

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsaf_dev, align 8
  %name = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_dsaf_init_hw.__UNIQUE_ID_ddebug353, ptr noundef %1, ptr noundef nonnull @.str.134, ptr noundef %name) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %misc_op = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 20
  %2 = ptrtoint ptr %misc_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %misc_op, align 4
  %dsaf_reset = getelementptr inbounds %struct.dsaf_misc_op, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dsaf_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsaf_reset, align 4
  tail call void %5(ptr noundef %dsaf_dev, i1 noundef zeroext false) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #15
  %16 = ptrtoint ptr %misc_op to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %misc_op, align 4
  %dsaf_reset5 = getelementptr inbounds %struct.dsaf_misc_op, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %dsaf_reset5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dsaf_reset5, align 4
  tail call void %19(ptr noundef %dsaf_dev, i1 noundef zeroext true) #15
  %dsaf_ver.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 15
  %20 = ptrtoint ptr %dsaf_ver.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dsaf_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %21)
  %cmp.i = icmp eq i32 %21, 3552816
  %io_base.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 5
  %22 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %25 = and i32 %24, -1459617793
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #15
  %dsaf_en.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 13
  %27 = ptrtoint ptr %dsaf_en.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dsaf_en.i, align 4
  %29 = and i32 %28, 1
  %or100.i = or i32 %29, %26
  %dsaf_tc_mode.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 14
  %30 = ptrtoint ptr %dsaf_tc_mode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dsaf_tc_mode.i, align 8
  %shl10.i = shl i32 %31, 1
  %32 = and i32 %shl10.i, 2
  %or14101.i = or i32 %or100.i, %32
  %33 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %35 = tail call i32 @llvm.bswap.i32(i32 %or14101.i) #15
  %add.ptr.i102.i = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102.i, i32 %35) #15, !srcloc !296
  %36 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %37, i32 44
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %39 = or i32 %38, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %39) #15, !srcloc !296
  %40 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i104.i = getelementptr i8, ptr %41, i32 832
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i104.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %43 = and i32 %42, -117440513
  %44 = or i32 %43, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i104.i, i32 %44) #15, !srcloc !296
  %45 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.1.i.i = getelementptr i8, ptr %46, i32 836
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1.i.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %48 = and i32 %47, -117440513
  %49 = or i32 %48, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i.i, i32 %49) #15, !srcloc !296
  %50 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.2.i.i = getelementptr i8, ptr %51, i32 840
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2.i.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %53 = and i32 %52, -117440513
  %54 = or i32 %53, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i.i, i32 %54) #15, !srcloc !296
  %55 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.3.i.i = getelementptr i8, ptr %56, i32 844
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.3.i.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %58 = and i32 %57, -117440513
  %59 = or i32 %58, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i.i, i32 %59) #15, !srcloc !296
  %60 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.4.i.i = getelementptr i8, ptr %61, i32 848
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.4.i.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %63 = and i32 %62, -117440513
  %64 = or i32 %63, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.4.i.i, i32 %64) #15, !srcloc !296
  %65 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.5.i.i = getelementptr i8, ptr %66, i32 852
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.5.i.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %68 = and i32 %67, -117440513
  %69 = or i32 %68, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.5.i.i, i32 %69) #15, !srcloc !296
  %70 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i106.i = getelementptr i8, ptr %71, i32 768
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i106.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %73 = and i32 %72, 16777215
  %74 = or i32 %73, 369098752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i106.i, i32 %74) #15, !srcloc !296
  %75 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.1.i107.i = getelementptr i8, ptr %76, i32 772
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1.i107.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %78 = and i32 %77, 16777215
  %79 = or i32 %78, 369098752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i107.i, i32 %79) #15, !srcloc !296
  %80 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.2.i108.i = getelementptr i8, ptr %81, i32 776
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2.i108.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %83 = and i32 %82, 16777215
  %84 = or i32 %83, 369098752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i108.i, i32 %84) #15, !srcloc !296
  %85 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.3.i109.i = getelementptr i8, ptr %86, i32 780
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.3.i109.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %88 = and i32 %87, 16777215
  %89 = or i32 %88, 369098752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i109.i, i32 %89) #15, !srcloc !296
  %90 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.4.i110.i = getelementptr i8, ptr %91, i32 784
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.4.i110.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %93 = and i32 %92, 16777215
  %94 = or i32 %93, 369098752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.4.i110.i, i32 %94) #15, !srcloc !296
  %95 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.5.i111.i = getelementptr i8, ptr %96, i32 788
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.5.i111.i) #15, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %98 = and i32 %97, 16777215
  %99 = or i32 %98, 369098752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.5.i111.i, i32 %99) #15, !srcloc !296
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max_q_per_vf.i.i) #15
  %100 = ptrtoint ptr %max_q_per_vf.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 -1, ptr %max_q_per_vf.i.i, align 2, !annotation !298
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max_vfn.i.i) #15
  %101 = ptrtoint ptr %max_vfn.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 -1, ptr %max_vfn.i.i, align 2, !annotation !298
  %dsaf_mode.i.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %102 = ptrtoint ptr %dsaf_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dsaf_mode.i.i, align 8
  call void @hns_rcb_get_queue_mode(i32 noundef %103, ptr noundef nonnull %max_vfn.i.i, ptr noundef nonnull %max_q_per_vf.i.i) #15
  %104 = ptrtoint ptr %max_vfn.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %max_vfn.i.i, align 2
  %conv.i.i = zext i16 %105 to i32
  %106 = ptrtoint ptr %max_q_per_vf.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %max_q_per_vf.i.i, align 2
  %conv1.i.i = zext i16 %107 to i32
  %mul.i.i = mul nuw i32 %conv1.i.i, %conv.i.i
  %108 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i113.i = getelementptr i8, ptr %109, i32 864
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i113.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %111 = and i32 %110, 16777215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i113.i, i32 %111) #15, !srcloc !296
  %112 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.1.i114.i = getelementptr i8, ptr %113, i32 868
  %114 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1.i114.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %115 = and i32 %114, 16777215
  %116 = call i32 @llvm.bswap.i32(i32 %115) #15
  %and1.i.1.i.i = and i32 %mul.i.i, 255
  %or.i.1.i.i = or i32 %116, %and1.i.1.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %117 = call i32 @llvm.bswap.i32(i32 %or.i.1.i.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i114.i, i32 %117) #15, !srcloc !296
  %add4.1.i.i = shl i32 %mul.i.i, 1
  %118 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.2.i115.i = getelementptr i8, ptr %119, i32 872
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2.i115.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %121 = and i32 %120, 16777215
  %122 = call i32 @llvm.bswap.i32(i32 %121) #15
  %and1.i.2.i.i = and i32 %add4.1.i.i, 254
  %or.i.2.i.i = or i32 %122, %and1.i.2.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %123 = call i32 @llvm.bswap.i32(i32 %or.i.2.i.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i115.i, i32 %123) #15, !srcloc !296
  %add4.2.i.i = mul i32 %mul.i.i, 3
  %124 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.3.i116.i = getelementptr i8, ptr %125, i32 876
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.3.i116.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %127 = and i32 %126, 16777215
  %128 = call i32 @llvm.bswap.i32(i32 %127) #15
  %and1.i.3.i.i = and i32 %add4.2.i.i, 255
  %or.i.3.i.i = or i32 %128, %and1.i.3.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %129 = call i32 @llvm.bswap.i32(i32 %or.i.3.i.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i116.i, i32 %129) #15, !srcloc !296
  %add4.3.i.i = shl i32 %mul.i.i, 2
  %130 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.4.i117.i = getelementptr i8, ptr %131, i32 880
  %132 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.4.i117.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %133 = and i32 %132, 16777215
  %134 = call i32 @llvm.bswap.i32(i32 %133) #15
  %and1.i.4.i.i = and i32 %add4.3.i.i, 252
  %or.i.4.i.i = or i32 %134, %and1.i.4.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %135 = call i32 @llvm.bswap.i32(i32 %or.i.4.i.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.4.i117.i, i32 %135) #15, !srcloc !296
  %add4.4.i.i = mul i32 %mul.i.i, 5
  %136 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.5.i118.i = getelementptr i8, ptr %137, i32 884
  %138 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.5.i118.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %139 = and i32 %138, 16777215
  %140 = call i32 @llvm.bswap.i32(i32 %139) #15
  %and1.i.5.i.i = and i32 %add4.4.i.i, 255
  %or.i.5.i.i = or i32 %140, %and1.i.5.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %141 = call i32 @llvm.bswap.i32(i32 %or.i.5.i.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.5.i118.i, i32 %141) #15, !srcloc !296
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_vfn.i.i) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_q_per_vf.i.i) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max_q_per_vf.i119.i) #15
  %142 = ptrtoint ptr %max_q_per_vf.i119.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 -1, ptr %max_q_per_vf.i119.i, align 2, !annotation !298
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max_vfn.i120.i) #15
  %143 = ptrtoint ptr %max_vfn.i120.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 -1, ptr %max_vfn.i120.i, align 2, !annotation !298
  %144 = ptrtoint ptr %dsaf_ver.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %dsaf_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %145)
  %cmp.i.i = icmp eq i32 %145, 3552816
  br i1 %cmp.i.i, label %do.end.hns_dsaf_inner_qid_cfg.exit.i_crit_edge, label %if.end.i.i

do.end.hns_dsaf_inner_qid_cfg.exit.i_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %hns_dsaf_inner_qid_cfg.exit.i

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %146 = ptrtoint ptr %dsaf_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %dsaf_mode.i.i, align 8
  call void @hns_rcb_get_queue_mode(i32 noundef %147, ptr noundef nonnull %max_vfn.i120.i, ptr noundef nonnull %max_q_per_vf.i119.i) #15
  %148 = ptrtoint ptr %max_vfn.i120.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %max_vfn.i120.i, align 2
  %conv.i122.i = zext i16 %149 to i32
  %150 = ptrtoint ptr %max_q_per_vf.i119.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %max_q_per_vf.i119.i, align 2
  %conv1.i123.i = zext i16 %151 to i32
  %mul.i124.i = mul nuw i32 %conv1.i123.i, %conv.i122.i
  %152 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i126.i = getelementptr i8, ptr %153, i32 544
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i126.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %155 = and i32 %154, 16777215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i126.i, i32 %155) #15, !srcloc !296
  %156 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.1.i127.i = getelementptr i8, ptr %157, i32 548
  %158 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1.i127.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %159 = and i32 %158, 16777215
  %160 = call i32 @llvm.bswap.i32(i32 %159) #15
  %and1.i.1.i128.i = and i32 %mul.i124.i, 255
  %or.i.1.i129.i = or i32 %160, %and1.i.1.i128.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %161 = call i32 @llvm.bswap.i32(i32 %or.i.1.i129.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i127.i, i32 %161) #15, !srcloc !296
  %add5.1.i.i = shl i32 %mul.i124.i, 1
  %162 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.2.i130.i = getelementptr i8, ptr %163, i32 552
  %164 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2.i130.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %165 = and i32 %164, 16777215
  %166 = call i32 @llvm.bswap.i32(i32 %165) #15
  %and1.i.2.i131.i = and i32 %add5.1.i.i, 254
  %or.i.2.i132.i = or i32 %166, %and1.i.2.i131.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %167 = call i32 @llvm.bswap.i32(i32 %or.i.2.i132.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i130.i, i32 %167) #15, !srcloc !296
  %add5.2.i.i = mul i32 %mul.i124.i, 3
  %168 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.3.i133.i = getelementptr i8, ptr %169, i32 556
  %170 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.3.i133.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %171 = and i32 %170, 16777215
  %172 = call i32 @llvm.bswap.i32(i32 %171) #15
  %and1.i.3.i134.i = and i32 %add5.2.i.i, 255
  %or.i.3.i135.i = or i32 %172, %and1.i.3.i134.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %173 = call i32 @llvm.bswap.i32(i32 %or.i.3.i135.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i133.i, i32 %173) #15, !srcloc !296
  %add5.3.i.i = shl i32 %mul.i124.i, 2
  %174 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.4.i136.i = getelementptr i8, ptr %175, i32 560
  %176 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.4.i136.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %177 = and i32 %176, 16777215
  %178 = call i32 @llvm.bswap.i32(i32 %177) #15
  %and1.i.4.i137.i = and i32 %add5.3.i.i, 252
  %or.i.4.i138.i = or i32 %178, %and1.i.4.i137.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %179 = call i32 @llvm.bswap.i32(i32 %or.i.4.i138.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.4.i136.i, i32 %179) #15, !srcloc !296
  %add5.4.i.i = mul i32 %mul.i124.i, 5
  %180 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.5.i139.i = getelementptr i8, ptr %181, i32 564
  %182 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.5.i139.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %183 = and i32 %182, 16777215
  %184 = call i32 @llvm.bswap.i32(i32 %183) #15
  %and1.i.5.i140.i = and i32 %add5.4.i.i, 255
  %or.i.5.i141.i = or i32 %184, %and1.i.5.i140.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %185 = call i32 @llvm.bswap.i32(i32 %or.i.5.i141.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.5.i139.i, i32 %185) #15, !srcloc !296
  br label %hns_dsaf_inner_qid_cfg.exit.i

hns_dsaf_inner_qid_cfg.exit.i:                    ; preds = %if.end.i.i, %do.end.hns_dsaf_inner_qid_cfg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_vfn.i120.i) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_q_per_vf.i119.i) #15
  %186 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i143.i = getelementptr i8, ptr %187, i32 800
  %188 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i143.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %189 = and i32 %188, -50331649
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i143.i, i32 %189) #15, !srcloc !296
  %190 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.1.i144.i = getelementptr i8, ptr %191, i32 804
  %192 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1.i144.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %193 = and i32 %192, -50331649
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i144.i, i32 %193) #15, !srcloc !296
  %194 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.2.i145.i = getelementptr i8, ptr %195, i32 808
  %196 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2.i145.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %197 = and i32 %196, -50331649
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i145.i, i32 %197) #15, !srcloc !296
  %198 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.3.i146.i = getelementptr i8, ptr %199, i32 812
  %200 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.3.i146.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %201 = and i32 %200, -50331649
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i146.i, i32 %201) #15, !srcloc !296
  %202 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.4.i147.i = getelementptr i8, ptr %203, i32 816
  %204 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.4.i147.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %205 = and i32 %204, -50331649
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.4.i147.i, i32 %205) #15, !srcloc !296
  %206 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.5.i148.i = getelementptr i8, ptr %207, i32 820
  %208 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.5.i148.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %209 = and i32 %208, -50331649
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.5.i148.i, i32 %209) #15, !srcloc !296
  %210 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.6.i.i = getelementptr i8, ptr %211, i32 824
  %212 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.6.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %213 = and i32 %212, -50331649
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.6.i.i, i32 %213) #15, !srcloc !296
  %214 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.7.i.i = getelementptr i8, ptr %215, i32 828
  %216 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.7.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %217 = and i32 %216, -50331649
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.7.i.i, i32 %217) #15, !srcloc !296
  %conv48.i = zext i1 %cmp.i to i32
  %shl.i.i.i = select i1 %cmp.i, i32 2, i32 0
  br label %for.body.i

for.body.i:                                       ; preds = %hns_dsaf_set_pfc_pause.exit.i.for.body.i_crit_edge, %hns_dsaf_inner_qid_cfg.exit.i
  %i.0185.i = phi i32 [ 0, %hns_dsaf_inner_qid_cfg.exit.i ], [ %inc.i, %hns_dsaf_set_pfc_pause.exit.i.for.body.i_crit_edge ]
  %218 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %io_base.i, align 4
  %mul.i150.i = shl nuw nsw i32 %i.0185.i, 2
  %add.i.i = add nuw nsw i32 %mul.i150.i, 80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i.i.i = getelementptr i8, ptr %219, i32 %add.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #15, !srcloc !296
  %220 = ptrtoint ptr %dsaf_ver.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %dsaf_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %221)
  %cmp.i152.i = icmp eq i32 %221, 3552816
  br i1 %cmp.i152.i, label %if.then.i.i, label %if.end3.i.i

if.then.i.i:                                      ; preds = %for.body.i
  br i1 %cmp.i, label %if.then.i.i.hns_dsaf_set_pfc_pause.exit.i_crit_edge, label %do.end.i.i

if.then.i.i.hns_dsaf_set_pfc_pause.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hns_dsaf_set_pfc_pause.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %222 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dsaf_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %223, ptr noundef nonnull @.str.135) #18
  br label %hns_dsaf_set_pfc_pause.exit.i

if.end3.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %224 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %io_base.i, align 4
  %add.i155.i = add nuw nsw i32 %mul.i150.i, 576
  %add.ptr.i.i.i156.i = getelementptr i8, ptr %225, i32 %add.i155.i
  %226 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i156.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %227 = and i32 %226, -33554433
  %228 = call i32 @llvm.bswap.i32(i32 %227) #15
  %or.i.i.i = or i32 %228, %shl.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %229 = call i32 @llvm.bswap.i32(i32 %or.i.i.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i156.i, i32 %229) #15, !srcloc !296
  %230 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i20.i.i = getelementptr i8, ptr %231, i32 %add.i155.i
  %232 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %233 = and i32 %232, -16777217
  %234 = call i32 @llvm.bswap.i32(i32 %233) #15
  %or.i23.i.i = or i32 %234, %conv48.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %235 = call i32 @llvm.bswap.i32(i32 %or.i23.i.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i20.i.i, i32 %235) #15, !srcloc !296
  br label %hns_dsaf_set_pfc_pause.exit.i

hns_dsaf_set_pfc_pause.exit.i:                    ; preds = %if.end3.i.i, %do.end.i.i, %if.then.i.i.hns_dsaf_set_pfc_pause.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0185.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %hns_dsaf_set_pfc_pause.exit.i.for.body54.i_crit_edge, label %hns_dsaf_set_pfc_pause.exit.i.for.body.i_crit_edge

hns_dsaf_set_pfc_pause.exit.i.for.body.i_crit_edge: ; preds = %hns_dsaf_set_pfc_pause.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

hns_dsaf_set_pfc_pause.exit.i.for.body54.i_crit_edge: ; preds = %hns_dsaf_set_pfc_pause.exit.i
  br label %for.body54.i

for.body54.i:                                     ; preds = %for.body54.i.for.body54.i_crit_edge, %hns_dsaf_set_pfc_pause.exit.i.for.body54.i_crit_edge
  %i.1186.i = phi i32 [ %inc56.i, %for.body54.i.for.body54.i_crit_edge ], [ 0, %hns_dsaf_set_pfc_pause.exit.i.for.body54.i_crit_edge ]
  %236 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %io_base.i, align 4
  %mul.i158.i = shl nuw nsw i32 %i.1186.i, 2
  %add.i159.i = add nuw nsw i32 %mul.i158.i, 352
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i.i160.i = getelementptr i8, ptr %237, i32 %add.i159.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i160.i, i32 -1) #15, !srcloc !296
  %238 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %io_base.i, align 4
  %add.i163.i = add nuw nsw i32 %mul.i158.i, 384
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i.i164.i = getelementptr i8, ptr %239, i32 %add.i163.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i164.i, i32 -1) #15, !srcloc !296
  %240 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %io_base.i, align 4
  %add.i167.i = add nuw nsw i32 %mul.i158.i, 416
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i.i168.i = getelementptr i8, ptr %241, i32 %add.i167.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i168.i, i32 -1) #15, !srcloc !296
  %242 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %io_base.i, align 4
  %add.i171.i = add nuw nsw i32 %mul.i158.i, 256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i.i172.i = getelementptr i8, ptr %243, i32 %add.i171.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i172.i, i32 -1) #15, !srcloc !296
  %244 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %io_base.i, align 4
  %add.i175.i = add nuw nsw i32 %mul.i158.i, 288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i.i176.i = getelementptr i8, ptr %245, i32 %add.i175.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i176.i, i32 -1) #15, !srcloc !296
  %246 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %io_base.i, align 4
  %add.i179.i = add nuw nsw i32 %mul.i158.i, 320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i.i180.i = getelementptr i8, ptr %247, i32 %add.i179.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i180.i, i32 -1) #15, !srcloc !296
  %inc56.i = add nuw nsw i32 %i.1186.i, 1
  %exitcond187.not.i = icmp eq i32 %inc56.i, 6
  br i1 %exitcond187.not.i, label %hns_dsaf_comm_init.exit, label %for.body54.i.for.body54.i_crit_edge

for.body54.i.for.body54.i_crit_edge:              ; preds = %for.body54.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body54.i

hns_dsaf_comm_init.exit:                          ; preds = %for.body54.i
  %248 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i.i182.i = getelementptr i8, ptr %249, i32 20488
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i182.i, i32 -1) #15, !srcloc !296
  %250 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i.i184.i = getelementptr i8, ptr %251, i32 20484
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i184.i, i32 -1) #15, !srcloc !296
  %252 = ptrtoint ptr %dsaf_tc_mode.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %dsaf_tc_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %cmp.i22 = icmp eq i32 %253, 0
  %..i = select i1 %cmp.i22, i32 409503368, i32 419088008
  %254 = ptrtoint ptr %dsaf_ver.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %dsaf_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %255)
  %cmp1.i = icmp eq i32 %255, 3552816
  br i1 %cmp1.i, label %hns_dsaf_comm_init.exit.for.body.i27_crit_edge, label %hns_dsaf_comm_init.exit.for.body7.i_crit_edge

hns_dsaf_comm_init.exit.for.body7.i_crit_edge:    ; preds = %hns_dsaf_comm_init.exit
  br label %for.body7.i

hns_dsaf_comm_init.exit.for.body.i27_crit_edge:   ; preds = %hns_dsaf_comm_init.exit
  br label %for.body.i27

for.body.i27:                                     ; preds = %for.body.i27.for.body.i27_crit_edge, %hns_dsaf_comm_init.exit.for.body.i27_crit_edge
  %i.074.i = phi i32 [ %inc.i26, %for.body.i27.for.body.i27_crit_edge ], [ 0, %hns_dsaf_comm_init.exit.for.body.i27_crit_edge ]
  %mul.i = shl nuw nsw i32 %i.074.i, 7
  %add.i = add nuw nsw i32 %mul.i, 4120
  %256 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %io_base.i, align 4
  %rem.lhs.trunc.i = trunc i32 %i.074.i to i8
  %rem71.i = urem i8 %rem.lhs.trunc.i, 6
  %rem.zext.i = zext i8 %rem71.i to i32
  %add.ptr.i.i.i25 = getelementptr i8, ptr %257, i32 %add.i
  %258 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i25) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %259 = and i32 %258, -117440513
  %260 = call i32 @llvm.bswap.i32(i32 %259) #15
  %or.i.i = or i32 %260, %rem.zext.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %261 = call i32 @llvm.bswap.i32(i32 %or.i.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i25, i32 %261) #15, !srcloc !296
  %inc.i26 = add nuw nsw i32 %i.074.i, 1
  %exitcond77.not.i = icmp eq i32 %inc.i26, 18
  br i1 %exitcond77.not.i, label %for.body.i27.if.end19.i_crit_edge, label %for.body.i27.for.body.i27_crit_edge

for.body.i27.for.body.i27_crit_edge:              ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i27

for.body.i27.if.end19.i_crit_edge:                ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %hns_dsaf_comm_init.exit.for.body7.i_crit_edge
  %i.173.i = phi i32 [ %inc17.i, %for.body7.i.for.body7.i_crit_edge ], [ 0, %hns_dsaf_comm_init.exit.for.body7.i_crit_edge ]
  %mul8.i = shl nuw nsw i32 %i.173.i, 7
  %add9.i = add nuw nsw i32 %mul8.i, 4120
  %262 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i54.i = getelementptr i8, ptr %263, i32 %add9.i
  %264 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i54.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %265 = and i32 %264, -117440513
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54.i, i32 %265) #15, !srcloc !296
  %266 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i56.i = getelementptr i8, ptr %267, i32 %add9.i
  %268 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i56.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %269 = and i32 %268, -939524097
  %270 = or i32 %269, 134217728
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i56.i, i32 %270) #15, !srcloc !296
  %271 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i59.i = getelementptr i8, ptr %272, i32 %add9.i
  %273 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i59.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %274 = and i32 %273, 1073676287
  %275 = or i32 %274, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i59.i, i32 %275) #15, !srcloc !296
  %276 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i62.i = getelementptr i8, ptr %277, i32 %add9.i
  %278 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i62.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %279 = and i32 %278, -917505
  %280 = or i32 %279, 393216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i62.i, i32 %280) #15, !srcloc !296
  %281 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i65.i = getelementptr i8, ptr %282, i32 %add9.i
  %283 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i65.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %284 = and i32 %283, -7340033
  %285 = or i32 %284, 4194304
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i65.i, i32 %285) #15, !srcloc !296
  %286 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i68.i = getelementptr i8, ptr %287, i32 %add9.i
  %288 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %289 = and i32 %288, -8389377
  %290 = or i32 %289, 8389120
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i68.i, i32 %290) #15, !srcloc !296
  %inc17.i = add nuw nsw i32 %i.173.i, 1
  %exitcond.not.i28 = icmp eq i32 %inc17.i, 3
  br i1 %exitcond.not.i28, label %for.body7.i.if.end19.i_crit_edge, label %for.body7.i.for.body7.i_crit_edge

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body7.i

for.body7.i.if.end19.i_crit_edge:                 ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

if.end19.i:                                       ; preds = %for.body7.i.if.end19.i_crit_edge, %for.body.i27.if.end19.i_crit_edge
  %291 = call i32 @llvm.bswap.i32(i32 %..i) #15
  br label %for.body22.i

for.body22.i:                                     ; preds = %for.body22.i.for.body22.i_crit_edge, %if.end19.i
  %i.275.i = phi i32 [ 0, %if.end19.i ], [ %inc27.i, %for.body22.i.for.body22.i_crit_edge ]
  %mul23.i = shl nuw nsw i32 %i.275.i, 7
  %add24.i = add nuw nsw i32 %mul23.i, 4124
  %292 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i.i29 = getelementptr i8, ptr %293, i32 %add24.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i29, i32 %291) #15, !srcloc !296
  %inc27.i = add nuw nsw i32 %i.275.i, 1
  %exitcond78.not.i = icmp eq i32 %inc27.i, 18
  br i1 %exitcond78.not.i, label %hns_dsaf_inode_init.exit, label %for.body22.i.for.body22.i_crit_edge

for.body22.i.for.body22.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body22.i

hns_dsaf_inode_init.exit:                         ; preds = %for.body22.i
  %294 = ptrtoint ptr %dsaf_ver.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %dsaf_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %295)
  %cmp.i31 = icmp eq i32 %295, 3552816
  br i1 %cmp.i31, label %hns_dsaf_inode_init.exit.for.body.i.i_crit_edge, label %hns_dsaf_inode_init.exit.for.body.i54.i_crit_edge

hns_dsaf_inode_init.exit.for.body.i54.i_crit_edge: ; preds = %hns_dsaf_inode_init.exit
  br label %for.body.i54.i

hns_dsaf_inode_init.exit.for.body.i.i_crit_edge:  ; preds = %hns_dsaf_inode_init.exit
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %hns_dsaf_inode_init.exit.for.body.i.i_crit_edge
  %i.0262.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %hns_dsaf_inode_init.exit.for.body.i.i_crit_edge ]
  %mul.i.i32 = shl nuw nsw i32 %i.0262.i.i, 7
  %add.i.i33 = add nuw nsw i32 %mul.i.i32, 8196
  %296 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i34 = getelementptr i8, ptr %297, i32 %add.i.i33
  %298 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i34) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %299 = and i32 %298, 128
  %300 = or i32 %299, 32
  %301 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i249.i.i = getelementptr i8, ptr %302, i32 %add.i.i33
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i249.i.i, i32 %300) #15, !srcloc !296
  %add24.i.i = add nuw nsw i32 %mul.i.i32, 8200
  %303 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i250.i.i = getelementptr i8, ptr %304, i32 %add24.i.i
  %305 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i250.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %306 = and i32 %305, 61695
  %307 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i251.i.i = getelementptr i8, ptr %308, i32 %add24.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i251.i.i, i32 %306) #15, !srcloc !296
  %add47.i.i = add nuw nsw i32 %mul.i.i32, 8204
  %309 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i252.i.i = getelementptr i8, ptr %310, i32 %add47.i.i
  %311 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i252.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %312 = and i32 %311, 61695
  %313 = or i32 %312, 1744830976
  %314 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i253.i.i = getelementptr i8, ptr %315, i32 %add47.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i253.i.i, i32 %313) #15, !srcloc !296
  %add70.i.i = add nuw nsw i32 %mul.i.i32, 8296
  %316 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i254.i.i = getelementptr i8, ptr %317, i32 %add70.i.i
  %318 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i254.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %319 = and i32 %318, 61695
  %320 = or i32 %319, 1853882880
  %321 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i255.i.i = getelementptr i8, ptr %322, i32 %add70.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i255.i.i, i32 %320) #15, !srcloc !296
  %add93.i.i = add nuw nsw i32 %mul.i.i32, 8300
  %323 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i256.i.i = getelementptr i8, ptr %324, i32 %add93.i.i
  %325 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i256.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %326 = and i32 %325, 61695
  %327 = or i32 %326, -2147482880
  %328 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i257.i.i = getelementptr i8, ptr %329, i32 %add93.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i257.i.i, i32 %327) #15, !srcloc !296
  %inc.i.i = add nuw nsw i32 %i.0262.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 6
  br i1 %exitcond.not.i.i, label %hns_dsaf_sbm_bp_wl_cfg.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

hns_dsaf_sbm_bp_wl_cfg.exit.i:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %330 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i258.i.i = getelementptr i8, ptr %331, i32 8972
  %332 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i258.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %333 = and i32 %332, 61695
  %334 = or i32 %333, 170917888
  %335 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i259.i.i = getelementptr i8, ptr %336, i32 8972
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i259.i.i, i32 %334) #15, !srcloc !296
  %337 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i258.1.i.i = getelementptr i8, ptr %338, i32 9100
  %339 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i258.1.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %340 = and i32 %339, 61695
  %341 = or i32 %340, 170917888
  %342 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i259.1.i.i = getelementptr i8, ptr %343, i32 9100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i259.1.i.i, i32 %341) #15, !srcloc !296
  %344 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i258.2.i.i = getelementptr i8, ptr %345, i32 9228
  %346 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i258.2.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %347 = and i32 %346, 61695
  %348 = or i32 %347, 170917888
  %349 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i259.2.i.i = getelementptr i8, ptr %350, i32 9228
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i259.2.i.i, i32 %348) #15, !srcloc !296
  %351 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i258.3.i.i = getelementptr i8, ptr %352, i32 9356
  %353 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i258.3.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %354 = and i32 %353, 61695
  %355 = or i32 %354, 170917888
  %356 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i259.3.i.i = getelementptr i8, ptr %357, i32 9356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i259.3.i.i, i32 %355) #15, !srcloc !296
  %358 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i258.4.i.i = getelementptr i8, ptr %359, i32 9484
  %360 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i258.4.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %361 = and i32 %360, 61695
  %362 = or i32 %361, 170917888
  %363 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i259.4.i.i = getelementptr i8, ptr %364, i32 9484
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i259.4.i.i, i32 %362) #15, !srcloc !296
  %365 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i258.5.i.i = getelementptr i8, ptr %366, i32 9612
  %367 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i258.5.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %368 = and i32 %367, 61695
  %369 = or i32 %368, 170917888
  %370 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i259.5.i.i = getelementptr i8, ptr %371, i32 9612
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i259.5.i.i, i32 %369) #15, !srcloc !296
  %372 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i260.i.i = getelementptr i8, ptr %373, i32 9740
  %374 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i260.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %375 = and i32 %374, 61695
  %376 = or i32 %375, 34603008
  %377 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i261.i.i = getelementptr i8, ptr %378, i32 9740
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i261.i.i, i32 %376) #15, !srcloc !296
  %379 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i260.1.i.i = getelementptr i8, ptr %380, i32 9868
  %381 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i260.1.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %382 = and i32 %381, 61695
  %383 = or i32 %382, 34603008
  %384 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i261.1.i.i = getelementptr i8, ptr %385, i32 9868
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i261.1.i.i, i32 %383) #15, !srcloc !296
  %386 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i260.2.i.i = getelementptr i8, ptr %387, i32 9996
  %388 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i260.2.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %389 = and i32 %388, 61695
  %390 = or i32 %389, 34603008
  %391 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i261.2.i.i = getelementptr i8, ptr %392, i32 9996
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i261.2.i.i, i32 %390) #15, !srcloc !296
  %393 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i260.3.i.i = getelementptr i8, ptr %394, i32 10124
  %395 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i260.3.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %396 = and i32 %395, 61695
  %397 = or i32 %396, 34603008
  %398 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i261.3.i.i = getelementptr i8, ptr %399, i32 10124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i261.3.i.i, i32 %397) #15, !srcloc !296
  %400 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i260.4.i.i = getelementptr i8, ptr %401, i32 10252
  %402 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i260.4.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %403 = and i32 %402, 61695
  %404 = or i32 %403, 34603008
  %405 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i261.4.i.i = getelementptr i8, ptr %406, i32 10252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i261.4.i.i, i32 %404) #15, !srcloc !296
  %407 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i260.5.i.i = getelementptr i8, ptr %408, i32 10380
  %409 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i260.5.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %410 = and i32 %409, 61695
  %411 = or i32 %410, 34603008
  %412 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i261.5.i.i = getelementptr i8, ptr %413, i32 10380
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i261.5.i.i, i32 %411) #15, !srcloc !296
  br label %if.end.i

for.body.i54.i:                                   ; preds = %for.body.i54.i.for.body.i54.i_crit_edge, %hns_dsaf_inode_init.exit.for.body.i54.i_crit_edge
  %i.0273.i.i = phi i32 [ %inc.i52.i, %for.body.i54.i.for.body.i54.i_crit_edge ], [ 0, %hns_dsaf_inode_init.exit.for.body.i54.i_crit_edge ]
  %mul.i43.i = shl nuw nsw i32 %i.0273.i.i, 7
  %add.i44.i = add nuw nsw i32 %mul.i43.i, 8196
  %414 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i45.i = getelementptr i8, ptr %415, i32 %add.i44.i
  %416 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %417 = and i32 %416, 240
  %418 = or i32 %417, 4
  %419 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i260.i46.i = getelementptr i8, ptr %420, i32 %add.i44.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i260.i46.i, i32 %418) #15, !srcloc !296
  %add24.i47.i = add nuw nsw i32 %mul.i43.i, 8200
  %421 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i261.i48.i = getelementptr i8, ptr %422, i32 %add24.i47.i
  %423 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i261.i48.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %424 = and i32 %423, 64767
  %425 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i262.i.i = getelementptr i8, ptr %426, i32 %add24.i47.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i262.i.i, i32 %424) #15, !srcloc !296
  %add47.i49.i = add nuw nsw i32 %mul.i43.i, 8204
  %427 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i263.i.i = getelementptr i8, ptr %428, i32 %add47.i49.i
  %429 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i263.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %430 = and i32 %429, 64767
  %431 = or i32 %430, 1744830720
  %432 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i264.i.i = getelementptr i8, ptr %433, i32 %add47.i49.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i264.i.i, i32 %431) #15, !srcloc !296
  %add70.i50.i = add nuw nsw i32 %mul.i43.i, 8296
  %434 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i265.i.i = getelementptr i8, ptr %435, i32 %add70.i50.i
  %436 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i265.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %437 = and i32 %436, 64767
  %438 = or i32 %437, 937164800
  %439 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i266.i.i = getelementptr i8, ptr %440, i32 %add70.i50.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i266.i.i, i32 %438) #15, !srcloc !296
  %add93.i51.i = add nuw nsw i32 %mul.i43.i, 8300
  %441 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i267.i.i = getelementptr i8, ptr %442, i32 %add93.i51.i
  %443 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i267.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %444 = and i32 %443, 64767
  %445 = or i32 %444, -2139094784
  %446 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i268.i.i = getelementptr i8, ptr %447, i32 %add93.i51.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i268.i.i, i32 %445) #15, !srcloc !296
  %inc.i52.i = add nuw nsw i32 %i.0273.i.i, 1
  %exitcond.not.i53.i = icmp eq i32 %inc.i52.i, 6
  br i1 %exitcond.not.i53.i, label %hns_dsafv2_sbm_bp_wl_cfg.exit.i, label %for.body.i54.i.for.body.i54.i_crit_edge

for.body.i54.i.for.body.i54.i_crit_edge:          ; preds = %for.body.i54.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i54.i

hns_dsafv2_sbm_bp_wl_cfg.exit.i:                  ; preds = %for.body.i54.i
  call void @__sanitizer_cov_trace_pc() #17
  %448 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i269.i.i = getelementptr i8, ptr %449, i32 8972
  %450 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i269.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %451 = and i32 %450, 64767
  %452 = or i32 %451, -1035992320
  %453 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i270.i.i = getelementptr i8, ptr %454, i32 8972
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i270.i.i, i32 %452) #15, !srcloc !296
  %455 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i271.i.i = getelementptr i8, ptr %456, i32 9100
  %457 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i271.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %458 = and i32 %457, 65535
  %459 = or i32 %458, 33816576
  %460 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i272.i.i = getelementptr i8, ptr %461, i32 9100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i272.i.i, i32 %459) #15, !srcloc !296
  br label %if.end.i

if.end.i:                                         ; preds = %hns_dsafv2_sbm_bp_wl_cfg.exit.i, %hns_dsaf_sbm_bp_wl_cfg.exit.i
  %finish_msk.0.i = phi i32 [ 255, %hns_dsaf_sbm_bp_wl_cfg.exit.i ], [ 1023, %hns_dsafv2_sbm_bp_wl_cfg.exit.i ]
  br label %for.body.i60.i

for.body.i60.i:                                   ; preds = %for.body.i60.i.for.body.i60.i_crit_edge, %if.end.i
  %i.029.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i59.i, %for.body.i60.i.for.body.i60.i_crit_edge ]
  %462 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %io_base.i, align 4
  %mul.i56.i = shl i32 %i.029.i.i, 7
  %add.i57.i = add nuw nsw i32 %mul.i56.i, 8192
  %add.ptr.i.i58.i = getelementptr i8, ptr %463, i32 %add.i57.i
  %464 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i58.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %465 = and i32 %464, -50331649
  %466 = or i32 %465, 33554432
  %467 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i26.i.i = getelementptr i8, ptr %468, i32 %add.i57.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i.i, i32 %466) #15, !srcloc !296
  %inc.i59.i = add nuw nsw i32 %i.029.i.i, 1
  %469 = ptrtoint ptr %dsaf_ver.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %dsaf_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %470)
  %cmp.i.i35 = icmp eq i32 %470, 3552816
  %cond.i.i = select i1 %cmp.i.i35, i32 18, i32 8
  %cmp1.i.i = icmp ult i32 %inc.i59.i, %cond.i.i
  br i1 %cmp1.i.i, label %for.body.i60.i.for.body.i60.i_crit_edge, label %for.body.i60.i.for.body.i69.i_crit_edge

for.body.i60.i.for.body.i69.i_crit_edge:          ; preds = %for.body.i60.i
  br label %for.body.i69.i

for.body.i60.i.for.body.i60.i_crit_edge:          ; preds = %for.body.i60.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i60.i

for.body.i69.i:                                   ; preds = %for.body.i69.i.for.body.i69.i_crit_edge, %for.body.i60.i.for.body.i69.i_crit_edge
  %i.063.i.i = phi i32 [ %inc.i65.i, %for.body.i69.i.for.body.i69.i_crit_edge ], [ 0, %for.body.i60.i.for.body.i69.i_crit_edge ]
  %mul.i63.i = shl i32 %i.063.i.i, 7
  %add.i64.i = add nuw nsw i32 %mul.i63.i, 8192
  %471 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i.i36 = getelementptr i8, ptr %472, i32 %add.i64.i
  %473 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i36) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %474 = and i32 %473, -67108865
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i36, i32 %474) #15, !srcloc !296
  %inc.i65.i = add nuw nsw i32 %i.063.i.i, 1
  %475 = ptrtoint ptr %dsaf_ver.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %dsaf_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %476)
  %cmp.i66.i = icmp eq i32 %476, 3552816
  %cond.i67.i = select i1 %cmp.i66.i, i32 18, i32 8
  %cmp1.i68.i = icmp ult i32 %inc.i65.i, %cond.i67.i
  br i1 %cmp1.i68.i, label %for.body.i69.i.for.body.i69.i_crit_edge, label %for.body.i69.i.for.body7.i.i_crit_edge

for.body.i69.i.for.body7.i.i_crit_edge:           ; preds = %for.body.i69.i
  br label %for.body7.i.i

for.body.i69.i.for.body.i69.i_crit_edge:          ; preds = %for.body.i69.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i69.i

for.body7.i.i:                                    ; preds = %for.body7.i.i.for.body7.i.i_crit_edge, %for.body.i69.i.for.body7.i.i_crit_edge
  %i.166.i.i = phi i32 [ %inc12.i.i, %for.body7.i.i.for.body7.i.i_crit_edge ], [ 0, %for.body.i69.i.for.body7.i.i_crit_edge ]
  %mul8.i.i = shl i32 %i.166.i.i, 7
  %add9.i.i = add nuw nsw i32 %mul8.i.i, 8192
  %477 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i56.i.i = getelementptr i8, ptr %478, i32 %add9.i.i
  %479 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i56.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %480 = or i32 %479, 67108864
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i56.i.i, i32 %480) #15, !srcloc !296
  %inc12.i.i = add nuw nsw i32 %i.166.i.i, 1
  %481 = ptrtoint ptr %dsaf_ver.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %dsaf_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %482)
  %cmp4.i.i = icmp eq i32 %482, 3552816
  %cond5.i.i = select i1 %cmp4.i.i, i32 18, i32 8
  %cmp6.i.i = icmp ult i32 %inc12.i.i, %cond5.i.i
  br i1 %cmp6.i.i, label %for.body7.i.i.for.body7.i.i_crit_edge, label %for.body7.i.i.for.body19.i.i_crit_edge

for.body7.i.i.for.body19.i.i_crit_edge:           ; preds = %for.body7.i.i
  br label %for.body19.i.i

for.body7.i.i.for.body7.i.i_crit_edge:            ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body7.i.i

for.body19.i.i:                                   ; preds = %for.inc30.i.i.for.body19.i.i_crit_edge, %for.body7.i.i.for.body19.i.i_crit_edge
  %i.269.i.i = phi i32 [ %inc31.i.i, %for.inc30.i.i.for.body19.i.i_crit_edge ], [ 0, %for.body7.i.i.for.body19.i.i_crit_edge ]
  %mul20.i.i = shl i32 %i.269.i.i, 7
  %add21.i.i = add nuw nsw i32 %mul20.i.i, 8192
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %for.body19.i.i
  %read_cnt.0.i.i = phi i32 [ 0, %for.body19.i.i ], [ %inc23.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %483 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %483(i32 noundef 214748) #15
  %484 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i58.i.i = getelementptr i8, ptr %485, i32 %add21.i.i
  %486 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i58.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %487 = and i32 %486, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %487)
  %cmp24.i.i = icmp eq i32 %487, 0
  %inc23.i.i = add nuw nsw i32 %read_cnt.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %read_cnt.0.i.i)
  %cmp25.i.i = icmp ult i32 %read_cnt.0.i.i, 29
  %or.cond.i.i = select i1 %cmp24.i.i, i1 %cmp25.i.i, i1 false
  br i1 %or.cond.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.end.i.i37

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i

do.end.i.i37:                                     ; preds = %do.body.i.i
  br i1 %cmp24.i.i, label %do.end.i, label %for.inc30.i.i

for.inc30.i.i:                                    ; preds = %do.end.i.i37
  %inc31.i.i = add nuw nsw i32 %i.269.i.i, 1
  %488 = ptrtoint ptr %dsaf_ver.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %dsaf_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %489)
  %cmp16.i.i = icmp eq i32 %489, 3552816
  %cond17.i.i = select i1 %cmp16.i.i, i32 18, i32 8
  %cmp18.i.i = icmp ult i32 %inc31.i.i, %cond17.i.i
  br i1 %cmp18.i.i, label %for.inc30.i.i.for.body19.i.i_crit_edge, label %if.end2.i

for.inc30.i.i.for.body19.i.i_crit_edge:           ; preds = %for.inc30.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body19.i.i

do.end.i:                                         ; preds = %do.end.i.i37
  call void @__sanitizer_cov_trace_pc() #17
  %490 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %dsaf_dev, align 8
  %name.i.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %491, ptr noundef nonnull @.str.142, ptr noundef %name.i.i, i32 noundef %i.269.i.i) #18
  %492 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %dsaf_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %493, ptr noundef nonnull @.str.137, ptr noundef %name.i.i, i32 noundef -19) #18
  br label %cleanup

if.end2.i:                                        ; preds = %for.inc30.i.i
  %494 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i71.i = getelementptr i8, ptr %495, i32 4
  %496 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i71.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %497 = or i32 %496, 134217728
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i71.i, i32 %497) #15, !srcloc !296
  br label %do.body3.i

do.body3.i:                                       ; preds = %do.body3.i.do.body3.i_crit_edge, %if.end2.i
  %cnt.0.i = phi i32 [ 0, %if.end2.i ], [ %inc.i38, %do.body3.i.do.body3.i_crit_edge ]
  call void @usleep_range_state(i32 noundef 200, i32 noundef 210, i32 noundef 2) #15
  %498 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %io_base.i, align 4
  %500 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %499) #15, !srcloc !293
  %501 = call i32 @llvm.bswap.i32(i32 %500) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %and.i.i = and i32 %501, %finish_msk.0.i
  %inc.i38 = add nuw nsw i32 %cnt.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %finish_msk.0.i)
  %cmp6.not.i = icmp eq i32 %and.i.i, %finish_msk.0.i
  %cmp6.not.not.i = xor i1 %cmp6.not.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %cnt.0.i)
  %cmp7.i = icmp ult i32 %cnt.0.i, 29
  %or.cond.i = select i1 %cmp6.not.not.i, i1 %cmp7.i, i1 false
  br i1 %or.cond.i, label %do.body3.i.do.body3.i_crit_edge, label %do.end8.i

do.body3.i.do.body3.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body3.i

do.end8.i:                                        ; preds = %do.body3.i
  br i1 %cmp6.not.i, label %if.end19.i39, label %do.end14.i

do.end14.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  %502 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %dsaf_dev, align 8
  %name17.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 1, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %503, ptr noundef nonnull @.str.140, ptr noundef %name17.i, i32 noundef %and.i.i, i32 noundef %inc.i38) #18
  br label %cleanup

if.end19.i39:                                     ; preds = %do.end8.i
  %504 = ptrtoint ptr %dsaf_ver.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %dsaf_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %505)
  %cmp.i73.i = icmp eq i32 %505, 3552816
  br i1 %cmp.i73.i, label %if.then.i.i40, label %if.end19.i39.if.end9_crit_edge

if.end19.i39.if.end9_crit_edge:                   ; preds = %if.end19.i39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then.i.i40:                                    ; preds = %if.end19.i39
  call void @__sanitizer_cov_trace_pc() #17
  %506 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i75.i = getelementptr i8, ptr %507, i32 24768
  %508 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i75.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %509 = or i32 %508, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i75.i, i32 %509) #15, !srcloc !296
  br label %if.end9

if.end9:                                          ; preds = %if.then.i.i40, %if.end19.i39.if.end9_crit_edge
  %510 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i43 = getelementptr i8, ptr %511, i32 20652
  %512 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i43) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %513 = or i32 %512, 251658240
  %514 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i41.i.i = getelementptr i8, ptr %515, i32 20652
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i.i, i32 %513) #15, !srcloc !296
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tcam_data.i.i) #15
  %516 = ptrtoint ptr %tcam_data.i.i to i32
  call void @__asan_store8_noabort(i32 %516)
  store i64 0, ptr %tcam_data.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tcam_ucast.i.i) #15
  %517 = call ptr @memset(ptr %tcam_ucast.i.i, i32 0, i32 20)
  br label %for.body.i.i46

for.body.i.i46:                                   ; preds = %for.body.i.i46.for.body.i.i46_crit_edge, %if.end9
  %i.04.i.i = phi i32 [ 0, %if.end9 ], [ %inc.i.i44, %for.body.i.i46.for.body.i.i46_crit_edge ]
  call fastcc void @hns_dsaf_tcam_uc_cfg(ptr noundef %dsaf_dev, i32 noundef %i.04.i.i, ptr noundef nonnull %tcam_data.i.i, ptr noundef nonnull %tcam_ucast.i.i) #15
  %inc.i.i44 = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i45 = icmp eq i32 %inc.i.i44, 512
  br i1 %exitcond.not.i.i45, label %hns_dsaf_tbl_tcam_init.exit.i, label %for.body.i.i46.for.body.i.i46_crit_edge

for.body.i.i46.for.body.i.i46_crit_edge:          ; preds = %for.body.i.i46
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i46

hns_dsaf_tbl_tcam_init.exit.i:                    ; preds = %for.body.i.i46
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tcam_ucast.i.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tcam_data.i.i) #15
  %tcam_lock.i.i.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 23
  br label %for.body.i5.i

for.body.i5.i:                                    ; preds = %for.body.i5.i.for.body.i5.i_crit_edge, %hns_dsaf_tbl_tcam_init.exit.i
  %i.03.i.i = phi i32 [ 0, %hns_dsaf_tbl_tcam_init.exit.i ], [ %inc.i3.i, %for.body.i5.i.for.body.i5.i_crit_edge ]
  call void @_raw_spin_lock_bh(ptr noundef %tcam_lock.i.i.i) #15
  %518 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %519, i32 20496
  %520 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %521 = and i32 %520, 8454143
  %522 = call i32 @llvm.bswap.i32(i32 %521) #15
  %or.i.i.i.i.i = or i32 %522, %i.03.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %523 = call i32 @llvm.bswap.i32(i32 %or.i.i.i.i.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i.i, i32 %523) #15, !srcloc !296
  %524 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %525, i32 20532
  %526 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %527 = and i32 %526, 16580607
  %528 = or i32 %527, 131072
  %529 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %add.ptr.i43.i.i.i.i = getelementptr i8, ptr %530, i32 20532
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i.i.i.i, i32 %528) #15, !srcloc !296
  %531 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i8.i.i.i = getelementptr i8, ptr %532, i32 20640
  %533 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8.i.i.i) #15, !srcloc !293
  %534 = call i32 @llvm.bswap.i32(i32 %533) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  %535 = or i32 %534, 16
  %536 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %538 = call i32 @llvm.bswap.i32(i32 %535) #15
  %add.ptr.i22.i.i.i.i = getelementptr i8, ptr %537, i32 20640
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i.i.i, i32 %538) #15, !srcloc !296
  %539 = and i32 %534, -17
  %540 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %542 = call i32 @llvm.bswap.i32(i32 %539) #15
  %add.ptr.i23.i.i.i.i = getelementptr i8, ptr %541, i32 20640
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i.i.i.i, i32 %542) #15, !srcloc !296
  call void @_raw_spin_unlock_bh(ptr noundef %tcam_lock.i.i.i) #15
  %inc.i3.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i4.i = icmp eq i32 %inc.i3.i, 28672
  br i1 %exitcond.not.i4.i, label %for.body.i5.i.for.body.i.i54_crit_edge, label %for.body.i5.i.for.body.i5.i_crit_edge

for.body.i5.i.for.body.i5.i_crit_edge:            ; preds = %for.body.i5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i5.i

for.body.i5.i.for.body.i.i54_crit_edge:           ; preds = %for.body.i5.i
  br label %for.body.i.i54

for.body.i.i54:                                   ; preds = %for.body.i.i54.for.body.i.i54_crit_edge, %for.body.i5.i.for.body.i.i54_crit_edge
  %i.049.i.i = phi i32 [ %inc.i.i52, %for.body.i.i54.for.body.i.i54_crit_edge ], [ 0, %for.body.i5.i.for.body.i.i54_crit_edge ]
  %543 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %io_base.i, align 4
  %mul.i.i48 = shl nuw nsw i32 %i.049.i.i, 6
  %add.i.i49 = add nuw nsw i32 %mul.i.i48, 16436
  %add.ptr.i.i.i50 = getelementptr i8, ptr %544, i32 %add.i.i49
  %545 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i50) #15, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.049.i.i)
  %cmp1.i.i51 = icmp ult i32 %i.049.i.i, 6
  %546 = and i32 %545, 61695
  %547 = call i32 @llvm.bswap.i32(i32 %546) #15
  %voq_bp_all_thrd.0.v.i.i = select i1 %cmp1.i.i51, i32 973730, i32 235740
  %voq_bp_all_thrd.0.i.i = or i32 %547, %voq_bp_all_thrd.0.v.i.i
  %548 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %550 = call i32 @llvm.bswap.i32(i32 %voq_bp_all_thrd.0.i.i) #15
  %add.ptr.i48.i.i = getelementptr i8, ptr %549, i32 %add.i.i49
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i.i, i32 %550) #15, !srcloc !296
  %inc.i.i52 = add nuw nsw i32 %i.049.i.i, 1
  %exitcond.not.i.i53 = icmp eq i32 %inc.i.i52, 18
  br i1 %exitcond.not.i.i53, label %for.body.i.i54.cleanup_crit_edge, label %for.body.i.i54.for.body.i.i54_crit_edge

for.body.i.i54.for.body.i.i54_crit_edge:          ; preds = %for.body.i.i54
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i54

for.body.i.i54.cleanup_crit_edge:                 ; preds = %for.body.i.i54
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.i54.cleanup_crit_edge, %do.end14.i, %do.end.i
  %retval.0 = phi i32 [ -19, %do.end.i ], [ -19, %do.end14.i ], [ 0, %for.body.i.i54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_rcb_get_queue_mode(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_dsaf_ae_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 138)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 138)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !37, !38, !39, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !89, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !113, !115, !117, !119, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !168, !169, !170, !172, !174, !175, !176, !177, !179, !181, !182, !183, !184, !186, !188, !189, !190, !192, !193, !194, !196, !198, !199, !200, !202, !203, !204, !206, !208, !209, !210, !212, !214, !215, !216, !218, !220, !221, !222, !224, !226, !227, !229, !231, !232, !233, !235, !236, !237, !239, !240, !242, !243, !244, !246, !248, !250, !252, !254, !256, !257, !259, !260, !261, !263, !264, !265, !266, !268, !269, !270, !271, !273, !274, !275, !277, !278, !279, !280, !282}
!llvm.module.flags = !{!284, !285, !286, !287, !288, !289, !290, !291}
!llvm.ident = !{!292}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1193, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hns_dsaf_set_rx_mac_pause_en._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hns_dsaf_set_rx_mac_pause_en._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1628, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hns_dsaf_set_mac_uc_entry._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @hns_dsaf_set_mac_uc_entry._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1644, i32 4}
!15 = !{ptr @hns_dsaf_set_mac_uc_entry._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @hns_dsaf_set_mac_uc_entry._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1652, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hns_dsaf_set_mac_uc_entry.__UNIQUE_ID_ddebug354, !18, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1688, i32 3}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @hns_dsaf_rm_mac_addr._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @hns_dsaf_rm_mac_addr._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1700, i32 3}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @hns_dsaf_rm_mac_addr._entry.14, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @hns_dsaf_rm_mac_addr._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1707, i32 2}
!33 = !{ptr @hns_dsaf_rm_mac_addr.__UNIQUE_ID_ddebug355, !32, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1767, i32 3}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @hns_dsaf_add_mac_mc_port._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @hns_dsaf_add_mac_mc_port._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @hns_dsaf_add_mac_mc_port._entry.21, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1804, i32 4}
!41 = !{ptr @hns_dsaf_add_mac_mc_port._entry_ptr.22, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1823, i32 3}
!44 = !{ptr @hns_dsaf_add_mac_mc_port._entry.23, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @hns_dsaf_add_mac_mc_port._entry_ptr.25, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @hns_dsaf_add_mac_mc_port.__UNIQUE_ID_ddebug356, !47, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1833, i32 2}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1872, i32 3}
!50 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @hns_dsaf_del_mac_entry._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @hns_dsaf_del_mac_entry._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1884, i32 3}
!55 = !{ptr @hns_dsaf_del_mac_entry._entry.28, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @hns_dsaf_del_mac_entry._entry_ptr.30, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1890, i32 2}
!59 = !{ptr @hns_dsaf_del_mac_entry.__UNIQUE_ID_ddebug357, !58, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1928, i32 3}
!62 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @hns_dsaf_del_mac_mc_port._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @hns_dsaf_del_mac_mc_port._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1935, i32 3}
!67 = !{ptr @hns_dsaf_del_mac_mc_port._entry.34, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @hns_dsaf_del_mac_mc_port._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1968, i32 3}
!71 = !{ptr @hns_dsaf_del_mac_mc_port._entry.37, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @hns_dsaf_del_mac_mc_port._entry_ptr.39, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1975, i32 2}
!75 = !{ptr @hns_dsaf_del_mac_mc_port.__UNIQUE_ID_ddebug358, !74, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!76 = !{ptr @hns_dsaf_del_mac_mc_port._entry.41, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1990, i32 3}
!78 = !{ptr @hns_dsaf_del_mac_mc_port._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2943, i32 3}
!81 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @hns_dsaf_wait_pkt_clean._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @hns_dsaf_wait_pkt_clean._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @__initcall__kmod_hns_dsaf__359_3044_g_dsaf_driver_init6, !85, !"__initcall__kmod_hns_dsaf__359_3044_g_dsaf_driver_init6", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 3044, i32 1}
!86 = !{ptr @__exitcall_g_dsaf_driver_exit, !85, !"__exitcall_g_dsaf_driver_exit", i1 false, i1 false}
!87 = distinct !{null, !88, !"port_map", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 3060, i32 19}
!89 = distinct !{null, !90, !"sl_map", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 3070, i32 19}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 3087, i32 3}
!93 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @hns_dsaf_roce_reset._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @hns_dsaf_roce_reset._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 3093, i32 3}
!98 = !{ptr @hns_dsaf_roce_reset._entry.47, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @hns_dsaf_roce_reset._entry_ptr.49, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 3100, i32 3}
!102 = !{ptr @hns_dsaf_roce_reset._entry.50, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @hns_dsaf_roce_reset._entry_ptr.52, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 3107, i32 3}
!106 = !{ptr @hns_dsaf_roce_reset._entry.53, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @hns_dsaf_roce_reset._entry_ptr.55, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @__ksymtab_hns_dsaf_roce_reset, !109, !"__ksymtab_hns_dsaf_roce_reset", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 3153, i32 1}
!110 = !{ptr @__UNIQUE_ID_file360, !111, !"__UNIQUE_ID_file360", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 3155, i32 1}
!112 = !{ptr @__UNIQUE_ID_license361, !111, !"__UNIQUE_ID_license361", i1 false, i1 false}
!113 = !{ptr @__UNIQUE_ID_author362, !114, !"__UNIQUE_ID_author362", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 3156, i32 1}
!115 = !{ptr @__UNIQUE_ID_description363, !116, !"__UNIQUE_ID_description363", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 3157, i32 1}
!117 = !{ptr @__UNIQUE_ID_version364, !118, !"__UNIQUE_ID_version364", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 3158, i32 1}
!119 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @__modver_attr, !118, !"__modver_attr", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2600, i32 34}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2602, i32 34}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2604, i32 34}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2606, i32 34}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2608, i32 34}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2610, i32 34}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2612, i32 34}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2614, i32 34}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2616, i32 34}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2618, i32 34}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2620, i32 34}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2622, i32 34}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2624, i32 34}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2629, i32 23}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2632, i32 23}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2638, i32 34}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2788, i32 3}
!156 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @set_promisc_tcam_enable._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @set_promisc_tcam_enable._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2814, i32 3}
!161 = !{ptr @set_promisc_tcam_enable._entry.76, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @set_promisc_tcam_enable._entry_ptr.78, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @set_promisc_tcam_enable._entry.79, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2832, i32 3}
!165 = !{ptr @set_promisc_tcam_enable._entry_ptr.80, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2843, i32 3}
!168 = !{ptr @set_promisc_tcam_enable._entry.81, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @set_promisc_tcam_enable._entry_ptr.83, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @g_dsaf_driver, !171, !"g_dsaf_driver", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 3034, i32 31}
!172 = !{ptr @.str.84, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 2964, i32 3}
!174 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @hns_dsaf_probe._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @hns_dsaf_probe._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 55, i32 35}
!179 = !{ptr @.str.87, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 67, i32 3}
!181 = !{ptr @.str.88, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @hns_dsaf_get_cfg._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @hns_dsaf_get_cfg._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 71, i32 51}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 73, i32 3}
!188 = !{ptr @hns_dsaf_get_cfg._entry.90, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @hns_dsaf_get_cfg._entry_ptr.92, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 83, i32 3}
!192 = !{ptr @hns_dsaf_get_cfg._entry.93, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @hns_dsaf_get_cfg._entry_ptr.95, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 102, i32 34}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 109, i32 5}
!198 = !{ptr @hns_dsaf_get_cfg._entry.97, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @hns_dsaf_get_cfg._entry_ptr.99, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.101, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 121, i32 5}
!202 = !{ptr @hns_dsaf_get_cfg._entry.100, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @hns_dsaf_get_cfg._entry_ptr.102, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.103, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 134, i32 59}
!206 = !{ptr @.str.105, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 138, i32 4}
!208 = !{ptr @hns_dsaf_get_cfg._entry.104, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @hns_dsaf_get_cfg._entry_ptr.106, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.107, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 149, i32 10}
!212 = !{ptr @.str.109, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 154, i32 5}
!214 = !{ptr @hns_dsaf_get_cfg._entry.108, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @hns_dsaf_get_cfg._entry_ptr.110, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.111, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 164, i32 48}
!218 = !{ptr @.str.113, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 167, i32 3}
!220 = !{ptr @hns_dsaf_get_cfg._entry.112, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @hns_dsaf_get_cfg._entry_ptr.114, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.115, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 173, i32 48}
!224 = !{ptr @.str.116, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 176, i32 3}
!226 = !{ptr @hns_dsaf_get_cfg.__UNIQUE_ID_ddebug351, !225, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!227 = !{ptr @.str.117, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 181, i32 48}
!229 = !{ptr @.str.119, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 183, i32 3}
!231 = !{ptr @hns_dsaf_get_cfg._entry.118, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @hns_dsaf_get_cfg._entry_ptr.120, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.122, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 191, i32 3}
!235 = !{ptr @hns_dsaf_get_cfg._entry.121, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @hns_dsaf_get_cfg._entry_ptr.123, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.124, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 201, i32 3}
!239 = !{ptr @hns_dsaf_get_cfg.__UNIQUE_ID_ddebug352, !238, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!240 = !{ptr @.str.126, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 203, i32 3}
!242 = !{ptr @hns_dsaf_get_cfg._entry.125, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @hns_dsaf_get_cfg._entry_ptr.127, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.128, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 31, i32 27}
!246 = !{ptr @.str.129, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 28, i32 35}
!248 = !{ptr @.str.130, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 29, i32 34}
!250 = !{ptr @.str.131, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 30, i32 35}
!252 = !{ptr @g_dsaf_mode_match, !253, !"g_dsaf_mode_match", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 27, i32 20}
!254 = !{ptr @hns_dsaf_init.__key, !255, !"__key", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1460, i32 2}
!256 = !{ptr @.str.132, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.133, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1403, i32 2}
!259 = !{ptr @.str.134, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @hns_dsaf_init_hw.__UNIQUE_ID_ddebug353, !258, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!261 = !{ptr @.str.135, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1177, i32 4}
!263 = !{ptr @.str.136, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @hns_dsaf_set_pfc_pause._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @hns_dsaf_set_pfc_pause._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.137, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1345, i32 3}
!268 = !{ptr @.str.138, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @hns_dsaf_sbm_init._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @hns_dsaf_sbm_init._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.140, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 1363, i32 3}
!273 = !{ptr @hns_dsaf_sbm_init._entry.139, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @hns_dsaf_sbm_init._entry_ptr.141, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.142, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 378, i32 4}
!277 = !{ptr @.str.143, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @hns_dsaf_sbm_cfg_mib_en._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @hns_dsaf_sbm_cfg_mib_en._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @g_dsaf_match, !281, !"g_dsaf_match", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 3027, i32 34}
!282 = !{ptr @hns_dsaf_acpi_match, !283, !"hns_dsaf_acpi_match", i1 false, i1 false}
!283 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_main.c", i32 34, i32 36}
!284 = !{i32 1, !"wchar_size", i32 2}
!285 = !{i32 1, !"min_enum_size", i32 4}
!286 = !{i32 8, !"branch-target-enforcement", i32 0}
!287 = !{i32 8, !"sign-return-address", i32 0}
!288 = !{i32 8, !"sign-return-address-all", i32 0}
!289 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!290 = !{i32 7, !"uwtable", i32 1}
!291 = !{i32 7, !"frame-pointer", i32 2}
!292 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!293 = !{i64 5962100}
!294 = !{i64 2157405985}
!295 = !{i64 2157405184}
!296 = !{i64 5961682}
!297 = !{i64 2149040630, i64 2149040635, i64 2149040648, i64 2149040692, i64 2149040726, i64 2149040747}
!298 = !{!"auto-init"}
!299 = !{!"branch_weights", i32 1, i32 2000}
