; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.netxen_adapter = type { %struct.netxen_hardware_context, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, [6 x i8], %struct.netxen_adapter_stats, %struct.netxen_recv_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x %struct.msix_entry], %struct.netxen_dummy_dma, %struct.delayed_work, %struct.work_struct, %struct.nx_nic_intr_coalesce_t, i32, i32, i32, ptr, %struct.netxen_minidump, i32 }
%struct.netxen_hardware_context = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rwlock_t, %struct.spinlock, i8, i8, i8, i8, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.netxen_adapter_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.netxen_recv_context = type { i32, i16, i16, ptr, ptr, ptr, i32 }
%struct.msix_entry = type { i32, i16 }
%struct.netxen_dummy_dma = type { ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.nx_nic_intr_coalesce_t = type { i16, i16, i16, i16, i32, i32, %union.nx_nic_intr_coalesce_data_t, %union.nx_nic_intr_coalesce_data_t, %union.nx_nic_intr_coalesce_data_t, %union.nx_nic_intr_coalesce_data_t }
%union.nx_nic_intr_coalesce_data_t = type { i64 }
%struct.netxen_minidump = type { i32, i8, i8, i8, i8, i32, i32, i32, i32, i64, ptr, ptr }
%struct.nx_host_rds_ring = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32 }
%struct.netxen_rx_buffer = type { %struct.list_head, ptr, i64, i16, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.143, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.143 = type { ptr }
%struct.nx_host_tx_ring = type { i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.netxen_cmd_buffer = type { ptr, [18 x %struct.netxen_skb_frag], i32 }
%struct.netxen_skb_frag = type { i64, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.nx_host_sds_ring = type { i32, i32, ptr, ptr, ptr, ptr, %struct.napi_struct, [3 x %struct.list_head], i32, i32, [20 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.crb_addr_pair = type { i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.uni_table_desc = type { i32, i32, i32, [5 x i32] }
%struct.uni_data_desc = type { i32, i32, [5 x i32] }
%struct.nx_fw_msg_t = type { %union.anon.150 }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { i64, [7 x i64] }
%struct.status_desc = type { [2 x i64] }
%struct.sk_buff = type { %union.anon.3, %union.anon.6, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rcv_desc = type { i16, i16, i32, i64 }
%struct.page = type { i32, %union.anon.14, %union.anon.95, %struct.atomic_t, i32 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.95 = type { %struct.atomic_t }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@netxen_alloc_sw_resources.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&rds_ring->lock\00", [16 x i8] zeroinitializer }, align 32
@netxen_pinit_from_rom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: ERROR Reading crb_init area: n: %08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"netxen_pinit_from_rom\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c\00", [43 x i8] zeroinitializer }, align 32
@netxen_pinit_from_rom._entry_ptr = internal global ptr @netxen_pinit_from_rom._entry, section ".printk_index", align 4
@netxen_nic_driver_name = external dso_local global [0 x i8], align 1
@netxen_pinit_from_rom._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@netxen_pinit_from_rom._entry_ptr.5 = internal global ptr @netxen_pinit_from_rom._entry.4, section ".printk_index", align 4
@netxen_pinit_from_rom._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s:n=0x%x Error! NetXen card flash not initialized.\0A\00", [41 x i8] zeroinitializer }, align 32
@netxen_pinit_from_rom._entry_ptr.8 = internal global ptr @netxen_pinit_from_rom._entry.6, section ".printk_index", align 4
@netxen_pinit_from_rom._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013CRB init value out of range %x\0A\00", [62 x i8] zeroinitializer }, align 32
@netxen_pinit_from_rom._entry_ptr.11 = internal global ptr @netxen_pinit_from_rom._entry.9, section ".printk_index", align 4
@netxen_check_flash_fw_compatibility._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 950, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to read flash fwversion\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"netxen_check_flash_fw_compatibility\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@netxen_check_flash_fw_compatibility._entry_ptr = internal global ptr @netxen_check_flash_fw_compatibility._entry, section ".printk_index", align 4
@netxen_check_flash_fw_compatibility._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.3, i32 962, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Flash fw[%d.%d.%d] is < min fw supported[4.0.505]. Please update firmware on flash\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@netxen_check_flash_fw_compatibility._entry_ptr.19 = internal global ptr @netxen_check_flash_fw_compatibility._entry.16, section ".printk_index", align 4
@netxen_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 983, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"loading firmware from %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netxen_load_firmware\00", [43 x i8] zeroinitializer }, align 32
@netxen_load_firmware._entry_ptr = internal global ptr @netxen_load_firmware._entry, section ".printk_index", align 4
@fw_name = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], [44 x i8] zeroinitializer }, align 32
@netxen_init_dummy_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 1257, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ERROR: Could not allocate dummy DMA memory\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"netxen_init_dummy_dma\00", [42 x i8] zeroinitializer }, align 32
@netxen_init_dummy_dma._entry_ptr = internal global ptr @netxen_init_dummy_dma._entry, section ".printk_index", align 4
@netxen_free_dummy_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 1312, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dma_watchdog_shutdown failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"netxen_free_dummy_dma\00", [42 x i8] zeroinitializer }, align 32
@netxen_free_dummy_dma._entry_ptr = internal global ptr @netxen_free_dummy_dma._entry, section ".printk_index", align 4
@netxen_phantom_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 1342, ptr @.str.28, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"firmware init failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"netxen_phantom_init\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@netxen_phantom_init._entry_ptr = internal global ptr @netxen_phantom_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@do_rom_fast_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error waiting for rom done\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_rom_fast_read\00", [47 x i8] zeroinitializer }, align 32
@do_rom_fast_read._entry_ptr = internal global ptr @do_rom_fast_read._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@netxen_wait_rom_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 336, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Timeout reached  waiting for rom done\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netxen_wait_rom_done\00", [43 x i8] zeroinitializer }, align 32
@netxen_wait_rom_done._entry_ptr = internal global ptr @netxen_wait_rom_done._entry, section ".printk_index", align 4
@crb_addr_xform = internal global { [60 x i32], [48 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"REV=\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%u.%u.%u \00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nxromimg.bin\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nx3fwct.bin\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nx3fwmn.bin\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phanfw.bin\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flash\00", [26 x i8] zeroinitializer }, align 32
@netxen_validate_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 1106, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: firmware version %d.%d.%d unsupported\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"netxen_validate_firmware\00", [39 x i8] zeroinitializer }, align 32
@netxen_validate_firmware._entry_ptr = internal global ptr @netxen_validate_firmware._entry, section ".printk_index", align 4
@netxen_validate_firmware._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 1114, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: firmware bios is incompatible\0A\00", [61 x i8] zeroinitializer }, align 32
@netxen_validate_firmware._entry_ptr.44 = internal global ptr @netxen_validate_firmware._entry.42, section ".printk_index", align 4
@netxen_validate_firmware._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.3, i32 1120, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to read flash fw version\0A\00", [63 x i8] zeroinitializer }, align 32
@netxen_validate_firmware._entry_ptr.47 = internal global ptr @netxen_validate_firmware._entry.45, section ".printk_index", align 4
@netxen_validate_firmware._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.3, i32 1132, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [159 x i8], [33 x i8] } { [159 x i8] c"Incompatibility detected between driver and firmware version on flash. This configuration is not recommended. Please update the firmware on flash immediately\0A\00", [33 x i8] zeroinitializer }, align 32
@netxen_validate_firmware._entry_ptr.50 = internal global ptr @netxen_validate_firmware._entry.48, section ".printk_index", align 4
@netxen_validate_firmware._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.3, i32 1141, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: firmware is older than flash\0A\00", [62 x i8] zeroinitializer }, align 32
@netxen_validate_firmware._entry_ptr.53 = internal global ptr @netxen_validate_firmware._entry.51, section ".printk_index", align 4
@netxen_nic_validate_unified_romimage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 737, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unified image: header validation failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"netxen_nic_validate_unified_romimage\00", [59 x i8] zeroinitializer }, align 32
@netxen_nic_validate_unified_romimage._entry_ptr = internal global ptr @netxen_nic_validate_unified_romimage._entry, section ".printk_index", align 4
@netxen_nic_validate_unified_romimage._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 743, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unified image: product validation failed\0A\00", [54 x i8] zeroinitializer }, align 32
@netxen_nic_validate_unified_romimage._entry_ptr.58 = internal global ptr @netxen_nic_validate_unified_romimage._entry.56, section ".printk_index", align 4
@netxen_nic_validate_unified_romimage._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.3, i32 749, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unified image: bootld validation failed\0A\00", [55 x i8] zeroinitializer }, align 32
@netxen_nic_validate_unified_romimage._entry_ptr.61 = internal global ptr @netxen_nic_validate_unified_romimage._entry.59, section ".printk_index", align 4
@netxen_nic_validate_unified_romimage._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.3, i32 755, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unified image: firmware validation failed\0A\00", [53 x i8] zeroinitializer }, align 32
@netxen_nic_validate_unified_romimage._entry_ptr.64 = internal global ptr @netxen_nic_validate_unified_romimage._entry.62, section ".printk_index", align 4
@netxen_receive_peg_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 1362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013Receive Peg initialization not complete, state: 0x%x.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"netxen_receive_peg_ready\00", [39 x i8] zeroinitializer }, align 32
@netxen_receive_peg_ready._entry_ptr = internal global ptr @netxen_receive_peg_ready._entry, section ".printk_index", align 4
@netxen_handle_linkevent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 1406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: unsupported cable: OUI 0x%x, length %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"netxen_handle_linkevent\00", [40 x i8] zeroinitializer }, align 32
@netxen_handle_linkevent._entry_ptr = internal global ptr @netxen_handle_linkevent._entry, section ".printk_index", align 4
@netxen_handle_linkevent._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.3, i32 1409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: unsupported cable length %d\0A\00", [61 x i8] zeroinitializer }, align 32
@netxen_handle_linkevent._entry_ptr.71 = internal global ptr @netxen_handle_linkevent._entry.69, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.74 = internal global [8 x i64] [i64 6, i64 32, i64 53477404, i64 53477412, i64 53477544, i64 53477564, i64 53477576, i64 61866012]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 1122368, i64 1122376]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 255]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 61455, i64 65281, i64 65535]
@__sancov_gen_cov_switch_values.78 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 5, i64 18, i64 63]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 7]
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 275, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 431, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 440, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 449, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 474, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 949, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 959, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 982, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [8 x i8] c"fw_name\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 966, i32 14 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1256, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1312, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1342, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 352, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 335, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant [15 x i8] c"crb_addr_xform\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 22, i32 21 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 837, i32 30 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 838, i32 33 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 967, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 968, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 969, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 970, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 971, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1103, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1113, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1120, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1129, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1140, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 736, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 742, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 748, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 754, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1362, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1405, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.303 = private constant [56 x i8] c"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1408, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 326, i32 6 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @do_rom_fast_read._entry, ptr @do_rom_fast_read._entry_ptr, ptr @netxen_check_flash_fw_compatibility._entry, ptr @netxen_check_flash_fw_compatibility._entry.16, ptr @netxen_check_flash_fw_compatibility._entry_ptr, ptr @netxen_check_flash_fw_compatibility._entry_ptr.19, ptr @netxen_free_dummy_dma._entry, ptr @netxen_free_dummy_dma._entry_ptr, ptr @netxen_handle_linkevent._entry, ptr @netxen_handle_linkevent._entry.69, ptr @netxen_handle_linkevent._entry_ptr, ptr @netxen_handle_linkevent._entry_ptr.71, ptr @netxen_init_dummy_dma._entry, ptr @netxen_init_dummy_dma._entry_ptr, ptr @netxen_load_firmware._entry, ptr @netxen_load_firmware._entry_ptr, ptr @netxen_nic_validate_unified_romimage._entry, ptr @netxen_nic_validate_unified_romimage._entry.56, ptr @netxen_nic_validate_unified_romimage._entry.59, ptr @netxen_nic_validate_unified_romimage._entry.62, ptr @netxen_nic_validate_unified_romimage._entry_ptr, ptr @netxen_nic_validate_unified_romimage._entry_ptr.58, ptr @netxen_nic_validate_unified_romimage._entry_ptr.61, ptr @netxen_nic_validate_unified_romimage._entry_ptr.64, ptr @netxen_phantom_init._entry, ptr @netxen_phantom_init._entry_ptr, ptr @netxen_pinit_from_rom._entry, ptr @netxen_pinit_from_rom._entry.4, ptr @netxen_pinit_from_rom._entry.6, ptr @netxen_pinit_from_rom._entry.9, ptr @netxen_pinit_from_rom._entry_ptr, ptr @netxen_pinit_from_rom._entry_ptr.11, ptr @netxen_pinit_from_rom._entry_ptr.5, ptr @netxen_pinit_from_rom._entry_ptr.8, ptr @netxen_receive_peg_ready._entry, ptr @netxen_receive_peg_ready._entry_ptr, ptr @netxen_validate_firmware._entry, ptr @netxen_validate_firmware._entry.42, ptr @netxen_validate_firmware._entry.45, ptr @netxen_validate_firmware._entry.48, ptr @netxen_validate_firmware._entry.51, ptr @netxen_validate_firmware._entry_ptr, ptr @netxen_validate_firmware._entry_ptr.44, ptr @netxen_validate_firmware._entry_ptr.47, ptr @netxen_validate_firmware._entry_ptr.50, ptr @netxen_validate_firmware._entry_ptr.53, ptr @netxen_wait_rom_done._entry, ptr @netxen_wait_rom_done._entry_ptr, ptr @netxen_alloc_sw_resources.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @fw_name, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @crb_addr_xform, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_alloc_sw_resources.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_pinit_from_rom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_pinit_from_rom._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_pinit_from_rom._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_pinit_from_rom._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_check_flash_fw_compatibility._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_check_flash_fw_compatibility._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_init_dummy_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_free_dummy_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_phantom_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rom_fast_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_wait_rom_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crb_addr_xform to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_validate_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_validate_firmware._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_validate_firmware._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_validate_firmware._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 159, i32 192, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_validate_firmware._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_validate_unified_romimage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_validate_unified_romimage._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_validate_unified_romimage._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_validate_unified_romimage._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_receive_peg_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_handle_linkevent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_handle_linkevent._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netxen_release_rx_buffers(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_rds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 10
  %0 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_rds_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp35.not = icmp eq i8 %1, 0
  br i1 %cmp35.not, label %entry.for.end19_crit_edge, label %for.body.lr.ph

entry.for.end19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end19

for.body.lr.ph:                                   ; preds = %entry
  %rds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 3
  %pdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc17.for.body_crit_edge, %for.body.lr.ph
  %ring.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc18, %for.inc17.for.body_crit_edge ]
  %2 = ptrtoint ptr %rds_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rds_rings, align 4
  %num_desc = getelementptr %struct.nx_host_rds_ring, ptr %3, i32 %ring.036, i32 1
  %4 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp431.not = icmp eq i32 %5, 0
  br i1 %cmp431.not, label %for.body.for.inc17_crit_edge, label %for.body6.lr.ph

for.body.for.inc17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc17

for.body6.lr.ph:                                  ; preds = %for.body
  %rx_buf_arr = getelementptr %struct.nx_host_rds_ring, ptr %3, i32 %ring.036, i32 7
  %dma_size = getelementptr %struct.nx_host_rds_ring, ptr %3, i32 %ring.036, i32 2
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body6.lr.ph
  %i.032 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.inc.for.body6_crit_edge ]
  %6 = ptrtoint ptr %rx_buf_arr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_buf_arr, align 4
  %state = getelementptr %struct.netxen_rx_buffer, ptr %7, i32 %i.032, i32 4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp9 = icmp eq i16 %9, 0
  br i1 %cmp9, label %for.body6.for.inc_crit_edge, label %if.end

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body6
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %dma = getelementptr %struct.netxen_rx_buffer, ptr %7, i32 %i.032, i32 2
  %12 = ptrtoint ptr %dma to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dma, align 8
  %conv11 = trunc i64 %13 to i32
  %14 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_size, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv11, i32 noundef %15, i32 noundef 2, i32 noundef 0) #11
  %skb = getelementptr %struct.netxen_rx_buffer, ptr %7, i32 %i.032, i32 1
  %16 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb, align 8
  %cmp12.not = icmp eq ptr %17, null
  br i1 %cmp12.not, label %if.end.for.inc_crit_edge, label %if.then14

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %17, i32 noundef 1) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.end.for.inc_crit_edge, %for.body6.for.inc_crit_edge
  %inc = add nuw i32 %i.032, 1
  %18 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_desc, align 4
  %cmp4 = icmp ult i32 %inc, %19
  br i1 %cmp4, label %for.inc.for.body6_crit_edge, label %for.inc.for.inc17_crit_edge

for.inc.for.inc17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc17

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body6

for.inc17:                                        ; preds = %for.inc.for.inc17_crit_edge, %for.body.for.inc17_crit_edge
  %inc18 = add nuw nsw i32 %ring.036, 1
  %20 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_rds_rings, align 8
  %conv = zext i8 %21 to i32
  %cmp = icmp ult i32 %inc18, %conv
  br i1 %cmp, label %for.inc17.for.body_crit_edge, label %for.inc17.for.end19_crit_edge

for.inc17.for.end19_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end19

for.inc17.for.body_crit_edge:                     ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end19:                                        ; preds = %for.inc17.for.end19_crit_edge, %entry.for.end19_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netxen_release_tx_buffers(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 44
  %0 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring1, align 8
  %tx_clean_lock = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_clean_lock) #11
  %num_desc = getelementptr inbounds %struct.nx_host_tx_ring, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp55.not = icmp eq i32 %3, 0
  br i1 %cmp55.not, label %entry.for.end28_crit_edge, label %for.body.lr.ph

entry.for.end28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end28

for.body.lr.ph:                                   ; preds = %entry
  %cmd_buf_arr = getelementptr inbounds %struct.nx_host_tx_ring, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %cmd_buf_arr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_buf_arr, align 4
  %pdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc27, %if.end24.for.body_crit_edge ]
  %cmd_buf.056 = phi ptr [ %5, %for.body.lr.ph ], [ %incdec.ptr25, %if.end24.for.body_crit_edge ]
  %frag_array = getelementptr inbounds %struct.netxen_cmd_buffer, ptr %cmd_buf.056, i32 0, i32 1
  %6 = ptrtoint ptr %frag_array to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %frag_array, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %conv = trunc i64 %7 to i32
  %length = getelementptr inbounds %struct.netxen_cmd_buffer, ptr %cmd_buf.056, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %length, align 8
  %conv3 = trunc i64 %11 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv, i32 noundef %conv3, i32 noundef 1, i32 noundef 0) #11
  %12 = ptrtoint ptr %frag_array to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %frag_array, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %frag_count = getelementptr inbounds %struct.netxen_cmd_buffer, ptr %cmd_buf.056, i32 0, i32 2
  %13 = ptrtoint ptr %frag_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frag_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp652 = icmp ugt i32 %14, 1
  br i1 %cmp652, label %if.end.for.body8_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body8_crit_edge:                       ; preds = %if.end
  br label %for.body8

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %if.end.for.body8_crit_edge
  %j.054 = phi i32 [ %inc, %for.inc.for.body8_crit_edge ], [ 1, %if.end.for.body8_crit_edge ]
  %buffrag.053 = phi ptr [ %incdec.ptr, %for.inc.for.body8_crit_edge ], [ %frag_array, %if.end.for.body8_crit_edge ]
  %incdec.ptr = getelementptr %struct.netxen_skb_frag, ptr %buffrag.053, i32 1
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %incdec.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool10.not = icmp eq i64 %16, 0
  br i1 %tobool10.not, label %for.body8.for.inc_crit_edge, label %if.then11

for.body8.for.inc_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then11:                                        ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %conv15 = trunc i64 %16 to i32
  %length16 = getelementptr %struct.netxen_skb_frag, ptr %buffrag.053, i32 1, i32 1
  %19 = ptrtoint ptr %length16 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %length16, align 8
  %conv17 = trunc i64 %20 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev13, i32 noundef %conv15, i32 noundef %conv17, i32 noundef 1, i32 noundef 0) #11
  %21 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %incdec.ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body8.for.inc_crit_edge
  %inc = add nuw i32 %j.054, 1
  %22 = ptrtoint ptr %frag_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frag_count, align 8
  %cmp6 = icmp ult i32 %inc, %23
  br i1 %cmp6, label %for.inc.for.body8_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %24 = ptrtoint ptr %cmd_buf.056 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd_buf.056, align 8
  %tobool20.not = icmp eq ptr %25, null
  br i1 %tobool20.not, label %for.end.if.end24_crit_edge, label %if.then21

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %25, i32 noundef 1) #11
  %26 = ptrtoint ptr %cmd_buf.056 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %cmd_buf.056, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %for.end.if.end24_crit_edge
  %incdec.ptr25 = getelementptr %struct.netxen_cmd_buffer, ptr %cmd_buf.056, i32 1
  %inc27 = add nuw i32 %i.059, 1
  %27 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_desc, align 4
  %cmp = icmp ult i32 %inc27, %28
  br i1 %cmp, label %if.end24.for.body_crit_edge, label %if.end24.for.end28_crit_edge

if.end24.for.end28_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end28

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end28:                                        ; preds = %if.end24.for.end28_crit_edge, %entry.for.end28_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_clean_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netxen_free_sw_resources(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 3
  %0 = ptrtoint ptr %rds_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rds_rings, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.skip_rds_crit_edge, label %for.cond.preheader

entry.skip_rds_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip_rds

for.cond.preheader:                               ; preds = %entry
  %max_rds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 10
  %2 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_rds_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp228.not = icmp eq i8 %3, 0
  br i1 %cmp228.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ring.029 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %rds_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rds_rings, align 4
  %rx_buf_arr = getelementptr %struct.nx_host_rds_ring, ptr %5, i32 %ring.029, i32 7
  %6 = ptrtoint ptr %rx_buf_arr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_buf_arr, align 4
  tail call void @vfree(ptr noundef %7) #11
  %8 = ptrtoint ptr %rx_buf_arr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rx_buf_arr, align 4
  %inc = add nuw nsw i32 %ring.029, 1
  %9 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %max_rds_rings, align 8
  %conv = zext i8 %10 to i32
  %cmp2 = icmp ult i32 %inc, %conv
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %11 = ptrtoint ptr %rds_rings to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rds_rings, align 4
  tail call void @kfree(ptr noundef %12) #11
  br label %skip_rds

skip_rds:                                         ; preds = %for.end, %entry.skip_rds_crit_edge
  %tx_ring7 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 44
  %13 = ptrtoint ptr %tx_ring7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_ring7, align 8
  %cmp8 = icmp eq ptr %14, null
  br i1 %cmp8, label %skip_rds.cleanup_crit_edge, label %if.end11

skip_rds.cleanup_crit_edge:                       ; preds = %skip_rds
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %skip_rds
  call void @__sanitizer_cov_trace_pc() #13
  %cmd_buf_arr = getelementptr inbounds %struct.nx_host_tx_ring, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %cmd_buf_arr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd_buf_arr, align 4
  tail call void @vfree(ptr noundef %16) #11
  tail call void @kfree(ptr noundef nonnull %14) #11
  %17 = ptrtoint ptr %tx_ring7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %tx_ring7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %skip_rds.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_alloc_sw_resources(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 40) #14
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_ring2 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 44
  %3 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %tx_ring2, align 8
  %num_txd = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 6
  %4 = ptrtoint ptr %num_txd to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_txd, align 8
  %conv = zext i16 %5 to i32
  %num_desc = getelementptr inbounds %struct.nx_host_tx_ring, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %num_desc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %num_desc, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i, align 128
  %txq = getelementptr inbounds %struct.nx_host_tx_ring, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %txq, align 8
  %mul = mul nuw nsw i32 %conv, 304
  %call5 = tail call noalias ptr @vzalloc(i32 noundef %mul) #15
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %if.end.err_out_crit_edge, label %if.end9

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end9:                                          ; preds = %if.end
  %cmd_buf_arr10 = getelementptr inbounds %struct.nx_host_tx_ring, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %cmd_buf_arr10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5, ptr %cmd_buf_arr10, align 4
  %max_rds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 10
  %11 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_rds_rings, align 8
  %conv12 = zext i8 %12 to i32
  %13 = mul nuw nsw i32 %conv12, 88
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #15
  %cmp14 = icmp eq ptr %call8.i.i, null
  br i1 %cmp14, label %if.end9.err_out_crit_edge, label %if.end17

if.end9.err_out_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end17:                                         ; preds = %if.end9
  %rds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 3
  %14 = ptrtoint ptr %rds_rings to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i.i, ptr %rds_rings, align 4
  %15 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %max_rds_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp20200.not = icmp eq i8 %16, 0
  br i1 %cmp20200.not, label %if.end17.for.cond86.preheader_crit_edge, label %for.body.lr.ph

if.end17.for.cond86.preheader_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond86.preheader

for.body.lr.ph:                                   ; preds = %if.end17
  %num_lro_rxd = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 9
  %num_jumbo_rxd = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 8
  %revision_id42 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %capabilities = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 35
  %num_rxd = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 7
  %cut_through = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 11
  br label %for.body

for.cond86.preheader:                             ; preds = %do.body.for.cond86.preheader_crit_edge, %if.end17.for.cond86.preheader_crit_edge
  %max_sds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 11
  %17 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %max_sds_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp88204.not = icmp eq i8 %18, 0
  br i1 %cmp88204.not, label %for.cond86.preheader.cleanup_crit_edge, label %for.body90.lr.ph

for.cond86.preheader.cleanup_crit_edge:           ; preds = %for.cond86.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body90.lr.ph:                                 ; preds = %for.cond86.preheader
  %sds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 4
  %num_rxd94 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 7
  br label %for.body90

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.body.lr.ph
  %ring.0201 = phi i32 [ 0, %for.body.lr.ph ], [ %inc84, %do.body.for.body_crit_edge ]
  %19 = ptrtoint ptr %rds_rings to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rds_rings, align 4
  %21 = zext i32 %ring.0201 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ring.0201, label %for.body.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb38
    i32 2, label %sw.bb59
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %22 = ptrtoint ptr %num_rxd to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_rxd, align 2
  %conv23 = zext i16 %23 to i32
  %num_desc24 = getelementptr %struct.nx_host_rds_ring, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %num_desc24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv23, ptr %num_desc24, align 4
  %25 = ptrtoint ptr %cut_through to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cut_through, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %dma_size = getelementptr %struct.nx_host_rds_ring, ptr %20, i32 0, i32 2
  %27 = ptrtoint ptr %dma_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2048, ptr %dma_size, align 4
  br label %sw.epilog.sink.split

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %revision_id42 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %revision_id42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %29)
  %cmp28 = icmp ugt i8 %29, 47
  %spec.select = select i1 %cmp28, i32 1532, i32 1760
  %30 = getelementptr %struct.nx_host_rds_ring, ptr %20, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.select, ptr %30, align 4
  %add = or i32 %spec.select, 2
  br label %sw.epilog.sink.split

sw.bb38:                                          ; preds = %for.body
  %32 = ptrtoint ptr %num_jumbo_rxd to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_jumbo_rxd, align 4
  %conv39 = zext i16 %33 to i32
  %num_desc40 = getelementptr %struct.nx_host_rds_ring, ptr %20, i32 1, i32 1
  %34 = ptrtoint ptr %num_desc40 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv39, ptr %num_desc40, align 4
  %35 = ptrtoint ptr %revision_id42 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %revision_id42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %36)
  %cmp44 = icmp ugt i8 %36, 47
  %spec.select207 = select i1 %cmp44, i32 9632, i32 8032
  %37 = getelementptr %struct.nx_host_rds_ring, ptr %20, i32 1, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.select207, ptr %37, align 4
  %39 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %capabilities, align 8
  %and = and i32 %40, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %sw.bb38.if.end55_crit_edge, label %if.then52

sw.bb38.if.end55_crit_edge:                       ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then52:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %37, align 4
  %add54 = add i32 %42, 2048
  store i32 %add54, ptr %37, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %sw.bb38.if.end55_crit_edge
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %37, align 4
  %add57 = add i32 %44, 2
  br label %sw.epilog.sink.split

sw.bb59:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %num_lro_rxd to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %num_lro_rxd, align 2
  %conv60 = zext i16 %46 to i32
  %num_desc61 = getelementptr %struct.nx_host_rds_ring, ptr %20, i32 2, i32 1
  %47 = ptrtoint ptr %num_desc61 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv60, ptr %num_desc61, align 4
  %dma_size62 = getelementptr %struct.nx_host_rds_ring, ptr %20, i32 2, i32 2
  %48 = ptrtoint ptr %dma_size62 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 8060, ptr %dma_size62, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb59, %if.end55, %if.else, %if.then25
  %.sink = phi i32 [ 2048, %if.then25 ], [ %add, %if.else ], [ 8062, %sw.bb59 ], [ %add57, %if.end55 ]
  %skb_size = getelementptr %struct.nx_host_rds_ring, ptr %20, i32 %ring.0201, i32 3
  %49 = ptrtoint ptr %skb_size to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink, ptr %skb_size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body.sw.epilog_crit_edge
  %num_desc66 = getelementptr %struct.nx_host_rds_ring, ptr %20, i32 %ring.0201, i32 1
  %50 = ptrtoint ptr %num_desc66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_desc66, align 4
  %mul67 = shl i32 %51, 5
  %call68 = tail call noalias ptr @vzalloc(i32 noundef %mul67) #15
  %rx_buf_arr = getelementptr %struct.nx_host_rds_ring, ptr %20, i32 %ring.0201, i32 7
  %52 = ptrtoint ptr %rx_buf_arr to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call68, ptr %rx_buf_arr, align 4
  %cmp70 = icmp eq ptr %call68, null
  br i1 %cmp70, label %sw.epilog.err_out_crit_edge, label %if.end73

sw.epilog.err_out_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end73:                                         ; preds = %sw.epilog
  %free_list = getelementptr %struct.nx_host_rds_ring, ptr %20, i32 %ring.0201, i32 8
  %53 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i = getelementptr %struct.nx_host_rds_ring, ptr %20, i32 %ring.0201, i32 8, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %free_list, ptr %prev.i, align 4
  %55 = ptrtoint ptr %num_desc66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_desc66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp77195.not = icmp eq i32 %56, 0
  br i1 %cmp77195.not, label %if.end73.do.body_crit_edge, label %if.end73.for.body79_crit_edge

if.end73.for.body79_crit_edge:                    ; preds = %if.end73
  br label %for.body79

if.end73.do.body_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body79:                                       ; preds = %list_add_tail.exit.for.body79_crit_edge, %if.end73.for.body79_crit_edge
  %i.0198 = phi i32 [ %inc, %list_add_tail.exit.for.body79_crit_edge ], [ 0, %if.end73.for.body79_crit_edge ]
  %rx_buf.0196 = phi ptr [ %incdec.ptr, %list_add_tail.exit.for.body79_crit_edge ], [ %call68, %if.end73.for.body79_crit_edge ]
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rx_buf.0196, ptr noundef %58, ptr noundef %free_list) #11
  br i1 %call.i.i, label %if.end.i.i187, label %for.body79.list_add_tail.exit_crit_edge

for.body79.list_add_tail.exit_crit_edge:          ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i187:                                    ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %rx_buf.0196, ptr %prev.i, align 4
  %60 = ptrtoint ptr %rx_buf.0196 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %free_list, ptr %rx_buf.0196, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %rx_buf.0196, i32 0, i32 1
  %61 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %rx_buf.0196, ptr %58, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i187, %for.body79.list_add_tail.exit_crit_edge
  %conv81 = trunc i32 %i.0198 to i16
  %ref_handle = getelementptr inbounds %struct.netxen_rx_buffer, ptr %rx_buf.0196, i32 0, i32 3
  %63 = ptrtoint ptr %ref_handle to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv81, ptr %ref_handle, align 8
  %state = getelementptr inbounds %struct.netxen_rx_buffer, ptr %rx_buf.0196, i32 0, i32 4
  %64 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %state, align 2
  %incdec.ptr = getelementptr %struct.netxen_rx_buffer, ptr %rx_buf.0196, i32 1
  %inc = add nuw i32 %i.0198, 1
  %65 = ptrtoint ptr %num_desc66 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_desc66, align 4
  %cmp77 = icmp ult i32 %inc, %66
  br i1 %cmp77, label %list_add_tail.exit.for.body79_crit_edge, label %list_add_tail.exit.do.body_crit_edge

list_add_tail.exit.do.body_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

list_add_tail.exit.for.body79_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body79

do.body:                                          ; preds = %list_add_tail.exit.do.body_crit_edge, %if.end73.do.body_crit_edge
  %lock = getelementptr %struct.nx_host_rds_ring, ptr %20, i32 %ring.0201, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @netxen_alloc_sw_resources.__key, i16 noundef signext 3) #11
  %inc84 = add nuw nsw i32 %ring.0201, 1
  %67 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %max_rds_rings, align 8
  %conv19 = zext i8 %68 to i32
  %cmp20 = icmp ult i32 %inc84, %conv19
  br i1 %cmp20, label %do.body.for.body_crit_edge, label %do.body.for.cond86.preheader_crit_edge

do.body.for.cond86.preheader_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond86.preheader

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body90:                                       ; preds = %for.body90.for.body90_crit_edge, %for.body90.lr.ph
  %ring.1205 = phi i32 [ 0, %for.body90.lr.ph ], [ %inc107, %for.body90.for.body90_crit_edge ]
  %69 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sds_rings, align 4
  %arrayidx92 = getelementptr %struct.netxen_adapter, ptr %adapter, i32 0, i32 65, i32 %ring.1205
  %71 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx92, align 4
  %irq = getelementptr %struct.nx_host_sds_ring, ptr %70, i32 %ring.1205, i32 8
  %73 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %irq, align 8
  %adapter93 = getelementptr %struct.nx_host_sds_ring, ptr %70, i32 %ring.1205, i32 5
  %74 = ptrtoint ptr %adapter93 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %adapter, ptr %adapter93, align 4
  %75 = ptrtoint ptr %num_rxd94 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %num_rxd94, align 2
  %conv95 = zext i16 %76 to i32
  %num_desc96 = getelementptr %struct.nx_host_sds_ring, ptr %70, i32 %ring.1205, i32 1
  %77 = ptrtoint ptr %num_desc96 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv95, ptr %num_desc96, align 4
  %arrayidx102 = getelementptr %struct.nx_host_sds_ring, ptr %70, i32 %ring.1205, i32 7, i32 0
  %78 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %arrayidx102, ptr %arrayidx102, align 4
  %prev.i188 = getelementptr %struct.nx_host_sds_ring, ptr %70, i32 %ring.1205, i32 7, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i188 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %arrayidx102, ptr %prev.i188, align 4
  %arrayidx102.1 = getelementptr %struct.nx_host_sds_ring, ptr %70, i32 %ring.1205, i32 7, i32 1
  %80 = ptrtoint ptr %arrayidx102.1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %arrayidx102.1, ptr %arrayidx102.1, align 4
  %prev.i188.1 = getelementptr %struct.nx_host_sds_ring, ptr %70, i32 %ring.1205, i32 7, i32 1, i32 1
  %81 = ptrtoint ptr %prev.i188.1 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %arrayidx102.1, ptr %prev.i188.1, align 4
  %arrayidx102.2 = getelementptr %struct.nx_host_sds_ring, ptr %70, i32 %ring.1205, i32 7, i32 2
  %82 = ptrtoint ptr %arrayidx102.2 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %arrayidx102.2, ptr %arrayidx102.2, align 4
  %prev.i188.2 = getelementptr %struct.nx_host_sds_ring, ptr %70, i32 %ring.1205, i32 7, i32 2, i32 1
  %83 = ptrtoint ptr %prev.i188.2 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %arrayidx102.2, ptr %prev.i188.2, align 4
  %inc107 = add nuw nsw i32 %ring.1205, 1
  %84 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %max_sds_rings, align 1
  %conv87 = zext i8 %85 to i32
  %cmp88 = icmp ult i32 %inc107, %conv87
  br i1 %cmp88, label %for.body90.for.body90_crit_edge, label %for.body90.cleanup_crit_edge

for.body90.cleanup_crit_edge:                     ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body90.for.body90_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body90

err_out:                                          ; preds = %sw.epilog.err_out_crit_edge, %if.end9.err_out_crit_edge, %if.end.err_out_crit_edge
  %rds_rings.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 3
  %86 = ptrtoint ptr %rds_rings.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rds_rings.i, align 4
  %cmp.i = icmp eq ptr %87, null
  br i1 %cmp.i, label %err_out.skip_rds.i_crit_edge, label %for.cond.preheader.i

err_out.skip_rds.i_crit_edge:                     ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip_rds.i

for.cond.preheader.i:                             ; preds = %err_out
  %max_rds_rings.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 10
  %88 = ptrtoint ptr %max_rds_rings.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %max_rds_rings.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp228.not.i = icmp eq i8 %89, 0
  br i1 %cmp228.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %ring.029.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %90 = ptrtoint ptr %rds_rings.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rds_rings.i, align 4
  %rx_buf_arr.i = getelementptr %struct.nx_host_rds_ring, ptr %91, i32 %ring.029.i, i32 7
  %92 = ptrtoint ptr %rx_buf_arr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rx_buf_arr.i, align 4
  tail call void @vfree(ptr noundef %93) #11
  %94 = ptrtoint ptr %rx_buf_arr.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %rx_buf_arr.i, align 4
  %inc.i = add nuw nsw i32 %ring.029.i, 1
  %95 = ptrtoint ptr %max_rds_rings.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %max_rds_rings.i, align 8
  %conv.i = zext i8 %96 to i32
  %cmp2.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp2.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %97 = ptrtoint ptr %rds_rings.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rds_rings.i, align 4
  tail call void @kfree(ptr noundef %98) #11
  br label %skip_rds.i

skip_rds.i:                                       ; preds = %for.end.i, %err_out.skip_rds.i_crit_edge
  %99 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tx_ring2, align 8
  %cmp8.i = icmp eq ptr %100, null
  br i1 %cmp8.i, label %skip_rds.i.cleanup_crit_edge, label %if.end11.i

skip_rds.i.cleanup_crit_edge:                     ; preds = %skip_rds.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11.i:                                       ; preds = %skip_rds.i
  call void @__sanitizer_cov_trace_pc() #13
  %cmd_buf_arr.i = getelementptr inbounds %struct.nx_host_tx_ring, ptr %100, i32 0, i32 7
  %101 = ptrtoint ptr %cmd_buf_arr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cmd_buf_arr.i, align 4
  tail call void @vfree(ptr noundef %102) #11
  tail call void @kfree(ptr noundef nonnull %100) #11
  %103 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %tx_ring2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11.i, %skip_rds.i.cleanup_crit_edge, %for.body90.cleanup_crit_edge, %for.cond86.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %skip_rds.i.cleanup_crit_edge ], [ -12, %if.end11.i ], [ 0, %for.cond86.preheader.cleanup_crit_edge ], [ 0, %for.body90.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_rom_fast_read_words(ptr noundef %adapter, i32 noundef %addr, ptr nocapture noundef writeonly %bytes, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.i = add i32 %size, %addr
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %addr)
  %cmp14.i = icmp ugt i32 %add.i, %addr
  br i1 %cmp14.i, label %if.end.for.body.i_crit_edge, label %if.end.do_rom_fast_read_words.exit_crit_edge

if.end.do_rom_fast_read_words.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_rom_fast_read_words.exit

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %addridx.016.i = phi i32 [ %add2.i, %for.inc.i.for.body.i_crit_edge ], [ %addr, %if.end.for.body.i_crit_edge ]
  %bytes.addr.015.i = phi ptr [ %add.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %bytes, %if.end.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #11
  %0 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v.i, align 4, !annotation !146
  %call.i = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef %addridx.016.i, ptr noundef nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.not.i, label %for.inc.i, label %cleanup.i

cleanup.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  br label %do_rom_fast_read_words.exit

for.inc.i:                                        ; preds = %for.body.i
  %1 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %v.i, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  %4 = ptrtoint ptr %bytes.addr.015.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %bytes.addr.015.i, align 4
  %add.ptr.i = getelementptr i8, ptr %bytes.addr.015.i, i32 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  %add2.i = add i32 %addridx.016.i, 4
  %cmp.i = icmp ult i32 %add2.i, %add.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do_rom_fast_read_words.exit_crit_edge

for.inc.i.do_rom_fast_read_words.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_rom_fast_read_words.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do_rom_fast_read_words.exit:                      ; preds = %for.inc.i.do_rom_fast_read_words.exit_crit_edge, %cleanup.i, %if.end.do_rom_fast_read_words.exit_crit_edge
  %ret.1.i = phi i32 [ %call.i, %cleanup.i ], [ 0, %if.end.do_rom_fast_read_words.exit_crit_edge ], [ 0, %for.inc.i.do_rom_fast_read_words.exit_crit_edge ]
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %do_rom_fast_read_words.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1.i, %do_rom_fast_read_words.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_pcie_sem_lock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_pcie_sem_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_rom_fast_read(ptr noundef %adapter, i32 noundef %addr, ptr nocapture noundef writeonly %valp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef %addr, ptr noundef %valp)
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef %addr, ptr nocapture noundef writeonly %valp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %0 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crb_write, align 8
  %call = tail call i32 %1(ptr noundef %adapter, i32 noundef 154206216, i32 noundef %addr) #11
  %2 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crb_write, align 8
  %call2 = tail call i32 %3(ptr noundef %adapter, i32 noundef 154206228, i32 noundef 0) #11
  %4 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crb_write, align 8
  %call4 = tail call i32 %5(ptr noundef %adapter, i32 noundef 154206224, i32 noundef 3) #11
  %6 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crb_write, align 8
  %call6 = tail call i32 %7(ptr noundef %adapter, i32 noundef 154206212, i32 noundef 11) #11
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 329, i32 noundef 0) #11
  %call.i.i = tail call i32 @__cond_resched() #11
  %crb_read.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %timeout.07.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.while.body.i_crit_edge ]
  %8 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crb_read.i, align 4
  %call1.i = tail call i32 %9(ptr noundef %adapter, i32 noundef 154140676) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %timeout.07.i)
  %exitcond.i = icmp eq i32 %timeout.07.i, 99
  br i1 %exitcond.i, label %do.end, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %inc.i = add nuw nsw i32 %timeout.07.i, 1
  %and.i = and i32 %call1.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #11
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

do.end:                                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %pdev.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31) #16
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #16
  br label %return

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %crb_write, align 8
  %call10 = tail call i32 %14(ptr noundef %adapter, i32 noundef 154206224, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #11
  %16 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crb_write, align 8
  %call12 = tail call i32 %17(ptr noundef %adapter, i32 noundef 154206228, i32 noundef 0) #11
  %18 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crb_read.i, align 4
  %call13 = tail call i32 %19(ptr noundef %adapter, i32 noundef 154206232) #11
  %20 = ptrtoint ptr %valp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call13, ptr %valp, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_pinit_from_rom(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca i32, align 4
  %val = alloca i32, align 4
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #11
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !146
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !146
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #11
  %2 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %n, align 4, !annotation !146
  %call = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #11
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %3 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crb_write, align 8
  %call1 = tail call i32 %4(ptr noundef %adapter, i32 noundef 154140680, i32 noundef -16777217) #11
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #11
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %5 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %6)
  %cmp = icmp ugt i8 %6, 47
  %call.i = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp.not.i, label %netxen_rom_fast_read.exit, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

netxen_rom_fast_read.exit:                        ; preds = %if.then
  %call1.i = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef 0, ptr noundef nonnull %n) #11
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp4.not = icmp eq i32 %call1.i, 0
  br i1 %cmp4.not, label %lor.lhs.false, label %netxen_rom_fast_read.exit.do.end_crit_edge

netxen_rom_fast_read.exit.do.end_crit_edge:       ; preds = %netxen_rom_fast_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %netxen_rom_fast_read.exit
  %7 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -889271554, i32 %8)
  %cmp6.not = icmp eq i32 %8, -889271554
  br i1 %cmp6.not, label %lor.lhs.false8, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call.i292 = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i292)
  %cmp.not.i293 = icmp eq i32 %call.i292, 0
  br i1 %cmp.not.i293, label %netxen_rom_fast_read.exit297, label %lor.lhs.false8.do.end_crit_edge

lor.lhs.false8.do.end_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

netxen_rom_fast_read.exit297:                     ; preds = %lor.lhs.false8
  %call1.i294 = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull %n) #11
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i294)
  %cmp10.not = icmp eq i32 %call1.i294, 0
  br i1 %cmp10.not, label %if.end, label %netxen_rom_fast_read.exit297.do.end_crit_edge

netxen_rom_fast_read.exit297.do.end_crit_edge:    ; preds = %netxen_rom_fast_read.exit297
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %netxen_rom_fast_read.exit297.do.end_crit_edge, %lor.lhs.false8.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %netxen_rom_fast_read.exit.do.end_crit_edge, %if.then.do.end_crit_edge
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @netxen_nic_driver_name, i32 noundef %10) #16
  br label %cleanup

if.end:                                           ; preds = %netxen_rom_fast_read.exit297
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n, align 4
  %13 = lshr i32 %12, 16
  %and = shl i32 %12, 2
  %phi.bo = and i32 %and, 262140
  br label %if.end28

if.else:                                          ; preds = %entry
  br i1 %cmp.not.i, label %netxen_rom_fast_read.exit303, label %if.else.do.end23_crit_edge

if.else.do.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

netxen_rom_fast_read.exit303:                     ; preds = %if.else
  %call1.i300 = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef 0, ptr noundef nonnull %n) #11
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i300)
  %cmp16.not = icmp eq i32 %call1.i300, 0
  br i1 %cmp16.not, label %lor.lhs.false18, label %netxen_rom_fast_read.exit303.do.end23_crit_edge

netxen_rom_fast_read.exit303.do.end23_crit_edge:  ; preds = %netxen_rom_fast_read.exit303
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

lor.lhs.false18:                                  ; preds = %netxen_rom_fast_read.exit303
  %14 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool.not = icmp sgt i32 %15, -1
  br i1 %tobool.not, label %lor.lhs.false18.do.end23_crit_edge, label %if.end26

lor.lhs.false18.do.end23_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

do.end23:                                         ; preds = %lor.lhs.false18.do.end23_crit_edge, %netxen_rom_fast_read.exit303.do.end23_crit_edge, %if.else.do.end23_crit_edge
  %16 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @netxen_nic_driver_name, i32 noundef %17) #16
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #13
  %and27 = and i32 %15, 2147483647
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %if.end
  %storemerge = phi i32 [ %and27, %if.end26 ], [ %13, %if.end ]
  %offset.0 = phi i32 [ 4, %if.end26 ], [ %phi.bo, %if.end ]
  %18 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %storemerge)
  %cmp29 = icmp ugt i32 %storemerge, 1023
  br i1 %cmp29, label %do.end34, label %if.end7.i.i

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef %storemerge) #16
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end28
  %19 = shl nuw nsw i32 %storemerge, 3
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #15
  %cmp39 = icmp eq ptr %call8.i.i, null
  br i1 %cmp39, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge)
  %cmp43333.not = icmp eq i32 %storemerge, 0
  br i1 %cmp43333.not, label %for.cond.preheader.for.cond61.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond61.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond61.preheader

for.cond61.preheader:                             ; preds = %if.end58.for.cond61.preheader_crit_edge, %for.cond.preheader.for.cond61.preheader_crit_edge
  %20 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp62335 = icmp sgt i32 %21, 0
  br i1 %cmp62335, label %for.cond61.preheader.for.body64_crit_edge, label %for.cond61.preheader.for.end169_crit_edge

for.cond61.preheader.for.end169_crit_edge:        ; preds = %for.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end169

for.cond61.preheader.for.body64_crit_edge:        ; preds = %for.cond61.preheader
  br label %for.body64

for.body:                                         ; preds = %if.end58.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0334 = phi i32 [ %inc, %if.end58.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %mul = shl i32 %i.0334, 3
  %add = add i32 %mul, %offset.0
  %call.i304 = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i304)
  %cmp.not.i305 = icmp eq i32 %call.i304, 0
  br i1 %cmp.not.i305, label %netxen_rom_fast_read.exit309, label %for.body.if.then57_crit_edge

for.body.if.then57_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

netxen_rom_fast_read.exit309:                     ; preds = %for.body
  %call1.i306 = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef %add, ptr noundef nonnull %val) #11
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i306)
  %cmp47.not = icmp eq i32 %call1.i306, 0
  br i1 %cmp47.not, label %lor.lhs.false49, label %netxen_rom_fast_read.exit309.if.then57_crit_edge

netxen_rom_fast_read.exit309.if.then57_crit_edge: ; preds = %netxen_rom_fast_read.exit309
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

lor.lhs.false49:                                  ; preds = %netxen_rom_fast_read.exit309
  %call.i310 = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i310)
  %cmp.not.i311 = icmp eq i32 %call.i310, 0
  br i1 %cmp.not.i311, label %netxen_rom_fast_read.exit315, label %lor.lhs.false49.if.then57_crit_edge

lor.lhs.false49.if.then57_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

netxen_rom_fast_read.exit315:                     ; preds = %lor.lhs.false49
  %add53 = add i32 %add, 4
  %call1.i312 = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef %add53, ptr noundef nonnull %addr) #11
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i312)
  %cmp55.not = icmp eq i32 %call1.i312, 0
  br i1 %cmp55.not, label %if.end58, label %netxen_rom_fast_read.exit315.if.then57_crit_edge

netxen_rom_fast_read.exit315.if.then57_crit_edge: ; preds = %netxen_rom_fast_read.exit315
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

if.then57:                                        ; preds = %netxen_rom_fast_read.exit315.if.then57_crit_edge, %lor.lhs.false49.if.then57_crit_edge, %netxen_rom_fast_read.exit309.if.then57_crit_edge, %for.body.if.then57_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %cleanup

if.end58:                                         ; preds = %netxen_rom_fast_read.exit315
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr, align 4
  %arrayidx = getelementptr %struct.crb_addr_pair, ptr %call8.i.i, i32 %i.0334
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx, align 8
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %data = getelementptr %struct.crb_addr_pair, ptr %call8.i.i, i32 %i.0334, i32 1
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %data, align 4
  %inc = add nuw nsw i32 %i.0334, 1
  %exitcond.not = icmp eq i32 %inc, %storemerge
  br i1 %exitcond.not, label %if.end58.for.cond61.preheader_crit_edge, label %if.end58.for.body_crit_edge

if.end58.for.body_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end58.for.cond61.preheader_crit_edge:          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond61.preheader

for.body64:                                       ; preds = %for.inc167.for.body64_crit_edge, %for.cond61.preheader.for.body64_crit_edge
  %i.1336 = phi i32 [ %inc168, %for.inc167.for.body64_crit_edge ], [ 0, %for.cond61.preheader.for.body64_crit_edge ]
  %arrayidx65 = getelementptr %struct.crb_addr_pair, ptr %call8.i.i, i32 %i.1336
  %28 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx65, align 8
  store i32 1078984704, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 49), align 4
  store i32 1097859072, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 40), align 4
  store i32 218103808, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 5), align 4
  store i32 238026752, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 11), align 4
  store i32 236978176, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 10), align 4
  store i32 235929600, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 9), align 4
  store i32 234881024, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 8), align 4
  store i32 1883242496, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 16), align 4
  store i32 1882193920, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 15), align 4
  store i32 1881145344, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 14), align 4
  store i32 1880096768, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 13), align 4
  store i32 1894776832, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 48), align 4
  store i32 148897792, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 47), align 4
  store i32 147849216, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 46), align 4
  store i32 1891631104, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 45), align 4
  store i32 1890582528, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 44), align 4
  store i32 1889533952, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 43), align 4
  store i32 143654912, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 42), align 4
  store i32 142606336, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 53), align 4
  store i32 1108344832, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 51), align 4
  store i32 1090519040, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 29), align 4
  store i32 241172480, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 7), align 4
  store i32 1879048192, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 12), align 4
  store i32 876609536, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 22), align 4
  store i32 877658112, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 21), align 4
  store i32 875560960, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 20), align 4
  store i32 874512384, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 19), align 4
  store i32 873463808, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 18), align 4
  store i32 872415232, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 17), align 4
  store i32 1010827264, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 28), align 4
  store i32 1011875840, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 27), align 4
  store i32 1009778688, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 26), align 4
  store i32 1008730112, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 25), align 4
  store i32 1007681536, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 24), align 4
  store i32 1006632960, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 23), align 4
  store i32 1999634432, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 1), align 4
  store i32 698351616, ptr @crb_addr_xform, align 4
  store i32 454033408, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 6), align 4
  store i32 1107296256, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 50), align 4
  store i32 219152384, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 31), align 4
  store i32 693108736, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 2), align 4
  store i32 709885952, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 3), align 4
  store i32 209715200, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 37), align 4
  store i32 208666624, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 36), align 4
  store i32 207618048, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 35), align 4
  store i32 1096810496, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 34), align 4
  store i32 1972371456, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 39), align 4
  store i32 1971322880, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 38), align 4
  store i32 1904214016, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 58), align 4
  store i32 1080033280, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 56), align 4
  store i32 428867584, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 59), align 4
  %and.i = and i32 %29, -1048576
  %and1.i = and i32 %29, 1048575
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body64
  %i.018.i = phi i32 [ 0, %for.body64 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [60 x i32], ptr @crb_addr_xform, i32 0, i32 %i.018.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %and.i)
  %cmp2.i = icmp eq i32 %31, %and.i
  br i1 %cmp2.i, label %netxen_decode_crb_addr.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 60
  br i1 %exitcond.not.i, label %for.inc.i.do.end73_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.do.end73_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end73

netxen_decode_crb_addr.exit:                      ; preds = %for.body.i
  %shl.i = shl i32 %i.018.i, 20
  %add.i = or i32 %shl.i, %and1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i)
  %cmp68 = icmp eq i32 %add.i, -1
  br i1 %cmp68, label %netxen_decode_crb_addr.exit.do.end73_crit_edge, label %if.end78

netxen_decode_crb_addr.exit.do.end73_crit_edge:   ; preds = %netxen_decode_crb_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end73

do.end73:                                         ; preds = %netxen_decode_crb_addr.exit.do.end73_crit_edge, %for.inc.i.do.end73_crit_edge
  %32 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx65, align 8
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %33) #16
  br label %for.inc167

if.end78:                                         ; preds = %netxen_decode_crb_addr.exit
  %add79 = add i32 %add.i, 100663296
  %and80 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp ne i32 %and80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 136323580, i32 %add79)
  %cmp84 = icmp eq i32 %add79, 136323580
  %or.cond = or i1 %tobool81.not, %cmp84
  br i1 %or.cond, label %if.end78.for.inc167_crit_edge, label %if.end87

if.end78.for.inc167_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc167

if.end87:                                         ; preds = %if.end78
  %34 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %35)
  %cmp91 = icmp ugt i8 %35, 47
  br i1 %cmp91, label %if.then93, label %if.end87.if.end147_crit_edge

if.end87.if.end147_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

if.then93:                                        ; preds = %if.end87
  %36 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %add.i, label %if.end117 [
    i32 61866012, label %if.then93.for.inc167_crit_edge
    i32 53477564, label %if.then93.for.inc167_crit_edge354
    i32 53477544, label %if.then93.for.inc167_crit_edge355
    i32 53477576, label %if.then93.for.inc167_crit_edge356
    i32 53477412, label %if.then93.for.inc167_crit_edge357
    i32 53477404, label %if.then93.for.inc167_crit_edge358
  ]

if.then93.for.inc167_crit_edge358:                ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc167

if.then93.for.inc167_crit_edge357:                ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc167

if.then93.for.inc167_crit_edge356:                ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc167

if.then93.for.inc167_crit_edge355:                ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc167

if.then93.for.inc167_crit_edge354:                ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc167

if.then93.for.inc167_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc167

if.end117:                                        ; preds = %if.then93
  %and118 = and i32 %add79, 267386880
  call void @__sanitizer_cov_trace_const_cmp4(i32 102760448, i32 %and118)
  %cmp119 = icmp eq i32 %and118, 102760448
  br i1 %cmp119, label %if.end117.for.inc167_crit_edge, label %if.end122

if.end117.for.inc167_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc167

if.end122:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_const_cmp4(i32 119537688, i32 %add79)
  %cmp123 = icmp ne i32 %add79, 119537688
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %35)
  %cmp128 = icmp ugt i8 %35, 79
  %or.cond291 = select i1 %cmp123, i1 true, i1 %cmp128
  br i1 %or.cond291, label %if.end133, label %if.end122.if.end162.sink.split_crit_edge

if.end122.if.end162.sink.split_crit_edge:         ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end162.sink.split

if.end133:                                        ; preds = %if.end122
  %37 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %add.i, label %if.end141 [
    i32 1122368, label %if.end133.for.inc167_crit_edge
    i32 1122376, label %if.end133.for.inc167_crit_edge359
  ]

if.end133.for.inc167_crit_edge359:                ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc167

if.end133.for.inc167_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc167

if.end141:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_const_cmp4(i32 161480704, i32 %and118)
  %cmp143 = icmp eq i32 %and118, 161480704
  br i1 %cmp143, label %if.end141.for.inc167_crit_edge, label %if.end141.if.end147_crit_edge

if.end141.if.end147_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

if.end141.for.inc167_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc167

if.end147:                                        ; preds = %if.end141.if.end147_crit_edge, %if.end87.if.end147_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 154140680, i32 %add79)
  %cmp148 = icmp eq i32 %add79, 154140680
  br i1 %cmp148, label %if.then150, label %if.end147.if.end162_crit_edge

if.end147.if.end162_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end162

if.then150:                                       ; preds = %if.end147
  %38 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %39)
  %cmp154 = icmp ult i8 %39, 38
  br i1 %cmp154, label %if.then150.if.end162.sink.split_crit_edge, label %if.then150.if.end162_crit_edge

if.then150.if.end162_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end162

if.then150.if.end162.sink.split_crit_edge:        ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end162.sink.split

if.end162.sink.split:                             ; preds = %if.then150.if.end162.sink.split_crit_edge, %if.end122.if.end162.sink.split_crit_edge
  %.sink = phi i32 [ 4128, %if.end122.if.end162.sink.split_crit_edge ], [ 8388863, %if.then150.if.end162.sink.split_crit_edge ]
  %init_delay.0.ph = phi i32 [ 1, %if.end122.if.end162.sink.split_crit_edge ], [ 1000, %if.then150.if.end162.sink.split_crit_edge ]
  %data132 = getelementptr %struct.crb_addr_pair, ptr %call8.i.i, i32 %i.1336, i32 1
  %40 = ptrtoint ptr %data132 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink, ptr %data132, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.end162.sink.split, %if.then150.if.end162_crit_edge, %if.end147.if.end162_crit_edge
  %init_delay.0 = phi i32 [ 1000, %if.then150.if.end162_crit_edge ], [ 1, %if.end147.if.end162_crit_edge ], [ %init_delay.0.ph, %if.end162.sink.split ]
  %41 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %crb_write, align 8
  %data165 = getelementptr %struct.crb_addr_pair, ptr %call8.i.i, i32 %i.1336, i32 1
  %43 = ptrtoint ptr %data165 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data165, align 4
  %call166 = tail call i32 %42(ptr noundef %adapter, i32 noundef %add79, i32 noundef %44) #11
  tail call void @msleep(i32 noundef %init_delay.0) #11
  br label %for.inc167

for.inc167:                                       ; preds = %if.end162, %if.end141.for.inc167_crit_edge, %if.end133.for.inc167_crit_edge, %if.end133.for.inc167_crit_edge359, %if.end117.for.inc167_crit_edge, %if.then93.for.inc167_crit_edge, %if.then93.for.inc167_crit_edge354, %if.then93.for.inc167_crit_edge355, %if.then93.for.inc167_crit_edge356, %if.then93.for.inc167_crit_edge357, %if.then93.for.inc167_crit_edge358, %if.end78.for.inc167_crit_edge, %do.end73
  %inc168 = add nuw nsw i32 %i.1336, 1
  %45 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %n, align 4
  %cmp62 = icmp slt i32 %inc168, %46
  br i1 %cmp62, label %for.inc167.for.body64_crit_edge, label %for.inc167.for.end169_crit_edge

for.inc167.for.end169_crit_edge:                  ; preds = %for.inc167
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end169

for.inc167.for.body64_crit_edge:                  ; preds = %for.inc167
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body64

for.end169:                                       ; preds = %for.inc167.for.end169_crit_edge, %for.cond61.preheader.for.end169_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #11
  %47 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %48)
  %cmp173 = icmp ult i8 %48, 38
  br i1 %cmp173, label %if.then175, label %for.end169.if.end180_crit_edge

for.end169.if.end180_crit_edge:                   ; preds = %for.end169
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end180

if.then175:                                       ; preds = %for.end169
  call void @__sanitizer_cov_trace_pc() #13
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %49 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %crb_read, align 4
  %call176 = tail call i32 %50(ptr noundef %adapter, i32 noundef 154140680) #11
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call176, ptr %val, align 4
  %52 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %crb_write, align 8
  %and178 = and i32 %call176, -241
  %call179 = tail call i32 %53(ptr noundef %adapter, i32 noundef 154140680, i32 noundef %and178) #11
  br label %if.end180

if.end180:                                        ; preds = %if.then175, %for.end169.if.end180_crit_edge
  %54 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %crb_write, align 8
  %call182 = tail call i32 %55(ptr noundef %adapter, i32 noundef 122683628, i32 noundef 30) #11
  %56 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %crb_write, align 8
  %call184 = tail call i32 %57(ptr noundef %adapter, i32 noundef 122683468, i32 noundef 8) #11
  %58 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %crb_write, align 8
  %call186 = tail call i32 %59(ptr noundef %adapter, i32 noundef 123732044, i32 noundef 8) #11
  %60 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %crb_write, align 8
  %call188 = tail call i32 %61(ptr noundef %adapter, i32 noundef 118489096, i32 noundef 0) #11
  %62 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %crb_write, align 8
  %call190 = tail call i32 %63(ptr noundef %adapter, i32 noundef 118489100, i32 noundef 0) #11
  %64 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %crb_write, align 8
  %call192 = tail call i32 %65(ptr noundef %adapter, i32 noundef 119537672, i32 noundef 0) #11
  %66 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %crb_write, align 8
  %call194 = tail call i32 %67(ptr noundef %adapter, i32 noundef 119537676, i32 noundef 0) #11
  %68 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %crb_write, align 8
  %call196 = tail call i32 %69(ptr noundef %adapter, i32 noundef 120586248, i32 noundef 0) #11
  %70 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %crb_write, align 8
  %call198 = tail call i32 %71(ptr noundef %adapter, i32 noundef 120586252, i32 noundef 0) #11
  %72 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %crb_write, align 8
  %call200 = tail call i32 %73(ptr noundef %adapter, i32 noundef 121634824, i32 noundef 0) #11
  %74 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %crb_write, align 8
  %call202 = tail call i32 %75(ptr noundef %adapter, i32 noundef 121634828, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end180, %if.then57, %if.end7.i.i.cleanup_crit_edge, %do.end34, %do.end23, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end34 ], [ -5, %if.then57 ], [ 0, %if.end180 ], [ -5, %do.end23 ], [ -12, %if.end7.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_need_fw_reset(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %1)
  %cmp = icmp ult i8 %1, 38
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %need_fw_reset = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 25
  %2 = ptrtoint ptr %need_fw_reset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_fw_reset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %4 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crb_read, align 4
  %call = tail call i32 %5(ptr noundef %adapter, i32 noundef 136323664) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call)
  %cmp4 = icmp eq i32 %call, 65535
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %6 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crb_read, align 4
  %call9 = tail call i32 %7(ptr noundef %adapter, i32 noundef 136323248) #11
  %call12 = tail call i32 @msleep_interruptible(i32 noundef 200) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %if.end7.if.then14_crit_edge

if.end7.if.then14_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

for.cond:                                         ; preds = %if.end16
  %call12.1 = tail call i32 @msleep_interruptible(i32 noundef 200) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1)
  %tobool13.not.1 = icmp eq i32 %call12.1, 0
  br i1 %tobool13.not.1, label %if.end16.1, label %for.cond.if.then14_crit_edge

for.cond.if.then14_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end16.1:                                       ; preds = %for.cond
  %8 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crb_read, align 4
  %call18.1 = tail call i32 %9(ptr noundef %adapter, i32 noundef 136323248) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.1, i32 %call9)
  %cmp19.not.1 = icmp eq i32 %call18.1, %call9
  br i1 %cmp19.not.1, label %for.cond.1, label %if.end16.1.for.end_crit_edge

if.end16.1.for.end_crit_edge:                     ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.1:                                       ; preds = %if.end16.1
  %call12.2 = tail call i32 @msleep_interruptible(i32 noundef 200) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.2)
  %tobool13.not.2 = icmp eq i32 %call12.2, 0
  br i1 %tobool13.not.2, label %if.end16.2, label %for.cond.1.if.then14_crit_edge

for.cond.1.if.then14_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end16.2:                                       ; preds = %for.cond.1
  %10 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crb_read, align 4
  %call18.2 = tail call i32 %11(ptr noundef %adapter, i32 noundef 136323248) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.2, i32 %call9)
  %cmp19.not.2 = icmp eq i32 %call18.2, %call9
  br i1 %cmp19.not.2, label %for.cond.2, label %if.end16.2.for.end_crit_edge

if.end16.2.for.end_crit_edge:                     ; preds = %if.end16.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.2:                                       ; preds = %if.end16.2
  %call12.3 = tail call i32 @msleep_interruptible(i32 noundef 200) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.3)
  %tobool13.not.3 = icmp eq i32 %call12.3, 0
  br i1 %tobool13.not.3, label %if.end16.3, label %for.cond.2.if.then14_crit_edge

for.cond.2.if.then14_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end16.3:                                       ; preds = %for.cond.2
  %12 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crb_read, align 4
  %call18.3 = tail call i32 %13(ptr noundef %adapter, i32 noundef 136323248) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.3, i32 %call9)
  %cmp19.not.3 = icmp eq i32 %call18.3, %call9
  br i1 %cmp19.not.3, label %for.cond.3, label %if.end16.3.for.end_crit_edge

if.end16.3.for.end_crit_edge:                     ; preds = %if.end16.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.3:                                       ; preds = %if.end16.3
  %call12.4 = tail call i32 @msleep_interruptible(i32 noundef 200) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.4)
  %tobool13.not.4 = icmp eq i32 %call12.4, 0
  br i1 %tobool13.not.4, label %if.end16.4, label %for.cond.3.if.then14_crit_edge

for.cond.3.if.then14_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end16.4:                                       ; preds = %for.cond.3
  %14 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crb_read, align 4
  %call18.4 = tail call i32 %15(ptr noundef %adapter, i32 noundef 136323248) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.4, i32 %call9)
  %cmp19.not.4 = icmp eq i32 %call18.4, %call9
  br i1 %cmp19.not.4, label %for.cond.4, label %if.end16.4.for.end_crit_edge

if.end16.4.for.end_crit_edge:                     ; preds = %if.end16.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.4:                                       ; preds = %if.end16.4
  %call12.5 = tail call i32 @msleep_interruptible(i32 noundef 200) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.5)
  %tobool13.not.5 = icmp eq i32 %call12.5, 0
  br i1 %tobool13.not.5, label %if.end16.5, label %for.cond.4.if.then14_crit_edge

for.cond.4.if.then14_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end16.5:                                       ; preds = %for.cond.4
  %16 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crb_read, align 4
  %call18.5 = tail call i32 %17(ptr noundef %adapter, i32 noundef 136323248) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.5, i32 %call9)
  %cmp19.not.5 = icmp eq i32 %call18.5, %call9
  br i1 %cmp19.not.5, label %for.cond.5, label %if.end16.5.for.end_crit_edge

if.end16.5.for.end_crit_edge:                     ; preds = %if.end16.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.5:                                       ; preds = %if.end16.5
  %call12.6 = tail call i32 @msleep_interruptible(i32 noundef 200) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.6)
  %tobool13.not.6 = icmp eq i32 %call12.6, 0
  br i1 %tobool13.not.6, label %if.end16.6, label %for.cond.5.if.then14_crit_edge

for.cond.5.if.then14_crit_edge:                   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end16.6:                                       ; preds = %for.cond.5
  %18 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crb_read, align 4
  %call18.6 = tail call i32 %19(ptr noundef %adapter, i32 noundef 136323248) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.6, i32 %call9)
  %cmp19.not.6 = icmp eq i32 %call18.6, %call9
  br i1 %cmp19.not.6, label %for.cond.6, label %if.end16.6.for.end_crit_edge

if.end16.6.for.end_crit_edge:                     ; preds = %if.end16.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.6:                                       ; preds = %if.end16.6
  %call12.7 = tail call i32 @msleep_interruptible(i32 noundef 200) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.7)
  %tobool13.not.7 = icmp eq i32 %call12.7, 0
  br i1 %tobool13.not.7, label %if.end16.7, label %for.cond.6.if.then14_crit_edge

for.cond.6.if.then14_crit_edge:                   ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end16.7:                                       ; preds = %for.cond.6
  %20 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crb_read, align 4
  %call18.7 = tail call i32 %21(ptr noundef %adapter, i32 noundef 136323248) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.7, i32 %call9)
  %cmp19.not.7 = icmp eq i32 %call18.7, %call9
  br i1 %cmp19.not.7, label %for.cond.7, label %if.end16.7.for.end_crit_edge

if.end16.7.for.end_crit_edge:                     ; preds = %if.end16.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.7:                                       ; preds = %if.end16.7
  %call12.8 = tail call i32 @msleep_interruptible(i32 noundef 200) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.8)
  %tobool13.not.8 = icmp eq i32 %call12.8, 0
  br i1 %tobool13.not.8, label %if.end16.8, label %for.cond.7.if.then14_crit_edge

for.cond.7.if.then14_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end16.8:                                       ; preds = %for.cond.7
  %22 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %crb_read, align 4
  %call18.8 = tail call i32 %23(ptr noundef %adapter, i32 noundef 136323248) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.8, i32 %call9)
  %cmp19.not.8 = icmp eq i32 %call18.8, %call9
  br i1 %cmp19.not.8, label %for.cond.8, label %if.end16.8.for.end_crit_edge

if.end16.8.for.end_crit_edge:                     ; preds = %if.end16.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.8:                                       ; preds = %if.end16.8
  %call12.9 = tail call i32 @msleep_interruptible(i32 noundef 200) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.9)
  %tobool13.not.9 = icmp eq i32 %call12.9, 0
  br i1 %tobool13.not.9, label %if.end16.9, label %for.cond.8.if.then14_crit_edge

for.cond.8.if.then14_crit_edge:                   ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end16.9:                                       ; preds = %for.cond.8
  %24 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crb_read, align 4
  %call18.9 = tail call i32 %25(ptr noundef %adapter, i32 noundef 136323248) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.9, i32 %call9)
  %cmp19.not.9 = icmp eq i32 %call18.9, %call9
  br i1 %cmp19.not.9, label %if.end16.9.cleanup_crit_edge, label %if.end16.9.for.end_crit_edge

if.end16.9.for.end_crit_edge:                     ; preds = %if.end16.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end16.9.cleanup_crit_edge:                     ; preds = %if.end16.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then14:                                        ; preds = %for.cond.8.if.then14_crit_edge, %for.cond.7.if.then14_crit_edge, %for.cond.6.if.then14_crit_edge, %for.cond.5.if.then14_crit_edge, %for.cond.4.if.then14_crit_edge, %for.cond.3.if.then14_crit_edge, %for.cond.2.if.then14_crit_edge, %for.cond.1.if.then14_crit_edge, %for.cond.if.then14_crit_edge, %if.end7.if.then14_crit_edge
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %26 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %crb_write, align 8
  %call15 = tail call i32 %27(ptr noundef %adapter, i32 noundef 136323664, i32 noundef 65535) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %28 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %crb_read, align 4
  %call18 = tail call i32 %29(ptr noundef %adapter, i32 noundef 136323248) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call18, i32 %call9)
  %cmp19.not = icmp eq i32 %call18, %call9
  br i1 %cmp19.not, label %for.cond, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %if.end16.9.for.end_crit_edge, %if.end16.8.for.end_crit_edge, %if.end16.7.for.end_crit_edge, %if.end16.6.for.end_crit_edge, %if.end16.5.for.end_crit_edge, %if.end16.4.for.end_crit_edge, %if.end16.3.for.end_crit_edge, %if.end16.2.for.end_crit_edge, %if.end16.1.for.end_crit_edge
  %call18.lcssa = phi i32 [ %call18, %if.end16.for.end_crit_edge ], [ %call18.1, %if.end16.1.for.end_crit_edge ], [ %call18.2, %if.end16.2.for.end_crit_edge ], [ %call18.3, %if.end16.3.for.end_crit_edge ], [ %call18.4, %if.end16.4.for.end_crit_edge ], [ %call18.5, %if.end16.5.for.end_crit_edge ], [ %call18.6, %if.end16.6.for.end_crit_edge ], [ %call18.7, %if.end16.7.for.end_crit_edge ], [ %call18.8, %if.end16.8.for.end_crit_edge ], [ %call18.9, %if.end16.9.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.lcssa, i32 %call9)
  %cmp23 = icmp eq i32 %call18.lcssa, %call9
  br i1 %cmp23, label %for.end.cleanup_crit_edge, label %if.end26

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %for.end
  %fw = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 73
  %30 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw, align 4
  %tobool27.not = icmp eq ptr %31, null
  br i1 %tobool27.not, label %if.end26.if.end72_crit_edge, label %if.then28

if.end26.if.end72_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then28:                                        ; preds = %if.end26
  %call29 = tail call fastcc i32 @nx_get_fw_version(ptr noundef %adapter)
  %32 = and i32 %call29, 65535
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %shr32 = lshr i32 %call29, 16
  %add33 = or i32 %33, %shr32
  %34 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %crb_read, align 4
  %call35 = tail call i32 %35(ptr noundef %adapter, i32 noundef 136323408) #11
  %36 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %crb_read, align 4
  %call37 = tail call i32 %37(ptr noundef %adapter, i32 noundef 136323412) #11
  %38 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %crb_read, align 4
  %call39 = tail call i32 %39(ptr noundef %adapter, i32 noundef 136323416) #11
  %shl40 = shl i32 %call35, 24
  %shl41 = shl i32 %call37, 16
  %add42 = add i32 %shl41, %shl40
  %add43 = add i32 %add42, %call39
  call void @__sanitizer_cov_trace_cmp4(i32 %add33, i32 %add43)
  %cmp44 = icmp ugt i32 %add33, %add43
  br i1 %cmp44, label %if.then28.cleanup_crit_edge, label %if.end47

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end47:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_cmp4(i32 %add33, i32 %add43)
  %cmp52 = icmp eq i32 %add33, %add43
  br i1 %cmp52, label %land.lhs.true, label %if.end47.if.end72_crit_edge

if.end47.if.end72_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

land.lhs.true:                                    ; preds = %if.end47
  %fw_type54 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 27
  %40 = ptrtoint ptr %fw_type54 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %fw_type54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %cmp56.not = icmp eq i8 %41, 3
  br i1 %cmp56.not, label %land.lhs.true.if.end72_crit_edge, label %if.then58

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then58:                                        ; preds = %land.lhs.true
  %42 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %crb_read, align 4
  %call60 = tail call i32 %43(ptr noundef %adapter, i32 noundef 102760448) #11
  %and61 = and i32 %call60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %44 = ptrtoint ptr %fw_type54 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fw_type54, align 1
  %conv65 = zext i8 %45 to i32
  %conv66 = select i1 %tobool62.not, i32 2, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv66, i32 %conv65)
  %cmp67.not = icmp eq i32 %conv66, %conv65
  br i1 %cmp67.not, label %if.then58.if.end72_crit_edge, label %if.then58.cleanup_crit_edge

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then58.if.end72_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.end72:                                         ; preds = %if.then58.if.end72_crit_edge, %land.lhs.true.if.end72_crit_edge, %if.end47.if.end72_crit_edge, %if.end26.if.end72_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then58.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then14, %if.end16.9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %if.then14 ], [ 0, %if.end72 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end3.cleanup_crit_edge ], [ 1, %for.end.cleanup_crit_edge ], [ 1, %if.then28.cleanup_crit_edge ], [ 1, %if.then58.cleanup_crit_edge ], [ 1, %if.end16.9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nx_get_fw_version(ptr nocapture noundef readonly %adapter) unnamed_addr #5 align 64 {
entry:
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  %sub = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fw1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 73
  %0 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %major) #11
  %2 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %major, align 4, !annotation !146
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minor) #11
  %3 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %minor, align 4, !annotation !146
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sub) #11
  %4 = ptrtoint ptr %sub to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %sub, align 4, !annotation !146
  %fw_type = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 27
  %5 = ptrtoint ptr %fw_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fw_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp eq i8 %6, 3
  %data.i = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %file_prd_off.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 71
  %9 = ptrtoint ptr %file_prd_off.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %file_prd_off.i, align 4
  %arrayidx.i = getelementptr i8, ptr %8, i32 %10
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 29
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %num_entries.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_entries.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp15.not.i.i = icmp eq i32 %14, 0
  br i1 %cmp15.not.i.i, label %if.then.nx_get_data_desc.exit_crit_edge, label %for.body.lr.ph.i.i

if.then.nx_get_data_desc.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %nx_get_data_desc.exit

for.body.lr.ph.i.i:                               ; preds = %if.then
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %8, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  %entry_size.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %8, i32 0, i32 2
  %19 = ptrtoint ptr %entry_size.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %entry_size.i.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #11
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %15, i32 1) #11
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.nx_get_data_desc.exit_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.cond.i.i.nx_get_data_desc.exit_crit_edge:     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nx_get_data_desc.exit

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.016.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = mul i32 %i.016.i.i, %21
  %add.i.i = add i32 %mul.i.i, %18
  %arrayidx1.i.i = getelementptr i8, ptr %8, i32 %add.i.i
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx1.i.i, i32 8
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %23)
  %cmp2.i.i = icmp eq i32 %23, 117440512
  br i1 %cmp2.i.i, label %nx_get_table_desc.exit.i, label %for.cond.i.i

nx_get_table_desc.exit.i:                         ; preds = %for.body.i.i
  %cmp.i = icmp eq ptr %arrayidx1.i.i, null
  br i1 %cmp.i, label %nx_get_table_desc.exit.i.nx_get_data_desc.exit_crit_edge, label %if.end.i

nx_get_table_desc.exit.i.nx_get_data_desc.exit_crit_edge: ; preds = %nx_get_table_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nx_get_data_desc.exit

if.end.i:                                         ; preds = %nx_get_table_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  %25 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx1.i.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #11
  %entry_size.i = getelementptr inbounds %struct.uni_table_desc, ptr %arrayidx1.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %entry_size.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  %mul.i = mul i32 %30, %24
  %add.i = add i32 %mul.i, %27
  %arrayidx1.i = getelementptr i8, ptr %8, i32 %add.i
  br label %nx_get_data_desc.exit

nx_get_data_desc.exit:                            ; preds = %if.end.i, %nx_get_table_desc.exit.i.nx_get_data_desc.exit_crit_edge, %for.cond.i.i.nx_get_data_desc.exit_crit_edge, %if.then.nx_get_data_desc.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx1.i, %if.end.i ], [ null, %nx_get_table_desc.exit.i.nx_get_data_desc.exit_crit_edge ], [ null, %if.then.nx_get_data_desc.exit_crit_edge ], [ null, %for.cond.i.i.nx_get_data_desc.exit_crit_edge ]
  %31 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %retval.0.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %add.ptr = getelementptr i8, ptr %8, i32 %33
  %size = getelementptr inbounds %struct.uni_data_desc, ptr %retval.0.i, i32 0, i32 1
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %36
  %add.ptr4 = getelementptr i8, ptr %add.ptr3, i32 -17
  %call7 = tail call i32 @strncmp(ptr noundef %add.ptr4, ptr noundef nonnull dereferenceable(5) @.str.33, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %nx_get_data_desc.exit.if.then8_crit_edge, label %for.inc

nx_get_data_desc.exit.if.then8_crit_edge:         ; preds = %nx_get_data_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then8:                                         ; preds = %for.inc.10.if.then8_crit_edge, %for.inc.9.if.then8_crit_edge, %for.inc.8.if.then8_crit_edge, %for.inc.7.if.then8_crit_edge, %for.inc.6.if.then8_crit_edge, %for.inc.5.if.then8_crit_edge, %for.inc.4.if.then8_crit_edge, %for.inc.3.if.then8_crit_edge, %for.inc.2.if.then8_crit_edge, %for.inc.1.if.then8_crit_edge, %for.inc.if.then8_crit_edge, %nx_get_data_desc.exit.if.then8_crit_edge
  %i.037.lcssa = phi i32 [ 4, %nx_get_data_desc.exit.if.then8_crit_edge ], [ 5, %for.inc.if.then8_crit_edge ], [ 6, %for.inc.1.if.then8_crit_edge ], [ 7, %for.inc.2.if.then8_crit_edge ], [ 8, %for.inc.3.if.then8_crit_edge ], [ 9, %for.inc.4.if.then8_crit_edge ], [ 10, %for.inc.5.if.then8_crit_edge ], [ 11, %for.inc.6.if.then8_crit_edge ], [ 12, %for.inc.7.if.then8_crit_edge ], [ 13, %for.inc.8.if.then8_crit_edge ], [ 14, %for.inc.9.if.then8_crit_edge ], [ 15, %for.inc.10.if.then8_crit_edge ]
  %arrayidx9 = getelementptr i8, ptr %add.ptr4, i32 %i.037.lcssa
  %call10 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %arrayidx9, ptr noundef nonnull @.str.34, ptr noundef nonnull %major, ptr noundef nonnull %minor, ptr noundef nonnull %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call10)
  %phi.cmp = icmp eq i32 %call10, 3
  br i1 %phi.cmp, label %if.end14, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %nx_get_data_desc.exit
  %arrayidx.1 = getelementptr i8, ptr %add.ptr4, i32 1
  %call7.1 = tail call i32 @strncmp(ptr noundef %arrayidx.1, ptr noundef nonnull dereferenceable(5) @.str.33, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1)
  %tobool.not.1 = icmp eq i32 %call7.1, 0
  br i1 %tobool.not.1, label %for.inc.if.then8_crit_edge, label %for.inc.1

for.inc.if.then8_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr i8, ptr %add.ptr4, i32 2
  %call7.2 = tail call i32 @strncmp(ptr noundef %arrayidx.2, ptr noundef nonnull dereferenceable(5) @.str.33, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2)
  %tobool.not.2 = icmp eq i32 %call7.2, 0
  br i1 %tobool.not.2, label %for.inc.1.if.then8_crit_edge, label %for.inc.2

for.inc.1.if.then8_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr i8, ptr %add.ptr4, i32 3
  %call7.3 = tail call i32 @strncmp(ptr noundef %arrayidx.3, ptr noundef nonnull dereferenceable(5) @.str.33, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.3)
  %tobool.not.3 = icmp eq i32 %call7.3, 0
  br i1 %tobool.not.3, label %for.inc.2.if.then8_crit_edge, label %for.inc.3

for.inc.2.if.then8_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr i8, ptr %add.ptr4, i32 4
  %call7.4 = tail call i32 @strncmp(ptr noundef %arrayidx.4, ptr noundef nonnull dereferenceable(5) @.str.33, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.4)
  %tobool.not.4 = icmp eq i32 %call7.4, 0
  br i1 %tobool.not.4, label %for.inc.3.if.then8_crit_edge, label %for.inc.4

for.inc.3.if.then8_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr i8, ptr %add.ptr4, i32 5
  %call7.5 = tail call i32 @strncmp(ptr noundef %arrayidx.5, ptr noundef nonnull dereferenceable(5) @.str.33, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.5)
  %tobool.not.5 = icmp eq i32 %call7.5, 0
  br i1 %tobool.not.5, label %for.inc.4.if.then8_crit_edge, label %for.inc.5

for.inc.4.if.then8_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr i8, ptr %add.ptr4, i32 6
  %call7.6 = tail call i32 @strncmp(ptr noundef %arrayidx.6, ptr noundef nonnull dereferenceable(5) @.str.33, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.6)
  %tobool.not.6 = icmp eq i32 %call7.6, 0
  br i1 %tobool.not.6, label %for.inc.5.if.then8_crit_edge, label %for.inc.6

for.inc.5.if.then8_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr i8, ptr %add.ptr4, i32 7
  %call7.7 = tail call i32 @strncmp(ptr noundef %arrayidx.7, ptr noundef nonnull dereferenceable(5) @.str.33, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.7)
  %tobool.not.7 = icmp eq i32 %call7.7, 0
  br i1 %tobool.not.7, label %for.inc.6.if.then8_crit_edge, label %for.inc.7

for.inc.6.if.then8_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr i8, ptr %add.ptr4, i32 8
  %call7.8 = tail call i32 @strncmp(ptr noundef %arrayidx.8, ptr noundef nonnull dereferenceable(5) @.str.33, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.8)
  %tobool.not.8 = icmp eq i32 %call7.8, 0
  br i1 %tobool.not.8, label %for.inc.7.if.then8_crit_edge, label %for.inc.8

for.inc.7.if.then8_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr i8, ptr %add.ptr4, i32 9
  %call7.9 = tail call i32 @strncmp(ptr noundef %arrayidx.9, ptr noundef nonnull dereferenceable(5) @.str.33, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.9)
  %tobool.not.9 = icmp eq i32 %call7.9, 0
  br i1 %tobool.not.9, label %for.inc.8.if.then8_crit_edge, label %for.inc.9

for.inc.8.if.then8_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr i8, ptr %add.ptr4, i32 10
  %call7.10 = tail call i32 @strncmp(ptr noundef %arrayidx.10, ptr noundef nonnull dereferenceable(5) @.str.33, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.10)
  %tobool.not.10 = icmp eq i32 %call7.10, 0
  br i1 %tobool.not.10, label %for.inc.9.if.then8_crit_edge, label %for.inc.10

for.inc.9.if.then8_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr i8, ptr %add.ptr4, i32 11
  %call7.11 = tail call i32 @strncmp(ptr noundef %arrayidx.11, ptr noundef nonnull dereferenceable(5) @.str.33, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.11)
  %tobool.not.11 = icmp eq i32 %call7.11, 0
  br i1 %tobool.not.11, label %for.inc.10.if.then8_crit_edge, label %for.inc.10.cleanup_crit_edge

for.inc.10.cleanup_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.10.if.then8_crit_edge:                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.end14:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %major, align 4
  %39 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %minor, align 4
  %shl = shl i32 %40, 8
  %add15 = add i32 %shl, %38
  %41 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sub, align 4
  %shl16 = shl i32 %42, 16
  %add17 = add i32 %add15, %shl16
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx19 = getelementptr i8, ptr %8, i32 4097032
  %43 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx19, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end14, %for.inc.10.cleanup_crit_edge, %if.then8.cleanup_crit_edge
  %retval.0 = phi i32 [ %add17, %if.end14 ], [ %45, %if.else ], [ 0, %if.then8.cleanup_crit_edge ], [ 0, %for.inc.10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sub) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %major) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_check_flash_fw_compatibility(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %flash_fw_ver = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flash_fw_ver) #11
  %0 = ptrtoint ptr %flash_fw_ver to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flash_fw_ver, align 4, !annotation !146
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %1 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %2)
  %cmp = icmp ult i8 %2, 38
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %netxen_rom_fast_read.exit, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

netxen_rom_fast_read.exit:                        ; preds = %if.end
  %call1.i = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef 4097032, ptr noundef nonnull %flash_fw_ver) #11
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end3, label %netxen_rom_fast_read.exit.do.end_crit_edge

netxen_rom_fast_read.exit.do.end_crit_edge:       ; preds = %netxen_rom_fast_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %netxen_rom_fast_read.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #16
  br label %cleanup

if.end3:                                          ; preds = %netxen_rom_fast_read.exit
  %5 = ptrtoint ptr %flash_fw_ver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flash_fw_ver, align 4
  %7 = and i32 %6, 65535
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %shr6 = lshr i32 %6, 16
  %add7 = or i32 %8, %shr6
  call void @__sanitizer_cov_trace_const_cmp4(i32 67109368, i32 %add7)
  %cmp8 = icmp ugt i32 %add7, 67109368
  br i1 %cmp8, label %if.end3.cleanup_crit_edge, label %do.end14

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end14:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %pdev15 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %9 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev15, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %shr17 = lshr i32 %8, 24
  %shr19 = lshr exact i32 %8, 16
  %and20 = and i32 %shr19, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.17, i32 noundef %shr17, i32 noundef %and20, i32 noundef %shr6) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -22, %do.end14 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_fw_ver) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_load_firmware(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %hi = alloca i32, align 4
  %lo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fw1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 73
  %0 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw1, align 4
  %pdev2 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %fw_type = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 27
  %4 = ptrtoint ptr %fw_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_type, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr [5 x ptr], ptr @fw_name, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %7) #16
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %8 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %9)
  %cmp = icmp ult i8 %9, 38
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %10 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crb_write, align 8
  %call = tail call i32 %11(ptr noundef %adapter, i32 noundef 154140728, i32 noundef 1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %12 = ptrtoint ptr %fw_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fw_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i = icmp eq i8 %13, 3
  br i1 %cmp.i, label %if.then.i, label %if.then4.nx_get_bootld_offs.exit_crit_edge

if.then4.nx_get_bootld_offs.exit_crit_edge:       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %nx_get_bootld_offs.exit

if.then.i:                                        ; preds = %if.then4
  %14 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw1, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %file_prd_off.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 71
  %18 = ptrtoint ptr %file_prd_off.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %file_prd_off.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %17, i32 %19
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 27
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i, align 4
  %num_entries.i.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_entries.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp15.not.i.i.i = icmp eq i32 %23, 0
  br i1 %cmp15.not.i.i.i, label %if.then.i.nx_get_data_desc.exit.i_crit_edge, label %for.body.lr.ph.i.i.i

if.then.i.nx_get_data_desc.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nx_get_data_desc.exit.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #11
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %17, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #11
  %entry_size.i.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %17, i32 0, i32 2
  %28 = ptrtoint ptr %entry_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %entry_size.i.i.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  %umax.i.i.i = tail call i32 @llvm.umax.i32(i32 %24, i32 1) #11
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.016.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.nx_get_data_desc.exit.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.cond.i.i.i.nx_get_data_desc.exit.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nx_get_data_desc.exit.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.016.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %mul.i.i.i = mul i32 %i.016.i.i.i, %30
  %add.i.i.i = add i32 %mul.i.i.i, %27
  %arrayidx1.i.i.i = getelementptr i8, ptr %17, i32 %add.i.i.i
  %add.ptr.i.i.i = getelementptr i32, ptr %arrayidx1.i.i.i, i32 8
  %31 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %32)
  %cmp2.i.i.i = icmp eq i32 %32, 100663296
  br i1 %cmp2.i.i.i, label %nx_get_table_desc.exit.i.i, label %for.cond.i.i.i

nx_get_table_desc.exit.i.i:                       ; preds = %for.body.i.i.i
  %cmp.i.i = icmp eq ptr %arrayidx1.i.i.i, null
  br i1 %cmp.i.i, label %nx_get_table_desc.exit.i.i.nx_get_data_desc.exit.i_crit_edge, label %if.end.i.i

nx_get_table_desc.exit.i.i.nx_get_data_desc.exit.i_crit_edge: ; preds = %nx_get_table_desc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nx_get_data_desc.exit.i

if.end.i.i:                                       ; preds = %nx_get_table_desc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  %34 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx1.i.i.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #11
  %entry_size.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %arrayidx1.i.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %entry_size.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %entry_size.i.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #11
  %mul.i.i = mul i32 %39, %33
  %add.i.i = add i32 %mul.i.i, %36
  %arrayidx1.i.i = getelementptr i8, ptr %17, i32 %add.i.i
  br label %nx_get_data_desc.exit.i

nx_get_data_desc.exit.i:                          ; preds = %if.end.i.i, %nx_get_table_desc.exit.i.i.nx_get_data_desc.exit.i_crit_edge, %for.cond.i.i.i.nx_get_data_desc.exit.i_crit_edge, %if.then.i.nx_get_data_desc.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx1.i.i, %if.end.i.i ], [ null, %nx_get_table_desc.exit.i.i.nx_get_data_desc.exit.i_crit_edge ], [ null, %if.then.i.nx_get_data_desc.exit.i_crit_edge ], [ null, %for.cond.i.i.i.nx_get_data_desc.exit.i_crit_edge ]
  %40 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %retval.0.i.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #11
  br label %nx_get_bootld_offs.exit

nx_get_bootld_offs.exit:                          ; preds = %nx_get_data_desc.exit.i, %if.then4.nx_get_bootld_offs.exit_crit_edge
  %offs.0.i = phi i32 [ %42, %nx_get_data_desc.exit.i ], [ 65536, %if.then4.nx_get_bootld_offs.exit_crit_edge ]
  %43 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw1, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %46, i32 %offs.0.i
  %pci_mem_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 56
  br label %for.body

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %nx_get_bootld_offs.exit
  %flashaddr.0300 = phi i32 [ 65536, %nx_get_bootld_offs.exit ], [ %add, %if.end13.for.body_crit_edge ]
  %i.0299 = phi i32 [ 0, %nx_get_bootld_offs.exit ], [ %inc, %if.end13.for.body_crit_edge ]
  %arrayidx8 = getelementptr i64, ptr %arrayidx.i, i32 %i.0299
  %47 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx8, align 8
  %49 = tail call i64 @llvm.bswap.i64(i64 %48)
  %50 = ptrtoint ptr %pci_mem_write to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pci_mem_write, align 8
  %conv9 = zext i32 %flashaddr.0300 to i64
  %call10 = tail call i32 %51(ptr noundef %adapter, i64 noundef %conv9, i64 noundef %49) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %for.body.cleanup102_crit_edge

for.body.cleanup102_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup102

if.end13:                                         ; preds = %for.body
  %add = add nuw nsw i32 %flashaddr.0300, 8
  %inc = add nuw nsw i32 %i.0299, 1
  %exitcond.not = icmp eq i32 %inc, 26112
  br i1 %exitcond.not, label %for.end, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end13
  %52 = ptrtoint ptr %fw_type to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %fw_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %53)
  %cmp.i169 = icmp eq i8 %53, 3
  %54 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fw1, align 4
  %data.i.i171 = getelementptr inbounds %struct.firmware, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %data.i.i171 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i171, align 4
  br i1 %cmp.i169, label %if.then.i177, label %nx_get_fw_size.exit.thread

if.then.i177:                                     ; preds = %for.end
  %file_prd_off.i.i172 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 71
  %58 = ptrtoint ptr %file_prd_off.i.i172 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %file_prd_off.i.i172, align 4
  %arrayidx.i.i173 = getelementptr i8, ptr %57, i32 %59
  %add.ptr.i.i174 = getelementptr i32, ptr %arrayidx.i.i173, i32 29
  %60 = ptrtoint ptr %add.ptr.i.i174 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i.i174, align 4
  %num_entries.i.i.i175 = getelementptr inbounds %struct.uni_table_desc, ptr %57, i32 0, i32 1
  %62 = ptrtoint ptr %num_entries.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_entries.i.i.i175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp15.not.i.i.i176 = icmp eq i32 %63, 0
  br i1 %cmp15.not.i.i.i176, label %if.then.i210.thread, label %for.body.lr.ph.i.i.i180

if.then.i210.thread:                              ; preds = %if.then.i177
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 4)
  %64 = load i32, ptr inttoptr (i32 4 to ptr), align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #11
  br label %nx_get_data_desc.exit.i232

for.body.lr.ph.i.i.i180:                          ; preds = %if.then.i177
  %66 = tail call i32 @llvm.bswap.i32(i32 %63) #11
  %67 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %57, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #11
  %entry_size.i.i.i178 = getelementptr inbounds %struct.uni_table_desc, ptr %57, i32 0, i32 2
  %70 = ptrtoint ptr %entry_size.i.i.i178 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %entry_size.i.i.i178, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #11
  %umax.i.i.i179 = tail call i32 @llvm.umax.i32(i32 %66, i32 1) #11
  br label %for.body.i.i.i190

for.cond.i.i.i183:                                ; preds = %for.body.i.i.i190
  %inc.i.i.i181 = add nuw i32 %i.016.i.i.i184, 1
  %exitcond.not.i.i.i182 = icmp eq i32 %inc.i.i.i181, %umax.i.i.i179
  br i1 %exitcond.not.i.i.i182, label %for.cond.i.i.i183.if.then.i210_crit_edge, label %for.cond.i.i.i183.for.body.i.i.i190_crit_edge

for.cond.i.i.i183.for.body.i.i.i190_crit_edge:    ; preds = %for.cond.i.i.i183
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i190

for.cond.i.i.i183.if.then.i210_crit_edge:         ; preds = %for.cond.i.i.i183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i210

for.body.i.i.i190:                                ; preds = %for.cond.i.i.i183.for.body.i.i.i190_crit_edge, %for.body.lr.ph.i.i.i180
  %i.016.i.i.i184 = phi i32 [ 0, %for.body.lr.ph.i.i.i180 ], [ %inc.i.i.i181, %for.cond.i.i.i183.for.body.i.i.i190_crit_edge ]
  %mul.i.i.i185 = mul i32 %i.016.i.i.i184, %72
  %add.i.i.i186 = add i32 %mul.i.i.i185, %69
  %arrayidx1.i.i.i187 = getelementptr i8, ptr %57, i32 %add.i.i.i186
  %add.ptr.i.i.i188 = getelementptr i32, ptr %arrayidx1.i.i.i187, i32 8
  %73 = ptrtoint ptr %add.ptr.i.i.i188 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr.i.i.i188, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %74)
  %cmp2.i.i.i189 = icmp eq i32 %74, 117440512
  br i1 %cmp2.i.i.i189, label %nx_get_table_desc.exit.i.i192, label %for.cond.i.i.i183

nx_get_table_desc.exit.i.i192:                    ; preds = %for.body.i.i.i190
  %cmp.i.i191 = icmp eq ptr %arrayidx1.i.i.i187, null
  br i1 %cmp.i.i191, label %nx_get_table_desc.exit.i.i192.if.then.i210_crit_edge, label %if.end.i.i197

nx_get_table_desc.exit.i.i192.if.then.i210_crit_edge: ; preds = %nx_get_table_desc.exit.i.i192
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i210

if.end.i.i197:                                    ; preds = %nx_get_table_desc.exit.i.i192
  call void @__sanitizer_cov_trace_pc() #13
  %75 = tail call i32 @llvm.bswap.i32(i32 %61) #11
  %76 = ptrtoint ptr %arrayidx1.i.i.i187 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx1.i.i.i187, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #11
  %entry_size.i.i193 = getelementptr inbounds %struct.uni_table_desc, ptr %arrayidx1.i.i.i187, i32 0, i32 2
  %79 = ptrtoint ptr %entry_size.i.i193 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %entry_size.i.i193, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #11
  %mul.i.i194 = mul i32 %81, %75
  %add.i.i195 = add i32 %mul.i.i194, %78
  %arrayidx1.i.i196 = getelementptr i8, ptr %57, i32 %add.i.i195
  br label %if.then.i210

nx_get_fw_size.exit.thread:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i200 = getelementptr i8, ptr %57, i32 4097036
  %82 = ptrtoint ptr %arrayidx.i200 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i200, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #11
  br label %nx_get_fw_offs.exit

if.then.i210:                                     ; preds = %if.end.i.i197, %nx_get_table_desc.exit.i.i192.if.then.i210_crit_edge, %for.cond.i.i.i183.if.then.i210_crit_edge
  %retval.0.i.i198 = phi ptr [ %arrayidx1.i.i196, %if.end.i.i197 ], [ null, %nx_get_table_desc.exit.i.i192.if.then.i210_crit_edge ], [ null, %for.cond.i.i.i183.if.then.i210_crit_edge ]
  %size.i = getelementptr inbounds %struct.uni_data_desc, ptr %retval.0.i.i198, i32 0, i32 1
  %85 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %size.i, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #11
  %88 = ptrtoint ptr %num_entries.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr = load i32, ptr %num_entries.i.i.i175, align 4
  %89 = ptrtoint ptr %file_prd_off.i.i172 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %file_prd_off.i.i172, align 4
  %arrayidx.i.i206 = getelementptr i8, ptr %57, i32 %90
  %add.ptr.i.i207 = getelementptr i32, ptr %arrayidx.i.i206, i32 29
  %91 = ptrtoint ptr %add.ptr.i.i207 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i.i207, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp15.not.i.i.i209 = icmp eq i32 %.pr, 0
  br i1 %cmp15.not.i.i.i209, label %if.then.i210.nx_get_data_desc.exit.i232_crit_edge, label %for.body.lr.ph.i.i.i213

if.then.i210.nx_get_data_desc.exit.i232_crit_edge: ; preds = %if.then.i210
  call void @__sanitizer_cov_trace_pc() #13
  br label %nx_get_data_desc.exit.i232

for.body.lr.ph.i.i.i213:                          ; preds = %if.then.i210
  %93 = tail call i32 @llvm.bswap.i32(i32 %.pr) #11
  %94 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %57, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #11
  %entry_size.i.i.i211 = getelementptr inbounds %struct.uni_table_desc, ptr %57, i32 0, i32 2
  %97 = ptrtoint ptr %entry_size.i.i.i211 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %entry_size.i.i.i211, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #11
  %umax.i.i.i212 = tail call i32 @llvm.umax.i32(i32 %93, i32 1) #11
  br label %for.body.i.i.i223

for.cond.i.i.i216:                                ; preds = %for.body.i.i.i223
  %inc.i.i.i214 = add nuw i32 %i.016.i.i.i217, 1
  %exitcond.not.i.i.i215 = icmp eq i32 %inc.i.i.i214, %umax.i.i.i212
  br i1 %exitcond.not.i.i.i215, label %for.cond.i.i.i216.nx_get_data_desc.exit.i232_crit_edge, label %for.cond.i.i.i216.for.body.i.i.i223_crit_edge

for.cond.i.i.i216.for.body.i.i.i223_crit_edge:    ; preds = %for.cond.i.i.i216
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i223

for.cond.i.i.i216.nx_get_data_desc.exit.i232_crit_edge: ; preds = %for.cond.i.i.i216
  call void @__sanitizer_cov_trace_pc() #13
  br label %nx_get_data_desc.exit.i232

for.body.i.i.i223:                                ; preds = %for.cond.i.i.i216.for.body.i.i.i223_crit_edge, %for.body.lr.ph.i.i.i213
  %i.016.i.i.i217 = phi i32 [ 0, %for.body.lr.ph.i.i.i213 ], [ %inc.i.i.i214, %for.cond.i.i.i216.for.body.i.i.i223_crit_edge ]
  %mul.i.i.i218 = mul i32 %i.016.i.i.i217, %99
  %add.i.i.i219 = add i32 %mul.i.i.i218, %96
  %arrayidx1.i.i.i220 = getelementptr i8, ptr %57, i32 %add.i.i.i219
  %add.ptr.i.i.i221 = getelementptr i32, ptr %arrayidx1.i.i.i220, i32 8
  %100 = ptrtoint ptr %add.ptr.i.i.i221 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr.i.i.i221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %101)
  %cmp2.i.i.i222 = icmp eq i32 %101, 117440512
  br i1 %cmp2.i.i.i222, label %nx_get_table_desc.exit.i.i225, label %for.cond.i.i.i216

nx_get_table_desc.exit.i.i225:                    ; preds = %for.body.i.i.i223
  %cmp.i.i224 = icmp eq ptr %arrayidx1.i.i.i220, null
  br i1 %cmp.i.i224, label %nx_get_table_desc.exit.i.i225.nx_get_data_desc.exit.i232_crit_edge, label %if.end.i.i230

nx_get_table_desc.exit.i.i225.nx_get_data_desc.exit.i232_crit_edge: ; preds = %nx_get_table_desc.exit.i.i225
  call void @__sanitizer_cov_trace_pc() #13
  br label %nx_get_data_desc.exit.i232

if.end.i.i230:                                    ; preds = %nx_get_table_desc.exit.i.i225
  call void @__sanitizer_cov_trace_pc() #13
  %102 = tail call i32 @llvm.bswap.i32(i32 %92) #11
  %103 = ptrtoint ptr %arrayidx1.i.i.i220 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx1.i.i.i220, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #11
  %entry_size.i.i226 = getelementptr inbounds %struct.uni_table_desc, ptr %arrayidx1.i.i.i220, i32 0, i32 2
  %106 = ptrtoint ptr %entry_size.i.i226 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %entry_size.i.i226, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #11
  %mul.i.i227 = mul i32 %108, %102
  %add.i.i228 = add i32 %mul.i.i227, %105
  %arrayidx1.i.i229 = getelementptr i8, ptr %57, i32 %add.i.i228
  br label %nx_get_data_desc.exit.i232

nx_get_data_desc.exit.i232:                       ; preds = %if.end.i.i230, %nx_get_table_desc.exit.i.i225.nx_get_data_desc.exit.i232_crit_edge, %for.cond.i.i.i216.nx_get_data_desc.exit.i232_crit_edge, %if.then.i210.nx_get_data_desc.exit.i232_crit_edge, %if.then.i210.thread
  %div164287319.in = phi i32 [ %87, %if.end.i.i230 ], [ %87, %nx_get_table_desc.exit.i.i225.nx_get_data_desc.exit.i232_crit_edge ], [ %87, %if.then.i210.nx_get_data_desc.exit.i232_crit_edge ], [ %65, %if.then.i210.thread ], [ %87, %for.cond.i.i.i216.nx_get_data_desc.exit.i232_crit_edge ]
  %retval.0.i.i231 = phi ptr [ %arrayidx1.i.i229, %if.end.i.i230 ], [ null, %nx_get_table_desc.exit.i.i225.nx_get_data_desc.exit.i232_crit_edge ], [ null, %if.then.i210.nx_get_data_desc.exit.i232_crit_edge ], [ null, %if.then.i210.thread ], [ null, %for.cond.i.i.i216.nx_get_data_desc.exit.i232_crit_edge ]
  %109 = ptrtoint ptr %retval.0.i.i231 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %retval.0.i.i231, align 4
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #11
  br label %nx_get_fw_offs.exit

nx_get_fw_offs.exit:                              ; preds = %nx_get_data_desc.exit.i232, %nx_get_fw_size.exit.thread
  %div164282.in = phi i32 [ %div164287319.in, %nx_get_data_desc.exit.i232 ], [ %84, %nx_get_fw_size.exit.thread ]
  %offs.0.i233 = phi i32 [ %111, %nx_get_data_desc.exit.i232 ], [ 274432, %nx_get_fw_size.exit.thread ]
  %div164282 = lshr i32 %div164282.in, 3
  %arrayidx.i236 = getelementptr i8, ptr %57, i32 %offs.0.i233
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div164282.in)
  %cmp17301.not = icmp ult i32 %div164282.in, 8
  br i1 %cmp17301.not, label %nx_get_fw_offs.exit.for.end30_crit_edge, label %nx_get_fw_offs.exit.for.body19_crit_edge

nx_get_fw_offs.exit.for.body19_crit_edge:         ; preds = %nx_get_fw_offs.exit
  br label %for.body19

nx_get_fw_offs.exit.for.end30_crit_edge:          ; preds = %nx_get_fw_offs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end30

for.body19:                                       ; preds = %if.end26.for.body19_crit_edge, %nx_get_fw_offs.exit.for.body19_crit_edge
  %flashaddr.1303 = phi i32 [ %add27, %if.end26.for.body19_crit_edge ], [ 274432, %nx_get_fw_offs.exit.for.body19_crit_edge ]
  %i.1302 = phi i32 [ %inc29, %if.end26.for.body19_crit_edge ], [ 0, %nx_get_fw_offs.exit.for.body19_crit_edge ]
  %arrayidx20 = getelementptr i64, ptr %arrayidx.i236, i32 %i.1302
  %112 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %arrayidx20, align 8
  %114 = tail call i64 @llvm.bswap.i64(i64 %113)
  %115 = ptrtoint ptr %pci_mem_write to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pci_mem_write, align 8
  %conv22 = zext i32 %flashaddr.1303 to i64
  %call23 = tail call i32 %116(ptr noundef %adapter, i64 noundef %conv22, i64 noundef %114) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %for.body19.cleanup102_crit_edge

for.body19.cleanup102_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup102

if.end26:                                         ; preds = %for.body19
  %add27 = add i32 %flashaddr.1303, 8
  %inc29 = add nuw nsw i32 %i.1302, 1
  %exitcond312.not = icmp eq i32 %inc29, %div164282
  br i1 %exitcond312.not, label %if.end26.for.end30_crit_edge, label %if.end26.for.body19_crit_edge

if.end26.for.body19_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19

if.end26.for.end30_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end30

for.end30:                                        ; preds = %if.end26.for.end30_crit_edge, %nx_get_fw_offs.exit.for.end30_crit_edge
  %flashaddr.1.lcssa = phi i32 [ 274432, %nx_get_fw_offs.exit.for.end30_crit_edge ], [ %add27, %if.end26.for.end30_crit_edge ]
  %117 = ptrtoint ptr %fw_type to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %fw_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %118)
  %cmp.i238 = icmp eq i8 %118, 3
  %119 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %fw1, align 4
  %data.i.i240 = getelementptr inbounds %struct.firmware, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %data.i.i240 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data.i.i240, align 4
  br i1 %cmp.i238, label %if.then.i246, label %if.else.i271

if.then.i246:                                     ; preds = %for.end30
  %file_prd_off.i.i241 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 71
  %123 = ptrtoint ptr %file_prd_off.i.i241 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %file_prd_off.i.i241, align 4
  %arrayidx.i.i242 = getelementptr i8, ptr %122, i32 %124
  %add.ptr.i.i243 = getelementptr i32, ptr %arrayidx.i.i242, i32 29
  %125 = ptrtoint ptr %add.ptr.i.i243 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %add.ptr.i.i243, align 4
  %num_entries.i.i.i244 = getelementptr inbounds %struct.uni_table_desc, ptr %122, i32 0, i32 1
  %127 = ptrtoint ptr %num_entries.i.i.i244 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %num_entries.i.i.i244, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp15.not.i.i.i245 = icmp eq i32 %128, 0
  br i1 %cmp15.not.i.i.i245, label %if.then.i246.nx_get_data_desc.exit.i269_crit_edge, label %for.body.lr.ph.i.i.i249

if.then.i246.nx_get_data_desc.exit.i269_crit_edge: ; preds = %if.then.i246
  call void @__sanitizer_cov_trace_pc() #13
  br label %nx_get_data_desc.exit.i269

for.body.lr.ph.i.i.i249:                          ; preds = %if.then.i246
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #11
  %130 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %122, align 4
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #11
  %entry_size.i.i.i247 = getelementptr inbounds %struct.uni_table_desc, ptr %122, i32 0, i32 2
  %133 = ptrtoint ptr %entry_size.i.i.i247 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %entry_size.i.i.i247, align 4
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #11
  %umax.i.i.i248 = tail call i32 @llvm.umax.i32(i32 %129, i32 1) #11
  br label %for.body.i.i.i259

for.cond.i.i.i252:                                ; preds = %for.body.i.i.i259
  %inc.i.i.i250 = add nuw i32 %i.016.i.i.i253, 1
  %exitcond.not.i.i.i251 = icmp eq i32 %inc.i.i.i250, %umax.i.i.i248
  br i1 %exitcond.not.i.i.i251, label %for.cond.i.i.i252.nx_get_data_desc.exit.i269_crit_edge, label %for.cond.i.i.i252.for.body.i.i.i259_crit_edge

for.cond.i.i.i252.for.body.i.i.i259_crit_edge:    ; preds = %for.cond.i.i.i252
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i259

for.cond.i.i.i252.nx_get_data_desc.exit.i269_crit_edge: ; preds = %for.cond.i.i.i252
  call void @__sanitizer_cov_trace_pc() #13
  br label %nx_get_data_desc.exit.i269

for.body.i.i.i259:                                ; preds = %for.cond.i.i.i252.for.body.i.i.i259_crit_edge, %for.body.lr.ph.i.i.i249
  %i.016.i.i.i253 = phi i32 [ 0, %for.body.lr.ph.i.i.i249 ], [ %inc.i.i.i250, %for.cond.i.i.i252.for.body.i.i.i259_crit_edge ]
  %mul.i.i.i254 = mul i32 %i.016.i.i.i253, %135
  %add.i.i.i255 = add i32 %mul.i.i.i254, %132
  %arrayidx1.i.i.i256 = getelementptr i8, ptr %122, i32 %add.i.i.i255
  %add.ptr.i.i.i257 = getelementptr i32, ptr %arrayidx1.i.i.i256, i32 8
  %136 = ptrtoint ptr %add.ptr.i.i.i257 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %add.ptr.i.i.i257, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %137)
  %cmp2.i.i.i258 = icmp eq i32 %137, 117440512
  br i1 %cmp2.i.i.i258, label %nx_get_table_desc.exit.i.i261, label %for.cond.i.i.i252

nx_get_table_desc.exit.i.i261:                    ; preds = %for.body.i.i.i259
  %cmp.i.i260 = icmp eq ptr %arrayidx1.i.i.i256, null
  br i1 %cmp.i.i260, label %nx_get_table_desc.exit.i.i261.nx_get_data_desc.exit.i269_crit_edge, label %if.end.i.i266

nx_get_table_desc.exit.i.i261.nx_get_data_desc.exit.i269_crit_edge: ; preds = %nx_get_table_desc.exit.i.i261
  call void @__sanitizer_cov_trace_pc() #13
  br label %nx_get_data_desc.exit.i269

if.end.i.i266:                                    ; preds = %nx_get_table_desc.exit.i.i261
  call void @__sanitizer_cov_trace_pc() #13
  %138 = tail call i32 @llvm.bswap.i32(i32 %126) #11
  %139 = ptrtoint ptr %arrayidx1.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx1.i.i.i256, align 4
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #11
  %entry_size.i.i262 = getelementptr inbounds %struct.uni_table_desc, ptr %arrayidx1.i.i.i256, i32 0, i32 2
  %142 = ptrtoint ptr %entry_size.i.i262 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %entry_size.i.i262, align 4
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #11
  %mul.i.i263 = mul i32 %144, %138
  %add.i.i264 = add i32 %mul.i.i263, %141
  %arrayidx1.i.i265 = getelementptr i8, ptr %122, i32 %add.i.i264
  br label %nx_get_data_desc.exit.i269

nx_get_data_desc.exit.i269:                       ; preds = %if.end.i.i266, %nx_get_table_desc.exit.i.i261.nx_get_data_desc.exit.i269_crit_edge, %for.cond.i.i.i252.nx_get_data_desc.exit.i269_crit_edge, %if.then.i246.nx_get_data_desc.exit.i269_crit_edge
  %retval.0.i.i267 = phi ptr [ %arrayidx1.i.i265, %if.end.i.i266 ], [ null, %nx_get_table_desc.exit.i.i261.nx_get_data_desc.exit.i269_crit_edge ], [ null, %if.then.i246.nx_get_data_desc.exit.i269_crit_edge ], [ null, %for.cond.i.i.i252.nx_get_data_desc.exit.i269_crit_edge ]
  %size.i268 = getelementptr inbounds %struct.uni_data_desc, ptr %retval.0.i.i267, i32 0, i32 1
  br label %nx_get_fw_size.exit273

if.else.i271:                                     ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i270 = getelementptr i8, ptr %122, i32 4097036
  br label %nx_get_fw_size.exit273

nx_get_fw_size.exit273:                           ; preds = %if.else.i271, %nx_get_data_desc.exit.i269
  %arrayidx.sink.i272 = phi ptr [ %arrayidx.i270, %if.else.i271 ], [ %size.i268, %nx_get_data_desc.exit.i269 ]
  %145 = ptrtoint ptr %arrayidx.sink.i272 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx.sink.i272, align 4
  %147 = and i32 %146, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool32.not = icmp eq i32 %147, 0
  br i1 %tobool32.not, label %nx_get_fw_size.exit273.if.end75_crit_edge, label %if.then33

nx_get_fw_size.exit273.if.end75_crit_edge:        ; preds = %nx_get_fw_size.exit273
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then33:                                        ; preds = %nx_get_fw_size.exit273
  %arrayidx34 = getelementptr i64, ptr %arrayidx.i236, i32 %div164282
  %148 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %arrayidx34, align 8
  %150 = tail call i64 @llvm.bswap.i64(i64 %149)
  %151 = ptrtoint ptr %pci_mem_write to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pci_mem_write, align 8
  %conv36 = zext i32 %flashaddr.1.lcssa to i64
  %call37 = tail call i32 %152(ptr noundef %adapter, i64 noundef %conv36, i64 noundef %150) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then33.if.end75_crit_edge, label %if.then33.cleanup102_crit_edge

if.then33.cleanup102_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup102

if.then33.if.end75_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hi) #11
  %153 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 -1, ptr %hi, align 4, !annotation !146
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lo) #11
  %154 = ptrtoint ptr %lo to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -1, ptr %lo, align 4, !annotation !146
  %pci_mem_write60 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 56
  br label %for.body46

for.body46:                                       ; preds = %if.end65.for.body46_crit_edge, %if.else
  %flashaddr.2306 = phi i32 [ 65536, %if.else ], [ %add66, %if.end65.for.body46_crit_edge ]
  %i.2305 = phi i32 [ 0, %if.else ], [ %inc68, %if.end65.for.body46_crit_edge ]
  %call.i = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %netxen_rom_fast_read.exit, label %for.body46.cleanup102.critedge167_crit_edge

for.body46.cleanup102.critedge167_crit_edge:      ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup102.critedge167

netxen_rom_fast_read.exit:                        ; preds = %for.body46
  %call1.i = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef %flashaddr.2306, ptr noundef nonnull %lo) #11
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp48.not = icmp eq i32 %call1.i, 0
  br i1 %cmp48.not, label %if.end51, label %netxen_rom_fast_read.exit.cleanup102.critedge167_crit_edge

netxen_rom_fast_read.exit.cleanup102.critedge167_crit_edge: ; preds = %netxen_rom_fast_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup102.critedge167

if.end51:                                         ; preds = %netxen_rom_fast_read.exit
  %call.i274 = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274)
  %cmp.not.i275 = icmp eq i32 %call.i274, 0
  br i1 %cmp.not.i275, label %netxen_rom_fast_read.exit279, label %if.end51.cleanup102.critedge166_crit_edge

if.end51.cleanup102.critedge166_crit_edge:        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup102.critedge166

netxen_rom_fast_read.exit279:                     ; preds = %if.end51
  %add52 = or i32 %flashaddr.2306, 4
  %call1.i276 = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef %add52, ptr noundef nonnull %hi) #11
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i276)
  %cmp54.not = icmp eq i32 %call1.i276, 0
  br i1 %cmp54.not, label %if.end57, label %netxen_rom_fast_read.exit279.cleanup102.critedge166_crit_edge

netxen_rom_fast_read.exit279.cleanup102.critedge166_crit_edge: ; preds = %netxen_rom_fast_read.exit279
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup102.critedge166

if.end57:                                         ; preds = %netxen_rom_fast_read.exit279
  %155 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %hi, align 4
  %conv58 = zext i32 %156 to i64
  %shl = shl nuw i64 %conv58, 32
  %157 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %lo, align 4
  %conv59 = zext i32 %158 to i64
  %or = or i64 %shl, %conv59
  %159 = ptrtoint ptr %pci_mem_write60 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pci_mem_write60, align 8
  %conv61 = zext i32 %flashaddr.2306 to i64
  %call62 = tail call i32 %160(ptr noundef %adapter, i64 noundef %conv61, i64 noundef %or) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %cleanup102.critedge

if.end65:                                         ; preds = %if.end57
  %add66 = add nuw nsw i32 %flashaddr.2306, 8
  %inc68 = add nuw nsw i32 %i.2305, 1
  %exitcond313.not = icmp eq i32 %inc68, 26112
  br i1 %exitcond313.not, label %if.end75.critedge165, label %if.end65.for.body46_crit_edge

if.end65.for.body46_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body46

if.end75.critedge165:                             ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lo) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hi) #11
  br label %if.end75

if.end75:                                         ; preds = %if.end75.critedge165, %if.then33.if.end75_crit_edge, %nx_get_fw_size.exit273.if.end75_crit_edge
  tail call void @msleep(i32 noundef 1) #11
  %161 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %162)
  %cmp79 = icmp ugt i8 %162, 79
  br i1 %cmp79, label %if.then81, label %if.else86

if.then81:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  %crb_write82 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %163 = ptrtoint ptr %crb_write82 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %crb_write82, align 8
  %call83 = tail call i32 %164(ptr noundef %adapter, i32 noundef 118489112, i32 noundef 4128) #11
  %165 = ptrtoint ptr %crb_write82 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %crb_write82, align 8
  %call85 = tail call i32 %166(ptr noundef %adapter, i32 noundef 154140680, i32 noundef 8388638) #11
  br label %cleanup102

if.else86:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %162)
  %cmp90 = icmp ugt i8 %162, 47
  %crb_write93 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %167 = ptrtoint ptr %crb_write93 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %crb_write93, align 8
  br i1 %cmp90, label %if.then92, label %if.else95

if.then92:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #13
  %call94 = tail call i32 %168(ptr noundef %adapter, i32 noundef 154140680, i32 noundef 8388637) #11
  br label %cleanup102

if.else95:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #13
  %call97 = tail call i32 %168(ptr noundef %adapter, i32 noundef 154140840, i32 noundef 16383) #11
  %169 = ptrtoint ptr %crb_write93 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %crb_write93, align 8
  %call99 = tail call i32 %170(ptr noundef %adapter, i32 noundef 154140728, i32 noundef 0) #11
  br label %cleanup102

cleanup102.critedge:                              ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lo) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hi) #11
  br label %cleanup102

cleanup102.critedge166:                           ; preds = %netxen_rom_fast_read.exit279.cleanup102.critedge166_crit_edge, %if.end51.cleanup102.critedge166_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lo) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hi) #11
  br label %cleanup102

cleanup102.critedge167:                           ; preds = %netxen_rom_fast_read.exit.cleanup102.critedge167_crit_edge, %for.body46.cleanup102.critedge167_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lo) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hi) #11
  br label %cleanup102

cleanup102:                                       ; preds = %cleanup102.critedge167, %cleanup102.critedge166, %cleanup102.critedge, %if.else95, %if.then92, %if.then81, %if.then33.cleanup102_crit_edge, %for.body19.cleanup102_crit_edge, %for.body.cleanup102_crit_edge
  %retval.2 = phi i32 [ -5, %if.then33.cleanup102_crit_edge ], [ -5, %cleanup102.critedge ], [ -5, %cleanup102.critedge166 ], [ -5, %cleanup102.critedge167 ], [ 0, %if.then92 ], [ 0, %if.else95 ], [ 0, %if.then81 ], [ -5, %for.body19.cleanup102_crit_edge ], [ -5, %for.body.cleanup102_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netxen_request_firmware(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %flashed_ver.i.i25 = alloca i32, align 4
  %flashed_ver.i.i.i.i = alloca i32, align 4
  %flash_fw_ver.i = alloca i32, align 4
  %bios.i = alloca i32, align 4
  %flashed_ver.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %fw_type = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 27
  %2 = ptrtoint ptr %fw_type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %fw_type, align 1
  %revision_id.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %crb_read.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %fw4 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 73
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %file_prd_off.i.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 71
  br label %next

nextthread-pre-split:                             ; preds = %if.then12, %if.else.nextthread-pre-split_crit_edge
  %3 = ptrtoint ptr %fw_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %.pr = load i8, ptr %fw_type, align 1
  br label %next

next:                                             ; preds = %nextthread-pre-split, %entry
  %4 = phi i8 [ %.pr, %nextthread-pre-split ], [ -1, %entry ]
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %4, label %next.if.then_crit_edge [
    i8 -1, label %next.if.else_crit_edge
    i8 3, label %sw.bb2.i
    i8 2, label %sw.bb16.i
  ]

next.if.else_crit_edge:                           ; preds = %next
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

next.if.then_crit_edge:                           ; preds = %next
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

sw.bb2.i:                                         ; preds = %next
  %6 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %7)
  %cmp.i = icmp ugt i8 %7, 79
  br i1 %cmp.i, label %sw.bb2.i.if.then_crit_edge, label %if.else.i

sw.bb2.i.if.then_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.else.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %7)
  %cmp8.i = icmp ult i8 %7, 38
  br i1 %cmp8.i, label %if.else.i.if.else_crit_edge, label %if.end.i.i

if.else.i.if.else_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end.i.i:                                       ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flashed_ver.i.i) #11
  %8 = ptrtoint ptr %flashed_ver.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %flashed_ver.i.i, align 4, !annotation !146
  %call.i.i.i = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end.i.i.netxen_rom_fast_read.exit.i.i_crit_edge

if.end.i.i.netxen_rom_fast_read.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_rom_fast_read.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i.i = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef 4097032, ptr noundef nonnull %flashed_ver.i.i) #11
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #11
  br label %netxen_rom_fast_read.exit.i.i

netxen_rom_fast_read.exit.i.i:                    ; preds = %if.end.i.i.i, %if.end.i.i.netxen_rom_fast_read.exit.i.i_crit_edge
  %9 = ptrtoint ptr %flashed_ver.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flashed_ver.i.i, align 4
  %11 = and i32 %10, 65535
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  %shr4.i.i = lshr i32 %10, 16
  %add5.i.i = or i32 %12, %shr4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67109083, i32 %add5.i.i)
  %cmp6.i.i = icmp ugt i32 %add5.i.i, 67109083
  br i1 %cmp6.i.i, label %if.then8.i.i, label %netxen_rom_fast_read.exit.i.i._crit_edge

netxen_rom_fast_read.exit.i.i._crit_edge:         ; preds = %netxen_rom_fast_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %15

if.then8.i.i:                                     ; preds = %netxen_rom_fast_read.exit.i.i
  %13 = ptrtoint ptr %crb_read.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %crb_read.i.i, align 4
  %call9.i.i = tail call i32 %14(ptr noundef %adapter, i32 noundef 136323116) #11
  %and10.i.i = and i32 %call9.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool.not.i.i, label %if.then8.i.i._crit_edge, label %netxen_p3_has_mn.exit.i

if.then8.i.i._crit_edge:                          ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %15

netxen_p3_has_mn.exit.i:                          ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flashed_ver.i.i) #11
  br label %if.else

15:                                               ; preds = %if.then8.i.i._crit_edge, %netxen_rom_fast_read.exit.i.i._crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flashed_ver.i.i) #11
  br label %if.else

sw.bb16.i:                                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %sw.bb2.i.if.then_crit_edge, %next.if.then_crit_edge
  %16 = ptrtoint ptr %fw_type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %fw_type, align 1
  %17 = ptrtoint ptr %fw4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %fw4, align 4
  br label %if.end15

if.else:                                          ; preds = %sw.bb16.i, %15, %netxen_p3_has_mn.exit.i, %if.else.i.if.else_crit_edge, %next.if.else_crit_edge
  %fw_type.0.i.ph = phi i8 [ 2, %netxen_p3_has_mn.exit.i ], [ 1, %15 ], [ 0, %if.else.i.if.else_crit_edge ], [ 3, %next.if.else_crit_edge ], [ 1, %sw.bb16.i ]
  %18 = ptrtoint ptr %fw_type to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %fw_type.0.i.ph, ptr %fw_type, align 1
  %conv = zext i8 %fw_type.0.i.ph to i32
  %arrayidx = getelementptr [5 x ptr], ptr @fw_name, i32 0, i32 %conv
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @request_firmware(ptr noundef %fw4, ptr noundef %20, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6.not = icmp eq i32 %call, 0
  br i1 %cmp6.not, label %if.end, label %if.else.nextthread-pre-split_crit_edge

if.else.nextthread-pre-split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %nextthread-pre-split

if.end:                                           ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flash_fw_ver.i) #11
  %21 = ptrtoint ptr %flash_fw_ver.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %flash_fw_ver.i, align 4, !annotation !146
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bios.i) #11
  %22 = ptrtoint ptr %bios.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %bios.i, align 4, !annotation !146
  %23 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev1, align 8
  %25 = ptrtoint ptr %fw4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw4, align 4
  %27 = ptrtoint ptr %fw_type to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fw_type, align 1
  %conv.i = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp.i26 = icmp eq i8 %28, 3
  br i1 %cmp.i26, label %if.then.i, label %if.else.i29

if.then.i:                                        ; preds = %if.end
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %30)
  %cmp.i.i.i = icmp ult i32 %30, 56
  br i1 %cmp.i.i.i, label %if.then.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, label %if.end.i.i.i27

if.then.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_nic_validate_unified_romimage.exit.i

if.end.i.i.i27:                                   ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i.i, align 4
  %num_entries.i.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_entries.i.i.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #11
  %entry_size2.i.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %32, i32 0, i32 2
  %36 = ptrtoint ptr %entry_size2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %entry_size2.i.i.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #11
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %32, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #11
  %mul.i.i.i = mul i32 %38, %35
  %add.i.i.i = add i32 %41, %mul.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %add.i.i.i)
  %cmp3.i.i.i = icmp ult i32 %30, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i27.netxen_nic_validate_unified_romimage.exit.i_crit_edge, label %if.end.i.i28

if.end.i.i.i27.netxen_nic_validate_unified_romimage.exit.i_crit_edge: ; preds = %if.end.i.i.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_nic_validate_unified_romimage.exit.i

if.end.i.i28:                                     ; preds = %if.end.i.i.i27
  %42 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %43)
  %cmp.i34.i.i = icmp ult i8 %43, 38
  br i1 %cmp.i34.i.i, label %if.end.i.i28.cond.end.i.i.i_crit_edge, label %if.end.i.i.i.i

if.end.i.i28.cond.end.i.i.i_crit_edge:            ; preds = %if.end.i.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flashed_ver.i.i.i.i) #11
  %44 = ptrtoint ptr %flashed_ver.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %flashed_ver.i.i.i.i, align 4, !annotation !146
  %call.i.i.i.i.i = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.i.netxen_rom_fast_read.exit.i.i.i.i_crit_edge

if.end.i.i.i.i.netxen_rom_fast_read.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_rom_fast_read.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i.i.i.i = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef 4097032, ptr noundef nonnull %flashed_ver.i.i.i.i) #11
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #11
  br label %netxen_rom_fast_read.exit.i.i.i.i

netxen_rom_fast_read.exit.i.i.i.i:                ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.i.netxen_rom_fast_read.exit.i.i.i.i_crit_edge
  %45 = ptrtoint ptr %flashed_ver.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flashed_ver.i.i.i.i, align 4
  %47 = and i32 %46, 65535
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #11
  %shr4.i.i.i.i = lshr i32 %46, 16
  %add5.i.i.i.i = or i32 %48, %shr4.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67109083, i32 %add5.i.i.i.i)
  %cmp6.i.i.i.i = icmp ugt i32 %add5.i.i.i.i, 67109083
  br i1 %cmp6.i.i.i.i, label %if.then8.i.i.i.i, label %netxen_rom_fast_read.exit.i.i.i.i.if.end13.i.i.i.i_crit_edge

netxen_rom_fast_read.exit.i.i.i.i.if.end13.i.i.i.i_crit_edge: ; preds = %netxen_rom_fast_read.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %netxen_rom_fast_read.exit.i.i.i.i
  %49 = ptrtoint ptr %crb_read.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %crb_read.i.i, align 4
  %call9.i.i.i.i = tail call i32 %50(ptr noundef %adapter, i32 noundef 136323116) #11
  %and10.i.i.i.i = and i32 %call9.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and10.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then8.i.i.i.i.if.end13.i.i.i.i_crit_edge, label %if.then8.i.i.i.i.netxen_p3_has_mn.exit.i.i.i_crit_edge

if.then8.i.i.i.i.netxen_p3_has_mn.exit.i.i.i_crit_edge: ; preds = %if.then8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_p3_has_mn.exit.i.i.i

if.then8.i.i.i.i.if.end13.i.i.i.i_crit_edge:      ; preds = %if.then8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i.i.i.i

if.end13.i.i.i.i:                                 ; preds = %if.then8.i.i.i.i.if.end13.i.i.i.i_crit_edge, %netxen_rom_fast_read.exit.i.i.i.i.if.end13.i.i.i.i_crit_edge
  br label %netxen_p3_has_mn.exit.i.i.i

netxen_p3_has_mn.exit.i.i.i:                      ; preds = %if.end13.i.i.i.i, %if.then8.i.i.i.i.netxen_p3_has_mn.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 0, %if.end13.i.i.i.i ], [ 1, %if.then8.i.i.i.i.netxen_p3_has_mn.exit.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flashed_ver.i.i.i.i) #11
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %netxen_p3_has_mn.exit.i.i.i, %if.end.i.i28.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %retval.0.i.i.i.i, %netxen_p3_has_mn.exit.i.i.i ], [ 1, %if.end.i.i28.cond.end.i.i.i_crit_edge ]
  %51 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_entries.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp15.not.i.i.i.i = icmp eq i32 %52, 0
  br i1 %cmp15.not.i.i.i.i, label %cond.end.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, label %for.body.lr.ph.i.i.i.i

cond.end.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge: ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_nic_validate_unified_romimage.exit.i

for.body.lr.ph.i.i.i.i:                           ; preds = %cond.end.i.i.i
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #11
  %54 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %32, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #11
  %57 = ptrtoint ptr %entry_size2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %entry_size2.i.i.i, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #11
  %umax.i.i.i.i = tail call i32 @llvm.umax.i32(i32 %53, i32 1) #11
  br label %for.body.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw i32 %i.016.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %umax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.cond.i.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, label %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i.i

for.cond.i.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge: ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_nic_validate_unified_romimage.exit.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %i.016.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %mul.i.i.i.i = mul i32 %i.016.i.i.i.i, %59
  %add.i.i.i.i = add i32 %mul.i.i.i.i, %56
  %arrayidx1.i.i.i.i = getelementptr i8, ptr %32, i32 %add.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i32, ptr %arrayidx1.i.i.i.i, i32 8
  %60 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp2.i.i.i.i = icmp eq i32 %61, 0
  br i1 %cmp2.i.i.i.i, label %nx_get_table_desc.exit.i.i.i, label %for.cond.i.i.i.i

nx_get_table_desc.exit.i.i.i:                     ; preds = %for.body.i.i.i.i
  %cmp3.i35.i.i = icmp eq ptr %arrayidx1.i.i.i.i, null
  br i1 %cmp3.i35.i.i, label %nx_get_table_desc.exit.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, label %if.end.i39.i.i

nx_get_table_desc.exit.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge: ; preds = %nx_get_table_desc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_nic_validate_unified_romimage.exit.i

if.end.i39.i.i:                                   ; preds = %nx_get_table_desc.exit.i.i.i
  %num_entries.i36.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %arrayidx1.i.i.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %num_entries.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_entries.i36.i.i, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #11
  %entry_size5.i.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %arrayidx1.i.i.i.i, i32 0, i32 2
  %65 = ptrtoint ptr %entry_size5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %entry_size5.i.i.i, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #11
  %68 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx1.i.i.i.i, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #11
  %mul.i37.i.i = mul i32 %67, %64
  %add.i38.i.i = add i32 %70, %mul.i37.i.i
  %71 = ptrtoint ptr %fw4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fw4, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %add.i38.i.i)
  %cmp7.i.i.i = icmp ult i32 %74, %add.i38.i.i
  br i1 %cmp7.i.i.i, label %if.end.i39.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, label %nomn.preheader.i.i.i

if.end.i39.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge: ; preds = %if.end.i39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_nic_validate_unified_romimage.exit.i

nomn.preheader.i.i.i:                             ; preds = %if.end.i39.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp1173.not.i.i.i = icmp eq i32 %63, 0
  %umax.i.i.i = tail call i32 @llvm.umax.i32(i32 %64, i32 1) #11
  br label %nomn.i.i.i

nomn.i.i.i:                                       ; preds = %land.lhs.true34.i.i.i.nomn.i.i.i_crit_edge, %nomn.preheader.i.i.i
  %mn_present.0.i.i.i = phi i32 [ 0, %land.lhs.true34.i.i.i.nomn.i.i.i_crit_edge ], [ %cond.i.i.i, %nomn.preheader.i.i.i ]
  br i1 %cmp1173.not.i.i.i, label %nomn.i.i.i.for.end.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

nomn.i.i.i.for.end.i.i.i_crit_edge:               ; preds = %nomn.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %nomn.i.i.i
  %75 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %revision_id.i, align 1
  %conv22.i.i.i = zext i8 %76 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mn_present.0.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %mn_present.0.i.i.i, 0
  %cond21.i.i.i = select i1 %tobool.not.i.i.i, i32 2, i32 1
  %sh_prom.i.i.i = zext i32 %cond21.i.i.i to i64
  %shl.i.i.i = shl nuw nsw i64 1, %sh_prom.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.074.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %mul17.i.i.i = mul i32 %i.074.i.i.i, %67
  %add18.i.i.i = add i32 %mul17.i.i.i, %70
  %arrayidx.i.i.i = getelementptr i8, ptr %32, i32 %add18.i.i.i
  %add.ptr20.i.i.i = getelementptr i32, ptr %arrayidx.i.i.i, i32 10
  %77 = ptrtoint ptr %add.ptr20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr20.i.i.i, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %conv22.i.i.i)
  %cmp23.i.i.i = icmp eq i32 %79, %conv22.i.i.i
  br i1 %cmp23.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %add.ptr.i.i.i = getelementptr i32, ptr %arrayidx.i.i.i, i32 11
  %80 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i.i.i, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #11
  %conv25.i.i.i = zext i32 %82 to i64
  %and.i.i.i = and i64 %shl.i.i.i, %conv25.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool26.not.i.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %if.end8.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.074.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %nomn.i.i.i.for.end.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mn_present.0.i.i.i)
  %tobool33.not.i.i.i = icmp eq i32 %mn_present.0.i.i.i, 0
  br i1 %tobool33.not.i.i.i, label %for.end.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, label %land.lhs.true34.i.i.i

for.end.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_nic_validate_unified_romimage.exit.i

land.lhs.true34.i.i.i:                            ; preds = %for.end.i.i.i
  %83 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %revision_id.i, align 1
  %cmp38.i.i.i = icmp ugt i8 %84, 47
  br i1 %cmp38.i.i.i, label %land.lhs.true34.i.i.i.nomn.i.i.i_crit_edge, label %land.lhs.true34.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge

land.lhs.true34.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge: ; preds = %land.lhs.true34.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_nic_validate_unified_romimage.exit.i

land.lhs.true34.i.i.i.nomn.i.i.i_crit_edge:       ; preds = %land.lhs.true34.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nomn.i.i.i

if.end8.i.i:                                      ; preds = %land.lhs.true.i.i.i
  %85 = ptrtoint ptr %file_prd_off.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add18.i.i.i, ptr %file_prd_off.i.i.i, align 4
  %data.i41.i.i = getelementptr inbounds %struct.firmware, ptr %72, i32 0, i32 1
  %86 = ptrtoint ptr %data.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %data.i41.i.i, align 4
  %arrayidx.i43.i.i = getelementptr i8, ptr %87, i32 %add18.i.i.i
  %add.ptr.i44.i.i = getelementptr i32, ptr %arrayidx.i43.i.i, i32 27
  %88 = ptrtoint ptr %add.ptr.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr.i44.i.i, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #11
  %num_entries.i.i45.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %87, i32 0, i32 1
  %91 = ptrtoint ptr %num_entries.i.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_entries.i.i45.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp15.not.i.i46.i.i = icmp eq i32 %92, 0
  br i1 %cmp15.not.i.i46.i.i, label %if.end8.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, label %for.body.lr.ph.i.i49.i.i

if.end8.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_nic_validate_unified_romimage.exit.i

for.body.lr.ph.i.i49.i.i:                         ; preds = %if.end8.i.i
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #11
  %94 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %87, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #11
  %entry_size.i.i47.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %87, i32 0, i32 2
  %97 = ptrtoint ptr %entry_size.i.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %entry_size.i.i47.i.i, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #11
  %umax.i.i48.i.i = tail call i32 @llvm.umax.i32(i32 %93, i32 1) #11
  br label %for.body.i.i59.i.i

for.cond.i.i52.i.i:                               ; preds = %for.body.i.i59.i.i
  %inc.i.i50.i.i = add nuw i32 %i.016.i.i53.i.i, 1
  %exitcond.not.i.i51.i.i = icmp eq i32 %inc.i.i50.i.i, %umax.i.i48.i.i
  br i1 %exitcond.not.i.i51.i.i, label %for.cond.i.i52.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, label %for.cond.i.i52.i.i.for.body.i.i59.i.i_crit_edge

for.cond.i.i52.i.i.for.body.i.i59.i.i_crit_edge:  ; preds = %for.cond.i.i52.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i59.i.i

for.cond.i.i52.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge: ; preds = %for.cond.i.i52.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_nic_validate_unified_romimage.exit.i

for.body.i.i59.i.i:                               ; preds = %for.cond.i.i52.i.i.for.body.i.i59.i.i_crit_edge, %for.body.lr.ph.i.i49.i.i
  %i.016.i.i53.i.i = phi i32 [ 0, %for.body.lr.ph.i.i49.i.i ], [ %inc.i.i50.i.i, %for.cond.i.i52.i.i.for.body.i.i59.i.i_crit_edge ]
  %mul.i.i54.i.i = mul i32 %i.016.i.i53.i.i, %99
  %add.i.i55.i.i = add i32 %mul.i.i54.i.i, %96
  %arrayidx1.i.i56.i.i = getelementptr i8, ptr %87, i32 %add.i.i55.i.i
  %add.ptr.i.i57.i.i = getelementptr i32, ptr %arrayidx1.i.i56.i.i, i32 8
  %100 = ptrtoint ptr %add.ptr.i.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr.i.i57.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %101)
  %cmp2.i.i58.i.i = icmp eq i32 %101, 100663296
  br i1 %cmp2.i.i58.i.i, label %nx_get_table_desc.exit.i61.i.i, label %for.cond.i.i52.i.i

nx_get_table_desc.exit.i61.i.i:                   ; preds = %for.body.i.i59.i.i
  %tobool.not.i60.i.i = icmp eq ptr %arrayidx1.i.i56.i.i, null
  br i1 %tobool.not.i60.i.i, label %nx_get_table_desc.exit.i61.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, label %if.end.i65.i.i

nx_get_table_desc.exit.i61.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge: ; preds = %nx_get_table_desc.exit.i61.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_nic_validate_unified_romimage.exit.i

if.end.i65.i.i:                                   ; preds = %nx_get_table_desc.exit.i61.i.i
  %102 = ptrtoint ptr %arrayidx1.i.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx1.i.i56.i.i, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #11
  %entry_size.i.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %arrayidx1.i.i56.i.i, i32 0, i32 2
  %105 = ptrtoint ptr %entry_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %entry_size.i.i.i, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #11
  %add.i62.i.i = add i32 %90, 1
  %mul.i63.i.i = mul i32 %107, %add.i62.i.i
  %add1.i.i.i = add i32 %mul.i63.i.i, %104
  %108 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %add1.i.i.i)
  %cmp.i64.i.i = icmp ult i32 %109, %add1.i.i.i
  br i1 %cmp.i64.i.i, label %if.end.i65.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, label %if.end4.i.i.i

if.end.i65.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge: ; preds = %if.end.i65.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_nic_validate_unified_romimage.exit.i

if.end4.i.i.i:                                    ; preds = %if.end.i65.i.i
  %mul7.i.i.i = mul i32 %107, %90
  %add8.i.i.i = add i32 %mul7.i.i.i, %104
  %arrayidx9.i.i.i = getelementptr i8, ptr %87, i32 %add8.i.i.i
  %110 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx9.i.i.i, align 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #11
  %size11.i.i.i = getelementptr inbounds %struct.uni_data_desc, ptr %arrayidx9.i.i.i, i32 0, i32 1
  %113 = ptrtoint ptr %size11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %size11.i.i.i, align 4
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #11
  %add12.i.i.i = add i32 %115, %112
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %add12.i.i.i)
  %cmp15.i.i.i = icmp ult i32 %109, %add12.i.i.i
  br i1 %cmp15.i.i.i, label %if.end4.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, label %for.body.lr.ph.i.i77.i.i

if.end4.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_nic_validate_unified_romimage.exit.i

for.body.lr.ph.i.i77.i.i:                         ; preds = %if.end4.i.i.i
  %add.ptr.i72.i.i = getelementptr i32, ptr %arrayidx.i43.i.i, i32 29
  %116 = ptrtoint ptr %add.ptr.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr.i72.i.i, align 4
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #11
  br label %for.body.i.i87.i.i

for.cond.i.i80.i.i:                               ; preds = %for.body.i.i87.i.i
  %inc.i.i78.i.i = add nuw i32 %i.016.i.i81.i.i, 1
  %exitcond.not.i.i79.i.i = icmp eq i32 %inc.i.i78.i.i, %umax.i.i48.i.i
  br i1 %exitcond.not.i.i79.i.i, label %for.cond.i.i80.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, label %for.cond.i.i80.i.i.for.body.i.i87.i.i_crit_edge

for.cond.i.i80.i.i.for.body.i.i87.i.i_crit_edge:  ; preds = %for.cond.i.i80.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i87.i.i

for.cond.i.i80.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge: ; preds = %for.cond.i.i80.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_nic_validate_unified_romimage.exit.i

for.body.i.i87.i.i:                               ; preds = %for.cond.i.i80.i.i.for.body.i.i87.i.i_crit_edge, %for.body.lr.ph.i.i77.i.i
  %i.016.i.i81.i.i = phi i32 [ 0, %for.body.lr.ph.i.i77.i.i ], [ %inc.i.i78.i.i, %for.cond.i.i80.i.i.for.body.i.i87.i.i_crit_edge ]
  %mul.i.i82.i.i = mul i32 %i.016.i.i81.i.i, %99
  %add.i.i83.i.i = add i32 %mul.i.i82.i.i, %96
  %arrayidx1.i.i84.i.i = getelementptr i8, ptr %87, i32 %add.i.i83.i.i
  %add.ptr.i.i85.i.i = getelementptr i32, ptr %arrayidx1.i.i84.i.i, i32 8
  %119 = ptrtoint ptr %add.ptr.i.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %add.ptr.i.i85.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %120)
  %cmp2.i.i86.i.i = icmp eq i32 %120, 117440512
  br i1 %cmp2.i.i86.i.i, label %nx_get_table_desc.exit.i89.i.i, label %for.cond.i.i80.i.i

nx_get_table_desc.exit.i89.i.i:                   ; preds = %for.body.i.i87.i.i
  %tobool.not.i88.i.i = icmp eq ptr %arrayidx1.i.i84.i.i, null
  br i1 %tobool.not.i88.i.i, label %nx_get_table_desc.exit.i89.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, label %if.end.i95.i.i

nx_get_table_desc.exit.i89.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge: ; preds = %nx_get_table_desc.exit.i89.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_nic_validate_unified_romimage.exit.i

if.end.i95.i.i:                                   ; preds = %nx_get_table_desc.exit.i89.i.i
  %121 = ptrtoint ptr %arrayidx1.i.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx1.i.i84.i.i, align 4
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #11
  %entry_size.i90.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %arrayidx1.i.i84.i.i, i32 0, i32 2
  %124 = ptrtoint ptr %entry_size.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %entry_size.i90.i.i, align 4
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #11
  %add.i91.i.i = add i32 %118, 1
  %mul.i92.i.i = mul i32 %126, %add.i91.i.i
  %add1.i93.i.i = add i32 %mul.i92.i.i, %123
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %add1.i93.i.i)
  %cmp.i94.i.i = icmp ult i32 %109, %add1.i93.i.i
  br i1 %cmp.i94.i.i, label %if.end.i95.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, label %if.end4.i103.i.i

if.end.i95.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge: ; preds = %if.end.i95.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_nic_validate_unified_romimage.exit.i

if.end4.i103.i.i:                                 ; preds = %if.end.i95.i.i
  %mul7.i96.i.i = mul i32 %126, %118
  %add8.i97.i.i = add i32 %mul7.i96.i.i, %123
  %arrayidx9.i98.i.i = getelementptr i8, ptr %87, i32 %add8.i97.i.i
  %127 = ptrtoint ptr %arrayidx9.i98.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx9.i98.i.i, align 4
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #11
  %size11.i99.i.i = getelementptr inbounds %struct.uni_data_desc, ptr %arrayidx9.i98.i.i, i32 0, i32 1
  %130 = ptrtoint ptr %size11.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %size11.i99.i.i, align 4
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #11
  %add12.i100.i.i = add i32 %132, %129
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %add12.i100.i.i)
  %cmp15.i101.i.i = icmp ult i32 %109, %add12.i100.i.i
  br i1 %cmp15.i101.i.i, label %if.end4.i103.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, label %if.end4.i103.i.i.if.end14.i_crit_edge

if.end4.i103.i.i.if.end14.i_crit_edge:            ; preds = %if.end4.i103.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.end4.i103.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge: ; preds = %if.end4.i103.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_nic_validate_unified_romimage.exit.i

netxen_nic_validate_unified_romimage.exit.i:      ; preds = %if.end4.i103.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, %if.end.i95.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, %nx_get_table_desc.exit.i89.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, %for.cond.i.i80.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, %if.end4.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, %if.end.i65.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, %nx_get_table_desc.exit.i61.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, %for.cond.i.i52.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, %if.end8.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, %land.lhs.true34.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, %for.end.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, %if.end.i39.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, %nx_get_table_desc.exit.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, %for.cond.i.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, %cond.end.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge, %if.end.i.i.i27.netxen_nic_validate_unified_romimage.exit.i_crit_edge, %if.then.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge
  %.str.63.sink.i.i = phi ptr [ @.str.54, %if.end.i.i.i27.netxen_nic_validate_unified_romimage.exit.i_crit_edge ], [ @.str.54, %if.then.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge ], [ @.str.57, %nx_get_table_desc.exit.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge ], [ @.str.57, %if.end.i39.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge ], [ @.str.57, %cond.end.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge ], [ @.str.60, %if.end4.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge ], [ @.str.60, %nx_get_table_desc.exit.i61.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge ], [ @.str.60, %if.end.i65.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge ], [ @.str.60, %if.end8.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge ], [ @.str.63, %if.end4.i103.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge ], [ @.str.63, %nx_get_table_desc.exit.i89.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge ], [ @.str.63, %if.end.i95.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge ], [ @.str.63, %for.cond.i.i80.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge ], [ @.str.60, %for.cond.i.i52.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge ], [ @.str.57, %for.end.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge ], [ @.str.57, %land.lhs.true34.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge ], [ @.str.57, %for.cond.i.i.i.i.netxen_nic_validate_unified_romimage.exit.i_crit_edge ]
  %133 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pdev1, align 8
  %dev23.i.i = getelementptr inbounds %struct.pci_dev, ptr %134, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23.i.i, ptr noundef nonnull %.str.63.sink.i.i) #16
  br label %if.then12

if.else.i29:                                      ; preds = %if.end
  %data.i = getelementptr inbounds %struct.firmware, ptr %26, i32 0, i32 1
  %135 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %136, i32 16680
  %137 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2018915346, i32 %138)
  %cmp6.not.i = icmp eq i32 %138, 2018915346
  br i1 %cmp6.not.i, label %if.end9.i, label %if.else.i29.if.then12_crit_edge

if.else.i29.if.then12_crit_edge:                  ; preds = %if.else.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.end9.i:                                        ; preds = %if.else.i29
  %139 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %140)
  %cmp10.i = icmp ult i32 %140, 4194303
  br i1 %cmp10.i, label %if.end9.i.if.then12_crit_edge, label %if.end9.i.if.end14.i_crit_edge

if.end9.i.if.end14.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.end9.i.if.then12_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.end14.i:                                       ; preds = %if.end9.i.if.end14.i_crit_edge, %if.end4.i103.i.i.if.end14.i_crit_edge
  %call15.i = tail call fastcc i32 @nx_get_fw_version(ptr noundef %adapter) #11
  %141 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %142)
  %cmp17.i = icmp ugt i8 %142, 47
  %..i = select i1 %cmp17.i, i32 67109369, i32 50594008
  %143 = and i32 %call15.i, 65535
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #11
  %shr24.i = lshr i32 %call15.i, 16
  %add25.i = or i32 %144, %shr24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886079, i32 %144)
  %cmp28.i = icmp ugt i32 %144, 83886079
  call void @__sanitizer_cov_trace_cmp4(i32 %add25.i, i32 %..i)
  %cmp30.i = icmp ult i32 %add25.i, %..i
  %or.cond.i = select i1 %cmp28.i, i1 true, i1 %cmp30.i
  br i1 %or.cond.i, label %do.end.i, label %if.end39.i

do.end.i:                                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr26.i = lshr i32 %144, 24
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %arrayidx33.i = getelementptr [5 x ptr], ptr @fw_name, i32 0, i32 %conv.i
  %145 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx33.i, align 4
  %shr36.i = lshr exact i32 %144, 16
  %and37.i = and i32 %shr36.i, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.40, ptr noundef %146, i32 noundef %shr26.i, i32 noundef %and37.i, i32 noundef %shr24.i) #16
  br label %if.then12

if.end39.i:                                       ; preds = %if.end14.i
  %147 = ptrtoint ptr %fw4 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %fw4, align 4
  %149 = ptrtoint ptr %fw_type to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %fw_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %150)
  %cmp.i.i = icmp eq i8 %150, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  %151 = ptrtoint ptr %file_prd_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %file_prd_off.i.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %148, i32 0, i32 1
  %153 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %154, i32 %152
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 12
  %155 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %add.ptr.i.i, align 4
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #11
  %shl.i.i = shl i32 %157, 16
  %shr.i.i = lshr i32 %157, 8
  %and.i.i = and i32 %shr.i.i, 65280
  %add.i.i = or i32 %and.i.i, %shl.i.i
  %shr3.i.i = lshr i32 %157, 24
  %add4.i.i = or i32 %add.i.i, %shr3.i.i
  br label %nx_get_bios_version.exit.i

if.else.i.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  %data5.i.i = getelementptr inbounds %struct.firmware, ptr %148, i32 0, i32 1
  %158 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %data5.i.i, align 4
  %arrayidx6.i.i = getelementptr i8, ptr %159, i32 4098108
  %160 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx6.i.i, align 4
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #11
  br label %nx_get_bios_version.exit.i

nx_get_bios_version.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i149.i = phi i32 [ %add4.i.i, %if.then.i.i ], [ %162, %if.else.i.i ]
  %call.i.i = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %netxen_rom_fast_read.exit.i, label %nx_get_bios_version.exit.i.if.then12_crit_edge

nx_get_bios_version.exit.i.if.then12_crit_edge:   ; preds = %nx_get_bios_version.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

netxen_rom_fast_read.exit.i:                      ; preds = %nx_get_bios_version.exit.i
  %call1.i.i = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef 4098108, ptr noundef nonnull %bios.i) #11
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool42.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %netxen_rom_fast_read.exit.i.if.then12_crit_edge

netxen_rom_fast_read.exit.i.if.then12_crit_edge:  ; preds = %netxen_rom_fast_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.end44.i:                                       ; preds = %netxen_rom_fast_read.exit.i
  %163 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %bios.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i149.i, i32 %164)
  %cmp45.not.i = icmp eq i32 %retval.0.i149.i, %164
  br i1 %cmp45.not.i, label %if.end54.i, label %do.end50.i

do.end50.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev51.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %arrayidx53.i = getelementptr [5 x ptr], ptr @fw_name, i32 0, i32 %conv.i
  %165 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx53.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51.i, ptr noundef nonnull @.str.43, ptr noundef %166) #16
  br label %if.then12

if.end54.i:                                       ; preds = %if.end44.i
  %call.i152.i = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152.i)
  %cmp.not.i153.i = icmp eq i32 %call.i152.i, 0
  br i1 %cmp.not.i153.i, label %netxen_rom_fast_read.exit157.i, label %if.end54.i.do.end60.i_crit_edge

if.end54.i.do.end60.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i

netxen_rom_fast_read.exit157.i:                   ; preds = %if.end54.i
  %call1.i154.i = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef 4097032, ptr noundef nonnull %flash_fw_ver.i) #11
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i154.i)
  %tobool56.not.i = icmp eq i32 %call1.i154.i, 0
  br i1 %tobool56.not.i, label %if.end62.i, label %netxen_rom_fast_read.exit157.i.do.end60.i_crit_edge

netxen_rom_fast_read.exit157.i.do.end60.i_crit_edge: ; preds = %netxen_rom_fast_read.exit157.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i

do.end60.i:                                       ; preds = %netxen_rom_fast_read.exit157.i.do.end60.i_crit_edge, %if.end54.i.do.end60.i_crit_edge
  %dev61.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61.i, ptr noundef nonnull @.str.46) #16
  br label %if.then12

if.end62.i:                                       ; preds = %netxen_rom_fast_read.exit157.i
  %167 = ptrtoint ptr %flash_fw_ver.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %flash_fw_ver.i, align 4
  %169 = and i32 %168, 65535
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #11
  %shr69.i = lshr i32 %168, 16
  %add70.i = or i32 %170, %shr69.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67109417, i32 %add25.i)
  %cmp71.i = icmp ugt i32 %add25.i, 67109417
  call void @__sanitizer_cov_trace_const_cmp4(i32 67109418, i32 %add70.i)
  %cmp73.i = icmp ult i32 %add70.i, 67109418
  %or.cond148.i = select i1 %cmp71.i, i1 %cmp73.i, i1 false
  %171 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %172)
  %cmp79.i = icmp ugt i8 %172, 47
  %or.cond192.i = select i1 %or.cond148.i, i1 %cmp79.i, i1 false
  br i1 %or.cond192.i, label %do.end84.i, label %if.end86.i

do.end84.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev85.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev85.i, ptr noundef nonnull @.str.49) #16
  br label %if.then12

if.end86.i:                                       ; preds = %if.end62.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flashed_ver.i.i25) #11
  %173 = ptrtoint ptr %flashed_ver.i.i25 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 -1, ptr %flashed_ver.i.i25, align 4, !annotation !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %172)
  %cmp.i158.i = icmp ult i8 %172, 38
  br i1 %cmp.i158.i, label %if.end86.i.lor.lhs.false89.i_crit_edge, label %if.end.i159.i

if.end86.i.lor.lhs.false89.i_crit_edge:           ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false89.i

if.end.i159.i:                                    ; preds = %if.end86.i
  %call.i.i.i31 = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i31)
  %cmp.not.i.i.i32 = icmp eq i32 %call.i.i.i31, 0
  br i1 %cmp.not.i.i.i32, label %if.end.i.i160.i, label %if.end.i159.i.netxen_rom_fast_read.exit.i.i37_crit_edge

if.end.i159.i.netxen_rom_fast_read.exit.i.i37_crit_edge: ; preds = %if.end.i159.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_rom_fast_read.exit.i.i37

if.end.i.i160.i:                                  ; preds = %if.end.i159.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i.i33 = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef 4097032, ptr noundef nonnull %flashed_ver.i.i25) #11
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #11
  br label %netxen_rom_fast_read.exit.i.i37

netxen_rom_fast_read.exit.i.i37:                  ; preds = %if.end.i.i160.i, %if.end.i159.i.netxen_rom_fast_read.exit.i.i37_crit_edge
  %174 = ptrtoint ptr %flashed_ver.i.i25 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %flashed_ver.i.i25, align 4
  %176 = and i32 %175, 65535
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #11
  %shr4.i.i34 = lshr i32 %175, 16
  %add5.i.i35 = or i32 %177, %shr4.i.i34
  call void @__sanitizer_cov_trace_const_cmp4(i32 67109083, i32 %add5.i.i35)
  %cmp6.i.i36 = icmp ugt i32 %add5.i.i35, 67109083
  br i1 %cmp6.i.i36, label %if.then8.i.i42, label %netxen_rom_fast_read.exit.i.i37.netxen_p3_has_mn.exit.i43_crit_edge

netxen_rom_fast_read.exit.i.i37.netxen_p3_has_mn.exit.i43_crit_edge: ; preds = %netxen_rom_fast_read.exit.i.i37
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_p3_has_mn.exit.i43

if.then8.i.i42:                                   ; preds = %netxen_rom_fast_read.exit.i.i37
  %178 = ptrtoint ptr %crb_read.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %crb_read.i.i, align 4
  %call9.i.i39 = tail call i32 %179(ptr noundef %adapter, i32 noundef 136323116) #11
  %and10.i.i40 = and i32 %call9.i.i39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i40)
  %tobool.not.i.i41 = icmp eq i32 %and10.i.i40, 0
  br i1 %tobool.not.i.i41, label %if.then8.i.i42.netxen_p3_has_mn.exit.i43_crit_edge, label %if.then8.i.i42.lor.lhs.false89.i_crit_edge

if.then8.i.i42.lor.lhs.false89.i_crit_edge:       ; preds = %if.then8.i.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false89.i

if.then8.i.i42.netxen_p3_has_mn.exit.i43_crit_edge: ; preds = %if.then8.i.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_p3_has_mn.exit.i43

netxen_p3_has_mn.exit.i43:                        ; preds = %if.then8.i.i42.netxen_p3_has_mn.exit.i43_crit_edge, %netxen_rom_fast_read.exit.i.i37.netxen_p3_has_mn.exit.i43_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flashed_ver.i.i25) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %add70.i, i32 %add25.i)
  %cmp96.old.i = icmp ugt i32 %add70.i, %add25.i
  br i1 %cmp96.old.i, label %netxen_p3_has_mn.exit.i43.do.end101.i_crit_edge, label %netxen_p3_has_mn.exit.i43.netxen_validate_firmware.exit_crit_edge

netxen_p3_has_mn.exit.i43.netxen_validate_firmware.exit_crit_edge: ; preds = %netxen_p3_has_mn.exit.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_validate_firmware.exit

netxen_p3_has_mn.exit.i43.do.end101.i_crit_edge:  ; preds = %netxen_p3_has_mn.exit.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end101.i

lor.lhs.false89.i:                                ; preds = %if.then8.i.i42.lor.lhs.false89.i_crit_edge, %if.end86.i.lor.lhs.false89.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flashed_ver.i.i25) #11
  %180 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %181)
  %cmp93.i = icmp ult i8 %181, 38
  call void @__sanitizer_cov_trace_cmp4(i32 %add70.i, i32 %add25.i)
  %cmp96.i = icmp ugt i32 %add70.i, %add25.i
  %or.cond170.i = select i1 %cmp93.i, i1 %cmp96.i, i1 false
  br i1 %or.cond170.i, label %lor.lhs.false89.i.do.end101.i_crit_edge, label %lor.lhs.false89.i.netxen_validate_firmware.exit_crit_edge

lor.lhs.false89.i.netxen_validate_firmware.exit_crit_edge: ; preds = %lor.lhs.false89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_validate_firmware.exit

lor.lhs.false89.i.do.end101.i_crit_edge:          ; preds = %lor.lhs.false89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end101.i

do.end101.i:                                      ; preds = %lor.lhs.false89.i.do.end101.i_crit_edge, %netxen_p3_has_mn.exit.i43.do.end101.i_crit_edge
  %dev102.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %arrayidx104.i = getelementptr [5 x ptr], ptr @fw_name, i32 0, i32 %conv.i
  %182 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx104.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev102.i, ptr noundef nonnull @.str.52, ptr noundef %183) #16
  br label %if.then12

netxen_validate_firmware.exit:                    ; preds = %lor.lhs.false89.i.netxen_validate_firmware.exit_crit_edge, %netxen_p3_has_mn.exit.i43.netxen_validate_firmware.exit_crit_edge
  %crb_write.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %184 = ptrtoint ptr %crb_write.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %crb_write.i, align 8
  %call107.i = tail call i32 %185(ptr noundef %adapter, i32 noundef 136323580, i32 noundef 305419896) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bios.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_fw_ver.i) #11
  br label %if.end15

if.then12:                                        ; preds = %do.end101.i, %do.end84.i, %do.end60.i, %do.end50.i, %netxen_rom_fast_read.exit.i.if.then12_crit_edge, %nx_get_bios_version.exit.i.if.then12_crit_edge, %do.end.i, %if.end9.i.if.then12_crit_edge, %if.else.i29.if.then12_crit_edge, %netxen_nic_validate_unified_romimage.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bios.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_fw_ver.i) #11
  %186 = ptrtoint ptr %fw4 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %fw4, align 4
  tail call void @release_firmware(ptr noundef %187) #11
  tail call void @msleep(i32 noundef 1) #11
  br label %nextthread-pre-split

if.end15:                                         ; preds = %netxen_validate_firmware.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netxen_release_firmware(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 73
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 4
  tail call void @release_firmware(ptr noundef %1) #11
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_init_dummy_dma(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %1)
  %cmp = icmp ult i8 %1, 38
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %dummy_dma = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 66
  %phys_addr = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 66, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 1024, ptr noundef %phys_addr, i32 noundef 3264, i32 noundef 0) #11
  %4 = ptrtoint ptr %dummy_dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %dummy_dma, align 4
  %cmp6 = icmp eq ptr %call.i, null
  br i1 %cmp6, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.22) #16
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phys_addr, align 4
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %9 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %crb_write, align 8
  %call18 = tail call i32 %10(ptr noundef %adapter, i32 noundef 136323644, i32 noundef 0) #11
  %11 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crb_write, align 8
  %call20 = tail call i32 %12(ptr noundef %adapter, i32 noundef 136323648, i32 noundef %8) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netxen_free_dummy_dma(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %1)
  %cmp = icmp ult i8 %1, 38
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dummy_dma = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 66
  %2 = ptrtoint ptr %dummy_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dummy_dma, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %4 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crb_read, align 4
  %call = tail call i32 %5(ptr noundef %adapter, i32 noundef 136323092) #11
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp4.not = icmp eq i32 %and, 0
  br i1 %cmp4.not, label %if.end3.if.then19_crit_edge, label %if.then6

if.end3.if.then19_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

if.then6:                                         ; preds = %if.end3
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %6 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crb_write, align 8
  %or = or i32 %call, 2
  %call7 = tail call i32 %7(ptr noundef %adapter, i32 noundef 136323092, i32 noundef %or) #11
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.then6
  %i.0 = phi i32 [ 100, %if.then6 ], [ %dec, %while.body.while.cond_crit_edge ]
  %ctrl.0 = phi i32 [ %call, %if.then6 ], [ %call12, %while.body.while.cond_crit_edge ]
  %and8 = and i32 %ctrl.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9.not = icmp eq i32 %and8, 0
  br i1 %cmp9.not, label %while.cond.if.then19_crit_edge, label %while.body

while.cond.if.then19_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

while.body:                                       ; preds = %while.cond
  tail call void @msleep(i32 noundef 50) #11
  %8 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crb_read, align 4
  %call12 = tail call i32 %9(ptr noundef %adapter, i32 noundef 136323092) #11
  %dec = add nsw i32 %i.0, -1
  %cmp13 = icmp eq i32 %dec, 0
  br i1 %cmp13, label %do.end, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.then19:                                        ; preds = %while.cond.if.then19_crit_edge, %if.end3.if.then19_crit_edge
  %pdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %dummy_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dummy_dma, align 4
  %phys_addr = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 66, i32 1
  %14 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phys_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 1024, ptr noundef %13, i32 noundef %15, i32 noundef 0) #11
  %16 = ptrtoint ptr %dummy_dma to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %dummy_dma, align 4
  br label %cleanup

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev25 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %17 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev25, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.24) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_phantom_init(ptr noundef %adapter, i32 noundef %pegtune_val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pegtune_val)
  %tobool.not = icmp eq i32 %pegtune_val, 0
  br i1 %tobool.not, label %do.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  br label %do.body

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %do.body.preheader
  %retries.0 = phi i32 [ %dec, %sw.epilog.do.body_crit_edge ], [ 60, %do.body.preheader ]
  %0 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crb_read, align 4
  %call = tail call i32 %1(ptr noundef %adapter, i32 noundef 136323664) #11
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %call, label %sw.epilog [
    i32 65281, label %do.body.cleanup_crit_edge
    i32 61455, label %do.body.cleanup_crit_edge12
    i32 65535, label %do.body.do.end6_crit_edge
  ]

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.body.cleanup_crit_edge12:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog:                                        ; preds = %do.body
  tail call void @msleep(i32 noundef 500) #11
  %dec = add nsw i32 %retries.0, -1
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %do.end, label %sw.epilog.do.body_crit_edge

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %3 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crb_write, align 8
  %call3 = tail call i32 %4(ptr noundef %adapter, i32 noundef 136323664, i32 noundef 65535) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %pdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %do.body.cleanup_crit_edge, %do.body.cleanup_crit_edge12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end6 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge12 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_init_firmware(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %crb_read.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %retries.0.i = phi i32 [ 2000, %entry ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %0 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crb_read.i, align 4
  %call.i = tail call i32 %1(ptr noundef %adapter, i32 noundef 136323900) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 65281, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 65281
  br i1 %cmp.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  tail call void @msleep(i32 noundef 10) #11
  %dec.i = add nsw i32 %retries.0.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %netxen_receive_peg_ready.exit, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

netxen_receive_peg_ready.exit:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %call.i) #16
  br label %cleanup

if.end:                                           ; preds = %do.body.i
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %2 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crb_write, align 8
  %call1 = tail call i32 %3(ptr noundef %adapter, i32 noundef 136324008, i32 noundef 1) #11
  %4 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crb_write, align 8
  %call3 = tail call i32 %5(ptr noundef %adapter, i32 noundef 136323780, i32 noundef 8738) #11
  %6 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crb_write, align 8
  %call5 = tail call i32 %7(ptr noundef %adapter, i32 noundef 136323664, i32 noundef 61455) #11
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %8 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %9)
  %cmp = icmp ult i8 %9, 38
  br i1 %cmp, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crb_write, align 8
  %call9 = tail call i32 %11(ptr noundef %adapter, i32 noundef 136324208, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %netxen_receive_peg_ready.exit
  %retval.0.i24 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then7 ], [ -5, %netxen_receive_peg_ready.exit ]
  ret i32 %retval.0.i24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_process_rcv_ring(ptr noundef %sds_ring, i32 noundef %max) local_unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.nx_fw_msg_t, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.nx_host_sds_ring, ptr %sds_ring, i32 0, i32 5
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %2 = ptrtoint ptr %sds_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sds_ring, align 8
  %desc_head = getelementptr inbounds %struct.nx_host_sds_ring, ptr %sds_ring, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max)
  %cmp221 = icmp sgt i32 %max, 0
  br i1 %cmp221, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %num_desc.i191 = getelementptr inbounds %struct.nx_host_sds_ring, ptr %sds_ring, i32 0, i32 1
  %body.i = getelementptr inbounds %struct.anon.151, ptr %msg.i, i32 0, i32 1
  %arrayidx.i.i = getelementptr inbounds %struct.anon.151, ptr %msg.i, i32 0, i32 1, i32 1
  %arrayidx12.i.i = getelementptr inbounds %struct.anon.151, ptr %msg.i, i32 0, i32 1, i32 2
  %netdev1.i152 = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 1
  %max_rds_rings.i153 = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 10
  %rds_rings.i156 = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 43, i32 3
  %pdev.i.i163 = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 2
  %csummed.i.i175 = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 42, i32 4
  %flags.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 36
  %lro_pkts.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 42, i32 6
  %rxbytes.i189 = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 42, i32 7
  %napi.i = getelementptr inbounds %struct.nx_host_sds_ring, ptr %sds_ring, i32 0, i32 6
  %rx_pkts.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 42, i32 5
  %arrayidx7.i = getelementptr inbounds [8 x i64], ptr %msg.i, i32 0, i32 1
  %arrayidx3.i.1 = getelementptr inbounds [8 x i64], ptr %msg.i, i32 0, i32 2
  %arrayidx7.i.1 = getelementptr inbounds [8 x i64], ptr %msg.i, i32 0, i32 3
  %arrayidx3.i.2 = getelementptr inbounds [8 x i64], ptr %msg.i, i32 0, i32 4
  %arrayidx7.i.2 = getelementptr inbounds [8 x i64], ptr %msg.i, i32 0, i32 5
  %arrayidx3.i.3 = getelementptr inbounds [8 x i64], ptr %msg.i, i32 0, i32 6
  %arrayidx7.i.3 = getelementptr inbounds [8 x i64], ptr %msg.i, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %count.0223 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %for.end.while.body_crit_edge ]
  %consumer.0222 = phi i32 [ %3, %while.body.lr.ph ], [ %consumer.1.lcssa, %for.end.while.body_crit_edge ]
  %4 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc_head, align 8
  %arrayidx = getelementptr %struct.status_desc, ptr %5, i32 %consumer.0222
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 16
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %and = and i64 %8, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end:                                           ; preds = %while.body
  %shr = lshr i64 %8, 53
  %9 = trunc i64 %shr to i32
  %conv = and i32 %9, 7
  %shr5 = lshr i64 %8, 58
  %conv7 = trunc i64 %shr5 to i32
  %10 = zext i32 %conv7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %conv7, label %if.end.skip_crit_edge [
    i32 4, label %if.end.sw.bb_crit_edge
    i32 63, label %if.end.sw.bb_crit_edge238
    i32 3, label %if.end.sw.bb_crit_edge239
    i32 18, label %sw.bb11
    i32 5, label %sw.bb18
  ]

if.end.sw.bb_crit_edge239:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge238:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.skip_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge238, %if.end.sw.bb_crit_edge239
  %11 = trunc i64 %8 to i32
  %12 = lshr i32 %11, 8
  %conv10 = and i32 %12, 15
  %13 = ptrtoint ptr %netdev1.i152 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev1.i152, align 4
  %15 = ptrtoint ptr %max_rds_rings.i153 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %max_rds_rings.i153, align 8
  %conv.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %conv10, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge, !prof !147

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %17 = ptrtoint ptr %rds_rings.i156 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rds_rings.i156, align 4
  %shr.i = lshr i64 %8, 28
  %19 = trunc i64 %shr.i to i32
  %conv5.i = and i32 %19, 65535
  %num_desc.i = getelementptr %struct.nx_host_rds_ring, ptr %18, i32 %conv10, i32 1
  %20 = ptrtoint ptr %num_desc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_desc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %21)
  %cmp6.not.i = icmp ult i32 %conv5.i, %21
  br i1 %cmp6.not.i, label %if.end15.i, label %if.end.i.sw.epilog_crit_edge, !prof !147

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end15.i:                                       ; preds = %if.end.i
  %rx_buf_arr.i = getelementptr %struct.nx_host_rds_ring, ptr %18, i32 %conv10, i32 7
  %22 = ptrtoint ptr %rx_buf_arr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_buf_arr.i, align 4
  %arrayidx16.i = getelementptr %struct.netxen_rx_buffer, ptr %23, i32 %conv5.i
  %24 = lshr i32 %11, 12
  %conv19.i = and i32 %24, 65535
  %shr23.i = lshr i64 %8, 48
  %25 = trunc i64 %shr23.i to i32
  %conv25.i = and i32 %25, 31
  %26 = ptrtoint ptr %pdev.i.i163 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev.i.i163, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %dma.i.i = getelementptr %struct.netxen_rx_buffer, ptr %23, i32 %conv5.i, i32 2
  %28 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dma.i.i, align 8
  %conv.i.i = trunc i64 %29 to i32
  %dma_size.i.i = getelementptr %struct.nx_host_rds_ring, ptr %18, i32 %conv10, i32 2
  %30 = ptrtoint ptr %dma_size.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_size.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %conv.i.i, i32 noundef %31, i32 noundef 2, i32 noundef 0) #11
  %skb1.i.i = getelementptr %struct.netxen_rx_buffer, ptr %23, i32 %conv5.i, i32 1
  %32 = ptrtoint ptr %skb1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb1.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %netxen_process_rxbuf.exit.thread.i, label %if.end.i.i

netxen_process_rxbuf.exit.thread.i:               ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %state.i79.i = getelementptr %struct.netxen_rx_buffer, ptr %23, i32 %conv5.i, i32 4
  %34 = ptrtoint ptr %state.i79.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %state.i79.i, align 2
  br label %sw.epilog

if.end.i.i:                                       ; preds = %if.end15.i
  %35 = ptrtoint ptr %netdev1.i152 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %netdev1.i152, align 4
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 23
  %37 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %38, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool2.not.i.i = icmp ne i64 %and.i.i, 0
  %39 = and i64 %8, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %39)
  %cmp.i.i = icmp eq i64 %39, 32
  %spec.select.i.i = and i1 %cmp.i.i, %tobool2.not.i.i
  br i1 %spec.select.i.i, label %if.then7.i.i, label %if.else.i.i, !prof !147

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %csummed.i.i175 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %csummed.i.i175, align 8
  %inc.i.i = add i64 %41, 1
  store i64 %inc.i.i, ptr %csummed.i.i175, align 8
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 15
  %42 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  br label %if.end30.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ip_summed8.i.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 15
  %43 = ptrtoint ptr %ip_summed8.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load9.i.i = load i16, ptr %ip_summed8.i.i, align 8
  %bf.clear10.i.i = and i16 %bf.load9.i.i, -1537
  store i16 %bf.clear10.i.i, ptr %ip_summed8.i.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else.i.i, %if.then7.i.i
  %44 = ptrtoint ptr %skb1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %skb1.i.i, align 8
  %state.i.i = getelementptr %struct.netxen_rx_buffer, ptr %23, i32 %conv5.i, i32 4
  %45 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %state.i.i, align 2
  %skb_size.i = getelementptr %struct.nx_host_rds_ring, ptr %18, i32 %conv10, i32 3
  %46 = ptrtoint ptr %skb_size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %skb_size.i, align 4
  %48 = tail call i32 @llvm.umin.i32(i32 %conv19.i, i32 %47) #11
  %call36.i = tail call ptr @skb_put(ptr noundef nonnull %33, i32 noundef %48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv25.i)
  %tobool38.not.i = icmp eq i32 %conv25.i, 0
  br i1 %tobool38.not.i, label %if.end30.i.if.end41.i_crit_edge, label %if.then39.i

if.end30.i.if.end41.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

if.then39.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  %call40.i = tail call ptr @skb_pull(ptr noundef nonnull %33, i32 noundef %conv25.i) #11
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then39.i, %if.end30.i.if.end41.i_crit_edge
  %call42.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %33, ptr noundef %14) #11
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 15, i32 0, i32 18
  %49 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %call42.i, ptr %protocol.i, align 8
  %call43.i = tail call i32 @napi_gro_receive(ptr noundef %napi.i, ptr noundef nonnull %33) #11
  %50 = ptrtoint ptr %rx_pkts.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %rx_pkts.i, align 8
  %inc.i = add i64 %51, 1
  store i64 %inc.i, ptr %rx_pkts.i, align 8
  %52 = zext i32 %conv19.i to i64
  %53 = ptrtoint ptr %rxbytes.i189 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %rxbytes.i189, align 8
  %add.i = add i64 %54, %52
  store i64 %add.i, ptr %rxbytes.i189, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %shr12 = lshr i64 %8, 49
  %55 = trunc i64 %shr12 to i32
  %conv14 = and i32 %55, 7
  %arrayidx16 = getelementptr [2 x i64], ptr %arrayidx, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx16, align 8
  %58 = tail call i64 @llvm.bswap.i64(i64 %57)
  %59 = ptrtoint ptr %netdev1.i152 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %netdev1.i152, align 4
  %61 = ptrtoint ptr %max_rds_rings.i153 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %max_rds_rings.i153, align 8
  %conv.i154 = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv14, i32 %conv.i154)
  %cmp.not.i155 = icmp ult i32 %conv14, %conv.i154
  br i1 %cmp.not.i155, label %if.end.i160, label %sw.bb11.sw.epilog_crit_edge, !prof !147

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i160:                                      ; preds = %sw.bb11
  %63 = ptrtoint ptr %rds_rings.i156 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rds_rings.i156, align 4
  %65 = trunc i64 %8 to i32
  %conv5.i157 = and i32 %65, 65535
  %num_desc.i158 = getelementptr %struct.nx_host_rds_ring, ptr %64, i32 %conv14, i32 1
  %66 = ptrtoint ptr %num_desc.i158 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_desc.i158, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i157, i32 %67)
  %cmp6.not.i159 = icmp ult i32 %conv5.i157, %67
  br i1 %cmp6.not.i159, label %if.end15.i170, label %if.end.i160.sw.epilog_crit_edge, !prof !147

if.end.i160.sw.epilog_crit_edge:                  ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end15.i170:                                    ; preds = %if.end.i160
  %rx_buf_arr.i161 = getelementptr %struct.nx_host_rds_ring, ptr %64, i32 %conv14, i32 7
  %68 = ptrtoint ptr %rx_buf_arr.i161 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_buf_arr.i161, align 4
  %arrayidx16.i162 = getelementptr %struct.netxen_rx_buffer, ptr %69, i32 %conv5.i157
  %70 = lshr i32 %65, 16
  %shr22.i = lshr i64 %8, 32
  %71 = trunc i64 %shr22.i to i32
  %conv24.i = and i32 %71, 255
  %shr25.i = lshr i64 %8, 40
  %72 = trunc i64 %shr25.i to i32
  %conv27.i = and i32 %72, 255
  %conv33.i = trunc i64 %58 to i32
  %73 = ptrtoint ptr %pdev.i.i163 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev.i.i163, align 8
  %dev.i.i164 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  %dma.i.i165 = getelementptr %struct.netxen_rx_buffer, ptr %69, i32 %conv5.i157, i32 2
  %75 = ptrtoint ptr %dma.i.i165 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %dma.i.i165, align 8
  %conv.i.i166 = trunc i64 %76 to i32
  %dma_size.i.i167 = getelementptr %struct.nx_host_rds_ring, ptr %64, i32 %conv14, i32 2
  %77 = ptrtoint ptr %dma_size.i.i167 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dma_size.i.i167, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i164, i32 noundef %conv.i.i166, i32 noundef %78, i32 noundef 2, i32 noundef 0) #11
  %skb1.i.i168 = getelementptr %struct.netxen_rx_buffer, ptr %69, i32 %conv5.i157, i32 1
  %79 = ptrtoint ptr %skb1.i.i168 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %skb1.i.i168, align 8
  %tobool.not.i.i169 = icmp eq ptr %80, null
  br i1 %tobool.not.i.i169, label %netxen_process_rxbuf.exit.thread.i171, label %if.end.i.i174

netxen_process_rxbuf.exit.thread.i171:            ; preds = %if.end15.i170
  call void @__sanitizer_cov_trace_pc() #13
  %state.i1.i = getelementptr %struct.netxen_rx_buffer, ptr %69, i32 %conv5.i157, i32 4
  %81 = ptrtoint ptr %state.i1.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %state.i1.i, align 2
  br label %sw.epilog

if.end.i.i174:                                    ; preds = %if.end15.i170
  %82 = ptrtoint ptr %netdev1.i152 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %netdev1.i152, align 4
  %features.i.i172 = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 23
  %84 = ptrtoint ptr %features.i.i172 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %features.i.i172, align 16
  %and.i.i173 = and i64 %85, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i173)
  %tobool2.not.i.not.i = icmp eq i64 %and.i.i173, 0
  br i1 %tobool2.not.i.not.i, label %if.else.i.i185, label %if.then7.i.i181, !prof !148

if.then7.i.i181:                                  ; preds = %if.end.i.i174
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %csummed.i.i175 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %csummed.i.i175, align 8
  %inc.i.i176 = add i64 %87, 1
  store i64 %inc.i.i176, ptr %csummed.i.i175, align 8
  %ip_summed.i.i177 = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 15
  %88 = ptrtoint ptr %ip_summed.i.i177 to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load.i.i178 = load i16, ptr %ip_summed.i.i177, align 8
  %bf.clear.i.i179 = and i16 %bf.load.i.i178, -1537
  %bf.set.i.i180 = or i16 %bf.clear.i.i179, 512
  store i16 %bf.set.i.i180, ptr %ip_summed.i.i177, align 8
  br label %if.end37.i

if.else.i.i185:                                   ; preds = %if.end.i.i174
  call void @__sanitizer_cov_trace_pc() #13
  %ip_summed8.i.i182 = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 15
  %89 = ptrtoint ptr %ip_summed8.i.i182 to i32
  call void @__asan_load2_noabort(i32 %89)
  %bf.load9.i.i183 = load i16, ptr %ip_summed8.i.i182, align 8
  %bf.clear10.i.i184 = and i16 %bf.load9.i.i183, -1537
  store i16 %bf.clear10.i.i184, ptr %ip_summed8.i.i182, align 8
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else.i.i185, %if.then7.i.i181
  %90 = ptrtoint ptr %skb1.i.i168 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %skb1.i.i168, align 8
  %state.i.i186 = getelementptr %struct.netxen_rx_buffer, ptr %69, i32 %conv5.i157, i32 4
  %91 = ptrtoint ptr %state.i.i186 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %state.i.i186, align 2
  %92 = and i64 %8, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %92)
  %tobool18.not.i = icmp eq i64 %92, 0
  %data_offset.0.v.i = select i1 %tobool18.not.i, i32 20, i32 32
  %data_offset.0.i = add nuw nsw i32 %data_offset.0.v.i, %70
  %add46.i = add nuw nsw i32 %data_offset.0.i, %conv27.i
  %call47.i = tail call ptr @skb_put(ptr noundef nonnull %80, i32 noundef %add46.i) #11
  %call48.i = tail call ptr @skb_pull(ptr noundef nonnull %80, i32 noundef %conv24.i) #11
  %call49.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %80, ptr noundef %60) #11
  %protocol.i187 = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 15, i32 0, i32 18
  %93 = ptrtoint ptr %protocol.i187 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %call49.i, ptr %protocol.i187, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %call49.i)
  %cmp52.i = icmp eq i16 %call49.i, -32512
  %vhdr_len.0.i = select i1 %cmp52.i, i32 4, i32 0
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 19
  %94 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %95, i32 %vhdr_len.0.i
  %96 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load.i = load i8, ptr %add.ptr.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %97 = and i8 %bf.clear.i, 60
  %shl.i = zext i8 %97 to i32
  %add.ptr61.i = getelementptr i8, ptr %add.ptr.i, i32 %shl.i
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr61.i, i32 0, i32 4
  %98 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load66.i = load i16, ptr %doff.i, align 4
  %99 = lshr i16 %bf.load66.i, 10
  %100 = and i16 %99, 60
  %add69.i = add nuw nsw i32 %70, %shl.i
  %101 = trunc i32 %add69.i to i16
  %conv72.i = add i16 %100, %101
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 7
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 2
  %102 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %tot_len.i, align 2
  %104 = ptrtoint ptr %check.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %check.i, align 2
  %neg.i.i = xor i16 %105, -1
  %neg.i.i.i = xor i16 %103, -1
  %add.i.i.i.i = add i16 %neg.i.i, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i.i, i16 %neg.i.i.i)
  %cmp.i.i.i.i = icmp ult i16 %add.i.i.i.i, %neg.i.i.i
  %conv6.i.i.i.i = zext i1 %cmp.i.i.i.i to i16
  %add7.i.i.i.i = add i16 %add.i.i.i.i, %conv6.i.i.i.i
  %add.i.i.i = add i16 %add7.i.i.i.i, %conv72.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i, i16 %conv72.i)
  %cmp.i.i.i = icmp ult i16 %add.i.i.i, %conv72.i
  %conv6.i.i.i = zext i1 %cmp.i.i.i to i16
  %add7.i.i.i = add i16 %add.i.i.i, %conv6.i.i.i
  %neg4.i.i = xor i16 %add7.i.i.i, -1
  %106 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %neg4.i.i, ptr %check.i, align 2
  %107 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv72.i, ptr %tot_len.i, align 2
  %tr.sh.diff.i = trunc i64 %shr12 to i16
  %bf.shl.i = and i16 %tr.sh.diff.i, 8
  %bf.clear77.i = and i16 %bf.load66.i, -9
  %bf.set.i = or i16 %bf.clear77.i, %bf.shl.i
  %108 = ptrtoint ptr %doff.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %bf.set.i, ptr %doff.i, align 4
  %seq.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr61.i, i32 0, i32 2
  %109 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %conv33.i, ptr %seq.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 6
  %110 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %len.i, align 4
  %112 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags.i, align 4
  %and79.i = and i32 %113, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.end37.i.if.end86.i_crit_edge, label %if.then81.i

if.end37.i.if.end86.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86.i

if.then81.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr82.i = lshr i64 %58, 32
  %conv84.i = trunc i64 %shr82.i to i16
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 17
  %114 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv84.i, ptr %gso_size.i, align 4
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then81.i, %if.end37.i.if.end86.i_crit_edge
  %call87.i = tail call i32 @netif_receive_skb(ptr noundef nonnull %80) #11
  %117 = ptrtoint ptr %lro_pkts.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %lro_pkts.i, align 8
  %inc.i188 = add i64 %118, 1
  store i64 %inc.i188, ptr %lro_pkts.i, align 8
  %conv78.mask.i = and i32 %111, 65535
  %conv88.i = zext i32 %conv78.mask.i to i64
  %119 = ptrtoint ptr %rxbytes.i189 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %rxbytes.i189, align 8
  %add90.i = add i64 %120, %conv88.i
  store i64 %add90.i, ptr %rxbytes.i189, align 8
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %msg.i) #11
  %121 = call ptr @memset(ptr %msg.i, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp18.i.not = icmp eq i32 %conv, 0
  br i1 %cmp18.i.not, label %sw.bb18.while.end.i_crit_edge, label %while.body.lr.ph.i

sw.bb18.while.end.i_crit_edge:                    ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %sw.bb18
  %122 = ptrtoint ptr %num_desc.i191 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_desc.i191, align 4
  %sub.i = add i32 %123, -1
  %arrayidx.i = getelementptr %struct.status_desc, ptr %5, i32 %consumer.0222
  %124 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %arrayidx.i, align 16
  %126 = tail call i64 @llvm.bswap.i64(i64 %125) #11
  %127 = ptrtoint ptr %msg.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %126, ptr %msg.i, align 8
  %arrayidx5.i = getelementptr [2 x i64], ptr %arrayidx.i, i32 0, i32 1
  %128 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %arrayidx5.i, align 8
  %130 = tail call i64 @llvm.bswap.i64(i64 %129) #11
  %131 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %130, ptr %arrayidx7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv)
  %cmp.i = icmp ugt i32 %conv, 1
  br i1 %cmp.i, label %while.body.i.1, label %while.body.lr.ph.i.while.end.i_crit_edge

while.body.lr.ph.i.while.end.i_crit_edge:         ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i.1:                                   ; preds = %while.body.lr.ph.i
  %add.i193 = add i32 %consumer.0222, 1
  %and.i = and i32 %add.i193, %sub.i
  %arrayidx.i.1 = getelementptr %struct.status_desc, ptr %5, i32 %and.i
  %132 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %arrayidx.i.1, align 16
  %134 = tail call i64 @llvm.bswap.i64(i64 %133) #11
  %135 = ptrtoint ptr %arrayidx3.i.1 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %134, ptr %arrayidx3.i.1, align 8
  %arrayidx5.i.1 = getelementptr [2 x i64], ptr %arrayidx.i.1, i32 0, i32 1
  %136 = ptrtoint ptr %arrayidx5.i.1 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %arrayidx5.i.1, align 8
  %138 = tail call i64 @llvm.bswap.i64(i64 %137) #11
  %139 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %138, ptr %arrayidx7.i.1, align 8
  %140 = add nsw i32 %conv, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %140)
  %cmp.i.1 = icmp ult i32 %140, -2
  br i1 %cmp.i.1, label %while.body.i.2, label %while.body.i.1.while.end.i_crit_edge

while.body.i.1.while.end.i_crit_edge:             ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i.2:                                   ; preds = %while.body.i.1
  %add.i193.1 = add i32 %and.i, 1
  %and.i.1 = and i32 %add.i193.1, %sub.i
  %arrayidx.i.2 = getelementptr %struct.status_desc, ptr %5, i32 %and.i.1
  %141 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %arrayidx.i.2, align 16
  %143 = tail call i64 @llvm.bswap.i64(i64 %142) #11
  %144 = ptrtoint ptr %arrayidx3.i.2 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %143, ptr %arrayidx3.i.2, align 8
  %arrayidx5.i.2 = getelementptr [2 x i64], ptr %arrayidx.i.2, i32 0, i32 1
  %145 = ptrtoint ptr %arrayidx5.i.2 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %arrayidx5.i.2, align 8
  %147 = tail call i64 @llvm.bswap.i64(i64 %146) #11
  %148 = ptrtoint ptr %arrayidx7.i.2 to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %147, ptr %arrayidx7.i.2, align 8
  %149 = and i32 %9, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %149)
  %cmp.i.2.not = icmp eq i32 %149, 2
  br i1 %cmp.i.2.not, label %while.body.i.2.while.end.i_crit_edge, label %while.body.i.3

while.body.i.2.while.end.i_crit_edge:             ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i.3:                                   ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #13
  %add.i193.2 = add i32 %and.i.1, 1
  %and.i.2 = and i32 %add.i193.2, %sub.i
  %arrayidx.i.3 = getelementptr %struct.status_desc, ptr %5, i32 %and.i.2
  %150 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %arrayidx.i.3, align 16
  %152 = tail call i64 @llvm.bswap.i64(i64 %151) #11
  %153 = ptrtoint ptr %arrayidx3.i.3 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %152, ptr %arrayidx3.i.3, align 8
  %arrayidx5.i.3 = getelementptr [2 x i64], ptr %arrayidx.i.3, i32 0, i32 1
  %154 = ptrtoint ptr %arrayidx5.i.3 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %arrayidx5.i.3, align 8
  %156 = tail call i64 @llvm.bswap.i64(i64 %155) #11
  %157 = ptrtoint ptr %arrayidx7.i.3 to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %156, ptr %arrayidx7.i.3, align 8
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.3, %while.body.i.2.while.end.i_crit_edge, %while.body.i.1.while.end.i_crit_edge, %while.body.lr.ph.i.while.end.i_crit_edge, %sw.bb18.while.end.i_crit_edge
  %158 = ptrtoint ptr %body.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %body.i, align 8
  %160 = and i64 %159, 1095216660480
  call void @__sanitizer_cov_trace_const_cmp8(i64 605590388736, i64 %160)
  %cond.i = icmp eq i64 %160, 605590388736
  br i1 %cond.i, label %sw.bb.i, label %while.end.i.netxen_handle_fw_message.exit_crit_edge

while.end.i.netxen_handle_fw_message.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_handle_fw_message.exit

sw.bb.i:                                          ; preds = %while.end.i
  %161 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %adapter1, align 4
  %netdev1.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %netdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %netdev1.i.i, align 4
  %has_link_events.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %162, i32 0, i32 26
  %165 = ptrtoint ptr %has_link_events.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 1, ptr %has_link_events.i.i, align 8
  %166 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %arrayidx.i.i, align 8
  %shr.i.i = lshr i64 %167, 32
  %168 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %arrayidx12.i.i, align 8
  %shr27.i.i = lshr i64 %169, 8
  %170 = trunc i64 %shr27.i.i to i8
  %171 = zext i8 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %170, label %sw.bb.i.netxen_handle_linkevent.exit.i_crit_edge [
    i8 6, label %do.end.i.i
    i8 7, label %do.end39.i.i
  ]

sw.bb.i.netxen_handle_linkevent.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_handle_linkevent.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i.i = trunc i64 %shr.i.i to i32
  %conv.i.i194 = trunc i64 %167 to i32
  %conv32.i.i = and i32 %conv5.i.i, 65535
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %164, i32 noundef %conv.i.i194, i32 noundef %conv32.i.i) #16
  br label %netxen_handle_linkevent.exit.i

do.end39.i.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %172 = trunc i64 %shr.i.i to i32
  %conv43.i.i = and i32 %172, 65535
  %call44.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %164, i32 noundef %conv43.i.i) #16
  br label %netxen_handle_linkevent.exit.i

netxen_handle_linkevent.exit.i:                   ; preds = %do.end39.i.i, %do.end.i.i, %sw.bb.i.netxen_handle_linkevent.exit.i_crit_edge
  %173 = and i64 %169, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %173)
  %cmp47.i.i = icmp eq i64 %173, 65536
  %spec.select.i.i195 = zext i1 %cmp47.i.i to i16
  %174 = getelementptr inbounds %struct.netxen_adapter, ptr %162, i32 0, i32 32
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %spec.select.i.i195, ptr %174, align 2
  %shr22.i.i = lshr i64 %169, 24
  %conv14.i.i = trunc i64 %169 to i32
  %shr8.i.i = lshr i64 %167, 48
  %conv10.i.i = trunc i64 %shr8.i.i to i16
  %176 = trunc i64 %shr27.i.i to i16
  %conv53.i.i = and i16 %176, 255
  %module_type.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %162, i32 0, i32 34
  %177 = ptrtoint ptr %module_type.i.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %conv53.i.i, ptr %module_type.i.i, align 2
  %178 = trunc i64 %shr22.i.i to i16
  %conv54.i.i = and i16 %178, 255
  %link_autoneg.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %162, i32 0, i32 33
  %179 = ptrtoint ptr %link_autoneg.i.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %conv54.i.i, ptr %link_autoneg.i.i, align 4
  %link_speed55.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %162, i32 0, i32 31
  %180 = ptrtoint ptr %link_speed55.i.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv10.i.i, ptr %link_speed55.i.i, align 8
  %conv56.i.i = and i32 %conv14.i.i, 255
  tail call void @netxen_advert_link_change(ptr noundef %162, i32 noundef %conv56.i.i) #11
  br label %netxen_handle_fw_message.exit

netxen_handle_fw_message.exit:                    ; preds = %netxen_handle_linkevent.exit.i, %while.end.i.netxen_handle_fw_message.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msg.i) #11
  br label %skip

sw.epilog:                                        ; preds = %if.end86.i, %netxen_process_rxbuf.exit.thread.i171, %if.end.i160.sw.epilog_crit_edge, %sw.bb11.sw.epilog_crit_edge, %if.end41.i, %netxen_process_rxbuf.exit.thread.i, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %rxbuf.0 = phi ptr [ %arrayidx16.i, %if.end41.i ], [ null, %sw.bb.sw.epilog_crit_edge ], [ null, %if.end.i.sw.epilog_crit_edge ], [ %arrayidx16.i, %netxen_process_rxbuf.exit.thread.i ], [ %arrayidx16.i162, %if.end86.i ], [ null, %sw.bb11.sw.epilog_crit_edge ], [ null, %if.end.i160.sw.epilog_crit_edge ], [ %arrayidx16.i162, %netxen_process_rxbuf.exit.thread.i171 ]
  %ring.0 = phi i32 [ %conv10, %if.end41.i ], [ %conv10, %sw.bb.sw.epilog_crit_edge ], [ %conv10, %if.end.i.sw.epilog_crit_edge ], [ %conv10, %netxen_process_rxbuf.exit.thread.i ], [ %conv14, %if.end86.i ], [ %conv14, %sw.bb11.sw.epilog_crit_edge ], [ %conv14, %if.end.i160.sw.epilog_crit_edge ], [ %conv14, %netxen_process_rxbuf.exit.thread.i171 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv)
  %cmp19 = icmp ugt i32 %conv, 1
  br i1 %cmp19, label %do.end, label %sw.epilog.if.end35_crit_edge, !prof !148

sw.epilog.if.end35_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1693, i32 noundef 9, ptr noundef null) #11
  br label %if.end35

if.end35:                                         ; preds = %do.end, %sw.epilog.if.end35_crit_edge
  %tobool42.not = icmp eq ptr %rxbuf.0, null
  br i1 %tobool42.not, label %if.end35.skip_crit_edge, label %if.then43

if.end35.skip_crit_edge:                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip

if.then43:                                        ; preds = %if.end35
  %arrayidx44 = getelementptr %struct.nx_host_sds_ring, ptr %sds_ring, i32 0, i32 7, i32 %ring.0
  %prev.i = getelementptr %struct.nx_host_sds_ring, ptr %sds_ring, i32 0, i32 7, i32 %ring.0, i32 1
  %181 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %prev.i, align 4
  %call.i.i196 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %rxbuf.0, ptr noundef %182, ptr noundef %arrayidx44) #11
  br i1 %call.i.i196, label %if.end.i.i197, label %if.then43.skip_crit_edge

if.then43.skip_crit_edge:                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip

if.end.i.i197:                                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  %183 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %rxbuf.0, ptr %prev.i, align 4
  %184 = ptrtoint ptr %rxbuf.0 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %arrayidx44, ptr %rxbuf.0, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %rxbuf.0, i32 0, i32 1
  %185 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %182, ptr %prev3.i.i, align 4
  %186 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %186)
  store volatile ptr %rxbuf.0, ptr %182, align 4
  br label %skip

skip:                                             ; preds = %if.end.i.i197, %if.then43.skip_crit_edge, %if.end35.skip_crit_edge, %netxen_handle_fw_message.exit, %if.end.skip_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp46218.not = icmp eq i32 %conv, 0
  br i1 %cmp46218.not, label %skip.for.end_crit_edge, label %for.body

skip.for.end_crit_edge:                           ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %skip
  %187 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %desc_head, align 8
  %arrayidx49 = getelementptr %struct.status_desc, ptr %188, i32 %consumer.0222
  %189 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store8_noabort(i32 %189)
  store i64 2, ptr %arrayidx49, align 16
  %add = add i32 %consumer.0222, 1
  %190 = ptrtoint ptr %num_desc.i191 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %num_desc.i191, align 4
  %sub = add i32 %191, -1
  %and52 = and i32 %sub, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv)
  %cmp46 = icmp ugt i32 %conv, 1
  br i1 %cmp46, label %for.body.1, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %192 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %desc_head, align 8
  %arrayidx49.1 = getelementptr %struct.status_desc, ptr %193, i32 %and52
  %194 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 2, ptr %arrayidx49.1, align 16
  %add.1 = add i32 %and52, 1
  %195 = ptrtoint ptr %num_desc.i191 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %num_desc.i191, align 4
  %sub.1 = add i32 %196, -1
  %and52.1 = and i32 %sub.1, %add.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv)
  %cmp46.1.not = icmp eq i32 %conv, 2
  br i1 %cmp46.1.not, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %197 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %desc_head, align 8
  %arrayidx49.2 = getelementptr %struct.status_desc, ptr %198, i32 %and52.1
  %199 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 2, ptr %arrayidx49.2, align 16
  %add.2 = add i32 %and52.1, 1
  %200 = ptrtoint ptr %num_desc.i191 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %num_desc.i191, align 4
  %sub.2 = add i32 %201, -1
  %and52.2 = and i32 %sub.2, %add.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv)
  %cmp46.2 = icmp ugt i32 %conv, 3
  br i1 %cmp46.2, label %for.body.3, label %for.body.2.for.end_crit_edge

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %202 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %desc_head, align 8
  %arrayidx49.3 = getelementptr %struct.status_desc, ptr %203, i32 %and52.2
  %204 = ptrtoint ptr %arrayidx49.3 to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 2, ptr %arrayidx49.3, align 16
  %add.3 = add i32 %and52.2, 1
  %205 = ptrtoint ptr %num_desc.i191 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %num_desc.i191, align 4
  %sub.3 = add i32 %206, -1
  %and52.3 = and i32 %sub.3, %add.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv)
  %cmp46.3.not = icmp eq i32 %conv, 4
  br i1 %cmp46.3.not, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %207 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %desc_head, align 8
  %arrayidx49.4 = getelementptr %struct.status_desc, ptr %208, i32 %and52.3
  %209 = ptrtoint ptr %arrayidx49.4 to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 2, ptr %arrayidx49.4, align 16
  %add.4 = add i32 %and52.3, 1
  %210 = ptrtoint ptr %num_desc.i191 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %num_desc.i191, align 4
  %sub.4 = add i32 %211, -1
  %and52.4 = and i32 %sub.4, %add.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv)
  %cmp46.4 = icmp ugt i32 %conv, 5
  br i1 %cmp46.4, label %for.body.5, label %for.body.4.for.end_crit_edge

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  %212 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %desc_head, align 8
  %arrayidx49.5 = getelementptr %struct.status_desc, ptr %213, i32 %and52.4
  %214 = ptrtoint ptr %arrayidx49.5 to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 2, ptr %arrayidx49.5, align 16
  %add.5 = add i32 %and52.4, 1
  %215 = ptrtoint ptr %num_desc.i191 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %num_desc.i191, align 4
  %sub.5 = add i32 %216, -1
  %and52.5 = and i32 %sub.5, %add.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %conv)
  %cmp46.5 = icmp eq i32 %conv, 7
  br i1 %cmp46.5, label %for.body.6, label %for.body.5.for.end_crit_edge

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #13
  %217 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %desc_head, align 8
  %arrayidx49.6 = getelementptr %struct.status_desc, ptr %218, i32 %and52.5
  %219 = ptrtoint ptr %arrayidx49.6 to i32
  call void @__asan_store8_noabort(i32 %219)
  store i64 2, ptr %arrayidx49.6, align 16
  %add.6 = add i32 %and52.5, 1
  %220 = ptrtoint ptr %num_desc.i191 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %num_desc.i191, align 4
  %sub.6 = add i32 %221, -1
  %and52.6 = and i32 %sub.6, %add.6
  br label %for.end

for.end:                                          ; preds = %for.body.6, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %skip.for.end_crit_edge
  %consumer.1.lcssa = phi i32 [ %consumer.0222, %skip.for.end_crit_edge ], [ %and52, %for.body.for.end_crit_edge ], [ %and52.1, %for.body.1.for.end_crit_edge ], [ %and52.2, %for.body.2.for.end_crit_edge ], [ %and52.3, %for.body.3.for.end_crit_edge ], [ %and52.4, %for.body.4.for.end_crit_edge ], [ %and52.5, %for.body.5.for.end_crit_edge ], [ %and52.6, %for.body.6 ]
  %inc = add nuw nsw i32 %count.0223, 1
  %exitcond.not = icmp eq i32 %inc, %max
  br i1 %exitcond.not, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %consumer.0.lcssa = phi i32 [ %3, %entry.while.end_crit_edge ], [ %consumer.0222, %while.body.while.end_crit_edge ], [ %consumer.1.lcssa, %for.end.while.end_crit_edge ]
  %count.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %count.0223, %while.body.while.end_crit_edge ], [ %max, %for.end.while.end_crit_edge ]
  %max_rds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 10
  %222 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %max_rds_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %cmp55232.not = icmp eq i8 %223, 0
  br i1 %cmp55232.not, label %while.end.for.end89_crit_edge, label %for.body57.lr.ph

while.end.for.end89_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end89

for.body57.lr.ph:                                 ; preds = %while.end
  %rds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 43, i32 3
  %io_write.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 59
  br label %for.body57

for.body57:                                       ; preds = %netxen_post_rx_buffers_nodb.exit.for.body57_crit_edge, %for.body57.lr.ph
  %ring.1233 = phi i32 [ 0, %for.body57.lr.ph ], [ %inc88, %netxen_post_rx_buffers_nodb.exit.for.body57_crit_edge ]
  %224 = ptrtoint ptr %rds_rings to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %rds_rings, align 8
  %arrayidx58 = getelementptr %struct.nx_host_rds_ring, ptr %225, i32 %ring.1233
  %arrayidx60 = getelementptr %struct.nx_host_sds_ring, ptr %sds_ring, i32 0, i32 7, i32 %ring.1233
  %226 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load volatile ptr, ptr %arrayidx60, align 4
  %cmp.i198.not = icmp eq ptr %227, %arrayidx60
  br i1 %cmp.i198.not, label %for.body57.if.end86_crit_edge, label %for.cond66.preheader

for.body57.if.end86_crit_edge:                    ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

for.cond66.preheader:                             ; preds = %for.body57
  %228 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %228)
  %cur.0228 = load ptr, ptr %arrayidx60, align 4
  %cmp.i200.not229 = icmp eq ptr %cur.0228, %arrayidx60
  br i1 %cmp.i200.not229, label %for.cond66.preheader.for.end78_crit_edge, label %for.cond66.preheader.for.body73_crit_edge

for.cond66.preheader.for.body73_crit_edge:        ; preds = %for.cond66.preheader
  br label %for.body73

for.cond66.preheader.for.end78_crit_edge:         ; preds = %for.cond66.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end78

for.body73:                                       ; preds = %for.body73.for.body73_crit_edge, %for.cond66.preheader.for.body73_crit_edge
  %cur.0230 = phi ptr [ %cur.0, %for.body73.for.body73_crit_edge ], [ %cur.0228, %for.cond66.preheader.for.body73_crit_edge ]
  %call75 = tail call fastcc i32 @netxen_alloc_rx_skb(ptr noundef %1, ptr noundef %arrayidx58, ptr noundef %cur.0230)
  %229 = ptrtoint ptr %cur.0230 to i32
  call void @__asan_load4_noabort(i32 %229)
  %cur.0 = load ptr, ptr %cur.0230, align 4
  %cmp.i200.not = icmp eq ptr %cur.0, %arrayidx60
  br i1 %cmp.i200.not, label %for.body73.for.end78_crit_edge, label %for.body73.for.body73_crit_edge

for.body73.for.body73_crit_edge:                  ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body73

for.body73.for.end78_crit_edge:                   ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end78

for.end78:                                        ; preds = %for.body73.for.end78_crit_edge, %for.cond66.preheader.for.end78_crit_edge
  %lock = getelementptr %struct.nx_host_rds_ring, ptr %225, i32 %ring.1233, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %230 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load volatile ptr, ptr %arrayidx60, align 4
  %cmp.i.not.i = icmp eq ptr %231, %arrayidx60
  br i1 %cmp.i.not.i, label %for.end78.list_splice_tail_init.exit_crit_edge, label %if.then.i

for.end78.list_splice_tail_init.exit_crit_edge:   ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #13
  %free_list82 = getelementptr %struct.nx_host_rds_ring, ptr %225, i32 %ring.1233, i32 8
  %prev.i202 = getelementptr %struct.nx_host_rds_ring, ptr %225, i32 %ring.1233, i32 8, i32 1
  %232 = ptrtoint ptr %prev.i202 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %prev.i202, align 4
  %prev2.i.i = getelementptr %struct.nx_host_sds_ring, ptr %sds_ring, i32 0, i32 7, i32 %ring.1233, i32 1
  %234 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i203 = getelementptr inbounds %struct.list_head, ptr %231, i32 0, i32 1
  %236 = ptrtoint ptr %prev3.i.i203 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %233, ptr %prev3.i.i203, align 4
  %237 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %231, ptr %233, align 4
  %238 = ptrtoint ptr %235 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %free_list82, ptr %235, align 4
  store ptr %235, ptr %prev.i202, align 4
  %239 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %239)
  store volatile ptr %arrayidx60, ptr %arrayidx60, align 4
  store ptr %arrayidx60, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %for.end78.list_splice_tail_init.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %if.end86

if.end86:                                         ; preds = %list_splice_tail_init.exit, %for.body57.if.end86_crit_edge
  %lock.i = getelementptr %struct.nx_host_rds_ring, ptr %225, i32 %ring.1233, i32 9
  %call.i.i205 = tail call i32 @_raw_spin_trylock(ptr noundef %lock.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i205)
  %tobool.not.i = icmp eq i32 %call.i.i205, 0
  br i1 %tobool.not.i, label %if.end86.netxen_post_rx_buffers_nodb.exit_crit_edge, label %if.end.i206

if.end86.netxen_post_rx_buffers_nodb.exit_crit_edge: ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_post_rx_buffers_nodb.exit

if.end.i206:                                      ; preds = %if.end86
  %240 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx58, align 4
  %free_list.i = getelementptr %struct.nx_host_rds_ring, ptr %225, i32 %ring.1233, i32 8
  %242 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load volatile ptr, ptr %free_list.i, align 4
  %cmp.i.not47.i = icmp eq ptr %243, %free_list.i
  br i1 %cmp.i.not47.i, label %if.end.i206.if.end18.i_crit_edge, label %while.body.lr.ph.i209

if.end.i206.if.end18.i_crit_edge:                 ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

while.body.lr.ph.i209:                            ; preds = %if.end.i206
  %desc_head.i207 = getelementptr %struct.nx_host_rds_ring, ptr %225, i32 %ring.1233, i32 6
  %dma_size.i = getelementptr %struct.nx_host_rds_ring, ptr %225, i32 %ring.1233, i32 2
  %num_desc.i208 = getelementptr %struct.nx_host_rds_ring, ptr %225, i32 %ring.1233, i32 1
  br label %while.body.i210

while.body.i210:                                  ; preds = %list_del.exit.i.while.body.i210_crit_edge, %while.body.lr.ph.i209
  %244 = phi ptr [ %243, %while.body.lr.ph.i209 ], [ %272, %list_del.exit.i.while.body.i210_crit_edge ]
  %count.050.i = phi i32 [ 0, %while.body.lr.ph.i209 ], [ %inc.i211, %list_del.exit.i.while.body.i210_crit_edge ]
  %producer.048.i = phi i32 [ %241, %while.body.lr.ph.i209 ], [ %and.i215, %list_del.exit.i.while.body.i210_crit_edge ]
  %skb.i = getelementptr inbounds %struct.netxen_rx_buffer, ptr %244, i32 0, i32 1
  %245 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %skb.i, align 8
  %tobool4.not.i = icmp eq ptr %246, null
  br i1 %tobool4.not.i, label %if.then5.i, label %while.body.i210.if.end10.i_crit_edge

while.body.i210.if.end10.i_crit_edge:             ; preds = %while.body.i210
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then5.i:                                       ; preds = %while.body.i210
  %call6.i = tail call fastcc i32 @netxen_alloc_rx_skb(ptr noundef %1, ptr noundef %arrayidx58, ptr noundef %244) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then5.i.if.end10.i_crit_edge, label %if.then5.i.while.end.i217_crit_edge

if.then5.i.while.end.i217_crit_edge:              ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i217

if.then5.i.if.end10.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i.if.end10.i_crit_edge, %while.body.i210.if.end10.i_crit_edge
  %inc.i211 = add i32 %count.050.i, 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %244) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end10.i.list_del.exit.i_crit_edge

if.end10.i.list_del.exit.i_crit_edge:             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %244, i32 0, i32 1
  %247 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %prev.i.i.i, align 4
  %249 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %244, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %250, i32 0, i32 1
  %251 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %248, ptr %prev1.i.i.i.i, align 4
  %252 = ptrtoint ptr %248 to i32
  call void @__asan_store4_noabort(i32 %252)
  store volatile ptr %250, ptr %248, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end10.i.list_del.exit.i_crit_edge
  %253 = ptrtoint ptr %244 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr inttoptr (i32 256 to ptr), ptr %244, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %244, i32 0, i32 1
  %254 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %255 = ptrtoint ptr %desc_head.i207 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %desc_head.i207, align 4
  %arrayidx.i212 = getelementptr %struct.rcv_desc, ptr %256, i32 %producer.048.i
  %ref_handle.i = getelementptr inbounds %struct.netxen_rx_buffer, ptr %244, i32 0, i32 3
  %257 = ptrtoint ptr %ref_handle.i to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %ref_handle.i, align 8
  %259 = tail call i16 @llvm.bswap.i16(i16 %258) #11
  %260 = ptrtoint ptr %arrayidx.i212 to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %259, ptr %arrayidx.i212, align 8
  %261 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %dma_size.i, align 4
  %263 = tail call i32 @llvm.bswap.i32(i32 %262) #11
  %buffer_length.i = getelementptr %struct.rcv_desc, ptr %256, i32 %producer.048.i, i32 2
  %264 = ptrtoint ptr %buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %263, ptr %buffer_length.i, align 4
  %dma.i = getelementptr inbounds %struct.netxen_rx_buffer, ptr %244, i32 0, i32 2
  %265 = ptrtoint ptr %dma.i to i32
  call void @__asan_load8_noabort(i32 %265)
  %266 = load i64, ptr %dma.i, align 8
  %267 = tail call i64 @llvm.bswap.i64(i64 %266) #11
  %addr_buffer.i = getelementptr %struct.rcv_desc, ptr %256, i32 %producer.048.i, i32 3
  %268 = ptrtoint ptr %addr_buffer.i to i32
  call void @__asan_store8_noabort(i32 %268)
  store i64 %267, ptr %addr_buffer.i, align 8
  %add.i213 = add i32 %producer.048.i, 1
  %269 = ptrtoint ptr %num_desc.i208 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %num_desc.i208, align 4
  %sub.i214 = add i32 %270, -1
  %and.i215 = and i32 %sub.i214, %add.i213
  %271 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load volatile ptr, ptr %free_list.i, align 4
  %cmp.i.not.i216 = icmp eq ptr %272, %free_list.i
  br i1 %cmp.i.not.i216, label %list_del.exit.i.while.end.i217_crit_edge, label %list_del.exit.i.while.body.i210_crit_edge

list_del.exit.i.while.body.i210_crit_edge:        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i210

list_del.exit.i.while.end.i217_crit_edge:         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i217

while.end.i217:                                   ; preds = %list_del.exit.i.while.end.i217_crit_edge, %if.then5.i.while.end.i217_crit_edge
  %producer.0.lcssa.i = phi i32 [ %and.i215, %list_del.exit.i.while.end.i217_crit_edge ], [ %producer.048.i, %if.then5.i.while.end.i217_crit_edge ]
  %count.0.lcssa.i = phi i32 [ %inc.i211, %list_del.exit.i.while.end.i217_crit_edge ], [ %count.050.i, %if.then5.i.while.end.i217_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa.i)
  %tobool11.not.i = icmp eq i32 %count.0.lcssa.i, 0
  br i1 %tobool11.not.i, label %while.end.i217.if.end18.i_crit_edge, label %if.then12.i

while.end.i217.if.end18.i_crit_edge:              ; preds = %while.end.i217
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

if.then12.i:                                      ; preds = %while.end.i217
  call void @__sanitizer_cov_trace_pc() #13
  %273 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %producer.0.lcssa.i, ptr %arrayidx58, align 4
  %274 = ptrtoint ptr %io_write.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %io_write.i, align 4
  %crb_rcv_producer.i = getelementptr %struct.nx_host_rds_ring, ptr %225, i32 %ring.1233, i32 5
  %276 = ptrtoint ptr %crb_rcv_producer.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %crb_rcv_producer.i, align 4
  %sub14.i = add i32 %producer.0.lcssa.i, -1
  %278 = ptrtoint ptr %num_desc.i208 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %num_desc.i208, align 4
  %sub16.i = add i32 %279, -1
  %and17.i = and i32 %sub16.i, %sub14.i
  tail call void %275(ptr noundef %1, ptr noundef %277, i32 noundef %and17.i) #11
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then12.i, %while.end.i217.if.end18.i_crit_edge, %if.end.i206.if.end18.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  br label %netxen_post_rx_buffers_nodb.exit

netxen_post_rx_buffers_nodb.exit:                 ; preds = %if.end18.i, %if.end86.netxen_post_rx_buffers_nodb.exit_crit_edge
  %inc88 = add nuw nsw i32 %ring.1233, 1
  %280 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %max_rds_rings, align 8
  %conv54 = zext i8 %281 to i32
  %cmp55 = icmp ult i32 %inc88, %conv54
  br i1 %cmp55, label %netxen_post_rx_buffers_nodb.exit.for.body57_crit_edge, label %netxen_post_rx_buffers_nodb.exit.for.end89_crit_edge

netxen_post_rx_buffers_nodb.exit.for.end89_crit_edge: ; preds = %netxen_post_rx_buffers_nodb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end89

netxen_post_rx_buffers_nodb.exit.for.body57_crit_edge: ; preds = %netxen_post_rx_buffers_nodb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body57

for.end89:                                        ; preds = %netxen_post_rx_buffers_nodb.exit.for.end89_crit_edge, %while.end.for.end89_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa)
  %tobool90.not = icmp eq i32 %count.0.lcssa, 0
  br i1 %tobool90.not, label %for.end89.if.end93_crit_edge, label %if.then91

for.end89.if.end93_crit_edge:                     ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.then91:                                        ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #13
  %282 = ptrtoint ptr %sds_ring to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %consumer.0.lcssa, ptr %sds_ring, align 8
  %io_write = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 59
  %283 = ptrtoint ptr %io_write to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %io_write, align 4
  %crb_sts_consumer = getelementptr inbounds %struct.nx_host_sds_ring, ptr %sds_ring, i32 0, i32 2
  %285 = ptrtoint ptr %crb_sts_consumer to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %crb_sts_consumer, align 8
  tail call void %284(ptr noundef %1, ptr noundef %286, i32 noundef %consumer.0.lcssa) #11
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %for.end89.if.end93_crit_edge
  ret i32 %count.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netxen_alloc_rx_skb(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %rds_ring, ptr nocapture noundef writeonly %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %netdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 1
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %skb_size = getelementptr inbounds %struct.nx_host_rds_ring, ptr %rds_ring, i32 0, i32 3
  %4 = ptrtoint ptr %skb_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skb_size, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %3, i32 noundef %5, i32 noundef 2592) #11
  %skb2 = getelementptr inbounds %struct.netxen_rx_buffer, ptr %buffer, i32 0, i32 1
  %6 = ptrtoint ptr %skb2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %skb2, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cut_through = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 11
  %7 = ptrtoint ptr %cut_through to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cut_through, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %12, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %dma_size = getelementptr inbounds %struct.nx_host_rds_ring, ptr %rds_ring, i32 0, i32 2
  %15 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_size, align 4
  %call.i33 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %14) #11
  br i1 %call.i33, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end7
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !147

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %17 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %18, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.72, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.73, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #11
  br label %if.then12

dma_map_single_attrs.exit:                        ; preds = %if.end7
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %14, i32 noundef %16) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %21 = load ptr, ptr @mem_map, align 4
  %22 = ptrtoint ptr %14 to i32
  %sub.i = add i32 %22, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i34 = getelementptr %struct.page, ptr %21, i32 %shr.i
  %and.i = and i32 %22, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i34, i32 noundef %and.i, i32 noundef %16, i32 noundef 2, i32 noundef 0) #11
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then12_crit_edge, label %if.end14

dma_map_single_attrs.exit.if.then12_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.then12:                                        ; preds = %dma_map_single_attrs.exit.if.then12_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 1) #11
  %23 = ptrtoint ptr %skb2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %skb2, align 8
  br label %cleanup

if.end14:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %skb2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %skb2, align 8
  %conv = zext i32 %call41.i to i64
  %dma16 = getelementptr inbounds %struct.netxen_rx_buffer, ptr %buffer, i32 0, i32 2
  %25 = ptrtoint ptr %dma16 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv, ptr %dma16, align 8
  %state = getelementptr inbounds %struct.netxen_rx_buffer, ptr %buffer, i32 0, i32 4
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %state, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then12 ], [ 0, %if.end14 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_process_cmd_ring(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %netdev2 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 1
  %2 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev2, align 4
  %tx_ring3 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 44
  %4 = ptrtoint ptr %tx_ring3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring3, align 8
  %tx_clean_lock = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 5
  %call.i = tail call i32 @_raw_spin_trylock_bh(ptr noundef %tx_clean_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sw_consumer4 = getelementptr inbounds %struct.nx_host_tx_ring, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %sw_consumer4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sw_consumer4, align 4
  %hw_consumer5 = getelementptr inbounds %struct.nx_host_tx_ring, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %hw_consumer5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_consumer5, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %cmd_buf_arr = getelementptr inbounds %struct.nx_host_tx_ring, ptr %5, i32 0, i32 7
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %xmitfinished = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 42, i32 1
  %num_desc = getelementptr inbounds %struct.nx_host_tx_ring, ptr %5, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %if.end22.while.cond_crit_edge, %if.end
  %sw_consumer.0 = phi i32 [ %7, %if.end ], [ %and, %if.end22.while.cond_crit_edge ]
  %count.0 = phi i32 [ 0, %if.end ], [ %inc23, %if.end22.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sw_consumer.0, i32 %12)
  %cmp.not = icmp eq i32 %sw_consumer.0, %12
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %13 = ptrtoint ptr %cmd_buf_arr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd_buf_arr, align 4
  %arrayidx = getelementptr %struct.netxen_cmd_buffer, ptr %14, i32 %sw_consumer.0
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 8
  %tobool6.not = icmp eq ptr %16, null
  br i1 %tobool6.not, label %while.body.if.end22_crit_edge, label %if.then7

while.body.if.end22_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then7:                                         ; preds = %while.body
  %frag_array = getelementptr %struct.netxen_cmd_buffer, ptr %14, i32 %sw_consumer.0, i32 1
  %17 = ptrtoint ptr %frag_array to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %frag_array, align 8
  %conv = trunc i64 %18 to i32
  %length = getelementptr inbounds %struct.netxen_skb_frag, ptr %frag_array, i32 0, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %length, align 8
  %conv9 = trunc i64 %20 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv, i32 noundef %conv9, i32 noundef 1, i32 noundef 0) #11
  %21 = ptrtoint ptr %frag_array to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %frag_array, align 8
  %frag_count = getelementptr %struct.netxen_cmd_buffer, ptr %14, i32 %sw_consumer.0, i32 2
  %22 = ptrtoint ptr %frag_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frag_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp11104 = icmp ugt i32 %23, 1
  br i1 %cmp11104, label %if.then7.for.body_crit_edge, label %if.then7.for.end_crit_edge

if.then7.for.end_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then7.for.body_crit_edge:                      ; preds = %if.then7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then7.for.body_crit_edge
  %frag.0106 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %frag_array, %if.then7.for.body_crit_edge ]
  %i.0105 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.then7.for.body_crit_edge ]
  %incdec.ptr = getelementptr %struct.netxen_skb_frag, ptr %frag.0106, i32 1
  %24 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %incdec.ptr, align 8
  %conv15 = trunc i64 %25 to i32
  %length16 = getelementptr %struct.netxen_skb_frag, ptr %frag.0106, i32 1, i32 1
  %26 = ptrtoint ptr %length16 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %length16, align 8
  %conv17 = trunc i64 %27 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv15, i32 noundef %conv17, i32 noundef 1, i32 noundef 0) #11
  %28 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %incdec.ptr, align 8
  %inc = add nuw i32 %i.0105, 1
  %29 = ptrtoint ptr %frag_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %frag_count, align 8
  %cmp11 = icmp ult i32 %inc, %30
  br i1 %cmp11, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then7.for.end_crit_edge
  %31 = ptrtoint ptr %xmitfinished to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %xmitfinished, align 8
  %inc19 = add i64 %32, 1
  store i64 %inc19, ptr %xmitfinished, align 8
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %34, i32 noundef 1) #11
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx, align 8
  br label %if.end22

if.end22:                                         ; preds = %for.end, %while.body.if.end22_crit_edge
  %add = add i32 %sw_consumer.0, 1
  %36 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_desc, align 4
  %sub = add i32 %37, -1
  %and = and i32 %sub, %add
  %inc23 = add nuw nsw i32 %count.0, 1
  %exitcond = icmp eq i32 %inc23, 64
  br i1 %exitcond, label %while.end.thread, label %if.end22.while.cond_crit_edge

if.end22.while.cond_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end.thread:                                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %sw_consumer4 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and, ptr %sw_consumer4, align 4
  br label %land.lhs.true

while.end:                                        ; preds = %while.cond
  %39 = ptrtoint ptr %sw_consumer4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %12, ptr %sw_consumer4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %tobool29.not = icmp eq i32 %count.0, 0
  br i1 %tobool29.not, label %while.end.if.end48_crit_edge, label %while.end.land.lhs.true_crit_edge

while.end.land.lhs.true_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

while.end.if.end48_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

land.lhs.true:                                    ; preds = %while.end.land.lhs.true_crit_edge, %while.end.thread
  %sw_consumer.1100 = phi i32 [ %and, %while.end.thread ], [ %12, %while.end.land.lhs.true_crit_edge ]
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %40 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end48_crit_edge, label %do.end

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

do.end:                                           ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !149
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %42 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %do.end.if.end47_crit_edge, label %land.lhs.true38

do.end.if.end47_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

land.lhs.true38:                                  ; preds = %do.end
  %46 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %state.i, align 4
  %48 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i, label %if.then41, label %land.lhs.true38.if.end47_crit_edge

land.lhs.true38.if.end47_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then41:                                        ; preds = %land.lhs.true38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !150
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %5, align 4
  %51 = ptrtoint ptr %sw_consumer4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sw_consumer4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %50)
  %cmp.i = icmp ugt i32 %52, %50
  br i1 %cmp.i, label %if.then41.netxen_tx_avail.exit_crit_edge, label %cond.false.i

if.then41.netxen_tx_avail.exit_crit_edge:         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %netxen_tx_avail.exit

cond.false.i:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_desc, align 4
  %add.i = add i32 %54, %52
  br label %netxen_tx_avail.exit

netxen_tx_avail.exit:                             ; preds = %cond.false.i, %if.then41.netxen_tx_avail.exit_crit_edge
  %.pn.i = phi i32 [ %add.i, %cond.false.i ], [ %52, %if.then41.netxen_tx_avail.exit_crit_edge ]
  %cond.i = sub i32 %.pn.i, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %cond.i)
  %cmp43 = icmp ugt i32 %cond.i, 10
  br i1 %cmp43, label %if.then45, label %netxen_tx_avail.exit.if.end47_crit_edge

netxen_tx_avail.exit.if.end47_crit_edge:          ; preds = %netxen_tx_avail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then45:                                        ; preds = %netxen_tx_avail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %56) #11
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %netxen_tx_avail.exit.if.end47_crit_edge, %land.lhs.true38.if.end47_crit_edge, %do.end.if.end47_crit_edge
  %tx_timeo_cnt = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 24
  %57 = ptrtoint ptr %tx_timeo_cnt to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %tx_timeo_cnt, align 2
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %land.lhs.true.if.end48_crit_edge, %while.end.if.end48_crit_edge
  %sw_consumer.1101 = phi i32 [ %sw_consumer.1100, %if.end47 ], [ %sw_consumer.1100, %land.lhs.true.if.end48_crit_edge ], [ %12, %while.end.if.end48_crit_edge ]
  %58 = ptrtoint ptr %hw_consumer5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw_consumer5, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  call void @__sanitizer_cov_trace_cmp4(i32 %sw_consumer.1101, i32 %62)
  %cmp50 = icmp eq i32 %sw_consumer.1101, %62
  %conv51 = zext i1 %cmp50 to i32
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_clean_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv51, %if.end48 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netxen_post_rx_buffers(ptr noundef %adapter, i32 noundef %ringid, ptr noundef %rds_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rds_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rds_ring, align 4
  %free_list = getelementptr inbounds %struct.nx_host_rds_ring, ptr %rds_ring, i32 0, i32 8
  %2 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not76 = icmp eq ptr %3, %free_list
  br i1 %cmp.i.not76, label %entry.if.end38_crit_edge, label %while.body.lr.ph

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

while.body.lr.ph:                                 ; preds = %entry
  %desc_head = getelementptr inbounds %struct.nx_host_rds_ring, ptr %rds_ring, i32 0, i32 6
  %dma_size = getelementptr inbounds %struct.nx_host_rds_ring, ptr %rds_ring, i32 0, i32 2
  %num_desc = getelementptr inbounds %struct.nx_host_rds_ring, ptr %rds_ring, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %3, %while.body.lr.ph ], [ %32, %list_del.exit.while.body_crit_edge ]
  %count.079 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %list_del.exit.while.body_crit_edge ]
  %producer.077 = phi i32 [ %1, %while.body.lr.ph ], [ %and, %list_del.exit.while.body_crit_edge ]
  %skb = getelementptr inbounds %struct.netxen_rx_buffer, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skb, align 8
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.then, label %while.body.if.end6_crit_edge

while.body.if.end6_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %while.body
  %call3 = tail call fastcc i32 @netxen_alloc_rx_skb(ptr noundef %adapter, ptr noundef %rds_ring, ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.while.end_crit_edge

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %while.body.if.end6_crit_edge
  %inc = add i32 %count.079, 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.list_del.exit_crit_edge

if.end6.list_del.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end6.list_del.exit_crit_edge
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %15 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc_head, align 4
  %arrayidx = getelementptr %struct.rcv_desc, ptr %16, i32 %producer.077
  %dma = getelementptr inbounds %struct.netxen_rx_buffer, ptr %4, i32 0, i32 2
  %17 = ptrtoint ptr %dma to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %dma, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %addr_buffer = getelementptr %struct.rcv_desc, ptr %16, i32 %producer.077, i32 3
  %20 = ptrtoint ptr %addr_buffer to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %addr_buffer, align 8
  %ref_handle = getelementptr inbounds %struct.netxen_rx_buffer, ptr %4, i32 0, i32 3
  %21 = ptrtoint ptr %ref_handle to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ref_handle, align 8
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %arrayidx, align 8
  %25 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_size, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %buffer_length = getelementptr %struct.rcv_desc, ptr %16, i32 %producer.077, i32 2
  %28 = ptrtoint ptr %buffer_length to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %buffer_length, align 4
  %add = add i32 %producer.077, 1
  %29 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_desc, align 4
  %sub = add i32 %30, -1
  %and = and i32 %sub, %add
  %31 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not = icmp eq ptr %32, %free_list
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.then.while.end_crit_edge
  %producer.0.lcssa = phi i32 [ %and, %list_del.exit.while.end_crit_edge ], [ %producer.077, %if.then.while.end_crit_edge ]
  %count.0.lcssa = phi i32 [ %inc, %list_del.exit.while.end_crit_edge ], [ %count.079, %if.then.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa)
  %tobool7.not = icmp eq i32 %count.0.lcssa, 0
  br i1 %tobool7.not, label %while.end.if.end38_crit_edge, label %if.then8

while.end.if.end38_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then8:                                         ; preds = %while.end
  %33 = ptrtoint ptr %rds_ring to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %producer.0.lcssa, ptr %rds_ring, align 4
  %io_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 59
  %34 = ptrtoint ptr %io_write to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_write, align 4
  %crb_rcv_producer = getelementptr inbounds %struct.nx_host_rds_ring, ptr %rds_ring, i32 0, i32 5
  %36 = ptrtoint ptr %crb_rcv_producer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %crb_rcv_producer, align 4
  %sub10 = add i32 %producer.0.lcssa, -1
  %num_desc11 = getelementptr inbounds %struct.nx_host_rds_ring, ptr %rds_ring, i32 0, i32 1
  %38 = ptrtoint ptr %num_desc11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_desc11, align 4
  %sub12 = add i32 %39, -1
  %and13 = and i32 %sub12, %sub10
  tail call void %35(ptr noundef %adapter, ptr noundef %37, i32 noundef %and13) #11
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %40 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %41)
  %cmp = icmp ult i8 %41, 38
  br i1 %cmp, label %if.then15, label %if.then8.if.end38_crit_edge

if.then8.if.end38_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then15:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %num_desc11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_desc11, align 4
  %sub21 = add i32 %43, 32767
  %and22 = and i32 %sub21, %sub10
  %and23 = shl i32 %and22, 3
  %shl = and i32 %and23, 262136
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %44 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %portnum, align 2
  %conv26 = zext i8 %45 to i32
  %shl28 = shl nuw nsw i32 %conv26, 18
  %or24 = or i32 %shl, %shl28
  %shl32 = shl i32 %ringid, 28
  %or29 = or i32 %or24, %shl32
  %or33 = or i32 %or29, 6
  %46 = ptrtoint ptr %io_write to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io_write, align 4
  %db_base = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 3
  %48 = ptrtoint ptr %db_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %db_base, align 4
  tail call void %47(ptr noundef %adapter, ptr noundef %49, i32 noundef %or33) #11
  br label %if.end38

if.end38:                                         ; preds = %if.then15, %if.then8.if.end38_crit_edge, %while.end.if.end38_crit_edge, %entry.if.end38_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @netxen_nic_clear_stats(ptr nocapture noundef writeonly %adapter) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 42
  %0 = call ptr @memset(ptr %stats, i32 0, i32 72)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_advert_link_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @netxen_alloc_sw_resources.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 275, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 431, i32 4}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @netxen_pinit_from_rom._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @netxen_pinit_from_rom._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @netxen_pinit_from_rom._entry.4, !10, !"_entry", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 440, i32 4}
!11 = !{ptr @netxen_pinit_from_rom._entry_ptr.5, !10, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 449, i32 3}
!14 = !{ptr @netxen_pinit_from_rom._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @netxen_pinit_from_rom._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 474, i32 4}
!18 = !{ptr @netxen_pinit_from_rom._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @netxen_pinit_from_rom._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 949, i32 3}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @netxen_check_flash_fw_compatibility._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @netxen_check_flash_fw_compatibility._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 959, i32 2}
!29 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @netxen_check_flash_fw_compatibility._entry.16, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @netxen_check_flash_fw_compatibility._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 982, i32 2}
!34 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @netxen_load_firmware._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @netxen_load_firmware._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 1256, i32 3}
!39 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @netxen_init_dummy_dma._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @netxen_init_dummy_dma._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 1312, i32 3}
!44 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @netxen_free_dummy_dma._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @netxen_free_dummy_dma._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 1342, i32 2}
!49 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @netxen_phantom_init._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @netxen_phantom_init._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 352, i32 3}
!55 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @do_rom_fast_read._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @do_rom_fast_read._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 335, i32 4}
!60 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @netxen_wait_rom_done._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @netxen_wait_rom_done._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @crb_addr_xform, !64, !"crb_addr_xform", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 22, i32 21}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 837, i32 30}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 838, i32 33}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 967, i32 2}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 968, i32 2}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 969, i32 2}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 970, i32 2}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 971, i32 2}
!79 = !{ptr @fw_name, !80, !"fw_name", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 966, i32 14}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 1103, i32 3}
!83 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @netxen_validate_firmware._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @netxen_validate_firmware._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 1113, i32 3}
!88 = !{ptr @netxen_validate_firmware._entry.42, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @netxen_validate_firmware._entry_ptr.44, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 1120, i32 3}
!92 = !{ptr @netxen_validate_firmware._entry.45, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @netxen_validate_firmware._entry_ptr.47, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 1129, i32 3}
!96 = !{ptr @netxen_validate_firmware._entry.48, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @netxen_validate_firmware._entry_ptr.50, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 1140, i32 4}
!100 = !{ptr @netxen_validate_firmware._entry.51, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @netxen_validate_firmware._entry_ptr.53, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 736, i32 3}
!104 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @netxen_nic_validate_unified_romimage._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @netxen_nic_validate_unified_romimage._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 742, i32 3}
!109 = !{ptr @netxen_nic_validate_unified_romimage._entry.56, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @netxen_nic_validate_unified_romimage._entry_ptr.58, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 748, i32 3}
!113 = !{ptr @netxen_nic_validate_unified_romimage._entry.59, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @netxen_nic_validate_unified_romimage._entry_ptr.61, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 754, i32 3}
!117 = !{ptr @netxen_nic_validate_unified_romimage._entry.62, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @netxen_nic_validate_unified_romimage._entry_ptr.64, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 1362, i32 2}
!121 = !{ptr @.str.66, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @netxen_receive_peg_ready._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @netxen_receive_peg_ready._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 1405, i32 3}
!126 = !{ptr @.str.68, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @netxen_handle_linkevent._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @netxen_handle_linkevent._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", i32 1408, i32 3}
!131 = !{ptr @netxen_handle_linkevent._entry.69, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @netxen_handle_linkevent._entry_ptr.71, !130, !"_entry_ptr", i1 false, i1 false}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!135 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.73, !134, !"<string literal>", i1 false, i1 false}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"auto-init"}
!147 = !{!"branch_weights", i32 2000, i32 1}
!148 = !{!"branch_weights", i32 1, i32 2000}
!149 = !{i64 2157841027}
!150 = !{i64 2157742671}
