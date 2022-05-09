; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.qlcnic_adapter = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i8, i8, i8, [6 x i8], i64, i8, i8, i8, [128 x i32], i8, ptr, ptr, ptr, %struct.qlcnic_adapter_stats, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.qlcnic_filter_hash, %struct.qlcnic_filter_hash, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, ptr }
%struct.qlcnic_adapter_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qlcnic_filter_hash = type { ptr, i8, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.qlcnic_host_rds_ring = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, i32, [40 x i8] }
%struct.qlcnic_rx_buffer = type { i16, ptr, %struct.list_head, i64 }
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
%struct.qlcnic_host_tx_ring = type { i32, ptr, [28 x i8], i16, i32, i32, i32, i32, %struct.qlcnic_tx_queue_stats, ptr, ptr, ptr, %struct.napi_struct, ptr, ptr, i32, i32, ptr, %struct.spinlock, [112 x i8] }
%struct.qlcnic_tx_queue_stats = type { i64, i64, i64, i64, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.qlcnic_cmd_buffer = type { ptr, [18 x %struct.qlcnic_skb_frag], i32 }
%struct.qlcnic_skb_frag = type { i64, i64 }
%struct.qlcnic_recv_context = type { ptr, ptr, i32, i16, i16 }
%struct.qlcnic_hardware_context = type { ptr, ptr, i32, %struct.rwlock_t, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, [3 x i32], i32, i32, i32, i32, ptr, %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_fw_dump, %struct.qlcnic_fdt, %struct.qlc_83xx_reset, %struct.qlc_83xx_idc, ptr, ptr, ptr, ptr, ptr, [5 x i32], [4 x i32], ptr, i8, [6 x i8], i8, ptr, i32, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.qlcnic_nic_intr_coalesce = type { i8, i8, i16, i16, i16, i16, i16, i32 }
%struct.qlcnic_fw_dump = type { i8, i8, i32, i32, ptr, ptr, i32, ptr, i8, i32, i32, i32, i32 }
%struct.qlcnic_fdt = type { i32, i16, i16, i16, i16, [16 x i8], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i16, i8, [65 x i8] }
%struct.qlc_83xx_reset = type { ptr, i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, i8, i8 }
%struct.qlc_83xx_idc = type { ptr, i64, i64, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr }
%struct.msix_entry = type { i32, i16 }
%struct.qlcnic_host_sds_ring = type { i32, i32, ptr, ptr, ptr, ptr, %struct.napi_struct, [3 x %struct.list_head], ptr, i32, i32, [28 x i8], [72 x i8] }
%struct.qlcnic_hardware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.crb_addr_pair = type { i32, i32 }
%struct.qlcnic_flt_entry = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.uni_table_desc = type { i32, i32, i32, [5 x i32] }
%struct.uni_data_desc = type { i32, i32, [5 x i32] }

@qlcnic_alloc_sw_resources.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&rds_ring->lock\00", [16 x i8] zeroinitializer }, align 32
@qlcnic_pinit_from_rom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 446, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ERROR Reading crb_init area: val:%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qlcnic_pinit_from_rom\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qlcnic_pinit_from_rom._entry_ptr = internal global ptr @qlcnic_pinit_from_rom._entry, section ".printk_index", align 4
@qlcnic_pinit_from_rom._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 453, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"QLOGIC card flash not initialized.\0A\00", [60 x i8] zeroinitializer }, align 32
@qlcnic_pinit_from_rom._entry_ptr.8 = internal global ptr @qlcnic_pinit_from_rom._entry.6, section ".printk_index", align 4
@qlcnic_pinit_from_rom._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 477, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CRB init value out of range %x\0A\00", [32 x i8] zeroinitializer }, align 32
@qlcnic_pinit_from_rom._entry_ptr.11 = internal global ptr @qlcnic_pinit_from_rom._entry.9, section ".printk_index", align 4
@qlcnic_setup_idc_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 624, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Not an Ethernet NIC func=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qlcnic_setup_idc_param\00", [41 x i8] zeroinitializer }, align 32
@qlcnic_setup_idc_param._entry_ptr = internal global ptr @qlcnic_setup_idc_param._entry, section ".printk_index", align 4
@qlcnic_check_flash_fw_ver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 721, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"firmware version %d.%d.%d unsupported.Min supported version %d.%d.%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qlcnic_check_flash_fw_ver\00", [38 x i8] zeroinitializer }, align 32
@qlcnic_check_flash_fw_ver._entry_ptr = internal global ptr @qlcnic_check_flash_fw_ver._entry, section ".printk_index", align 4
@qlcnic_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 1115, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"loading firmware from %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qlcnic_load_firmware\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qlcnic_load_firmware._entry_ptr = internal global ptr @qlcnic_load_firmware._entry, section ".printk_index", align 4
@fw_name = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.41, ptr @.str.42], [24 x i8] zeroinitializer }, align 32
@qlcnic_load_firmware._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.3, i32 1173, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"using legacy method to get flash fw region\00", [53 x i8] zeroinitializer }, align 32
@qlcnic_load_firmware._entry_ptr.21 = internal global ptr @qlcnic_load_firmware._entry.19, section ".printk_index", align 4
@do_rom_fast_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error waiting for rom done\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_rom_fast_read\00", [47 x i8] zeroinitializer }, align 32
@do_rom_fast_read._entry_ptr = internal global ptr @do_rom_fast_read._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@qlcnic_wait_rom_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 304, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Timeout reached  waiting for rom done\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qlcnic_wait_rom_done\00", [43 x i8] zeroinitializer }, align 32
@qlcnic_wait_rom_done._entry_ptr = internal global ptr @qlcnic_wait_rom_done._entry, section ".printk_index", align 4
@crb_addr_xform = internal global { [60 x i32], [48 x i8] } zeroinitializer, align 32
@qlcnic_cmd_peg_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 571, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Command Peg initialization not complete, state: 0x%x.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qlcnic_cmd_peg_ready\00", [43 x i8] zeroinitializer }, align 32
@qlcnic_cmd_peg_ready._entry_ptr = internal global ptr @qlcnic_cmd_peg_ready._entry, section ".printk_index", align 4
@qlcnic_receive_peg_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 592, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Receive Peg initialization not complete, state: 0x%x.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qlcnic_receive_peg_ready\00", [39 x i8] zeroinitializer }, align 32
@qlcnic_receive_peg_ready._entry_ptr = internal global ptr @qlcnic_receive_peg_ready._entry, section ".printk_index", align 4
@qlcnic_get_flt_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 655, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error reading flash layout header\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qlcnic_get_flt_entry\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qlcnic_get_flt_entry._entry_ptr = internal global ptr @qlcnic_get_flt_entry._entry, section ".printk_index", align 4
@qlcnic_get_flt_entry._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.3, i32 669, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error reading flash layout entries\0A\00", [60 x i8] zeroinitializer }, align 32
@qlcnic_get_flt_entry._entry_ptr.35 = internal global ptr @qlcnic_get_flt_entry._entry.33, section ".printk_index", align 4
@qlcnic_get_flt_entry._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.31, ptr @.str.3, i32 680, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"region=%x not found in %d regions\0A\00", [61 x i8] zeroinitializer }, align 32
@qlcnic_get_flt_entry._entry_ptr.38 = internal global ptr @qlcnic_get_flt_entry._entry.36, section ".printk_index", align 4
@qlcnic_rom_lock_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 1056, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Resetting rom_lock\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qlcnic_rom_lock_recovery\00", [39 x i8] zeroinitializer }, align 32
@qlcnic_rom_lock_recovery._entry_ptr = internal global ptr @qlcnic_rom_lock_recovery._entry, section ".printk_index", align 4
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phanfw.bin\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flash\00", [26 x i8] zeroinitializer }, align 32
@qlcnic_validate_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 1231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: firmware version %d.%d.%d unsupported\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qlcnic_validate_firmware\00", [39 x i8] zeroinitializer }, align 32
@qlcnic_validate_firmware._entry_ptr = internal global ptr @qlcnic_validate_firmware._entry, section ".printk_index", align 4
@qlcnic_validate_firmware._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 1239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: firmware bios is incompatible\0A\00", [61 x i8] zeroinitializer }, align 32
@qlcnic_validate_firmware._entry_ptr.47 = internal global ptr @qlcnic_validate_firmware._entry.45, section ".printk_index", align 4
@qlcnic_validate_unified_romimage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 911, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unified image: header validation failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qlcnic_validate_unified_romimage\00", [63 x i8] zeroinitializer }, align 32
@qlcnic_validate_unified_romimage._entry_ptr = internal global ptr @qlcnic_validate_unified_romimage._entry, section ".printk_index", align 4
@qlcnic_validate_unified_romimage._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.3, i32 917, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unified image: product validation failed\0A\00", [54 x i8] zeroinitializer }, align 32
@qlcnic_validate_unified_romimage._entry_ptr.52 = internal global ptr @qlcnic_validate_unified_romimage._entry.50, section ".printk_index", align 4
@qlcnic_validate_unified_romimage._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.3, i32 923, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unified image: bootld validation failed\0A\00", [55 x i8] zeroinitializer }, align 32
@qlcnic_validate_unified_romimage._entry_ptr.55 = internal global ptr @qlcnic_validate_unified_romimage._entry.53, section ".printk_index", align 4
@qlcnic_validate_unified_romimage._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.3, i32 929, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unified image: firmware validation failed\0A\00", [53 x i8] zeroinitializer }, align 32
@qlcnic_validate_unified_romimage._entry_ptr.58 = internal global ptr @qlcnic_validate_unified_romimage._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"REV=\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%u.%u.%u \00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.61 = internal global [9 x i64] [i64 7, i64 32, i64 35660284, i64 53477404, i64 53477412, i64 53477544, i64 53477564, i64 53477576, i64 61866012]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 102760448, i64 161480704]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 61455, i64 65281, i64 65535]
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 237, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 446, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 453, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 476, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 623, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 717, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1114, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [8 x i8] c"fw_name\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1101, i32 20 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1172, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 322, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 303, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant [15 x i8] c"crb_addr_xform\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 16, i32 21 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 570, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 591, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 654, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 668, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 679, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1056, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1102, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1103, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1229, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1238, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 910, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 916, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 922, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 928, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1022, i32 29 }
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.263 = private constant [52 x i8] c"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1023, i32 32 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @do_rom_fast_read._entry, ptr @do_rom_fast_read._entry_ptr, ptr @qlcnic_check_flash_fw_ver._entry, ptr @qlcnic_check_flash_fw_ver._entry_ptr, ptr @qlcnic_cmd_peg_ready._entry, ptr @qlcnic_cmd_peg_ready._entry_ptr, ptr @qlcnic_get_flt_entry._entry, ptr @qlcnic_get_flt_entry._entry.33, ptr @qlcnic_get_flt_entry._entry.36, ptr @qlcnic_get_flt_entry._entry_ptr, ptr @qlcnic_get_flt_entry._entry_ptr.35, ptr @qlcnic_get_flt_entry._entry_ptr.38, ptr @qlcnic_load_firmware._entry, ptr @qlcnic_load_firmware._entry.19, ptr @qlcnic_load_firmware._entry_ptr, ptr @qlcnic_load_firmware._entry_ptr.21, ptr @qlcnic_pinit_from_rom._entry, ptr @qlcnic_pinit_from_rom._entry.6, ptr @qlcnic_pinit_from_rom._entry.9, ptr @qlcnic_pinit_from_rom._entry_ptr, ptr @qlcnic_pinit_from_rom._entry_ptr.11, ptr @qlcnic_pinit_from_rom._entry_ptr.8, ptr @qlcnic_receive_peg_ready._entry, ptr @qlcnic_receive_peg_ready._entry_ptr, ptr @qlcnic_rom_lock_recovery._entry, ptr @qlcnic_rom_lock_recovery._entry_ptr, ptr @qlcnic_setup_idc_param._entry, ptr @qlcnic_setup_idc_param._entry_ptr, ptr @qlcnic_validate_firmware._entry, ptr @qlcnic_validate_firmware._entry.45, ptr @qlcnic_validate_firmware._entry_ptr, ptr @qlcnic_validate_firmware._entry_ptr.47, ptr @qlcnic_validate_unified_romimage._entry, ptr @qlcnic_validate_unified_romimage._entry.50, ptr @qlcnic_validate_unified_romimage._entry.53, ptr @qlcnic_validate_unified_romimage._entry.56, ptr @qlcnic_validate_unified_romimage._entry_ptr, ptr @qlcnic_validate_unified_romimage._entry_ptr.52, ptr @qlcnic_validate_unified_romimage._entry_ptr.55, ptr @qlcnic_validate_unified_romimage._entry_ptr.58, ptr @qlcnic_wait_rom_done._entry, ptr @qlcnic_wait_rom_done._entry_ptr, ptr @qlcnic_alloc_sw_resources.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @fw_name, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @crb_addr_xform, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_alloc_sw_resources.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_pinit_from_rom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_pinit_from_rom._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_pinit_from_rom._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_setup_idc_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_check_flash_fw_ver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_load_firmware._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rom_fast_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_wait_rom_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crb_addr_xform to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_cmd_peg_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_receive_peg_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_get_flt_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_get_flt_entry._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_get_flt_entry._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_rom_lock_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_validate_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_validate_firmware._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_validate_unified_romimage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_validate_unified_romimage._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_validate_unified_romimage._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_validate_unified_romimage._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_release_rx_buffers(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_ctx1, align 4
  %max_rds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 12
  %2 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_rds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp29.not = icmp eq i8 %3, 0
  br i1 %cmp29.not, label %entry.for.end14_crit_edge, label %for.body.lr.ph

entry.for.end14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end14

for.body.lr.ph:                                   ; preds = %entry
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc12.for.body_crit_edge, %for.body.lr.ph
  %ring.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc13, %for.inc12.for.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %num_desc = getelementptr %struct.qlcnic_host_rds_ring, ptr %5, i32 %ring.030, i32 3
  %6 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp425.not = icmp eq i32 %7, 0
  br i1 %cmp425.not, label %for.body.for.inc12_crit_edge, label %for.body6.lr.ph

for.body.for.inc12_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc12

for.body6.lr.ph:                                  ; preds = %for.body
  %rx_buf_arr = getelementptr %struct.qlcnic_host_rds_ring, ptr %5, i32 %ring.030, i32 2
  %dma_size = getelementptr %struct.qlcnic_host_rds_ring, ptr %5, i32 %ring.030, i32 5
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body6.lr.ph
  %i.026 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.inc.for.body6_crit_edge ]
  %8 = ptrtoint ptr %rx_buf_arr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_buf_arr, align 8
  %skb = getelementptr %struct.qlcnic_rx_buffer, ptr %9, i32 %i.026, i32 1
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb, align 4
  %cmp8 = icmp eq ptr %11, null
  br i1 %cmp8, label %for.body6.for.inc_crit_edge, label %if.end

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %dma = getelementptr %struct.qlcnic_rx_buffer, ptr %9, i32 %i.026, i32 3
  %14 = ptrtoint ptr %dma to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dma, align 8
  %conv10 = trunc i64 %15 to i32
  %16 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_size, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv10, i32 noundef %17, i32 noundef 2, i32 noundef 0) #8
  %18 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %19, i32 noundef 1) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body6.for.inc_crit_edge
  %inc = add nuw i32 %i.026, 1
  %20 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_desc, align 4
  %cmp4 = icmp ult i32 %inc, %21
  br i1 %cmp4, label %for.inc.for.body6_crit_edge, label %for.inc.for.inc12_crit_edge

for.inc.for.inc12_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc12

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.inc12:                                        ; preds = %for.inc.for.inc12_crit_edge, %for.body.for.inc12_crit_edge
  %inc13 = add nuw nsw i32 %ring.030, 1
  %22 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %max_rds_rings, align 2
  %conv = zext i8 %23 to i32
  %cmp = icmp ult i32 %inc13, %conv
  br i1 %cmp, label %for.inc12.for.body_crit_edge, label %for.inc12.for.end14_crit_edge

for.inc12.for.end14_crit_edge:                    ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end14

for.inc12.for.body_crit_edge:                     ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end14:                                        ; preds = %for.inc12.for.end14_crit_edge, %entry.for.end14_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_reset_rx_buffers_list(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_ctx1, align 4
  %max_rds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 12
  %2 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_rds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp25.not = icmp eq i8 %3, 0
  br i1 %cmp25.not, label %entry.for.end10_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end10

for.body:                                         ; preds = %for.inc8.for.body_crit_edge, %entry.for.body_crit_edge
  %ring.026 = phi i32 [ %inc9, %for.inc8.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %free_list = getelementptr %struct.qlcnic_host_rds_ring, ptr %5, i32 %ring.026, i32 8
  %6 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i = getelementptr %struct.qlcnic_host_rds_ring, ptr %5, i32 %ring.026, i32 8, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %free_list, ptr %prev.i, align 4
  %num_desc = getelementptr %struct.qlcnic_host_rds_ring, ptr %5, i32 %ring.026, i32 3
  %8 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp420.not = icmp eq i32 %9, 0
  br i1 %cmp420.not, label %for.body.for.inc8_crit_edge, label %for.body6.preheader

for.body.for.inc8_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc8

for.body6.preheader:                              ; preds = %for.body
  %rx_buf_arr = getelementptr %struct.qlcnic_host_rds_ring, ptr %5, i32 %ring.026, i32 2
  %10 = ptrtoint ptr %rx_buf_arr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_buf_arr, align 8
  br label %for.body6

for.body6:                                        ; preds = %list_add_tail.exit.for.body6_crit_edge, %for.body6.preheader
  %i.023 = phi i32 [ %inc, %list_add_tail.exit.for.body6_crit_edge ], [ 0, %for.body6.preheader ]
  %rx_buf.021 = phi ptr [ %incdec.ptr, %list_add_tail.exit.for.body6_crit_edge ], [ %11, %for.body6.preheader ]
  %list = getelementptr inbounds %struct.qlcnic_rx_buffer, ptr %rx_buf.021, i32 0, i32 2
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %13, ptr noundef %free_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body6.list_add_tail.exit_crit_edge

for.body6.list_add_tail.exit_crit_edge:           ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %prev.i, align 4
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %free_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.qlcnic_rx_buffer, ptr %rx_buf.021, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body6.list_add_tail.exit_crit_edge
  %incdec.ptr = getelementptr %struct.qlcnic_rx_buffer, ptr %rx_buf.021, i32 1
  %inc = add nuw i32 %i.023, 1
  %18 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_desc, align 4
  %cmp4 = icmp ult i32 %inc, %19
  br i1 %cmp4, label %list_add_tail.exit.for.body6_crit_edge, label %list_add_tail.exit.for.inc8_crit_edge

list_add_tail.exit.for.inc8_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc8

list_add_tail.exit.for.body6_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.inc8:                                         ; preds = %list_add_tail.exit.for.inc8_crit_edge, %for.body.for.inc8_crit_edge
  %inc9 = add nuw nsw i32 %ring.026, 1
  %20 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_rds_rings, align 2
  %conv = zext i8 %21 to i32
  %cmp = icmp ult i32 %inc9, %conv
  br i1 %cmp, label %for.inc8.for.body_crit_edge, label %for.inc8.for.end10_crit_edge

for.inc8.for.end10_crit_edge:                     ; preds = %for.inc8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end10

for.inc8.for.body_crit_edge:                      ; preds = %for.inc8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end10:                                        ; preds = %for.inc8.for.end10_crit_edge, %entry.for.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_release_tx_buffers(ptr nocapture noundef readonly %adapter, ptr noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_clean_lock = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %tx_clean_lock) #8
  %num_desc = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 7
  %0 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp53.not = icmp eq i32 %1, 0
  br i1 %cmp53.not, label %entry.for.end27_crit_edge, label %for.body.lr.ph

entry.for.end27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27

for.body.lr.ph:                                   ; preds = %entry
  %cmd_buf_arr = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 13
  %2 = ptrtoint ptr %cmd_buf_arr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd_buf_arr, align 16
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc26, %if.end23.for.body_crit_edge ]
  %cmd_buf.054 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr24, %if.end23.for.body_crit_edge ]
  %frag_array = getelementptr inbounds %struct.qlcnic_cmd_buffer, ptr %cmd_buf.054, i32 0, i32 1
  %4 = ptrtoint ptr %frag_array to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %frag_array, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %conv = trunc i64 %5 to i32
  %length = getelementptr inbounds %struct.qlcnic_cmd_buffer, ptr %cmd_buf.054, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %length, align 8
  %conv2 = trunc i64 %9 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv, i32 noundef %conv2, i32 noundef 1, i32 noundef 0) #8
  %10 = ptrtoint ptr %frag_array to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %frag_array, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %frag_count = getelementptr inbounds %struct.qlcnic_cmd_buffer, ptr %cmd_buf.054, i32 0, i32 2
  %11 = ptrtoint ptr %frag_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frag_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp550 = icmp ugt i32 %12, 1
  br i1 %cmp550, label %if.end.for.body7_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.for.body7_crit_edge:                       ; preds = %if.end
  br label %for.body7

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %if.end.for.body7_crit_edge
  %j.052 = phi i32 [ %inc, %for.inc.for.body7_crit_edge ], [ 1, %if.end.for.body7_crit_edge ]
  %buffrag.051 = phi ptr [ %incdec.ptr, %for.inc.for.body7_crit_edge ], [ %frag_array, %if.end.for.body7_crit_edge ]
  %incdec.ptr = getelementptr %struct.qlcnic_skb_frag, ptr %buffrag.051, i32 1
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %incdec.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool9.not = icmp eq i64 %14, 0
  br i1 %tobool9.not, label %for.body7.for.inc_crit_edge, label %if.then10

for.body7.for.inc_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then10:                                        ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %conv14 = trunc i64 %14 to i32
  %length15 = getelementptr %struct.qlcnic_skb_frag, ptr %buffrag.051, i32 1, i32 1
  %17 = ptrtoint ptr %length15 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %length15, align 8
  %conv16 = trunc i64 %18 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev12, i32 noundef %conv14, i32 noundef %conv16, i32 noundef 1, i32 noundef 0) #8
  %19 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %incdec.ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.body7.for.inc_crit_edge
  %inc = add nuw i32 %j.052, 1
  %20 = ptrtoint ptr %frag_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frag_count, align 8
  %cmp5 = icmp ult i32 %inc, %21
  br i1 %cmp5, label %for.inc.for.body7_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %22 = ptrtoint ptr %cmd_buf.054 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmd_buf.054, align 8
  %tobool19.not = icmp eq ptr %23, null
  br i1 %tobool19.not, label %for.end.if.end23_crit_edge, label %if.then20

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %23, i32 noundef 1) #8
  %24 = ptrtoint ptr %cmd_buf.054 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %cmd_buf.054, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %for.end.if.end23_crit_edge
  %incdec.ptr24 = getelementptr %struct.qlcnic_cmd_buffer, ptr %cmd_buf.054, i32 1
  %inc26 = add nuw i32 %i.057, 1
  %25 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_desc, align 4
  %cmp = icmp ult i32 %inc26, %26
  br i1 %cmp, label %if.end23.for.body_crit_edge, label %if.end23.for.end27_crit_edge

if.end23.for.end27_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end27:                                        ; preds = %if.end23.for.end27_crit_edge, %entry.for.end27_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_clean_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_free_sw_resources(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_ctx1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %max_rds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 12
  %4 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_rds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp216.not = icmp eq i8 %5, 0
  br i1 %cmp216.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ring.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %rx_buf_arr = getelementptr %struct.qlcnic_host_rds_ring, ptr %7, i32 %ring.017, i32 2
  %8 = ptrtoint ptr %rx_buf_arr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_buf_arr, align 8
  tail call void @vfree(ptr noundef %9) #8
  %10 = ptrtoint ptr %rx_buf_arr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rx_buf_arr, align 8
  %inc = add nuw nsw i32 %ring.017, 1
  %11 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_rds_rings, align 2
  %conv = zext i8 %12 to i32
  %cmp2 = icmp ult i32 %inc, %conv
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %14) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_alloc_sw_resources(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_ctx1, align 4
  %max_rds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 12
  %2 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_rds_rings, align 2
  %conv = zext i8 %3 to i32
  %4 = shl nuw nsw i32 %conv, 7
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #11
  %cmp = icmp eq ptr %call8.i.i, null
  br i1 %cmp, label %entry.err_out_crit_edge, label %if.end

entry.err_out_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %1, align 4
  %6 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_rds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp5152.not = icmp eq i8 %7, 0
  br i1 %cmp5152.not, label %if.end.for.cond40.preheader_crit_edge, label %for.body.lr.ph

if.end.for.cond40.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond40.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %num_jumbo_rxd = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 9
  %num_rxd = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 8
  br label %for.body

for.cond40.preheader:                             ; preds = %do.body.for.cond40.preheader_crit_edge, %if.end.for.cond40.preheader_crit_edge
  %drv_sds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 16
  %8 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %drv_sds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp42156.not = icmp eq i8 %9, 0
  br i1 %cmp42156.not, label %for.cond40.preheader.cleanup_crit_edge, label %for.body44.lr.ph

for.cond40.preheader.cleanup_crit_edge:           ; preds = %for.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body44.lr.ph:                                 ; preds = %for.cond40.preheader
  %sds_rings = getelementptr inbounds %struct.qlcnic_recv_context, ptr %1, i32 0, i32 1
  %msix_entries = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 50
  %num_rxd48 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 8
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %tx_ring = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 2
  br label %for.body44

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.body.lr.ph
  %ring.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %inc38, %do.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = zext i32 %ring.0153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ring.0153, label %for.body.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %num_rxd to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_rxd, align 2
  %conv8 = zext i16 %14 to i32
  %num_desc = getelementptr %struct.qlcnic_host_rds_ring, ptr %11, i32 0, i32 3
  %15 = ptrtoint ptr %num_desc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv8, ptr %num_desc, align 4
  %dma_size = getelementptr %struct.qlcnic_host_rds_ring, ptr %11, i32 0, i32 5
  %16 = ptrtoint ptr %dma_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1532, ptr %dma_size, align 4
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %num_jumbo_rxd to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_jumbo_rxd, align 8
  %conv11 = zext i16 %18 to i32
  %num_desc12 = getelementptr %struct.qlcnic_host_rds_ring, ptr %11, i32 1, i32 3
  %19 = ptrtoint ptr %num_desc12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv11, ptr %num_desc12, align 4
  %dma_size13 = getelementptr %struct.qlcnic_host_rds_ring, ptr %11, i32 1, i32 5
  %20 = ptrtoint ptr %dma_size13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 9632, ptr %dma_size13, align 4
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %capabilities = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %22, i32 0, i32 40
  %23 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %capabilities, align 4
  %and = and i32 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool.not, i32 9632, i32 11680
  %25 = ptrtoint ptr %dma_size13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.store.select, ptr %dma_size13, align 4
  %add19 = or i32 %spec.store.select, 2
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb10, %sw.bb
  %add19.sink = phi i32 [ %add19, %sw.bb10 ], [ 1534, %sw.bb ]
  %skb_size20 = getelementptr %struct.qlcnic_host_rds_ring, ptr %11, i32 %ring.0153, i32 6
  %26 = ptrtoint ptr %skb_size20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add19.sink, ptr %skb_size20, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body.sw.epilog_crit_edge
  %num_desc21 = getelementptr %struct.qlcnic_host_rds_ring, ptr %11, i32 %ring.0153, i32 3
  %27 = ptrtoint ptr %num_desc21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_desc21, align 4
  %mul = mul i32 %28, 24
  %call22 = tail call noalias ptr @vzalloc(i32 noundef %mul) #11
  %rx_buf_arr = getelementptr %struct.qlcnic_host_rds_ring, ptr %11, i32 %ring.0153, i32 2
  %29 = ptrtoint ptr %rx_buf_arr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call22, ptr %rx_buf_arr, align 8
  %cmp24 = icmp eq ptr %call22, null
  br i1 %cmp24, label %sw.epilog.err_out_crit_edge, label %if.end27

sw.epilog.err_out_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end27:                                         ; preds = %sw.epilog
  %free_list = getelementptr %struct.qlcnic_host_rds_ring, ptr %11, i32 %ring.0153, i32 8
  %30 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i = getelementptr %struct.qlcnic_host_rds_ring, ptr %11, i32 %ring.0153, i32 8, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %free_list, ptr %prev.i, align 4
  %32 = ptrtoint ptr %num_desc21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_desc21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp31147.not = icmp eq i32 %33, 0
  br i1 %cmp31147.not, label %if.end27.do.body_crit_edge, label %if.end27.for.body33_crit_edge

if.end27.for.body33_crit_edge:                    ; preds = %if.end27
  br label %for.body33

if.end27.do.body_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body33:                                       ; preds = %list_add_tail.exit.for.body33_crit_edge, %if.end27.for.body33_crit_edge
  %i.0150 = phi i32 [ %inc, %list_add_tail.exit.for.body33_crit_edge ], [ 0, %if.end27.for.body33_crit_edge ]
  %rx_buf.0148 = phi ptr [ %incdec.ptr, %list_add_tail.exit.for.body33_crit_edge ], [ %call22, %if.end27.for.body33_crit_edge ]
  %list = getelementptr inbounds %struct.qlcnic_rx_buffer, ptr %rx_buf.0148, i32 0, i32 2
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %35, ptr noundef %free_list) #8
  br i1 %call.i.i, label %if.end.i.i138, label %for.body33.list_add_tail.exit_crit_edge

for.body33.list_add_tail.exit_crit_edge:          ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i138:                                    ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list, ptr %prev.i, align 4
  %37 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %free_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.qlcnic_rx_buffer, ptr %rx_buf.0148, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %list, ptr %35, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i138, %for.body33.list_add_tail.exit_crit_edge
  %conv35 = trunc i32 %i.0150 to i16
  %40 = ptrtoint ptr %rx_buf.0148 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv35, ptr %rx_buf.0148, align 8
  %incdec.ptr = getelementptr %struct.qlcnic_rx_buffer, ptr %rx_buf.0148, i32 1
  %inc = add nuw i32 %i.0150, 1
  %41 = ptrtoint ptr %num_desc21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_desc21, align 4
  %cmp31 = icmp ult i32 %inc, %42
  br i1 %cmp31, label %list_add_tail.exit.for.body33_crit_edge, label %list_add_tail.exit.do.body_crit_edge

list_add_tail.exit.do.body_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

list_add_tail.exit.for.body33_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body33

do.body:                                          ; preds = %list_add_tail.exit.do.body_crit_edge, %if.end27.do.body_crit_edge
  %lock = getelementptr %struct.qlcnic_host_rds_ring, ptr %11, i32 %ring.0153, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @qlcnic_alloc_sw_resources.__key, i16 noundef signext 3) #8
  %inc38 = add nuw nsw i32 %ring.0153, 1
  %43 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %max_rds_rings, align 2
  %conv4 = zext i8 %44 to i32
  %cmp5 = icmp ult i32 %inc38, %conv4
  br i1 %cmp5, label %do.body.for.body_crit_edge, label %do.body.for.cond40.preheader_crit_edge

do.body.for.cond40.preheader_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond40.preheader

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body44:                                       ; preds = %if.end64.for.body44_crit_edge, %for.body44.lr.ph
  %ring.1157 = phi i32 [ 0, %for.body44.lr.ph ], [ %inc75, %if.end64.for.body44_crit_edge ]
  %45 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sds_rings, align 4
  %47 = ptrtoint ptr %msix_entries to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %msix_entries, align 8
  %arrayidx46 = getelementptr %struct.msix_entry, ptr %48, i32 %ring.1157
  %49 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx46, align 4
  %irq = getelementptr %struct.qlcnic_host_sds_ring, ptr %46, i32 %ring.1157, i32 9
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %irq, align 4
  %adapter47 = getelementptr %struct.qlcnic_host_sds_ring, ptr %46, i32 %ring.1157, i32 5
  %52 = ptrtoint ptr %adapter47 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %adapter, ptr %adapter47, align 4
  %53 = ptrtoint ptr %num_rxd48 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %num_rxd48, align 2
  %conv49 = zext i16 %54 to i32
  %num_desc50 = getelementptr %struct.qlcnic_host_sds_ring, ptr %46, i32 %ring.1157, i32 1
  %55 = ptrtoint ptr %num_desc50 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv49, ptr %num_desc50, align 4
  %56 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %device1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %59)
  %cmp.i = icmp eq i16 %59, -32736
  br i1 %cmp.i, label %if.then52, label %for.body44.if.end64_crit_edge

for.body44.if.end64_crit_edge:                    ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then52:                                        ; preds = %for.body44
  %60 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %state.i, align 4
  %62 = and i32 %61, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.i.not = icmp eq i32 %62, 0
  br i1 %tobool.i.not, label %if.then52.if.else_crit_edge, label %land.lhs.true

if.then52.if.else_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then52
  %63 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adapter, align 8
  %diag_test = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %64, i32 0, i32 18
  %65 = ptrtoint ptr %diag_test to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %diag_test, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool56.not = icmp eq i8 %66, 0
  br i1 %tobool56.not, label %if.then57, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then57:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tx_ring, align 8
  %arrayidx58 = getelementptr %struct.qlcnic_host_tx_ring, ptr %68, i32 %ring.1157
  br label %if.end64.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then52.if.else_crit_edge
  %69 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tx_ring, align 8
  br label %if.end64.sink.split

if.end64.sink.split:                              ; preds = %if.else, %if.then57
  %arrayidx58.sink = phi ptr [ %arrayidx58, %if.then57 ], [ %70, %if.else ]
  %tx_ring59 = getelementptr %struct.qlcnic_host_sds_ring, ptr %46, i32 %ring.1157, i32 3
  %71 = ptrtoint ptr %tx_ring59 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx58.sink, ptr %tx_ring59, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end64.sink.split, %for.body44.if.end64_crit_edge
  %arrayidx70 = getelementptr %struct.qlcnic_host_sds_ring, ptr %46, i32 %ring.1157, i32 7, i32 0
  %72 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %arrayidx70, ptr %arrayidx70, align 4
  %prev.i139 = getelementptr %struct.qlcnic_host_sds_ring, ptr %46, i32 %ring.1157, i32 7, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i139 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %arrayidx70, ptr %prev.i139, align 4
  %arrayidx70.1 = getelementptr %struct.qlcnic_host_sds_ring, ptr %46, i32 %ring.1157, i32 7, i32 1
  %74 = ptrtoint ptr %arrayidx70.1 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %arrayidx70.1, ptr %arrayidx70.1, align 4
  %prev.i139.1 = getelementptr %struct.qlcnic_host_sds_ring, ptr %46, i32 %ring.1157, i32 7, i32 1, i32 1
  %75 = ptrtoint ptr %prev.i139.1 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arrayidx70.1, ptr %prev.i139.1, align 4
  %arrayidx70.2 = getelementptr %struct.qlcnic_host_sds_ring, ptr %46, i32 %ring.1157, i32 7, i32 2
  %76 = ptrtoint ptr %arrayidx70.2 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %arrayidx70.2, ptr %arrayidx70.2, align 4
  %prev.i139.2 = getelementptr %struct.qlcnic_host_sds_ring, ptr %46, i32 %ring.1157, i32 7, i32 2, i32 1
  %77 = ptrtoint ptr %prev.i139.2 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %arrayidx70.2, ptr %prev.i139.2, align 4
  %inc75 = add nuw nsw i32 %ring.1157, 1
  %78 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %drv_sds_rings, align 2
  %conv41 = zext i8 %79 to i32
  %cmp42 = icmp ult i32 %inc75, %conv41
  br i1 %cmp42, label %if.end64.for.body44_crit_edge, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end64.for.body44_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44

err_out:                                          ; preds = %sw.epilog.err_out_crit_edge, %entry.err_out_crit_edge
  %80 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %recv_ctx1, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %cmp.i140 = icmp eq ptr %83, null
  br i1 %cmp.i140, label %err_out.cleanup_crit_edge, label %for.cond.preheader.i

err_out.cleanup_crit_edge:                        ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %err_out
  %84 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %max_rds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %cmp216.not.i = icmp eq i8 %85, 0
  br i1 %cmp216.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %ring.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %86 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %81, align 4
  %rx_buf_arr.i = getelementptr %struct.qlcnic_host_rds_ring, ptr %87, i32 %ring.017.i, i32 2
  %88 = ptrtoint ptr %rx_buf_arr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rx_buf_arr.i, align 8
  tail call void @vfree(ptr noundef %89) #8
  %90 = ptrtoint ptr %rx_buf_arr.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %rx_buf_arr.i, align 8
  %inc.i = add nuw nsw i32 %ring.017.i, 1
  %91 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %max_rds_rings, align 2
  %conv.i = zext i8 %92 to i32
  %cmp2.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp2.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %93 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %81, align 4
  tail call void @kfree(ptr noundef %94) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %err_out.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %for.cond40.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_out.cleanup_crit_edge ], [ -12, %for.end.i ], [ 0, %for.cond40.preheader.cleanup_crit_edge ], [ 0, %if.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_rom_fast_read_words(ptr noundef %adapter, i32 noundef %addr, ptr nocapture noundef writeonly %bytes, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.i = add i32 %size, %addr
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %addr)
  %cmp14.i = icmp ugt i32 %add.i, %addr
  br i1 %cmp14.i, label %if.end.for.body.i_crit_edge, label %if.end.do_rom_fast_read_words.exit_crit_edge

if.end.do_rom_fast_read_words.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_rom_fast_read_words.exit

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %addridx.016.i = phi i32 [ %add2.i, %for.inc.i.for.body.i_crit_edge ], [ %addr, %if.end.for.body.i_crit_edge ]
  %bytes.addr.015.i = phi ptr [ %add.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %bytes, %if.end.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #8
  %0 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v.i, align 4, !annotation !125
  %call.i = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef %addridx.016.i, ptr noundef nonnull %v.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.not.i, label %for.inc.i, label %cleanup.i

cleanup.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #8
  br label %do_rom_fast_read_words.exit

for.inc.i:                                        ; preds = %for.body.i
  %1 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %v.i, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  %4 = ptrtoint ptr %bytes.addr.015.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %bytes.addr.015.i, align 4
  %add.ptr.i = getelementptr i8, ptr %bytes.addr.015.i, i32 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #8
  %add2.i = add i32 %addridx.016.i, 4
  %cmp.i = icmp ult i32 %add2.i, %add.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do_rom_fast_read_words.exit_crit_edge

for.inc.i.do_rom_fast_read_words.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_rom_fast_read_words.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do_rom_fast_read_words.exit:                      ; preds = %for.inc.i.do_rom_fast_read_words.exit_crit_edge, %cleanup.i, %if.end.do_rom_fast_read_words.exit_crit_edge
  %ret.1.i = phi i32 [ %call.i, %cleanup.i ], [ 0, %if.end.do_rom_fast_read_words.exit_crit_edge ], [ 0, %for.inc.i.do_rom_fast_read_words.exit_crit_edge ]
  tail call void @qlcnic_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %do_rom_fast_read_words.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1.i, %do_rom_fast_read_words.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_pcie_sem_lock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_pcie_sem_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_rom_fast_read(ptr noundef %adapter, i32 noundef %addr, ptr nocapture noundef writeonly %valp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef %addr, ptr noundef %valp)
  tail call void @qlcnic_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef %addr, ptr nocapture noundef writeonly %valp) unnamed_addr #0 align 64 {
entry:
  %err.i = alloca i32, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %hw_ops = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %hw_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_ops, align 4
  %write_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %6(ptr noundef %adapter, i32 noundef 154206216, i32 noundef %addr) #8
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %hw_ops2 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 46
  %9 = ptrtoint ptr %hw_ops2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_ops2, align 4
  %write_reg3 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %write_reg3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg3, align 4
  %call4 = tail call i32 %12(ptr noundef %adapter, i32 noundef 154206228, i32 noundef 0) #8
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %hw_ops6 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %14, i32 0, i32 46
  %15 = ptrtoint ptr %hw_ops6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_ops6, align 4
  %write_reg7 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %write_reg7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_reg7, align 4
  %call8 = tail call i32 %18(ptr noundef %adapter, i32 noundef 154206224, i32 noundef 3) #8
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 8
  %hw_ops10 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %hw_ops10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_ops10, align 4
  %write_reg11 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %write_reg11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg11, align 4
  %call12 = tail call i32 %24(ptr noundef %adapter, i32 noundef 154206212, i32 noundef 11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #8
  %25 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %err.i, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 298, i32 noundef 0) #8
  %call.i.i = tail call i32 @__cond_resched() #8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %timeout.08.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.while.body.i_crit_edge ]
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 46
  %28 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_ops.i, align 4
  %read_reg.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_reg.i, align 4
  %call1.i = call i32 %31(ptr noundef %adapter, i32 noundef 154140676, ptr noundef nonnull %err.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %timeout.08.i)
  %exitcond.i = icmp eq i32 %timeout.08.i, 99
  br i1 %exitcond.i, label %do.end, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %inc.i = add nuw nsw i32 %timeout.08.i, 1
  %and.i = and i32 %call1.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748) #8
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

do.end:                                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %33 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #8
  %35 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #8
  %37 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter, align 8
  %hw_ops15 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %38, i32 0, i32 46
  %39 = ptrtoint ptr %hw_ops15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw_ops15, align 4
  %write_reg16 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %write_reg16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_reg16, align 4
  %call17 = call i32 %42(ptr noundef %adapter, i32 noundef 154206224, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %43(i32 noundef 2147480) #8
  %44 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter, align 8
  %hw_ops19 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %45, i32 0, i32 46
  %46 = ptrtoint ptr %hw_ops19 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_ops19, align 4
  %write_reg20 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %write_reg20 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_reg20, align 4
  %call21 = call i32 %49(ptr noundef %adapter, i32 noundef 154206228, i32 noundef 0) #8
  %50 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter, align 8
  %hw_ops23 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %51, i32 0, i32 46
  %52 = ptrtoint ptr %hw_ops23 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_ops23, align 4
  %read_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read_reg, align 4
  %call24 = call i32 %55(ptr noundef %adapter, i32 noundef 154206232, ptr noundef nonnull %err) #8
  %56 = ptrtoint ptr %valp to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call24, ptr %valp, align 4
  %57 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %58)
  %cmp = icmp eq i32 %58, -5
  %. = select i1 %cmp, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_pinit_from_rom(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca i32, align 4
  %err = alloca i32, align 4
  %n = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #8
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %1 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %err, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  %2 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %n, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %pdev1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %3 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 55
  %9 = ptrtoint ptr %reg_tbl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_tbl, align 4
  %arrayidx = getelementptr i32, ptr %10, i32 16
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %reg_tbl9 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %14, i32 0, i32 55
  %17 = ptrtoint ptr %reg_tbl9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_tbl9, align 4
  %arrayidx10 = getelementptr i32, ptr %18, i32 17
  %19 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx10, align 4
  %add.ptr11 = getelementptr i8, ptr %16, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #8, !srcloc !127
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %hw_ops = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %22, i32 0, i32 46
  %23 = ptrtoint ptr %hw_ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_ops, align 4
  %write_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %26(ptr noundef %adapter, i32 noundef 153092112, i32 noundef 0) #8
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 8
  %hw_ops14 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %28, i32 0, i32 46
  %29 = ptrtoint ptr %hw_ops14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_ops14, align 4
  %write_reg15 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %write_reg15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_reg15, align 4
  %call16 = tail call i32 %32(ptr noundef %adapter, i32 noundef 153092116, i32 noundef 0) #8
  %33 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter, align 8
  %hw_ops18 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %34, i32 0, i32 46
  %35 = ptrtoint ptr %hw_ops18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_ops18, align 4
  %write_reg19 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %write_reg19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_reg19, align 4
  %call20 = tail call i32 %38(ptr noundef %adapter, i32 noundef 153092120, i32 noundef 0) #8
  %39 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter, align 8
  %hw_ops22 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %40, i32 0, i32 46
  %41 = ptrtoint ptr %hw_ops22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_ops22, align 4
  %write_reg23 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %write_reg23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_reg23, align 4
  %call24 = tail call i32 %44(ptr noundef %adapter, i32 noundef 153092124, i32 noundef 0) #8
  %45 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adapter, align 8
  %hw_ops26 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %46, i32 0, i32 46
  %47 = ptrtoint ptr %hw_ops26 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw_ops26, align 4
  %write_reg27 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %write_reg27 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_reg27, align 4
  %call28 = tail call i32 %50(ptr noundef %adapter, i32 noundef 153092128, i32 noundef 0) #8
  %51 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adapter, align 8
  %hw_ops30 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %52, i32 0, i32 46
  %53 = ptrtoint ptr %hw_ops30 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw_ops30, align 4
  %write_reg31 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %write_reg31 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_reg31, align 4
  %call32 = tail call i32 %56(ptr noundef %adapter, i32 noundef 153092132, i32 noundef 0) #8
  %57 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter, align 8
  %hw_ops34 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %58, i32 0, i32 46
  %59 = ptrtoint ptr %hw_ops34 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw_ops34, align 4
  %write_reg35 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %write_reg35 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_reg35, align 4
  %call36 = tail call i32 %62(ptr noundef %adapter, i32 noundef 106954816, i32 noundef 255) #8
  %63 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adapter, align 8
  %hw_ops38 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %64, i32 0, i32 46
  %65 = ptrtoint ptr %hw_ops38 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw_ops38, align 4
  %write_reg39 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %write_reg39 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write_reg39, align 4
  %call40 = tail call i32 %68(ptr noundef %adapter, i32 noundef 107413504, i32 noundef 0) #8
  %69 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adapter, align 8
  %hw_ops42 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %70, i32 0, i32 46
  %71 = ptrtoint ptr %hw_ops42 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw_ops42, align 4
  %write_reg43 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %write_reg43 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write_reg43, align 4
  %call44 = tail call i32 %74(ptr noundef %adapter, i32 noundef 107479040, i32 noundef 0) #8
  %75 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %adapter, align 8
  %hw_ops46 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %76, i32 0, i32 46
  %77 = ptrtoint ptr %hw_ops46 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw_ops46, align 4
  %write_reg47 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %write_reg47 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write_reg47, align 4
  %call48 = tail call i32 %80(ptr noundef %adapter, i32 noundef 107544576, i32 noundef 0) #8
  %81 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %adapter, align 8
  %hw_ops50 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %82, i32 0, i32 46
  %83 = ptrtoint ptr %hw_ops50 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw_ops50, align 4
  %write_reg51 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %write_reg51 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write_reg51, align 4
  %call52 = tail call i32 %86(ptr noundef %adapter, i32 noundef 107610112, i32 noundef 0) #8
  %87 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %adapter, align 8
  %hw_ops54 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %88, i32 0, i32 46
  %89 = ptrtoint ptr %hw_ops54 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw_ops54, align 4
  %write_reg55 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %write_reg55 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write_reg55, align 4
  %call56 = tail call i32 %92(ptr noundef %adapter, i32 noundef 107675648, i32 noundef 0) #8
  %93 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %adapter, align 8
  %hw_ops58 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %94, i32 0, i32 46
  %95 = ptrtoint ptr %hw_ops58 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw_ops58, align 4
  %read_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %read_reg, align 4
  %call59 = call i32 %98(ptr noundef %adapter, i32 noundef 105910272, ptr noundef nonnull %err) #8
  %99 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %call59, ptr %val, align 4
  %100 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %101)
  %cmp = icmp eq i32 %101, -5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %102 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %adapter, align 8
  %hw_ops61 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %103, i32 0, i32 46
  %104 = ptrtoint ptr %hw_ops61 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw_ops61, align 4
  %write_reg62 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %write_reg62 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write_reg62, align 4
  %and = and i32 %call59, -2
  %call63 = call i32 %107(ptr noundef %adapter, i32 noundef 105910272, i32 noundef %and) #8
  %108 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %adapter, align 8
  %hw_ops65 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %109, i32 0, i32 46
  %110 = ptrtoint ptr %hw_ops65 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw_ops65, align 4
  %write_reg66 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %write_reg66 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write_reg66, align 4
  %call67 = call i32 %113(ptr noundef %adapter, i32 noundef 133174016, i32 noundef 1) #8
  %114 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %adapter, align 8
  %hw_ops69 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %115, i32 0, i32 46
  %116 = ptrtoint ptr %hw_ops69 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hw_ops69, align 4
  %write_reg70 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %write_reg70 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write_reg70, align 4
  %call71 = call i32 %119(ptr noundef %adapter, i32 noundef 142606336, i32 noundef 0) #8
  %120 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %adapter, align 8
  %hw_ops73 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %121, i32 0, i32 46
  %122 = ptrtoint ptr %hw_ops73 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hw_ops73, align 4
  %write_reg74 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %123, i32 0, i32 3
  %124 = ptrtoint ptr %write_reg74 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write_reg74, align 4
  %call75 = call i32 %125(ptr noundef %adapter, i32 noundef 142606344, i32 noundef 0) #8
  %126 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %adapter, align 8
  %hw_ops77 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %127, i32 0, i32 46
  %128 = ptrtoint ptr %hw_ops77 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hw_ops77, align 4
  %write_reg78 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %write_reg78 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write_reg78, align 4
  %call79 = call i32 %131(ptr noundef %adapter, i32 noundef 142606352, i32 noundef 0) #8
  %132 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %adapter, align 8
  %hw_ops81 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %133, i32 0, i32 46
  %134 = ptrtoint ptr %hw_ops81 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hw_ops81, align 4
  %write_reg82 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %write_reg82 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write_reg82, align 4
  %call83 = call i32 %137(ptr noundef %adapter, i32 noundef 142606360, i32 noundef 0) #8
  %138 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %adapter, align 8
  %hw_ops85 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %139, i32 0, i32 46
  %140 = ptrtoint ptr %hw_ops85 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw_ops85, align 4
  %write_reg86 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %write_reg86 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write_reg86, align 4
  %call87 = call i32 %143(ptr noundef %adapter, i32 noundef 142606592, i32 noundef 0) #8
  %144 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %adapter, align 8
  %hw_ops89 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %145, i32 0, i32 46
  %146 = ptrtoint ptr %hw_ops89 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hw_ops89, align 4
  %write_reg90 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %147, i32 0, i32 3
  %148 = ptrtoint ptr %write_reg90 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %write_reg90, align 4
  %call91 = call i32 %149(ptr noundef %adapter, i32 noundef 142606848, i32 noundef 0) #8
  %150 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %adapter, align 8
  %hw_ops93 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %151, i32 0, i32 46
  %152 = ptrtoint ptr %hw_ops93 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hw_ops93, align 4
  %write_reg94 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %write_reg94 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write_reg94, align 4
  %call95 = call i32 %155(ptr noundef %adapter, i32 noundef 118489148, i32 noundef 1) #8
  %156 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %adapter, align 8
  %hw_ops97 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %157, i32 0, i32 46
  %158 = ptrtoint ptr %hw_ops97 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hw_ops97, align 4
  %write_reg98 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %159, i32 0, i32 3
  %160 = ptrtoint ptr %write_reg98 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %write_reg98, align 4
  %call99 = call i32 %161(ptr noundef %adapter, i32 noundef 119537724, i32 noundef 1) #8
  %162 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %adapter, align 8
  %hw_ops101 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %163, i32 0, i32 46
  %164 = ptrtoint ptr %hw_ops101 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hw_ops101, align 4
  %write_reg102 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %165, i32 0, i32 3
  %166 = ptrtoint ptr %write_reg102 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %write_reg102, align 4
  %call103 = call i32 %167(ptr noundef %adapter, i32 noundef 120586300, i32 noundef 1) #8
  %168 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %adapter, align 8
  %hw_ops105 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %169, i32 0, i32 46
  %170 = ptrtoint ptr %hw_ops105 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %hw_ops105, align 4
  %write_reg106 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %171, i32 0, i32 3
  %172 = ptrtoint ptr %write_reg106 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %write_reg106, align 4
  %call107 = call i32 %173(ptr noundef %adapter, i32 noundef 121634876, i32 noundef 1) #8
  %174 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %adapter, align 8
  %hw_ops109 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %175, i32 0, i32 46
  %176 = ptrtoint ptr %hw_ops109 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hw_ops109, align 4
  %write_reg110 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %177, i32 0, i32 3
  %178 = ptrtoint ptr %write_reg110 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %write_reg110, align 4
  %call111 = call i32 %179(ptr noundef %adapter, i32 noundef 116391996, i32 noundef 1) #8
  call void @msleep(i32 noundef 20) #8
  %180 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %adapter, align 8
  %hw_ops113 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %181, i32 0, i32 46
  %182 = ptrtoint ptr %hw_ops113 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %hw_ops113, align 4
  %write_reg114 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %183, i32 0, i32 3
  %184 = ptrtoint ptr %write_reg114 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %write_reg114, align 4
  %call115 = call i32 %185(ptr noundef %adapter, i32 noundef 154140680, i32 noundef -16777217) #8
  %call.i = call i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %qlcnic_rom_fast_read.exit, label %if.end.do.end125_crit_edge

if.end.do.end125_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end125

qlcnic_rom_fast_read.exit:                        ; preds = %if.end
  %call1.i = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef 0, ptr noundef nonnull %n) #8
  call void @qlcnic_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp117.not = icmp eq i32 %call1.i, 0
  br i1 %cmp117.not, label %lor.lhs.false, label %qlcnic_rom_fast_read.exit.do.end125_crit_edge

qlcnic_rom_fast_read.exit.do.end125_crit_edge:    ; preds = %qlcnic_rom_fast_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end125

lor.lhs.false:                                    ; preds = %qlcnic_rom_fast_read.exit
  %186 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -889271554, i32 %187)
  %cmp118.not = icmp eq i32 %187, -889271554
  br i1 %cmp118.not, label %lor.lhs.false119, label %lor.lhs.false.do.end125_crit_edge

lor.lhs.false.do.end125_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end125

lor.lhs.false119:                                 ; preds = %lor.lhs.false
  %call.i439 = call i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i439)
  %cmp.not.i440 = icmp eq i32 %call.i439, 0
  br i1 %cmp.not.i440, label %qlcnic_rom_fast_read.exit444, label %lor.lhs.false119.do.end125_crit_edge

lor.lhs.false119.do.end125_crit_edge:             ; preds = %lor.lhs.false119
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end125

qlcnic_rom_fast_read.exit444:                     ; preds = %lor.lhs.false119
  %call1.i441 = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull %n) #8
  call void @qlcnic_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i441)
  %cmp121.not = icmp eq i32 %call1.i441, 0
  br i1 %cmp121.not, label %if.end126, label %qlcnic_rom_fast_read.exit444.do.end125_crit_edge

qlcnic_rom_fast_read.exit444.do.end125_crit_edge: ; preds = %qlcnic_rom_fast_read.exit444
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end125

do.end125:                                        ; preds = %qlcnic_rom_fast_read.exit444.do.end125_crit_edge, %lor.lhs.false119.do.end125_crit_edge, %lor.lhs.false.do.end125_crit_edge, %qlcnic_rom_fast_read.exit.do.end125_crit_edge, %if.end.do.end125_crit_edge
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %188 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %n, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %189) #12
  br label %cleanup

if.end126:                                        ; preds = %qlcnic_rom_fast_read.exit444
  %190 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %n, align 4
  %192 = lshr i32 %191, 16
  store i32 %192, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108863, i32 %191)
  %cmp129 = icmp ugt i32 %191, 67108863
  br i1 %cmp129, label %do.end133, label %if.end7.i.i

do.end133:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  %dev134 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev134, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end126
  %193 = shl nuw nsw i32 %192, 3
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %193, i32 noundef 3520) #11
  %cmp137 = icmp eq ptr %call8.i.i, null
  br i1 %cmp137, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %191)
  %cmp140470.not = icmp ult i32 %191, 65536
  br i1 %cmp140470.not, label %for.cond.preheader.for.cond156.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond156.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond156.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %and127 = shl nuw nsw i32 %191, 2
  %mul141 = and i32 %and127, 262140
  %umax = call i32 @llvm.umax.i32(i32 %192, i32 1)
  br label %for.body

for.cond156.preheader:                            ; preds = %if.end152.for.cond156.preheader_crit_edge, %for.cond.preheader.for.cond156.preheader_crit_edge
  %194 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %cmp157472 = icmp sgt i32 %195, 0
  br i1 %cmp157472, label %for.body158.lr.ph, label %for.cond156.preheader.for.end221_crit_edge

for.cond156.preheader.for.end221_crit_edge:       ; preds = %for.cond156.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end221

for.body158.lr.ph:                                ; preds = %for.cond156.preheader
  %dev167 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  br label %for.body158

for.body:                                         ; preds = %if.end152.for.body_crit_edge, %for.body.lr.ph
  %i.0471 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end152.for.body_crit_edge ]
  %mul = shl i32 %i.0471, 3
  %add = add nuw nsw i32 %mul, %mul141
  %call.i445 = call i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i445)
  %cmp.not.i446 = icmp eq i32 %call.i445, 0
  br i1 %cmp.not.i446, label %qlcnic_rom_fast_read.exit450, label %for.body.if.then151_crit_edge

for.body.if.then151_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then151

qlcnic_rom_fast_read.exit450:                     ; preds = %for.body
  %call1.i447 = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef %add, ptr noundef nonnull %val) #8
  call void @qlcnic_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i447)
  %cmp143.not = icmp eq i32 %call1.i447, 0
  br i1 %cmp143.not, label %lor.lhs.false144, label %qlcnic_rom_fast_read.exit450.if.then151_crit_edge

qlcnic_rom_fast_read.exit450.if.then151_crit_edge: ; preds = %qlcnic_rom_fast_read.exit450
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then151

lor.lhs.false144:                                 ; preds = %qlcnic_rom_fast_read.exit450
  %call.i451 = call i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i451)
  %cmp.not.i452 = icmp eq i32 %call.i451, 0
  br i1 %cmp.not.i452, label %qlcnic_rom_fast_read.exit456, label %lor.lhs.false144.if.then151_crit_edge

lor.lhs.false144.if.then151_crit_edge:            ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then151

qlcnic_rom_fast_read.exit456:                     ; preds = %lor.lhs.false144
  %add148 = add nuw nsw i32 %add, 4
  %call1.i453 = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef %add148, ptr noundef nonnull %addr) #8
  call void @qlcnic_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i453)
  %cmp150.not = icmp eq i32 %call1.i453, 0
  br i1 %cmp150.not, label %if.end152, label %qlcnic_rom_fast_read.exit456.if.then151_crit_edge

qlcnic_rom_fast_read.exit456.if.then151_crit_edge: ; preds = %qlcnic_rom_fast_read.exit456
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then151

if.then151:                                       ; preds = %qlcnic_rom_fast_read.exit456.if.then151_crit_edge, %lor.lhs.false144.if.then151_crit_edge, %qlcnic_rom_fast_read.exit450.if.then151_crit_edge, %for.body.if.then151_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %cleanup

if.end152:                                        ; preds = %qlcnic_rom_fast_read.exit456
  %196 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %addr, align 4
  %arrayidx153 = getelementptr %struct.crb_addr_pair, ptr %call8.i.i, i32 %i.0471
  %198 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %arrayidx153, align 8
  %199 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %val, align 4
  %data = getelementptr %struct.crb_addr_pair, ptr %call8.i.i, i32 %i.0471, i32 1
  %201 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %data, align 4
  %inc = add nuw nsw i32 %i.0471, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end152.for.cond156.preheader_crit_edge, label %if.end152.for.body_crit_edge

if.end152.for.body_crit_edge:                     ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end152.for.cond156.preheader_crit_edge:        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond156.preheader

for.body158:                                      ; preds = %for.inc219.for.body158_crit_edge, %for.body158.lr.ph
  %i.1473 = phi i32 [ 0, %for.body158.lr.ph ], [ %inc220, %for.inc219.for.body158_crit_edge ]
  %arrayidx159 = getelementptr %struct.crb_addr_pair, ptr %call8.i.i, i32 %i.1473
  %202 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx159, align 8
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
  %and.i = and i32 %203, -1048576
  %and1.i = and i32 %203, 1048575
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body158
  %i.018.i = phi i32 [ 0, %for.body158 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [60 x i32], ptr @crb_addr_xform, i32 0, i32 %i.018.i
  %204 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %205, i32 %and.i)
  %cmp2.i = icmp eq i32 %205, %and.i
  br i1 %cmp2.i, label %qlcnic_decode_crb_addr.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 60
  br i1 %exitcond.not.i, label %for.inc.i.do.end166_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.do.end166_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end166

qlcnic_decode_crb_addr.exit:                      ; preds = %for.body.i
  %shl.i = shl i32 %i.018.i, 20
  %add.i = or i32 %shl.i, %and1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i)
  %cmp162 = icmp eq i32 %add.i, -1
  br i1 %cmp162, label %qlcnic_decode_crb_addr.exit.do.end166_crit_edge, label %if.end170

qlcnic_decode_crb_addr.exit.do.end166_crit_edge:  ; preds = %qlcnic_decode_crb_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end166

do.end166:                                        ; preds = %qlcnic_decode_crb_addr.exit.do.end166_crit_edge, %for.inc.i.do.end166_crit_edge
  %206 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx159, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev167, ptr noundef nonnull @.str.10, i32 noundef %207) #12
  br label %for.inc219

if.end170:                                        ; preds = %qlcnic_decode_crb_addr.exit
  %add171 = add i32 %add.i, 100663296
  %.fr = freeze i32 %203
  %and172 = and i32 %.fr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool.not.not = icmp eq i32 %and172, 0
  br i1 %tobool.not.not, label %switch.early.test, label %if.end170.for.inc219_crit_edge

if.end170.for.inc219_crit_edge:                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc219

switch.early.test:                                ; preds = %if.end170
  %208 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %208, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %add.i, label %if.end195 [
    i32 61866012, label %switch.early.test.for.inc219_crit_edge
    i32 53477576, label %switch.early.test.for.inc219_crit_edge490
    i32 53477564, label %switch.early.test.for.inc219_crit_edge491
    i32 53477544, label %switch.early.test.for.inc219_crit_edge492
    i32 53477412, label %switch.early.test.for.inc219_crit_edge493
    i32 53477404, label %switch.early.test.for.inc219_crit_edge494
    i32 35660284, label %switch.early.test.for.inc219_crit_edge495
  ]

switch.early.test.for.inc219_crit_edge495:        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc219

switch.early.test.for.inc219_crit_edge494:        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc219

switch.early.test.for.inc219_crit_edge493:        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc219

switch.early.test.for.inc219_crit_edge492:        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc219

switch.early.test.for.inc219_crit_edge491:        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc219

switch.early.test.for.inc219_crit_edge490:        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc219

switch.early.test.for.inc219_crit_edge:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc219

if.end195:                                        ; preds = %switch.early.test
  %209 = and i32 %add171, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 101785664, i32 %209)
  %210 = icmp eq i32 %209, 101785664
  br i1 %210, label %if.end195.for.inc219_crit_edge, label %switch.early.test476

if.end195.for.inc219_crit_edge:                   ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc219

switch.early.test476:                             ; preds = %if.end195
  %and196 = and i32 %add171, 267386880
  %211 = zext i32 %and196 to i64
  call void @__sanitizer_cov_trace_switch(i64 %211, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %and196, label %if.end209 [
    i32 161480704, label %switch.early.test476.for.inc219_crit_edge
    i32 102760448, label %switch.early.test476.for.inc219_crit_edge496
  ]

switch.early.test476.for.inc219_crit_edge496:     ; preds = %switch.early.test476
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc219

switch.early.test476.for.inc219_crit_edge:        ; preds = %switch.early.test476
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc219

if.end209:                                        ; preds = %switch.early.test476
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 154140680, i32 %add171)
  %cmp210 = icmp eq i32 %add171, 154140680
  %spec.store.select = select i1 %cmp210, i32 1000, i32 1
  %212 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %adapter, align 8
  %hw_ops214 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %213, i32 0, i32 46
  %214 = ptrtoint ptr %hw_ops214 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %hw_ops214, align 4
  %write_reg215 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %215, i32 0, i32 3
  %216 = ptrtoint ptr %write_reg215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %write_reg215, align 4
  %data217 = getelementptr %struct.crb_addr_pair, ptr %call8.i.i, i32 %i.1473, i32 1
  %218 = ptrtoint ptr %data217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %data217, align 4
  %call218 = call i32 %217(ptr noundef %adapter, i32 noundef %add171, i32 noundef %219) #8
  call void @msleep(i32 noundef %spec.store.select) #8
  br label %for.inc219

for.inc219:                                       ; preds = %if.end209, %switch.early.test476.for.inc219_crit_edge, %switch.early.test476.for.inc219_crit_edge496, %if.end195.for.inc219_crit_edge, %switch.early.test.for.inc219_crit_edge, %switch.early.test.for.inc219_crit_edge490, %switch.early.test.for.inc219_crit_edge491, %switch.early.test.for.inc219_crit_edge492, %switch.early.test.for.inc219_crit_edge493, %switch.early.test.for.inc219_crit_edge494, %switch.early.test.for.inc219_crit_edge495, %if.end170.for.inc219_crit_edge, %do.end166
  %inc220 = add nuw nsw i32 %i.1473, 1
  %220 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %n, align 4
  %cmp157 = icmp slt i32 %inc220, %221
  br i1 %cmp157, label %for.inc219.for.body158_crit_edge, label %for.inc219.for.end221_crit_edge

for.inc219.for.end221_crit_edge:                  ; preds = %for.inc219
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end221

for.inc219.for.body158_crit_edge:                 ; preds = %for.inc219
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body158

for.end221:                                       ; preds = %for.inc219.for.end221_crit_edge, %for.cond156.preheader.for.end221_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  %222 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %adapter, align 8
  %hw_ops223 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %223, i32 0, i32 46
  %224 = ptrtoint ptr %hw_ops223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %hw_ops223, align 4
  %write_reg224 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %225, i32 0, i32 3
  %226 = ptrtoint ptr %write_reg224 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %write_reg224, align 4
  %call225 = call i32 %227(ptr noundef %adapter, i32 noundef 122683628, i32 noundef 30) #8
  %228 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %adapter, align 8
  %hw_ops227 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %229, i32 0, i32 46
  %230 = ptrtoint ptr %hw_ops227 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %hw_ops227, align 4
  %write_reg228 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %231, i32 0, i32 3
  %232 = ptrtoint ptr %write_reg228 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %write_reg228, align 4
  %call229 = call i32 %233(ptr noundef %adapter, i32 noundef 122683468, i32 noundef 8) #8
  %234 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %adapter, align 8
  %hw_ops231 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %235, i32 0, i32 46
  %236 = ptrtoint ptr %hw_ops231 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %hw_ops231, align 4
  %write_reg232 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %237, i32 0, i32 3
  %238 = ptrtoint ptr %write_reg232 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %write_reg232, align 4
  %call233 = call i32 %239(ptr noundef %adapter, i32 noundef 123732044, i32 noundef 8) #8
  %240 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %adapter, align 8
  %hw_ops235 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %241, i32 0, i32 46
  %242 = ptrtoint ptr %hw_ops235 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %hw_ops235, align 4
  %write_reg236 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %243, i32 0, i32 3
  %244 = ptrtoint ptr %write_reg236 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %write_reg236, align 4
  %call237 = call i32 %245(ptr noundef %adapter, i32 noundef 118489096, i32 noundef 0) #8
  %246 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %adapter, align 8
  %hw_ops239 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %247, i32 0, i32 46
  %248 = ptrtoint ptr %hw_ops239 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %hw_ops239, align 4
  %write_reg240 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %249, i32 0, i32 3
  %250 = ptrtoint ptr %write_reg240 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %write_reg240, align 4
  %call241 = call i32 %251(ptr noundef %adapter, i32 noundef 118489100, i32 noundef 0) #8
  %252 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %adapter, align 8
  %hw_ops243 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %253, i32 0, i32 46
  %254 = ptrtoint ptr %hw_ops243 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %hw_ops243, align 4
  %write_reg244 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %255, i32 0, i32 3
  %256 = ptrtoint ptr %write_reg244 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %write_reg244, align 4
  %call245 = call i32 %257(ptr noundef %adapter, i32 noundef 119537672, i32 noundef 0) #8
  %258 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %adapter, align 8
  %hw_ops247 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %259, i32 0, i32 46
  %260 = ptrtoint ptr %hw_ops247 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %hw_ops247, align 4
  %write_reg248 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %261, i32 0, i32 3
  %262 = ptrtoint ptr %write_reg248 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %write_reg248, align 4
  %call249 = call i32 %263(ptr noundef %adapter, i32 noundef 119537676, i32 noundef 0) #8
  %264 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %adapter, align 8
  %hw_ops251 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %265, i32 0, i32 46
  %266 = ptrtoint ptr %hw_ops251 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %hw_ops251, align 4
  %write_reg252 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %267, i32 0, i32 3
  %268 = ptrtoint ptr %write_reg252 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %write_reg252, align 4
  %call253 = call i32 %269(ptr noundef %adapter, i32 noundef 120586248, i32 noundef 0) #8
  %270 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %adapter, align 8
  %hw_ops255 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %271, i32 0, i32 46
  %272 = ptrtoint ptr %hw_ops255 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %hw_ops255, align 4
  %write_reg256 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %273, i32 0, i32 3
  %274 = ptrtoint ptr %write_reg256 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %write_reg256, align 4
  %call257 = call i32 %275(ptr noundef %adapter, i32 noundef 120586252, i32 noundef 0) #8
  %276 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %adapter, align 8
  %hw_ops259 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %277, i32 0, i32 46
  %278 = ptrtoint ptr %hw_ops259 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %hw_ops259, align 4
  %write_reg260 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %279, i32 0, i32 3
  %280 = ptrtoint ptr %write_reg260 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %write_reg260, align 4
  %call261 = call i32 %281(ptr noundef %adapter, i32 noundef 121634824, i32 noundef 0) #8
  %282 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %adapter, align 8
  %hw_ops263 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %283, i32 0, i32 46
  %284 = ptrtoint ptr %hw_ops263 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %hw_ops263, align 4
  %write_reg264 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %285, i32 0, i32 3
  %286 = ptrtoint ptr %write_reg264 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %write_reg264, align 4
  %call265 = call i32 %287(ptr noundef %adapter, i32 noundef 121634828, i32 noundef 0) #8
  %288 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %adapter, align 8
  %hw_ops267 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %289, i32 0, i32 46
  %290 = ptrtoint ptr %hw_ops267 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %hw_ops267, align 4
  %write_reg268 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %291, i32 0, i32 3
  %292 = ptrtoint ptr %write_reg268 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %write_reg268, align 4
  %call269 = call i32 %293(ptr noundef %adapter, i32 noundef 116391944, i32 noundef 0) #8
  %294 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %adapter, align 8
  %hw_ops271 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %295, i32 0, i32 46
  %296 = ptrtoint ptr %hw_ops271 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %hw_ops271, align 4
  %write_reg272 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %297, i32 0, i32 3
  %298 = ptrtoint ptr %write_reg272 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %write_reg272, align 4
  %call273 = call i32 %299(ptr noundef %adapter, i32 noundef 116391948, i32 noundef 0) #8
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  call void @arm_heavy_mb() #8
  %300 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %adapter, align 8
  %302 = ptrtoint ptr %301 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %301, align 8
  %reg_tbl280 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %301, i32 0, i32 55
  %304 = ptrtoint ptr %reg_tbl280 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %reg_tbl280, align 4
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %305, align 4
  %add.ptr282 = getelementptr i8, ptr %303, i32 %307
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr282, i32 0) #8, !srcloc !127
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  call void @arm_heavy_mb() #8
  %308 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %adapter, align 8
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %309, align 8
  %reg_tbl289 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %309, i32 0, i32 55
  %312 = ptrtoint ptr %reg_tbl289 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %reg_tbl289, align 4
  %arrayidx290 = getelementptr i32, ptr %313, i32 1
  %314 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx290, align 4
  %add.ptr291 = getelementptr i8, ptr %311, i32 %315
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr291, i32 0) #8, !srcloc !127
  br label %cleanup

cleanup:                                          ; preds = %for.end221, %if.then151, %if.end7.i.i.cleanup_crit_edge, %do.end133, %do.end125, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end125 ], [ -5, %do.end133 ], [ -5, %if.then151 ], [ 0, %for.end221 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_check_fw_status(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.i.do.body.i_crit_edge, %entry
  %retries.0.i = phi i32 [ 60, %entry ], [ %dec.i, %sw.epilog.i.do.body.i_crit_edge ]
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %reg_tbl.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 55
  %4 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_tbl.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 16
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !131
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %9, label %sw.epilog.i [
    i32 65281, label %do.body.i.do.body.i17.preheader_crit_edge
    i32 61455, label %do.body.i.do.body.i17.preheader_crit_edge45
    i32 65535, label %do.body.i.qlcnic_cmd_peg_ready.exit_crit_edge
  ]

do.body.i.qlcnic_cmd_peg_ready.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_cmd_peg_ready.exit

do.body.i.do.body.i17.preheader_crit_edge45:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i17.preheader

do.body.i.do.body.i17.preheader_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i17.preheader

do.body.i17.preheader:                            ; preds = %do.body.i.do.body.i17.preheader_crit_edge, %do.body.i.do.body.i17.preheader_crit_edge45
  br label %do.body.i17

sw.epilog.i:                                      ; preds = %do.body.i
  tail call void @msleep(i32 noundef 500) #8
  %dec.i = add nsw i32 %retries.0.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %sw.epilog.i.do.body.i_crit_edge

sw.epilog.i.do.body.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body4.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %reg_tbl10.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %12, i32 0, i32 55
  %15 = ptrtoint ptr %reg_tbl10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_tbl10.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %16, i32 16
  %17 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx11.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %14, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 -65536) #8, !srcloc !127
  br label %qlcnic_cmd_peg_ready.exit

qlcnic_cmd_peg_ready.exit:                        ; preds = %do.body4.i, %do.body.i.qlcnic_cmd_peg_ready.exit_crit_edge
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26, i32 noundef %9) #12
  br label %cleanup

do.body.i17:                                      ; preds = %if.end.i.do.body.i17_crit_edge, %do.body.i17.preheader
  %retries.0.i13 = phi i32 [ %dec.i18, %if.end.i.do.body.i17_crit_edge ], [ 2000, %do.body.i17.preheader ]
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %reg_tbl.i14 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %22, i32 0, i32 55
  %25 = ptrtoint ptr %reg_tbl.i14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_tbl.i14, align 4
  %arrayidx.i15 = getelementptr i32, ptr %26, i32 17
  %27 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i15, align 4
  %add.ptr.i16 = getelementptr i8, ptr %24, i32 %28
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 33488896, i32 %29)
  %cmp.i = icmp eq i32 %29, 33488896
  br i1 %cmp.i, label %do.body, label %if.end.i

if.end.i:                                         ; preds = %do.body.i17
  tail call void @msleep(i32 noundef 10) #8
  %dec.i18 = add nsw i32 %retries.0.i13, -1
  %tobool.not.i19 = icmp eq i32 %dec.i18, 0
  br i1 %tobool.not.i19, label %qlcnic_receive_peg_ready.exit, label %if.end.i.do.body.i17_crit_edge

if.end.i.do.body.i17_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i17

qlcnic_receive_peg_ready.exit:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  %pdev.i20 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %31 = ptrtoint ptr %pdev.i20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i20, align 8
  %dev.i21 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i21, ptr noundef nonnull @.str.28, i32 noundef %30) #12
  br label %cleanup

do.body:                                          ; preds = %do.body.i17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %34, i32 0, i32 55
  %37 = ptrtoint ptr %reg_tbl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_tbl, align 4
  %arrayidx = getelementptr i32, ptr %38, i32 16
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 267386880) #8, !srcloc !127
  br label %cleanup

cleanup:                                          ; preds = %do.body, %qlcnic_receive_peg_ready.exit, %qlcnic_cmd_peg_ready.exit
  %retval.0 = phi i32 [ 0, %do.body ], [ -5, %qlcnic_cmd_peg_ready.exit ], [ -5, %qlcnic_receive_peg_ready.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_setup_idc_param(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %timeo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #8
  %0 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %timeo, align 4, !annotation !125
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 55
  %5 = ptrtoint ptr %reg_tbl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_tbl, align 4
  %arrayidx = getelementptr i32, ptr %6, i32 9
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !131
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %11 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %portnum, align 2
  %conv = zext i8 %12 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %shr = lshr i32 %10, %mul
  %and = and i32 %shr, 15
  %and3 = and i32 %shr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and3)
  %cmp.not = icmp eq i32 %and3, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %and) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr5 = lshr i32 %and, 2
  %conv6 = trunc i32 %shr5 to i8
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 8
  %physical_port = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %physical_port to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv6, ptr %physical_port, align 1
  %call.i = tail call i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %qlcnic_rom_fast_read.exit, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

qlcnic_rom_fast_read.exit:                        ; preds = %if.end
  %call1.i = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef 4098140, ptr noundef nonnull %timeo) #8
  tail call void @qlcnic_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %qlcnic_rom_fast_read.exit.if.end10_crit_edge, label %qlcnic_rom_fast_read.exit.if.then9_crit_edge

qlcnic_rom_fast_read.exit.if.then9_crit_edge:     ; preds = %qlcnic_rom_fast_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

qlcnic_rom_fast_read.exit.if.end10_crit_edge:     ; preds = %qlcnic_rom_fast_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %qlcnic_rom_fast_read.exit.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %18 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 30, ptr %timeo, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %qlcnic_rom_fast_read.exit.if.end10_crit_edge
  %19 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %timeo, align 4
  %conv11 = trunc i32 %20 to i8
  %dev_init_timeo = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 33
  %21 = ptrtoint ptr %dev_init_timeo to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv11, ptr %dev_init_timeo, align 2
  %call.i29 = tail call i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp.not.i30 = icmp eq i32 %call.i29, 0
  br i1 %cmp.not.i30, label %qlcnic_rom_fast_read.exit34, label %if.end10.if.then14_crit_edge

if.end10.if.then14_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

qlcnic_rom_fast_read.exit34:                      ; preds = %if.end10
  %call1.i31 = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef 4098144, ptr noundef nonnull %timeo) #8
  tail call void @qlcnic_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %tobool13.not = icmp eq i32 %call1.i31, 0
  br i1 %tobool13.not, label %qlcnic_rom_fast_read.exit34.if.end15_crit_edge, label %qlcnic_rom_fast_read.exit34.if.then14_crit_edge

qlcnic_rom_fast_read.exit34.if.then14_crit_edge:  ; preds = %qlcnic_rom_fast_read.exit34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

qlcnic_rom_fast_read.exit34.if.end15_crit_edge:   ; preds = %qlcnic_rom_fast_read.exit34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %qlcnic_rom_fast_read.exit34.if.then14_crit_edge, %if.end10.if.then14_crit_edge
  %22 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 10, ptr %timeo, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %qlcnic_rom_fast_read.exit34.if.end15_crit_edge
  %23 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %timeo, align 4
  %conv16 = trunc i32 %24 to i8
  %reset_ack_timeo = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 32
  %25 = ptrtoint ptr %reset_ack_timeo to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv16, ptr %reset_ack_timeo, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_check_flash_fw_ver(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %fw_entry = alloca %struct.qlcnic_flt_entry, align 4
  %ver = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fw_entry) #8
  %0 = call ptr @memset(ptr %fw_entry, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver) #8
  %1 = ptrtoint ptr %ver to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ver, align 4
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %revision_id = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 88, i8 %5)
  %cmp = icmp eq i8 %5, 88
  %. = select i1 %cmp, i8 -105, i8 116
  %call2 = call fastcc i32 @qlcnic_get_flt_entry(ptr noundef %adapter, i8 noundef zeroext %., ptr noundef nonnull %fw_entry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.else5

if.then3:                                         ; preds = %entry
  %6 = getelementptr inbounds %struct.qlcnic_flt_entry, ptr %fw_entry, i32 0, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %call.i = tail call i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %8, 4
  br label %if.end7.sink.split

if.else5:                                         ; preds = %entry
  %call.i38 = tail call i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp.not.i39 = icmp eq i32 %call.i38, 0
  br i1 %cmp.not.i39, label %if.else5.if.end7.sink.split_crit_edge, label %if.else5.if.end7_crit_edge

if.else5.if.end7_crit_edge:                       ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.else5.if.end7.sink.split_crit_edge:            ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.else5.if.end7.sink.split_crit_edge, %if.end.i
  %.sink44 = phi i32 [ %add, %if.end.i ], [ 4097032, %if.else5.if.end7.sink.split_crit_edge ]
  %call1.i40 = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef %.sink44, ptr noundef nonnull %ver) #8
  tail call void @qlcnic_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #8
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %if.else5.if.end7_crit_edge, %if.then3.if.end7_crit_edge
  %9 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ver, align 4
  %11 = and i32 %10, 65535
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %shr11 = lshr i32 %10, 16
  %add12 = or i32 %12, %shr11
  call void @__sanitizer_cov_trace_const_cmp4(i32 67371010, i32 %add12)
  %cmp13 = icmp ult i32 %add12, 67371010
  br i1 %cmp13, label %do.end, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %shr16 = lshr i32 %12, 24
  %shr18 = lshr exact i32 %12, 16
  %and19 = and i32 %shr18, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %shr16, i32 noundef %and19, i32 noundef %shr11, i32 noundef 4, i32 noundef 4, i32 noundef 2) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fw_entry) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_get_flt_entry(ptr noundef %adapter, i8 noundef zeroext %region, ptr nocapture noundef writeonly %region_entry) unnamed_addr #0 align 64 {
entry:
  %v.i.i60 = alloca i32, align 4
  %v.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %region_entry, i32 0, i32 16)
  %call.i = tail call i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %for.body.i.i.preheader

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.i.i.preheader:                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i.i) #8
  %1 = ptrtoint ptr %v.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %v.i.i, align 4, !annotation !125
  %call.i.i = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef 4132864, ptr noundef nonnull %v.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %for.body.i.i.preheader.qlcnic_rom_fast_read_words.exit_crit_edge

for.body.i.i.preheader.qlcnic_rom_fast_read_words.exit_crit_edge: ; preds = %for.body.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_rom_fast_read_words.exit

for.inc.i.i:                                      ; preds = %for.body.i.i.preheader
  %2 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v.i.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %flt_hdr.sroa.0.sroa.4.0.extract.trunc = trunc i32 %4 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i.i) #8
  %call.i.i.1 = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef 4132868, ptr noundef nonnull %v.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %cmp1.not.i.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %cmp1.not.i.i.1, label %for.inc.i.i.1, label %for.inc.i.i.qlcnic_rom_fast_read_words.exit_crit_edge

for.inc.i.i.qlcnic_rom_fast_read_words.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_rom_fast_read_words.exit

for.inc.i.i.1:                                    ; preds = %for.inc.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i) #8
  tail call void @qlcnic_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #8
  %conv = and i32 %4, 65535
  %sub = add nsw i32 %conv, -8
  %call1 = tail call noalias ptr @vzalloc(i32 noundef %sub) #11
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %for.inc.i.i.1.cleanup_crit_edge, label %if.end4

for.inc.i.i.1.cleanup_crit_edge:                  ; preds = %for.inc.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

qlcnic_rom_fast_read_words.exit:                  ; preds = %for.inc.i.i.qlcnic_rom_fast_read_words.exit_crit_edge, %for.body.i.i.preheader.qlcnic_rom_fast_read_words.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i) #8
  tail call void @qlcnic_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #8
  br label %do.end

do.end:                                           ; preds = %qlcnic_rom_fast_read_words.exit, %entry.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.30) #12
  br label %cleanup

if.end4:                                          ; preds = %for.inc.i.i.1
  %call.i61 = tail call i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp.i62 = icmp slt i32 %call.i61, 0
  br i1 %cmp.i62, label %if.end4.do.end10_crit_edge, label %if.end.i63

if.end4.do.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

if.end.i63:                                       ; preds = %if.end4
  %add.i.i = add nuw nsw i32 %conv, 4132864
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %flt_hdr.sroa.0.sroa.4.0.extract.trunc)
  %cmp14.i.i = icmp ugt i16 %flt_hdr.sroa.0.sroa.4.0.extract.trunc, 8
  br i1 %cmp14.i.i, label %if.end.i63.for.body.i.i68_crit_edge, label %if.end.i63.qlcnic_rom_fast_read_words.exit77_crit_edge

if.end.i63.qlcnic_rom_fast_read_words.exit77_crit_edge: ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_rom_fast_read_words.exit77

if.end.i63.for.body.i.i68_crit_edge:              ; preds = %if.end.i63
  br label %for.body.i.i68

for.body.i.i68:                                   ; preds = %for.inc.i.i73.for.body.i.i68_crit_edge, %if.end.i63.for.body.i.i68_crit_edge
  %addridx.016.i.i64 = phi i32 [ %add2.i.i71, %for.inc.i.i73.for.body.i.i68_crit_edge ], [ 4132872, %if.end.i63.for.body.i.i68_crit_edge ]
  %bytes.addr.015.i.i65 = phi ptr [ %add.ptr.i.i70, %for.inc.i.i73.for.body.i.i68_crit_edge ], [ %call1, %if.end.i63.for.body.i.i68_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i.i60) #8
  %7 = ptrtoint ptr %v.i.i60 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %v.i.i60, align 4, !annotation !125
  %call.i.i66 = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef %addridx.016.i.i64, ptr noundef nonnull %v.i.i60) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i66)
  %cmp1.not.i.i67 = icmp eq i32 %call.i.i66, 0
  br i1 %cmp1.not.i.i67, label %for.inc.i.i73, label %qlcnic_rom_fast_read_words.exit77.thread86

qlcnic_rom_fast_read_words.exit77.thread86:       ; preds = %for.body.i.i68
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i60) #8
  tail call void @qlcnic_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #8
  br label %do.end10

for.inc.i.i73:                                    ; preds = %for.body.i.i68
  %8 = ptrtoint ptr %v.i.i60 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %v.i.i60, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %11 = ptrtoint ptr %bytes.addr.015.i.i65 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bytes.addr.015.i.i65, align 4
  %add.ptr.i.i70 = getelementptr i8, ptr %bytes.addr.015.i.i65, i32 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i60) #8
  %add2.i.i71 = add nuw nsw i32 %addridx.016.i.i64, 4
  %cmp.i.i72 = icmp ult i32 %add2.i.i71, %add.i.i
  br i1 %cmp.i.i72, label %for.inc.i.i73.for.body.i.i68_crit_edge, label %for.inc.i.i73.qlcnic_rom_fast_read_words.exit77_crit_edge

for.inc.i.i73.qlcnic_rom_fast_read_words.exit77_crit_edge: ; preds = %for.inc.i.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_rom_fast_read_words.exit77

for.inc.i.i73.for.body.i.i68_crit_edge:           ; preds = %for.inc.i.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i68

qlcnic_rom_fast_read_words.exit77:                ; preds = %for.inc.i.i73.qlcnic_rom_fast_read_words.exit77_crit_edge, %if.end.i63.qlcnic_rom_fast_read_words.exit77_crit_edge
  tail call void @qlcnic_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp1491.not = icmp ult i32 %sub, 16
  br i1 %cmp1491.not, label %qlcnic_rom_fast_read_words.exit77.do.end29_crit_edge, label %while.body.preheader

qlcnic_rom_fast_read_words.exit77.do.end29_crit_edge: ; preds = %qlcnic_rom_fast_read_words.exit77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

while.body.preheader:                             ; preds = %qlcnic_rom_fast_read_words.exit77
  %div59 = lshr i32 %sub, 4
  br label %while.body

do.end10:                                         ; preds = %qlcnic_rom_fast_read_words.exit77.thread86, %if.end4.do.end10_crit_edge
  %retval.0.i7685 = phi i32 [ %call.i.i66, %qlcnic_rom_fast_read_words.exit77.thread86 ], [ %call.i61, %if.end4.do.end10_crit_edge ]
  %pdev11 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %12 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev11, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev12, ptr noundef nonnull @.str.34) #12
  br label %err_out

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %while.body.preheader
  %i.092 = phi i32 [ %inc, %if.end22.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %arrayidx = getelementptr %struct.qlcnic_flt_entry, ptr %call1, i32 %i.092
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %region)
  %cmp19 = icmp eq i8 %15, %region
  br i1 %cmp19, label %if.end33, label %if.end22

if.end22:                                         ; preds = %while.body
  %inc = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, %div59
  br i1 %exitcond.not, label %if.end22.do.end29_crit_edge, label %if.end22.while.body_crit_edge

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end22.do.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

do.end29:                                         ; preds = %if.end22.do.end29_crit_edge, %qlcnic_rom_fast_read_words.exit77.do.end29_crit_edge
  %i.0.lcssa = phi i32 [ 0, %qlcnic_rom_fast_read_words.exit77.do.end29_crit_edge ], [ %div59, %if.end22.do.end29_crit_edge ]
  %pdev30 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %16 = ptrtoint ptr %pdev30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev30, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %conv32 = zext i8 %region to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev31, ptr noundef nonnull @.str.37, i32 noundef %conv32, i32 noundef %i.0.lcssa) #12
  br label %err_out

if.end33:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %18 = call ptr @memcpy(ptr %region_entry, ptr %arrayidx, i32 16)
  br label %err_out

err_out:                                          ; preds = %if.end33, %do.end29, %do.end10
  %ret.0 = phi i32 [ %retval.0.i7685, %do.end10 ], [ -5, %do.end29 ], [ 0, %if.end33 ]
  tail call void @vfree(ptr noundef nonnull %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out, %do.end, %for.inc.i.i.1.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %ret.0, %err_out ], [ -5, %for.inc.i.i.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_need_fw_reset(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %reg_tbl.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 55
  %6 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_tbl.i, align 4
  %arrayidx.i = getelementptr i32, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !131
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %heartbeat3.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 30
  %12 = ptrtoint ptr %heartbeat3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %heartbeat3.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %lor.lhs.false
  %retries.0.i = phi i32 [ 10, %lor.lhs.false ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  tail call void @msleep(i32 noundef 200) #8
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %reg_tbl9.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %14, i32 0, i32 55
  %17 = ptrtoint ptr %reg_tbl9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_tbl9.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %18, i32 2
  %19 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx10.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %16, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !131
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %23 = ptrtoint ptr %heartbeat3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %heartbeat3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.not.i = icmp eq i32 %22, %24
  br i1 %cmp.not.i, label %do.cond.i, label %if.end

do.cond.i:                                        ; preds = %do.body.i
  %dec.i = add nsw i32 %retries.0.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.cond.i.if.then_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.cond.i.if.then_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %do.cond.i.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i = tail call i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i12 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i12, label %if.then.qlcnic_rom_lock_recovery.exit_crit_edge, label %do.end.i

if.then.qlcnic_rom_lock_recovery.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_rom_lock_recovery.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %25 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.39) #12
  br label %qlcnic_rom_lock_recovery.exit

qlcnic_rom_lock_recovery.exit:                    ; preds = %do.end.i, %if.then.qlcnic_rom_lock_recovery.exit_crit_edge
  tail call void @qlcnic_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #8
  br label %return

if.end:                                           ; preds = %do.body.i
  %need_fw_reset = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 24
  %27 = ptrtoint ptr %need_fw_reset to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %need_fw_reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool2.not = icmp eq i8 %28, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %fw = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 64
  %29 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw, align 4
  %tobool5.not = icmp ne ptr %30, null
  %. = zext i1 %tobool5.not to i32
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %qlcnic_rom_lock_recovery.exit
  %retval.0 = phi i32 [ 1, %qlcnic_rom_lock_recovery.exit ], [ 1, %if.end.return_crit_edge ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_load_firmware(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %hi = alloca i32, align 4
  %lo = alloca i32, align 4
  %bootld_entry = alloca %struct.qlcnic_flt_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 64
  %0 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw1, align 4
  %pdev2 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %fw_type = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %fw_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_type, align 2
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr [2 x ptr], ptr @fw_name, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef %9) #12
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw1, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %file_prd_off.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 61
  %14 = ptrtoint ptr %file_prd_off.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %file_prd_off.i.i, align 8
  %arrayidx.i.i = getelementptr i8, ptr %13, i32 %15
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 27
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 4
  %num_entries.i.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_entries.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp15.not.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp15.not.i.i.i, label %if.then.qlcnic_get_data_desc.exit.i_crit_edge, label %for.body.lr.ph.i.i.i

if.then.qlcnic_get_data_desc.exit.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_data_desc.exit.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %13, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  %entry_size.i.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %13, i32 0, i32 2
  %24 = ptrtoint ptr %entry_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entry_size.i.i.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  %umax.i.i.i = tail call i32 @llvm.umax.i32(i32 %20, i32 1) #8
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.016.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.qlcnic_get_data_desc.exit.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.cond.i.i.i.qlcnic_get_data_desc.exit.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_data_desc.exit.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.016.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %mul.i.i.i = mul i32 %i.016.i.i.i, %26
  %add.i.i.i = add i32 %mul.i.i.i, %23
  %arrayidx1.i.i.i = getelementptr i8, ptr %13, i32 %add.i.i.i
  %add.ptr.i.i.i = getelementptr i32, ptr %arrayidx1.i.i.i, i32 8
  %27 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %28)
  %cmp2.i.i.i = icmp eq i32 %28, 100663296
  br i1 %cmp2.i.i.i, label %qlcnic_get_table_desc.exit.i.i, label %for.cond.i.i.i

qlcnic_get_table_desc.exit.i.i:                   ; preds = %for.body.i.i.i
  %cmp.i.i = icmp eq ptr %arrayidx1.i.i.i, null
  br i1 %cmp.i.i, label %qlcnic_get_table_desc.exit.i.i.qlcnic_get_data_desc.exit.i_crit_edge, label %if.end.i.i

qlcnic_get_table_desc.exit.i.i.qlcnic_get_data_desc.exit.i_crit_edge: ; preds = %qlcnic_get_table_desc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_data_desc.exit.i

if.end.i.i:                                       ; preds = %qlcnic_get_table_desc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %30 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx1.i.i.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  %entry_size.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %arrayidx1.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %entry_size.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %entry_size.i.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  %mul.i.i = mul i32 %35, %29
  %add.i.i = add i32 %mul.i.i, %32
  %arrayidx1.i.i = getelementptr i8, ptr %13, i32 %add.i.i
  br label %qlcnic_get_data_desc.exit.i

qlcnic_get_data_desc.exit.i:                      ; preds = %if.end.i.i, %qlcnic_get_table_desc.exit.i.i.qlcnic_get_data_desc.exit.i_crit_edge, %for.cond.i.i.i.qlcnic_get_data_desc.exit.i_crit_edge, %if.then.qlcnic_get_data_desc.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx1.i.i, %if.end.i.i ], [ null, %qlcnic_get_table_desc.exit.i.i.qlcnic_get_data_desc.exit.i_crit_edge ], [ null, %if.then.qlcnic_get_data_desc.exit.i_crit_edge ], [ null, %for.cond.i.i.i.qlcnic_get_data_desc.exit.i_crit_edge ]
  %36 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter, align 8
  %fw_type.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %fw_type.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fw_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp.i = icmp eq i8 %39, 0
  br i1 %cmp.i, label %if.then.i, label %qlcnic_get_data_desc.exit.i.qlcnic_get_bootld_offs.exit_crit_edge

qlcnic_get_data_desc.exit.i.qlcnic_get_bootld_offs.exit_crit_edge: ; preds = %qlcnic_get_data_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_bootld_offs.exit

if.then.i:                                        ; preds = %qlcnic_get_data_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %retval.0.i.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #8
  br label %qlcnic_get_bootld_offs.exit

qlcnic_get_bootld_offs.exit:                      ; preds = %if.then.i, %qlcnic_get_data_desc.exit.i.qlcnic_get_bootld_offs.exit_crit_edge
  %offs.0.i = phi i32 [ %42, %if.then.i ], [ 65536, %qlcnic_get_data_desc.exit.i.qlcnic_get_bootld_offs.exit_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %13, i32 %offs.0.i
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %qlcnic_get_bootld_offs.exit
  %flashaddr.0256 = phi i32 [ 65536, %qlcnic_get_bootld_offs.exit ], [ %add, %if.end.for.body_crit_edge ]
  %i.0255 = phi i32 [ 0, %qlcnic_get_bootld_offs.exit ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx3 = getelementptr i64, ptr %arrayidx.i, i32 %i.0255
  %43 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx3, align 8
  %45 = tail call i64 @llvm.bswap.i64(i64 %44)
  %conv = zext i32 %flashaddr.0256 to i64
  %call4 = tail call i32 @qlcnic_pci_mem_write_2M(ptr noundef %adapter, i64 noundef %conv, i64 noundef %45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end, label %for.body.cleanup85_crit_edge

for.body.cleanup85_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.end:                                           ; preds = %for.body
  %add = add nuw nsw i32 %flashaddr.0256, 8
  %inc = add nuw nsw i32 %i.0255, 1
  %exitcond.not = icmp eq i32 %inc, 26112
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end
  %46 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fw1, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i, align 4
  %50 = ptrtoint ptr %file_prd_off.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %file_prd_off.i.i, align 8
  %arrayidx.i.i140 = getelementptr i8, ptr %49, i32 %51
  %add.ptr.i.i141 = getelementptr i32, ptr %arrayidx.i.i140, i32 29
  %52 = ptrtoint ptr %add.ptr.i.i141 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i.i141, align 4
  %num_entries.i.i.i142 = getelementptr inbounds %struct.uni_table_desc, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %num_entries.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_entries.i.i.i142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp15.not.i.i.i143 = icmp eq i32 %55, 0
  br i1 %cmp15.not.i.i.i143, label %for.end.qlcnic_get_fw_size.exit_crit_edge, label %for.body.lr.ph.i.i.i146

for.end.qlcnic_get_fw_size.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_fw_size.exit

for.body.lr.ph.i.i.i146:                          ; preds = %for.end
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #8
  %57 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %49, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #8
  %entry_size.i.i.i144 = getelementptr inbounds %struct.uni_table_desc, ptr %49, i32 0, i32 2
  %60 = ptrtoint ptr %entry_size.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %entry_size.i.i.i144, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #8
  %umax.i.i.i145 = tail call i32 @llvm.umax.i32(i32 %56, i32 1) #8
  br label %for.body.i.i.i156

for.cond.i.i.i149:                                ; preds = %for.body.i.i.i156
  %inc.i.i.i147 = add nuw i32 %i.016.i.i.i150, 1
  %exitcond.not.i.i.i148 = icmp eq i32 %inc.i.i.i147, %umax.i.i.i145
  br i1 %exitcond.not.i.i.i148, label %for.cond.i.i.i149.qlcnic_get_fw_size.exit_crit_edge, label %for.cond.i.i.i149.for.body.i.i.i156_crit_edge

for.cond.i.i.i149.for.body.i.i.i156_crit_edge:    ; preds = %for.cond.i.i.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i156

for.cond.i.i.i149.qlcnic_get_fw_size.exit_crit_edge: ; preds = %for.cond.i.i.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_fw_size.exit

for.body.i.i.i156:                                ; preds = %for.cond.i.i.i149.for.body.i.i.i156_crit_edge, %for.body.lr.ph.i.i.i146
  %i.016.i.i.i150 = phi i32 [ 0, %for.body.lr.ph.i.i.i146 ], [ %inc.i.i.i147, %for.cond.i.i.i149.for.body.i.i.i156_crit_edge ]
  %mul.i.i.i151 = mul i32 %i.016.i.i.i150, %62
  %add.i.i.i152 = add i32 %mul.i.i.i151, %59
  %arrayidx1.i.i.i153 = getelementptr i8, ptr %49, i32 %add.i.i.i152
  %add.ptr.i.i.i154 = getelementptr i32, ptr %arrayidx1.i.i.i153, i32 8
  %63 = ptrtoint ptr %add.ptr.i.i.i154 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i.i.i154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %64)
  %cmp2.i.i.i155 = icmp eq i32 %64, 117440512
  br i1 %cmp2.i.i.i155, label %qlcnic_get_table_desc.exit.i.i158, label %for.cond.i.i.i149

qlcnic_get_table_desc.exit.i.i158:                ; preds = %for.body.i.i.i156
  %cmp.i.i157 = icmp eq ptr %arrayidx1.i.i.i153, null
  br i1 %cmp.i.i157, label %qlcnic_get_table_desc.exit.i.i158.qlcnic_get_fw_size.exit_crit_edge, label %if.end.i.i163

qlcnic_get_table_desc.exit.i.i158.qlcnic_get_fw_size.exit_crit_edge: ; preds = %qlcnic_get_table_desc.exit.i.i158
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_fw_size.exit

if.end.i.i163:                                    ; preds = %qlcnic_get_table_desc.exit.i.i158
  call void @__sanitizer_cov_trace_pc() #10
  %65 = tail call i32 @llvm.bswap.i32(i32 %53) #8
  %66 = ptrtoint ptr %arrayidx1.i.i.i153 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx1.i.i.i153, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #8
  %entry_size.i.i159 = getelementptr inbounds %struct.uni_table_desc, ptr %arrayidx1.i.i.i153, i32 0, i32 2
  %69 = ptrtoint ptr %entry_size.i.i159 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %entry_size.i.i159, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #8
  %mul.i.i160 = mul i32 %71, %65
  %add.i.i161 = add i32 %mul.i.i160, %68
  %arrayidx1.i.i162 = getelementptr i8, ptr %49, i32 %add.i.i161
  br label %qlcnic_get_fw_size.exit

qlcnic_get_fw_size.exit:                          ; preds = %if.end.i.i163, %qlcnic_get_table_desc.exit.i.i158.qlcnic_get_fw_size.exit_crit_edge, %for.cond.i.i.i149.qlcnic_get_fw_size.exit_crit_edge, %for.end.qlcnic_get_fw_size.exit_crit_edge
  %retval.0.i.i164 = phi ptr [ %arrayidx1.i.i162, %if.end.i.i163 ], [ null, %qlcnic_get_table_desc.exit.i.i158.qlcnic_get_fw_size.exit_crit_edge ], [ null, %for.end.qlcnic_get_fw_size.exit_crit_edge ], [ null, %for.cond.i.i.i149.qlcnic_get_fw_size.exit_crit_edge ]
  %72 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adapter, align 8
  %fw_type.i165 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %73, i32 0, i32 11
  %74 = ptrtoint ptr %fw_type.i165 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %fw_type.i165, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp.i166 = icmp eq i8 %75, 0
  %arrayidx.i167 = getelementptr i8, ptr %49, i32 4097036
  %size.i = getelementptr inbounds %struct.uni_data_desc, ptr %retval.0.i.i164, i32 0, i32 1
  %arrayidx.sink.i = select i1 %cmp.i166, ptr %size.i, ptr %arrayidx.i167
  %76 = ptrtoint ptr %arrayidx.sink.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.sink.i, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #8
  %div135 = lshr i32 %78, 3
  br i1 %cmp15.not.i.i.i143, label %qlcnic_get_fw_size.exit.qlcnic_get_data_desc.exit.i199_crit_edge, label %for.body.lr.ph.i.i.i178

qlcnic_get_fw_size.exit.qlcnic_get_data_desc.exit.i199_crit_edge: ; preds = %qlcnic_get_fw_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_data_desc.exit.i199

for.body.lr.ph.i.i.i178:                          ; preds = %qlcnic_get_fw_size.exit
  %79 = tail call i32 @llvm.bswap.i32(i32 %55) #8
  %80 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %49, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #8
  %entry_size.i.i.i176 = getelementptr inbounds %struct.uni_table_desc, ptr %49, i32 0, i32 2
  %83 = ptrtoint ptr %entry_size.i.i.i176 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %entry_size.i.i.i176, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #8
  %umax.i.i.i177 = tail call i32 @llvm.umax.i32(i32 %79, i32 1) #8
  br label %for.body.i.i.i188

for.cond.i.i.i181:                                ; preds = %for.body.i.i.i188
  %inc.i.i.i179 = add nuw i32 %i.016.i.i.i182, 1
  %exitcond.not.i.i.i180 = icmp eq i32 %inc.i.i.i179, %umax.i.i.i177
  br i1 %exitcond.not.i.i.i180, label %for.cond.i.i.i181.qlcnic_get_data_desc.exit.i199_crit_edge, label %for.cond.i.i.i181.for.body.i.i.i188_crit_edge

for.cond.i.i.i181.for.body.i.i.i188_crit_edge:    ; preds = %for.cond.i.i.i181
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i188

for.cond.i.i.i181.qlcnic_get_data_desc.exit.i199_crit_edge: ; preds = %for.cond.i.i.i181
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_data_desc.exit.i199

for.body.i.i.i188:                                ; preds = %for.cond.i.i.i181.for.body.i.i.i188_crit_edge, %for.body.lr.ph.i.i.i178
  %i.016.i.i.i182 = phi i32 [ 0, %for.body.lr.ph.i.i.i178 ], [ %inc.i.i.i179, %for.cond.i.i.i181.for.body.i.i.i188_crit_edge ]
  %mul.i.i.i183 = mul i32 %i.016.i.i.i182, %85
  %add.i.i.i184 = add i32 %mul.i.i.i183, %82
  %arrayidx1.i.i.i185 = getelementptr i8, ptr %49, i32 %add.i.i.i184
  %add.ptr.i.i.i186 = getelementptr i32, ptr %arrayidx1.i.i.i185, i32 8
  %86 = ptrtoint ptr %add.ptr.i.i.i186 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr.i.i.i186, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %87)
  %cmp2.i.i.i187 = icmp eq i32 %87, 117440512
  br i1 %cmp2.i.i.i187, label %qlcnic_get_table_desc.exit.i.i190, label %for.cond.i.i.i181

qlcnic_get_table_desc.exit.i.i190:                ; preds = %for.body.i.i.i188
  %cmp.i.i189 = icmp eq ptr %arrayidx1.i.i.i185, null
  br i1 %cmp.i.i189, label %qlcnic_get_table_desc.exit.i.i190.qlcnic_get_data_desc.exit.i199_crit_edge, label %if.end.i.i195

qlcnic_get_table_desc.exit.i.i190.qlcnic_get_data_desc.exit.i199_crit_edge: ; preds = %qlcnic_get_table_desc.exit.i.i190
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_data_desc.exit.i199

if.end.i.i195:                                    ; preds = %qlcnic_get_table_desc.exit.i.i190
  call void @__sanitizer_cov_trace_pc() #10
  %88 = tail call i32 @llvm.bswap.i32(i32 %53) #8
  %89 = ptrtoint ptr %arrayidx1.i.i.i185 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx1.i.i.i185, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #8
  %entry_size.i.i191 = getelementptr inbounds %struct.uni_table_desc, ptr %arrayidx1.i.i.i185, i32 0, i32 2
  %92 = ptrtoint ptr %entry_size.i.i191 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %entry_size.i.i191, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #8
  %mul.i.i192 = mul i32 %94, %88
  %add.i.i193 = add i32 %mul.i.i192, %91
  %arrayidx1.i.i194 = getelementptr i8, ptr %49, i32 %add.i.i193
  br label %qlcnic_get_data_desc.exit.i199

qlcnic_get_data_desc.exit.i199:                   ; preds = %if.end.i.i195, %qlcnic_get_table_desc.exit.i.i190.qlcnic_get_data_desc.exit.i199_crit_edge, %for.cond.i.i.i181.qlcnic_get_data_desc.exit.i199_crit_edge, %qlcnic_get_fw_size.exit.qlcnic_get_data_desc.exit.i199_crit_edge
  %retval.0.i.i196 = phi ptr [ %arrayidx1.i.i194, %if.end.i.i195 ], [ null, %qlcnic_get_table_desc.exit.i.i190.qlcnic_get_data_desc.exit.i199_crit_edge ], [ null, %qlcnic_get_fw_size.exit.qlcnic_get_data_desc.exit.i199_crit_edge ], [ null, %for.cond.i.i.i181.qlcnic_get_data_desc.exit.i199_crit_edge ]
  br i1 %cmp.i166, label %if.then.i200, label %qlcnic_get_data_desc.exit.i199.qlcnic_get_fw_offs.exit_crit_edge

qlcnic_get_data_desc.exit.i199.qlcnic_get_fw_offs.exit_crit_edge: ; preds = %qlcnic_get_data_desc.exit.i199
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_fw_offs.exit

if.then.i200:                                     ; preds = %qlcnic_get_data_desc.exit.i199
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %retval.0.i.i196 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %retval.0.i.i196, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #8
  br label %qlcnic_get_fw_offs.exit

qlcnic_get_fw_offs.exit:                          ; preds = %if.then.i200, %qlcnic_get_data_desc.exit.i199.qlcnic_get_fw_offs.exit_crit_edge
  %offs.0.i201 = phi i32 [ %97, %if.then.i200 ], [ 274432, %qlcnic_get_data_desc.exit.i199.qlcnic_get_fw_offs.exit_crit_edge ]
  %arrayidx.i202 = getelementptr i8, ptr %49, i32 %offs.0.i201
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %78)
  %cmp10257.not = icmp ult i32 %78, 8
  br i1 %cmp10257.not, label %qlcnic_get_fw_offs.exit.for.end22_crit_edge, label %for.body12.preheader

qlcnic_get_fw_offs.exit.for.end22_crit_edge:      ; preds = %qlcnic_get_fw_offs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end22

for.body12.preheader:                             ; preds = %qlcnic_get_fw_offs.exit
  %umax = call i32 @llvm.umax.i32(i32 %div135, i32 1)
  br label %for.body12

for.body12:                                       ; preds = %if.end18.for.body12_crit_edge, %for.body12.preheader
  %flashaddr.1259 = phi i32 [ %add19, %if.end18.for.body12_crit_edge ], [ 274432, %for.body12.preheader ]
  %i.1258 = phi i32 [ %inc21, %if.end18.for.body12_crit_edge ], [ 0, %for.body12.preheader ]
  %arrayidx13 = getelementptr i64, ptr %arrayidx.i202, i32 %i.1258
  %98 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %arrayidx13, align 8
  %100 = tail call i64 @llvm.bswap.i64(i64 %99)
  %conv14 = zext i32 %flashaddr.1259 to i64
  %call15 = tail call i32 @qlcnic_pci_mem_write_2M(ptr noundef %adapter, i64 noundef %conv14, i64 noundef %100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %for.body12.cleanup85_crit_edge

for.body12.cleanup85_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.end18:                                         ; preds = %for.body12
  %add19 = add i32 %flashaddr.1259, 8
  %inc21 = add nuw nsw i32 %i.1258, 1
  %exitcond269.not = icmp eq i32 %inc21, %umax
  br i1 %exitcond269.not, label %if.end18.for.end22_crit_edge, label %if.end18.for.body12_crit_edge

if.end18.for.body12_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12

if.end18.for.end22_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end22

for.end22:                                        ; preds = %if.end18.for.end22_crit_edge, %qlcnic_get_fw_offs.exit.for.end22_crit_edge
  %i.1.lcssa = phi i32 [ 0, %qlcnic_get_fw_offs.exit.for.end22_crit_edge ], [ %umax, %if.end18.for.end22_crit_edge ]
  %flashaddr.1.lcssa = phi i32 [ 274432, %qlcnic_get_fw_offs.exit.for.end22_crit_edge ], [ %add19, %if.end18.for.end22_crit_edge ]
  %101 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fw1, align 4
  %data.i204 = getelementptr inbounds %struct.firmware, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %data.i204 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data.i204, align 4
  %105 = ptrtoint ptr %file_prd_off.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %file_prd_off.i.i, align 8
  %arrayidx.i.i206 = getelementptr i8, ptr %104, i32 %106
  %add.ptr.i.i207 = getelementptr i32, ptr %arrayidx.i.i206, i32 29
  %107 = ptrtoint ptr %add.ptr.i.i207 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %add.ptr.i.i207, align 4
  %num_entries.i.i.i208 = getelementptr inbounds %struct.uni_table_desc, ptr %104, i32 0, i32 1
  %109 = ptrtoint ptr %num_entries.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %num_entries.i.i.i208, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp15.not.i.i.i209 = icmp eq i32 %110, 0
  br i1 %cmp15.not.i.i.i209, label %for.end22.qlcnic_get_fw_size.exit237_crit_edge, label %for.body.lr.ph.i.i.i212

for.end22.qlcnic_get_fw_size.exit237_crit_edge:   ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_fw_size.exit237

for.body.lr.ph.i.i.i212:                          ; preds = %for.end22
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #8
  %112 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %104, align 4
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #8
  %entry_size.i.i.i210 = getelementptr inbounds %struct.uni_table_desc, ptr %104, i32 0, i32 2
  %115 = ptrtoint ptr %entry_size.i.i.i210 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %entry_size.i.i.i210, align 4
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #8
  %umax.i.i.i211 = tail call i32 @llvm.umax.i32(i32 %111, i32 1) #8
  br label %for.body.i.i.i222

for.cond.i.i.i215:                                ; preds = %for.body.i.i.i222
  %inc.i.i.i213 = add nuw i32 %i.016.i.i.i216, 1
  %exitcond.not.i.i.i214 = icmp eq i32 %inc.i.i.i213, %umax.i.i.i211
  br i1 %exitcond.not.i.i.i214, label %for.cond.i.i.i215.qlcnic_get_fw_size.exit237_crit_edge, label %for.cond.i.i.i215.for.body.i.i.i222_crit_edge

for.cond.i.i.i215.for.body.i.i.i222_crit_edge:    ; preds = %for.cond.i.i.i215
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i222

for.cond.i.i.i215.qlcnic_get_fw_size.exit237_crit_edge: ; preds = %for.cond.i.i.i215
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_fw_size.exit237

for.body.i.i.i222:                                ; preds = %for.cond.i.i.i215.for.body.i.i.i222_crit_edge, %for.body.lr.ph.i.i.i212
  %i.016.i.i.i216 = phi i32 [ 0, %for.body.lr.ph.i.i.i212 ], [ %inc.i.i.i213, %for.cond.i.i.i215.for.body.i.i.i222_crit_edge ]
  %mul.i.i.i217 = mul i32 %i.016.i.i.i216, %117
  %add.i.i.i218 = add i32 %mul.i.i.i217, %114
  %arrayidx1.i.i.i219 = getelementptr i8, ptr %104, i32 %add.i.i.i218
  %add.ptr.i.i.i220 = getelementptr i32, ptr %arrayidx1.i.i.i219, i32 8
  %118 = ptrtoint ptr %add.ptr.i.i.i220 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %add.ptr.i.i.i220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %119)
  %cmp2.i.i.i221 = icmp eq i32 %119, 117440512
  br i1 %cmp2.i.i.i221, label %qlcnic_get_table_desc.exit.i.i224, label %for.cond.i.i.i215

qlcnic_get_table_desc.exit.i.i224:                ; preds = %for.body.i.i.i222
  %cmp.i.i223 = icmp eq ptr %arrayidx1.i.i.i219, null
  br i1 %cmp.i.i223, label %qlcnic_get_table_desc.exit.i.i224.qlcnic_get_fw_size.exit237_crit_edge, label %if.end.i.i229

qlcnic_get_table_desc.exit.i.i224.qlcnic_get_fw_size.exit237_crit_edge: ; preds = %qlcnic_get_table_desc.exit.i.i224
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_fw_size.exit237

if.end.i.i229:                                    ; preds = %qlcnic_get_table_desc.exit.i.i224
  call void @__sanitizer_cov_trace_pc() #10
  %120 = tail call i32 @llvm.bswap.i32(i32 %108) #8
  %121 = ptrtoint ptr %arrayidx1.i.i.i219 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx1.i.i.i219, align 4
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #8
  %entry_size.i.i225 = getelementptr inbounds %struct.uni_table_desc, ptr %arrayidx1.i.i.i219, i32 0, i32 2
  %124 = ptrtoint ptr %entry_size.i.i225 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %entry_size.i.i225, align 4
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #8
  %mul.i.i226 = mul i32 %126, %120
  %add.i.i227 = add i32 %mul.i.i226, %123
  %arrayidx1.i.i228 = getelementptr i8, ptr %104, i32 %add.i.i227
  br label %qlcnic_get_fw_size.exit237

qlcnic_get_fw_size.exit237:                       ; preds = %if.end.i.i229, %qlcnic_get_table_desc.exit.i.i224.qlcnic_get_fw_size.exit237_crit_edge, %for.cond.i.i.i215.qlcnic_get_fw_size.exit237_crit_edge, %for.end22.qlcnic_get_fw_size.exit237_crit_edge
  %retval.0.i.i230 = phi ptr [ %arrayidx1.i.i228, %if.end.i.i229 ], [ null, %qlcnic_get_table_desc.exit.i.i224.qlcnic_get_fw_size.exit237_crit_edge ], [ null, %for.end22.qlcnic_get_fw_size.exit237_crit_edge ], [ null, %for.cond.i.i.i215.qlcnic_get_fw_size.exit237_crit_edge ]
  %127 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %adapter, align 8
  %fw_type.i231 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %128, i32 0, i32 11
  %129 = ptrtoint ptr %fw_type.i231 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %fw_type.i231, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %cmp.i232 = icmp eq i8 %130, 0
  %arrayidx.i233 = getelementptr i8, ptr %104, i32 4097036
  %size.i234 = getelementptr inbounds %struct.uni_data_desc, ptr %retval.0.i.i230, i32 0, i32 1
  %arrayidx.sink.i235 = select i1 %cmp.i232, ptr %size.i234, ptr %arrayidx.i233
  %131 = ptrtoint ptr %arrayidx.sink.i235 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.sink.i235, align 4
  %133 = and i32 %132, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool24.not = icmp eq i32 %133, 0
  br i1 %tobool24.not, label %qlcnic_get_fw_size.exit237.if.end78_crit_edge, label %if.then25

qlcnic_get_fw_size.exit237.if.end78_crit_edge:    ; preds = %qlcnic_get_fw_size.exit237
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then25:                                        ; preds = %qlcnic_get_fw_size.exit237
  %arrayidx26 = getelementptr i64, ptr %arrayidx.i202, i32 %i.1.lcssa
  %134 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %arrayidx26, align 8
  %136 = tail call i64 @llvm.bswap.i64(i64 %135)
  %conv27 = zext i32 %flashaddr.1.lcssa to i64
  %call28 = tail call i32 @qlcnic_pci_mem_write_2M(ptr noundef %adapter, i64 noundef %conv27, i64 noundef %136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then25.if.end78_crit_edge, label %if.then25.cleanup85_crit_edge

if.then25.cleanup85_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.then25.if.end78_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hi) #8
  %137 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -1, ptr %hi, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lo) #8
  %138 = ptrtoint ptr %lo to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 -1, ptr %lo, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bootld_entry) #8
  %139 = call ptr @memset(ptr %bootld_entry, i32 255, i32 16)
  %call34 = call fastcc i32 @qlcnic_get_flt_entry(ptr noundef %adapter, i8 noundef zeroext 114, ptr noundef nonnull %bootld_entry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end44, label %if.end44.thread

if.end44.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20) #12
  br label %for.body48.preheader

if.end44:                                         ; preds = %if.else
  %140 = getelementptr inbounds %struct.qlcnic_flt_entry, ptr %bootld_entry, i32 0, i32 5
  %141 = getelementptr inbounds %struct.qlcnic_flt_entry, ptr %bootld_entry, i32 0, i32 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 4
  %div38134 = lshr i32 %143, 3
  %144 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %143)
  %cmp46261.not = icmp ult i32 %143, 8
  br i1 %cmp46261.not, label %if.end44.if.end78.critedge136_crit_edge, label %if.end44.for.body48.preheader_crit_edge

if.end44.for.body48.preheader_crit_edge:          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body48.preheader

if.end44.if.end78.critedge136_crit_edge:          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.critedge136

for.body48.preheader:                             ; preds = %if.end44.for.body48.preheader_crit_edge, %if.end44.thread
  %size.0275 = phi i32 [ 26112, %if.end44.thread ], [ %div38134, %if.end44.for.body48.preheader_crit_edge ]
  %flashaddr.2274 = phi i32 [ 65536, %if.end44.thread ], [ %145, %if.end44.for.body48.preheader_crit_edge ]
  br label %for.body48

for.body48:                                       ; preds = %if.end66.for.body48_crit_edge, %for.body48.preheader
  %flashaddr.3263 = phi i32 [ %add67, %if.end66.for.body48_crit_edge ], [ %flashaddr.2274, %for.body48.preheader ]
  %i.2262 = phi i32 [ %inc69, %if.end66.for.body48_crit_edge ], [ 0, %for.body48.preheader ]
  %call.i = tail call i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %qlcnic_rom_fast_read.exit, label %for.body48.cleanup85.critedge138_crit_edge

for.body48.cleanup85.critedge138_crit_edge:       ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85.critedge138

qlcnic_rom_fast_read.exit:                        ; preds = %for.body48
  %call1.i = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef %flashaddr.3263, ptr noundef nonnull %lo) #8
  tail call void @qlcnic_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp50.not = icmp eq i32 %call1.i, 0
  br i1 %cmp50.not, label %if.end53, label %qlcnic_rom_fast_read.exit.cleanup85.critedge138_crit_edge

qlcnic_rom_fast_read.exit.cleanup85.critedge138_crit_edge: ; preds = %qlcnic_rom_fast_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85.critedge138

if.end53:                                         ; preds = %qlcnic_rom_fast_read.exit
  %call.i238 = tail call i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %cmp.not.i239 = icmp eq i32 %call.i238, 0
  br i1 %cmp.not.i239, label %qlcnic_rom_fast_read.exit243, label %if.end53.cleanup85.critedge137_crit_edge

if.end53.cleanup85.critedge137_crit_edge:         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85.critedge137

qlcnic_rom_fast_read.exit243:                     ; preds = %if.end53
  %add54 = add i32 %flashaddr.3263, 4
  %call1.i240 = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef %add54, ptr noundef nonnull %hi) #8
  tail call void @qlcnic_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i240)
  %cmp56.not = icmp eq i32 %call1.i240, 0
  br i1 %cmp56.not, label %if.end59, label %qlcnic_rom_fast_read.exit243.cleanup85.critedge137_crit_edge

qlcnic_rom_fast_read.exit243.cleanup85.critedge137_crit_edge: ; preds = %qlcnic_rom_fast_read.exit243
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85.critedge137

if.end59:                                         ; preds = %qlcnic_rom_fast_read.exit243
  %146 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %hi, align 4
  %conv60 = zext i32 %147 to i64
  %shl = shl nuw i64 %conv60, 32
  %148 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %lo, align 4
  %conv61 = zext i32 %149 to i64
  %or = or i64 %shl, %conv61
  %conv62 = zext i32 %flashaddr.3263 to i64
  %call63 = tail call i32 @qlcnic_pci_mem_write_2M(ptr noundef %adapter, i64 noundef %conv62, i64 noundef %or) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %cleanup85.critedge

if.end66:                                         ; preds = %if.end59
  %add67 = add i32 %flashaddr.3263, 8
  %inc69 = add nuw nsw i32 %i.2262, 1
  %exitcond270.not = icmp eq i32 %inc69, %size.0275
  br i1 %exitcond270.not, label %if.end66.if.end78.critedge136_crit_edge, label %if.end66.for.body48_crit_edge

if.end66.for.body48_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body48

if.end66.if.end78.critedge136_crit_edge:          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.critedge136

if.end78.critedge136:                             ; preds = %if.end66.if.end78.critedge136_crit_edge, %if.end44.if.end78.critedge136_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bootld_entry) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lo) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hi) #8
  br label %if.end78

if.end78:                                         ; preds = %if.end78.critedge136, %if.then25.if.end78_crit_edge, %qlcnic_get_fw_size.exit237.if.end78_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #8
  %150 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %adapter, align 8
  %hw_ops = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %151, i32 0, i32 46
  %152 = ptrtoint ptr %hw_ops to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hw_ops, align 4
  %write_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write_reg, align 4
  %call80 = tail call i32 %155(ptr noundef %adapter, i32 noundef 118489112, i32 noundef 4128) #8
  %156 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %adapter, align 8
  %hw_ops82 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %157, i32 0, i32 46
  %158 = ptrtoint ptr %hw_ops82 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hw_ops82, align 4
  %write_reg83 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %159, i32 0, i32 3
  %160 = ptrtoint ptr %write_reg83 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %write_reg83, align 4
  %call84 = tail call i32 %161(ptr noundef %adapter, i32 noundef 154140680, i32 noundef 8388638) #8
  br label %cleanup85

cleanup85.critedge:                               ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bootld_entry) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lo) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hi) #8
  br label %cleanup85

cleanup85.critedge137:                            ; preds = %qlcnic_rom_fast_read.exit243.cleanup85.critedge137_crit_edge, %if.end53.cleanup85.critedge137_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bootld_entry) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lo) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hi) #8
  br label %cleanup85

cleanup85.critedge138:                            ; preds = %qlcnic_rom_fast_read.exit.cleanup85.critedge138_crit_edge, %for.body48.cleanup85.critedge138_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bootld_entry) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lo) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hi) #8
  br label %cleanup85

cleanup85:                                        ; preds = %cleanup85.critedge138, %cleanup85.critedge137, %cleanup85.critedge, %if.end78, %if.then25.cleanup85_crit_edge, %for.body12.cleanup85_crit_edge, %for.body.cleanup85_crit_edge
  %retval.2 = phi i32 [ 0, %if.end78 ], [ -5, %if.then25.cleanup85_crit_edge ], [ -5, %cleanup85.critedge ], [ -5, %cleanup85.critedge137 ], [ -5, %cleanup85.critedge138 ], [ -5, %for.body12.cleanup85_crit_edge ], [ -5, %for.body.cleanup85_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_pci_mem_write_2M(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_request_firmware(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %major.i.i = alloca i32, align 4
  %minor.i.i = alloca i32, align 4
  %sub.i.i = alloca i32, align 4
  %err.i.i.i.i = alloca i32, align 4
  %bios.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %fw_type = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %fw_type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %fw_type, align 2
  %5 = load ptr, ptr %adapter, align 8
  %fw_type1.i35 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %fw_type1.i35 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_type1.i35, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cond.i36 = icmp ne i8 %7, -1
  %..i37 = zext i1 %cond.i36 to i8
  %8 = ptrtoint ptr %fw_type1.i35 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %..i37, ptr %fw_type1.i35, align 2
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter, align 8
  %fw_type338 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %fw_type338 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fw_type338, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp39 = icmp eq i8 %12, 1
  br i1 %cmp39, label %entry.if.then_crit_edge, label %if.else.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.else.lr.ph:                                    ; preds = %entry
  %fw5 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 64
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %file_prd_off.i.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 61
  br label %if.else

if.then:                                          ; preds = %next.backedge.if.then_crit_edge, %entry.if.then_crit_edge
  %fw = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 64
  %13 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %fw, align 4
  br label %if.end17

if.else:                                          ; preds = %next.backedge.if.else_crit_edge, %if.else.lr.ph
  %14 = phi i8 [ %12, %if.else.lr.ph ], [ %232, %next.backedge.if.else_crit_edge ]
  %conv = zext i8 %14 to i32
  %arrayidx = getelementptr [2 x ptr], ptr @fw_name, i32 0, i32 %conv
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @request_firmware(ptr noundef %fw5, ptr noundef %16, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8.not = icmp eq i32 %call, 0
  br i1 %cmp8.not, label %if.end, label %if.else.next.backedge_crit_edge

if.else.next.backedge_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %next.backedge

if.end:                                           ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bios.i) #8
  %17 = ptrtoint ptr %bios.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %bios.i, align 4, !annotation !125
  %18 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev1, align 8
  %20 = ptrtoint ptr %fw5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw5, align 4
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %fw_type3.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %fw_type3.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fw_type3.i, align 2
  %conv.i = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i = icmp eq i8 %25, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %27)
  %cmp.i.i.i = icmp ult i32 %27, 56
  br i1 %cmp.i.i.i, label %if.then.i.do.end.i.i_crit_edge, label %if.end.i.i.i

if.then.i.do.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %21, i32 0, i32 1
  %28 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i, align 4
  %num_entries.i.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_entries.i.i.i, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31) #8
  %entry_size2.i.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %29, i32 0, i32 2
  %33 = ptrtoint ptr %entry_size2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %entry_size2.i.i.i, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34) #8
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %29, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37) #8
  %mul.i.i.i = mul i32 %35, %32
  %add.i.i.i = add i32 %38, %mul.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %add.i.i.i)
  %cmp3.i.i.i = icmp ult i32 %27, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.do.end.i.i_crit_edge, label %if.end.i.i

if.end.i.i.i.do.end.i.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i.i.do.end.i.i_crit_edge, %if.then.i.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.48) #12
  br label %if.then14

if.end.i.i:                                       ; preds = %if.end.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i.i.i.i) #8
  %39 = ptrtoint ptr %err.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %err.i.i.i.i, align 4
  %hw_ops.i.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %23, i32 0, i32 46
  %40 = ptrtoint ptr %hw_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_ops.i.i.i.i, align 4
  %read_reg.i.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %read_reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_reg.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %43(ptr noundef %adapter, i32 noundef 136323116, ptr noundef nonnull %err.i.i.i.i) #8
  %44 = ptrtoint ptr %err.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %err.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %45)
  %cmp.i.i.i.i = icmp eq i32 %45, -5
  %and.i.i.i.i = and i32 %call.i.i.i.i, 1
  %retval.0.i.i.i.i = select i1 %cmp.i.i.i.i, i32 -5, i32 %and.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i.i.i.i) #8
  %46 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_entries.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp15.not.i.i.i.i = icmp eq i32 %47, 0
  br i1 %cmp15.not.i.i.i.i, label %if.end.i.i.do.end5.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i

if.end.i.i.do.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %if.end.i.i
  %48 = call i32 @llvm.bswap.i32(i32 %47) #8
  %49 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %29, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50) #8
  %52 = ptrtoint ptr %entry_size2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %entry_size2.i.i.i, align 4
  %54 = call i32 @llvm.bswap.i32(i32 %53) #8
  %umax.i.i.i.i = call i32 @llvm.umax.i32(i32 %48, i32 1) #8
  br label %for.body.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw i32 %i.016.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %umax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.cond.i.i.i.i.do.end5.i.i_crit_edge, label %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

for.cond.i.i.i.i.do.end5.i.i_crit_edge:           ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %i.016.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %mul.i.i.i.i = mul i32 %i.016.i.i.i.i, %54
  %add.i.i.i.i = add i32 %mul.i.i.i.i, %51
  %arrayidx1.i.i.i.i = getelementptr i8, ptr %29, i32 %add.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i32, ptr %arrayidx1.i.i.i.i, i32 8
  %55 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp2.i.i.i.i = icmp eq i32 %56, 0
  br i1 %cmp2.i.i.i.i, label %qlcnic_get_table_desc.exit.i.i.i, label %for.cond.i.i.i.i

qlcnic_get_table_desc.exit.i.i.i:                 ; preds = %for.body.i.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %arrayidx1.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %qlcnic_get_table_desc.exit.i.i.i.do.end5.i.i_crit_edge, label %if.end.i39.i.i

qlcnic_get_table_desc.exit.i.i.i.do.end5.i.i_crit_edge: ; preds = %qlcnic_get_table_desc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i

if.end.i39.i.i:                                   ; preds = %qlcnic_get_table_desc.exit.i.i.i
  %num_entries.i34.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %arrayidx1.i.i.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %num_entries.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_entries.i34.i.i, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58) #8
  %entry_size2.i35.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %arrayidx1.i.i.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %entry_size2.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %entry_size2.i35.i.i, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61) #8
  %63 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx1.i.i.i.i, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %64) #8
  %mul.i36.i.i = mul i32 %62, %59
  %add.i37.i.i = add i32 %65, %mul.i36.i.i
  %66 = ptrtoint ptr %fw5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fw5, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %add.i37.i.i)
  %cmp.i38.i.i = icmp ult i32 %69, %add.i37.i.i
  br i1 %cmp.i38.i.i, label %if.end.i39.i.i.do.end5.i.i_crit_edge, label %nomn.preheader.i.i.i

if.end.i39.i.i.do.end5.i.i_crit_edge:             ; preds = %if.end.i39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i

nomn.preheader.i.i.i:                             ; preds = %if.end.i39.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp658.not.i.i.i = icmp eq i32 %58, 0
  %umax.i.i.i = call i32 @llvm.umax.i32(i32 %59, i32 1) #8
  br label %nomn.i.i.i

nomn.i.i.i:                                       ; preds = %for.end.i.i.i.nomn.i.i.i_crit_edge, %nomn.preheader.i.i.i
  %mn_present.0.i.i.i = phi i32 [ 0, %for.end.i.i.i.nomn.i.i.i_crit_edge ], [ %retval.0.i.i.i.i, %nomn.preheader.i.i.i ]
  br i1 %cmp658.not.i.i.i, label %nomn.i.i.i.for.end.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

nomn.i.i.i.for.end.i.i.i_crit_edge:               ; preds = %nomn.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %nomn.i.i.i
  %70 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %adapter, align 8
  %revision_id.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %revision_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %revision_id.i.i.i, align 4
  %conv.i.i.i = zext i8 %73 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mn_present.0.i.i.i)
  %tobool13.not.i.i.i = icmp eq i32 %mn_present.0.i.i.i, 0
  %cond.i.i.i = select i1 %tobool13.not.i.i.i, i32 2, i32 1
  %sh_prom.i.i.i = zext i32 %cond.i.i.i to i64
  %shl.i.i.i = shl nuw nsw i64 1, %sh_prom.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.059.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %mul9.i.i.i = mul i32 %i.059.i.i.i, %62
  %add10.i.i.i = add i32 %mul9.i.i.i, %65
  %arrayidx.i.i.i = getelementptr i8, ptr %29, i32 %add10.i.i.i
  %add.ptr12.i.i.i = getelementptr i32, ptr %arrayidx.i.i.i, i32 10
  %74 = ptrtoint ptr %add.ptr12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr12.i.i.i, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %conv.i.i.i)
  %cmp14.i.i.i = icmp eq i32 %76, %conv.i.i.i
  br i1 %cmp14.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %add.ptr.i.i.i = getelementptr i32, ptr %arrayidx.i.i.i, i32 11
  %77 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr.i.i.i, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78) #8
  %conv16.i.i.i = zext i32 %79 to i64
  %and.i.i.i = and i64 %shl.i.i.i, %conv16.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool17.not.i.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %if.end8.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.059.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %nomn.i.i.i.for.end.i.i.i_crit_edge
  %tobool24.not.i.i.i = icmp eq i32 %mn_present.0.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %for.end.i.i.i.do.end5.i.i_crit_edge, label %for.end.i.i.i.nomn.i.i.i_crit_edge

for.end.i.i.i.nomn.i.i.i_crit_edge:               ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomn.i.i.i

for.end.i.i.i.do.end5.i.i_crit_edge:              ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i

do.end5.i.i:                                      ; preds = %for.end.i.i.i.do.end5.i.i_crit_edge, %if.end.i39.i.i.do.end5.i.i_crit_edge, %qlcnic_get_table_desc.exit.i.i.i.do.end5.i.i_crit_edge, %for.cond.i.i.i.i.do.end5.i.i_crit_edge, %if.end.i.i.do.end5.i.i_crit_edge
  %80 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev1, align 8
  %dev7.i.i = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i.i, ptr noundef nonnull @.str.51) #12
  br label %if.then14

if.end8.i.i:                                      ; preds = %land.lhs.true.i.i.i
  %82 = ptrtoint ptr %file_prd_off.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %add10.i.i.i, ptr %file_prd_off.i.i.i, align 8
  %data.i41.i.i = getelementptr inbounds %struct.firmware, ptr %67, i32 0, i32 1
  %83 = ptrtoint ptr %data.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i41.i.i, align 4
  %arrayidx.i43.i.i = getelementptr i8, ptr %84, i32 %add10.i.i.i
  %add.ptr.i44.i.i = getelementptr i32, ptr %arrayidx.i43.i.i, i32 27
  %85 = ptrtoint ptr %add.ptr.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr.i44.i.i, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86) #8
  %num_entries.i.i45.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %84, i32 0, i32 1
  %88 = ptrtoint ptr %num_entries.i.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_entries.i.i45.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp15.not.i.i46.i.i = icmp eq i32 %89, 0
  br i1 %cmp15.not.i.i46.i.i, label %if.end8.i.i.do.end13.i.i_crit_edge, label %for.body.lr.ph.i.i49.i.i

if.end8.i.i.do.end13.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i.i

for.body.lr.ph.i.i49.i.i:                         ; preds = %if.end8.i.i
  %90 = call i32 @llvm.bswap.i32(i32 %89) #8
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %84, align 4
  %93 = call i32 @llvm.bswap.i32(i32 %92) #8
  %entry_size.i.i47.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %84, i32 0, i32 2
  %94 = ptrtoint ptr %entry_size.i.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %entry_size.i.i47.i.i, align 4
  %96 = call i32 @llvm.bswap.i32(i32 %95) #8
  %umax.i.i48.i.i = call i32 @llvm.umax.i32(i32 %90, i32 1) #8
  br label %for.body.i.i59.i.i

for.cond.i.i52.i.i:                               ; preds = %for.body.i.i59.i.i
  %inc.i.i50.i.i = add nuw i32 %i.016.i.i53.i.i, 1
  %exitcond.not.i.i51.i.i = icmp eq i32 %inc.i.i50.i.i, %umax.i.i48.i.i
  br i1 %exitcond.not.i.i51.i.i, label %for.cond.i.i52.i.i.do.end13.i.i_crit_edge, label %for.cond.i.i52.i.i.for.body.i.i59.i.i_crit_edge

for.cond.i.i52.i.i.for.body.i.i59.i.i_crit_edge:  ; preds = %for.cond.i.i52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i59.i.i

for.cond.i.i52.i.i.do.end13.i.i_crit_edge:        ; preds = %for.cond.i.i52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i.i

for.body.i.i59.i.i:                               ; preds = %for.cond.i.i52.i.i.for.body.i.i59.i.i_crit_edge, %for.body.lr.ph.i.i49.i.i
  %i.016.i.i53.i.i = phi i32 [ 0, %for.body.lr.ph.i.i49.i.i ], [ %inc.i.i50.i.i, %for.cond.i.i52.i.i.for.body.i.i59.i.i_crit_edge ]
  %mul.i.i54.i.i = mul i32 %i.016.i.i53.i.i, %96
  %add.i.i55.i.i = add i32 %mul.i.i54.i.i, %93
  %arrayidx1.i.i56.i.i = getelementptr i8, ptr %84, i32 %add.i.i55.i.i
  %add.ptr.i.i57.i.i = getelementptr i32, ptr %arrayidx1.i.i56.i.i, i32 8
  %97 = ptrtoint ptr %add.ptr.i.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr.i.i57.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %98)
  %cmp2.i.i58.i.i = icmp eq i32 %98, 100663296
  br i1 %cmp2.i.i58.i.i, label %qlcnic_get_table_desc.exit.i61.i.i, label %for.cond.i.i52.i.i

qlcnic_get_table_desc.exit.i61.i.i:               ; preds = %for.body.i.i59.i.i
  %tobool.not.i60.i.i = icmp eq ptr %arrayidx1.i.i56.i.i, null
  br i1 %tobool.not.i60.i.i, label %qlcnic_get_table_desc.exit.i61.i.i.do.end13.i.i_crit_edge, label %if.end.i65.i.i

qlcnic_get_table_desc.exit.i61.i.i.do.end13.i.i_crit_edge: ; preds = %qlcnic_get_table_desc.exit.i61.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i.i

if.end.i65.i.i:                                   ; preds = %qlcnic_get_table_desc.exit.i61.i.i
  %99 = ptrtoint ptr %arrayidx1.i.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx1.i.i56.i.i, align 4
  %101 = call i32 @llvm.bswap.i32(i32 %100) #8
  %entry_size.i.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %arrayidx1.i.i56.i.i, i32 0, i32 2
  %102 = ptrtoint ptr %entry_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %entry_size.i.i.i, align 4
  %104 = call i32 @llvm.bswap.i32(i32 %103) #8
  %add.i62.i.i = add i32 %87, 1
  %mul.i63.i.i = mul i32 %104, %add.i62.i.i
  %add1.i.i.i = add i32 %mul.i63.i.i, %101
  %105 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %add1.i.i.i)
  %cmp.i64.i.i = icmp ult i32 %106, %add1.i.i.i
  br i1 %cmp.i64.i.i, label %if.end.i65.i.i.do.end13.i.i_crit_edge, label %if.end4.i.i.i

if.end.i65.i.i.do.end13.i.i_crit_edge:            ; preds = %if.end.i65.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i65.i.i
  %mul7.i.i.i = mul i32 %104, %87
  %add8.i.i.i = add i32 %mul7.i.i.i, %101
  %arrayidx9.i.i.i = getelementptr i8, ptr %84, i32 %add8.i.i.i
  %107 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx9.i.i.i, align 4
  %109 = call i32 @llvm.bswap.i32(i32 %108) #8
  %size11.i.i.i = getelementptr inbounds %struct.uni_data_desc, ptr %arrayidx9.i.i.i, i32 0, i32 1
  %110 = ptrtoint ptr %size11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %size11.i.i.i, align 4
  %112 = call i32 @llvm.bswap.i32(i32 %111) #8
  %add12.i.i.i = add i32 %112, %109
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %add12.i.i.i)
  %cmp15.i.i.i = icmp ult i32 %106, %add12.i.i.i
  br i1 %cmp15.i.i.i, label %if.end4.i.i.i.do.end13.i.i_crit_edge, label %for.body.lr.ph.i.i77.i.i

if.end4.i.i.i.do.end13.i.i_crit_edge:             ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i.i

do.end13.i.i:                                     ; preds = %if.end4.i.i.i.do.end13.i.i_crit_edge, %if.end.i65.i.i.do.end13.i.i_crit_edge, %qlcnic_get_table_desc.exit.i61.i.i.do.end13.i.i_crit_edge, %for.cond.i.i52.i.i.do.end13.i.i_crit_edge, %if.end8.i.i.do.end13.i.i_crit_edge
  %113 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev1, align 8
  %dev15.i.i = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15.i.i, ptr noundef nonnull @.str.54) #12
  br label %if.then14

for.body.lr.ph.i.i77.i.i:                         ; preds = %if.end4.i.i.i
  %add.ptr.i72.i.i = getelementptr i32, ptr %arrayidx.i43.i.i, i32 29
  %115 = ptrtoint ptr %add.ptr.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %add.ptr.i72.i.i, align 4
  %117 = call i32 @llvm.bswap.i32(i32 %116) #8
  br label %for.body.i.i87.i.i

for.cond.i.i80.i.i:                               ; preds = %for.body.i.i87.i.i
  %inc.i.i78.i.i = add nuw i32 %i.016.i.i81.i.i, 1
  %exitcond.not.i.i79.i.i = icmp eq i32 %inc.i.i78.i.i, %umax.i.i48.i.i
  br i1 %exitcond.not.i.i79.i.i, label %for.cond.i.i80.i.i.do.end21.i.i_crit_edge, label %for.cond.i.i80.i.i.for.body.i.i87.i.i_crit_edge

for.cond.i.i80.i.i.for.body.i.i87.i.i_crit_edge:  ; preds = %for.cond.i.i80.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i87.i.i

for.cond.i.i80.i.i.do.end21.i.i_crit_edge:        ; preds = %for.cond.i.i80.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21.i.i

for.body.i.i87.i.i:                               ; preds = %for.cond.i.i80.i.i.for.body.i.i87.i.i_crit_edge, %for.body.lr.ph.i.i77.i.i
  %i.016.i.i81.i.i = phi i32 [ 0, %for.body.lr.ph.i.i77.i.i ], [ %inc.i.i78.i.i, %for.cond.i.i80.i.i.for.body.i.i87.i.i_crit_edge ]
  %mul.i.i82.i.i = mul i32 %i.016.i.i81.i.i, %96
  %add.i.i83.i.i = add i32 %mul.i.i82.i.i, %93
  %arrayidx1.i.i84.i.i = getelementptr i8, ptr %84, i32 %add.i.i83.i.i
  %add.ptr.i.i85.i.i = getelementptr i32, ptr %arrayidx1.i.i84.i.i, i32 8
  %118 = ptrtoint ptr %add.ptr.i.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %add.ptr.i.i85.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %119)
  %cmp2.i.i86.i.i = icmp eq i32 %119, 117440512
  br i1 %cmp2.i.i86.i.i, label %qlcnic_get_table_desc.exit.i89.i.i, label %for.cond.i.i80.i.i

qlcnic_get_table_desc.exit.i89.i.i:               ; preds = %for.body.i.i87.i.i
  %tobool.not.i88.i.i = icmp eq ptr %arrayidx1.i.i84.i.i, null
  br i1 %tobool.not.i88.i.i, label %qlcnic_get_table_desc.exit.i89.i.i.do.end21.i.i_crit_edge, label %if.end.i95.i.i

qlcnic_get_table_desc.exit.i89.i.i.do.end21.i.i_crit_edge: ; preds = %qlcnic_get_table_desc.exit.i89.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21.i.i

if.end.i95.i.i:                                   ; preds = %qlcnic_get_table_desc.exit.i89.i.i
  %120 = ptrtoint ptr %arrayidx1.i.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx1.i.i84.i.i, align 4
  %122 = call i32 @llvm.bswap.i32(i32 %121) #8
  %entry_size.i90.i.i = getelementptr inbounds %struct.uni_table_desc, ptr %arrayidx1.i.i84.i.i, i32 0, i32 2
  %123 = ptrtoint ptr %entry_size.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %entry_size.i90.i.i, align 4
  %125 = call i32 @llvm.bswap.i32(i32 %124) #8
  %add.i91.i.i = add i32 %117, 1
  %mul.i92.i.i = mul i32 %125, %add.i91.i.i
  %add1.i93.i.i = add i32 %mul.i92.i.i, %122
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %add1.i93.i.i)
  %cmp.i94.i.i = icmp ult i32 %106, %add1.i93.i.i
  br i1 %cmp.i94.i.i, label %if.end.i95.i.i.do.end21.i.i_crit_edge, label %if.end4.i103.i.i

if.end.i95.i.i.do.end21.i.i_crit_edge:            ; preds = %if.end.i95.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21.i.i

if.end4.i103.i.i:                                 ; preds = %if.end.i95.i.i
  %mul7.i96.i.i = mul i32 %125, %117
  %add8.i97.i.i = add i32 %mul7.i96.i.i, %122
  %arrayidx9.i98.i.i = getelementptr i8, ptr %84, i32 %add8.i97.i.i
  %126 = ptrtoint ptr %arrayidx9.i98.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx9.i98.i.i, align 4
  %128 = call i32 @llvm.bswap.i32(i32 %127) #8
  %size11.i99.i.i = getelementptr inbounds %struct.uni_data_desc, ptr %arrayidx9.i98.i.i, i32 0, i32 1
  %129 = ptrtoint ptr %size11.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %size11.i99.i.i, align 4
  %131 = call i32 @llvm.bswap.i32(i32 %130) #8
  %add12.i100.i.i = add i32 %131, %128
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %add12.i100.i.i)
  %cmp15.i101.i.i = icmp ult i32 %106, %add12.i100.i.i
  br i1 %cmp15.i101.i.i, label %if.end4.i103.i.i.do.end21.i.i_crit_edge, label %if.end4.i103.i.i.if.end10.i_crit_edge

if.end4.i103.i.i.if.end10.i_crit_edge:            ; preds = %if.end4.i103.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.end4.i103.i.i.do.end21.i.i_crit_edge:          ; preds = %if.end4.i103.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21.i.i

do.end21.i.i:                                     ; preds = %if.end4.i103.i.i.do.end21.i.i_crit_edge, %if.end.i95.i.i.do.end21.i.i_crit_edge, %qlcnic_get_table_desc.exit.i89.i.i.do.end21.i.i_crit_edge, %for.cond.i.i80.i.i.do.end21.i.i_crit_edge
  %132 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pdev1, align 8
  %dev23.i.i = getelementptr inbounds %struct.pci_dev, ptr %133, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23.i.i, ptr noundef nonnull @.str.57) #12
  br label %if.then14

if.else.i:                                        ; preds = %if.end
  %data.i = getelementptr inbounds %struct.firmware, ptr %21, i32 0, i32 1
  %134 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %135, i32 16680
  %136 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2018915346, i32 %137)
  %cmp6.not.i = icmp eq i32 %137, 2018915346
  br i1 %cmp6.not.i, label %if.else.i.if.end10.i_crit_edge, label %if.else.i.if.then14_crit_edge

if.else.i.if.then14_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i.if.end10.i_crit_edge, %if.end4.i103.i.i.if.end10.i_crit_edge
  %min_size.0.i = phi i32 [ 4194303, %if.else.i.if.end10.i_crit_edge ], [ 819200, %if.end4.i103.i.i.if.end10.i_crit_edge ]
  %138 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %min_size.0.i)
  %cmp11.i = icmp ult i32 %139, %min_size.0.i
  br i1 %cmp11.i, label %if.end10.i.if.then14_crit_edge, label %if.end14.i

if.end10.i.if.then14_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.end14.i:                                       ; preds = %if.end10.i
  %140 = ptrtoint ptr %fw5 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %fw5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %major.i.i) #8
  %142 = ptrtoint ptr %major.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -1, ptr %major.i.i, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minor.i.i) #8
  %143 = ptrtoint ptr %minor.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -1, ptr %minor.i.i, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sub.i.i) #8
  %144 = ptrtoint ptr %sub.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -1, ptr %sub.i.i, align 4, !annotation !125
  %145 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %adapter, align 8
  %fw_type.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %146, i32 0, i32 11
  %147 = ptrtoint ptr %fw_type.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %fw_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %cmp.not.i.i = icmp eq i8 %148, 0
  %data.i.i73.i = getelementptr inbounds %struct.firmware, ptr %141, i32 0, i32 1
  %149 = ptrtoint ptr %data.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %data.i.i73.i, align 4
  br i1 %cmp.not.i.i, label %if.end.i79.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr i8, ptr %150, i32 4097032
  %151 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx.i.i, align 4
  %153 = call i32 @llvm.bswap.i32(i32 %152) #8
  br label %qlcnic_get_fw_version.exit.i

if.end.i79.i:                                     ; preds = %if.end14.i
  %154 = ptrtoint ptr %file_prd_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %file_prd_off.i.i.i, align 8
  %arrayidx.i.i75.i = getelementptr i8, ptr %150, i32 %155
  %add.ptr.i.i76.i = getelementptr i32, ptr %arrayidx.i.i75.i, i32 29
  %156 = ptrtoint ptr %add.ptr.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %add.ptr.i.i76.i, align 4
  %num_entries.i.i.i77.i = getelementptr inbounds %struct.uni_table_desc, ptr %150, i32 0, i32 1
  %158 = ptrtoint ptr %num_entries.i.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %num_entries.i.i.i77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp15.not.i.i.i78.i = icmp eq i32 %159, 0
  br i1 %cmp15.not.i.i.i78.i, label %if.end.i79.i.qlcnic_get_data_desc.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i82.i

if.end.i79.i.qlcnic_get_data_desc.exit.i.i_crit_edge: ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_data_desc.exit.i.i

for.body.lr.ph.i.i.i82.i:                         ; preds = %if.end.i79.i
  %160 = call i32 @llvm.bswap.i32(i32 %159) #8
  %161 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %150, align 4
  %163 = call i32 @llvm.bswap.i32(i32 %162) #8
  %entry_size.i.i.i80.i = getelementptr inbounds %struct.uni_table_desc, ptr %150, i32 0, i32 2
  %164 = ptrtoint ptr %entry_size.i.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %entry_size.i.i.i80.i, align 4
  %166 = call i32 @llvm.bswap.i32(i32 %165) #8
  %umax.i.i.i81.i = call i32 @llvm.umax.i32(i32 %160, i32 1) #8
  br label %for.body.i.i.i92.i

for.cond.i.i.i85.i:                               ; preds = %for.body.i.i.i92.i
  %inc.i.i.i83.i = add nuw i32 %i.016.i.i.i86.i, 1
  %exitcond.not.i.i.i84.i = icmp eq i32 %inc.i.i.i83.i, %umax.i.i.i81.i
  br i1 %exitcond.not.i.i.i84.i, label %for.cond.i.i.i85.i.qlcnic_get_data_desc.exit.i.i_crit_edge, label %for.cond.i.i.i85.i.for.body.i.i.i92.i_crit_edge

for.cond.i.i.i85.i.for.body.i.i.i92.i_crit_edge:  ; preds = %for.cond.i.i.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i92.i

for.cond.i.i.i85.i.qlcnic_get_data_desc.exit.i.i_crit_edge: ; preds = %for.cond.i.i.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_data_desc.exit.i.i

for.body.i.i.i92.i:                               ; preds = %for.cond.i.i.i85.i.for.body.i.i.i92.i_crit_edge, %for.body.lr.ph.i.i.i82.i
  %i.016.i.i.i86.i = phi i32 [ 0, %for.body.lr.ph.i.i.i82.i ], [ %inc.i.i.i83.i, %for.cond.i.i.i85.i.for.body.i.i.i92.i_crit_edge ]
  %mul.i.i.i87.i = mul i32 %i.016.i.i.i86.i, %166
  %add.i.i.i88.i = add i32 %mul.i.i.i87.i, %163
  %arrayidx1.i.i.i89.i = getelementptr i8, ptr %150, i32 %add.i.i.i88.i
  %add.ptr.i.i.i90.i = getelementptr i32, ptr %arrayidx1.i.i.i89.i, i32 8
  %167 = ptrtoint ptr %add.ptr.i.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %add.ptr.i.i.i90.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %168)
  %cmp2.i.i.i91.i = icmp eq i32 %168, 117440512
  br i1 %cmp2.i.i.i91.i, label %qlcnic_get_table_desc.exit.i.i94.i, label %for.cond.i.i.i85.i

qlcnic_get_table_desc.exit.i.i94.i:               ; preds = %for.body.i.i.i92.i
  %cmp.i.i93.i = icmp eq ptr %arrayidx1.i.i.i89.i, null
  br i1 %cmp.i.i93.i, label %qlcnic_get_table_desc.exit.i.i94.i.qlcnic_get_data_desc.exit.i.i_crit_edge, label %if.end.i.i98.i

qlcnic_get_table_desc.exit.i.i94.i.qlcnic_get_data_desc.exit.i.i_crit_edge: ; preds = %qlcnic_get_table_desc.exit.i.i94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_data_desc.exit.i.i

if.end.i.i98.i:                                   ; preds = %qlcnic_get_table_desc.exit.i.i94.i
  call void @__sanitizer_cov_trace_pc() #10
  %169 = call i32 @llvm.bswap.i32(i32 %157) #8
  %170 = ptrtoint ptr %arrayidx1.i.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx1.i.i.i89.i, align 4
  %172 = call i32 @llvm.bswap.i32(i32 %171) #8
  %entry_size.i.i95.i = getelementptr inbounds %struct.uni_table_desc, ptr %arrayidx1.i.i.i89.i, i32 0, i32 2
  %173 = ptrtoint ptr %entry_size.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %entry_size.i.i95.i, align 4
  %175 = call i32 @llvm.bswap.i32(i32 %174) #8
  %mul.i.i96.i = mul i32 %175, %169
  %add.i.i97.i = add i32 %mul.i.i96.i, %172
  %arrayidx1.i.i.i = getelementptr i8, ptr %150, i32 %add.i.i97.i
  br label %qlcnic_get_data_desc.exit.i.i

qlcnic_get_data_desc.exit.i.i:                    ; preds = %if.end.i.i98.i, %qlcnic_get_table_desc.exit.i.i94.i.qlcnic_get_data_desc.exit.i.i_crit_edge, %for.cond.i.i.i85.i.qlcnic_get_data_desc.exit.i.i_crit_edge, %if.end.i79.i.qlcnic_get_data_desc.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %arrayidx1.i.i.i, %if.end.i.i98.i ], [ null, %qlcnic_get_table_desc.exit.i.i94.i.qlcnic_get_data_desc.exit.i.i_crit_edge ], [ null, %if.end.i79.i.qlcnic_get_data_desc.exit.i.i_crit_edge ], [ null, %for.cond.i.i.i85.i.qlcnic_get_data_desc.exit.i.i_crit_edge ]
  %176 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %retval.0.i.i.i, align 4
  %178 = call i32 @llvm.bswap.i32(i32 %177) #8
  %add.ptr.i.i = getelementptr i8, ptr %150, i32 -17
  %size.i.i = getelementptr inbounds %struct.uni_data_desc, ptr %retval.0.i.i.i, i32 0, i32 1
  %179 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %size.i.i, align 4
  %181 = call i32 @llvm.bswap.i32(i32 %180) #8
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %178
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %181
  %call9.i.i = call i32 @strncmp(ptr noundef %add.ptr5.i.i, ptr noundef nonnull dereferenceable(5) @.str.59, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i.i, label %qlcnic_get_data_desc.exit.i.i.if.then10.i.i_crit_edge, label %for.inc.i.i

qlcnic_get_data_desc.exit.i.i.if.then10.i.i_crit_edge: ; preds = %qlcnic_get_data_desc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i.i

if.then10.i.i:                                    ; preds = %for.inc.10.i.i.if.then10.i.i_crit_edge, %for.inc.9.i.i.if.then10.i.i_crit_edge, %for.inc.8.i.i.if.then10.i.i_crit_edge, %for.inc.7.i.i.if.then10.i.i_crit_edge, %for.inc.6.i.i.if.then10.i.i_crit_edge, %for.inc.5.i.i.if.then10.i.i_crit_edge, %for.inc.4.i.i.if.then10.i.i_crit_edge, %for.inc.3.i.i.if.then10.i.i_crit_edge, %for.inc.2.i.i.if.then10.i.i_crit_edge, %for.inc.1.i.i.if.then10.i.i_crit_edge, %for.inc.i.i.if.then10.i.i_crit_edge, %qlcnic_get_data_desc.exit.i.i.if.then10.i.i_crit_edge
  %i.038.lcssa.i.i = phi i32 [ 4, %qlcnic_get_data_desc.exit.i.i.if.then10.i.i_crit_edge ], [ 5, %for.inc.i.i.if.then10.i.i_crit_edge ], [ 6, %for.inc.1.i.i.if.then10.i.i_crit_edge ], [ 7, %for.inc.2.i.i.if.then10.i.i_crit_edge ], [ 8, %for.inc.3.i.i.if.then10.i.i_crit_edge ], [ 9, %for.inc.4.i.i.if.then10.i.i_crit_edge ], [ 10, %for.inc.5.i.i.if.then10.i.i_crit_edge ], [ 11, %for.inc.6.i.i.if.then10.i.i_crit_edge ], [ 12, %for.inc.7.i.i.if.then10.i.i_crit_edge ], [ 13, %for.inc.8.i.i.if.then10.i.i_crit_edge ], [ 14, %for.inc.9.i.i.if.then10.i.i_crit_edge ], [ 15, %for.inc.10.i.i.if.then10.i.i_crit_edge ]
  %arrayidx11.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 %i.038.lcssa.i.i
  %call12.i.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %arrayidx11.i.i, ptr noundef nonnull @.str.60, ptr noundef nonnull %major.i.i, ptr noundef nonnull %minor.i.i, ptr noundef nonnull %sub.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call12.i.i)
  %cmp13.not.i.i = icmp eq i32 %call12.i.i, 3
  br i1 %cmp13.not.i.i, label %if.else.i.i, label %if.then10.i.i.qlcnic_get_fw_version.exit.i_crit_edge

if.then10.i.i.qlcnic_get_fw_version.exit.i_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_fw_version.exit.i

if.else.i.i:                                      ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %182 = ptrtoint ptr %major.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %major.i.i, align 4
  %184 = ptrtoint ptr %minor.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %minor.i.i, align 4
  %shl.i.i = shl i32 %185, 8
  %add16.i.i = add i32 %shl.i.i, %183
  %186 = ptrtoint ptr %sub.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %sub.i.i, align 4
  %shl17.i.i = shl i32 %187, 16
  %add18.i.i = add i32 %add16.i.i, %shl17.i.i
  br label %qlcnic_get_fw_version.exit.i

for.inc.i.i:                                      ; preds = %qlcnic_get_data_desc.exit.i.i
  %arrayidx8.1.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 1
  %call9.1.i.i = call i32 @strncmp(ptr noundef %arrayidx8.1.i.i, ptr noundef nonnull dereferenceable(5) @.str.59, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call9.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.if.then10.i.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.if.then10.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %arrayidx8.2.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 2
  %call9.2.i.i = call i32 @strncmp(ptr noundef %arrayidx8.2.i.i, ptr noundef nonnull dereferenceable(5) @.str.59, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %call9.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.if.then10.i.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.if.then10.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %arrayidx8.3.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 3
  %call9.3.i.i = call i32 @strncmp(ptr noundef %arrayidx8.3.i.i, ptr noundef nonnull dereferenceable(5) @.str.59, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %call9.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.if.then10.i.i_crit_edge, label %for.inc.3.i.i

for.inc.2.i.i.if.then10.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %arrayidx8.4.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 4
  %call9.4.i.i = call i32 @strncmp(ptr noundef %arrayidx8.4.i.i, ptr noundef nonnull dereferenceable(5) @.str.59, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %call9.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %for.inc.3.i.i.if.then10.i.i_crit_edge, label %for.inc.4.i.i

for.inc.3.i.i.if.then10.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %arrayidx8.5.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 5
  %call9.5.i.i = call i32 @strncmp(ptr noundef %arrayidx8.5.i.i, ptr noundef nonnull dereferenceable(5) @.str.59, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.5.i.i)
  %tobool.not.5.i.i = icmp eq i32 %call9.5.i.i, 0
  br i1 %tobool.not.5.i.i, label %for.inc.4.i.i.if.then10.i.i_crit_edge, label %for.inc.5.i.i

for.inc.4.i.i.if.then10.i.i_crit_edge:            ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %arrayidx8.6.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 6
  %call9.6.i.i = call i32 @strncmp(ptr noundef %arrayidx8.6.i.i, ptr noundef nonnull dereferenceable(5) @.str.59, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.6.i.i)
  %tobool.not.6.i.i = icmp eq i32 %call9.6.i.i, 0
  br i1 %tobool.not.6.i.i, label %for.inc.5.i.i.if.then10.i.i_crit_edge, label %for.inc.6.i.i

for.inc.5.i.i.if.then10.i.i_crit_edge:            ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i.i

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  %arrayidx8.7.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 7
  %call9.7.i.i = call i32 @strncmp(ptr noundef %arrayidx8.7.i.i, ptr noundef nonnull dereferenceable(5) @.str.59, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.7.i.i)
  %tobool.not.7.i.i = icmp eq i32 %call9.7.i.i, 0
  br i1 %tobool.not.7.i.i, label %for.inc.6.i.i.if.then10.i.i_crit_edge, label %for.inc.7.i.i

for.inc.6.i.i.if.then10.i.i_crit_edge:            ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i.i

for.inc.7.i.i:                                    ; preds = %for.inc.6.i.i
  %arrayidx8.8.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 8
  %call9.8.i.i = call i32 @strncmp(ptr noundef %arrayidx8.8.i.i, ptr noundef nonnull dereferenceable(5) @.str.59, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.8.i.i)
  %tobool.not.8.i.i = icmp eq i32 %call9.8.i.i, 0
  br i1 %tobool.not.8.i.i, label %for.inc.7.i.i.if.then10.i.i_crit_edge, label %for.inc.8.i.i

for.inc.7.i.i.if.then10.i.i_crit_edge:            ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i.i

for.inc.8.i.i:                                    ; preds = %for.inc.7.i.i
  %arrayidx8.9.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 9
  %call9.9.i.i = call i32 @strncmp(ptr noundef %arrayidx8.9.i.i, ptr noundef nonnull dereferenceable(5) @.str.59, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.9.i.i)
  %tobool.not.9.i.i = icmp eq i32 %call9.9.i.i, 0
  br i1 %tobool.not.9.i.i, label %for.inc.8.i.i.if.then10.i.i_crit_edge, label %for.inc.9.i.i

for.inc.8.i.i.if.then10.i.i_crit_edge:            ; preds = %for.inc.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i.i

for.inc.9.i.i:                                    ; preds = %for.inc.8.i.i
  %arrayidx8.10.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 10
  %call9.10.i.i = call i32 @strncmp(ptr noundef %arrayidx8.10.i.i, ptr noundef nonnull dereferenceable(5) @.str.59, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.10.i.i)
  %tobool.not.10.i.i = icmp eq i32 %call9.10.i.i, 0
  br i1 %tobool.not.10.i.i, label %for.inc.9.i.i.if.then10.i.i_crit_edge, label %for.inc.10.i.i

for.inc.9.i.i.if.then10.i.i_crit_edge:            ; preds = %for.inc.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i.i

for.inc.10.i.i:                                   ; preds = %for.inc.9.i.i
  %arrayidx8.11.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 11
  %call9.11.i.i = call i32 @strncmp(ptr noundef %arrayidx8.11.i.i, ptr noundef nonnull dereferenceable(5) @.str.59, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.11.i.i)
  %tobool.not.11.i.i = icmp eq i32 %call9.11.i.i, 0
  br i1 %tobool.not.11.i.i, label %for.inc.10.i.i.if.then10.i.i_crit_edge, label %for.inc.10.i.i.qlcnic_get_fw_version.exit.i_crit_edge

for.inc.10.i.i.qlcnic_get_fw_version.exit.i_crit_edge: ; preds = %for.inc.10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_get_fw_version.exit.i

for.inc.10.i.i.if.then10.i.i_crit_edge:           ; preds = %for.inc.10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i.i

qlcnic_get_fw_version.exit.i:                     ; preds = %for.inc.10.i.i.qlcnic_get_fw_version.exit.i_crit_edge, %if.else.i.i, %if.then10.i.i.qlcnic_get_fw_version.exit.i_crit_edge, %if.then.i.i
  %retval.0.i99.i = phi i32 [ %153, %if.then.i.i ], [ %add18.i.i, %if.else.i.i ], [ 0, %if.then10.i.i.qlcnic_get_fw_version.exit.i_crit_edge ], [ 0, %for.inc.10.i.i.qlcnic_get_fw_version.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sub.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %major.i.i) #8
  %188 = and i32 %retval.0.i99.i, 65535
  %189 = call i32 @llvm.bswap.i32(i32 %188) #8
  %shr18.i = lshr i32 %retval.0.i99.i, 16
  %add19.i = or i32 %189, %shr18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67371010, i32 %add19.i)
  %cmp20.i = icmp ult i32 %add19.i, 67371010
  br i1 %cmp20.i, label %do.end.i, label %if.end29.i

do.end.i:                                         ; preds = %qlcnic_get_fw_version.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %arrayidx23.i = getelementptr [2 x ptr], ptr @fw_name, i32 0, i32 %conv.i
  %190 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx23.i, align 4
  %shr24.i = lshr i32 %189, 24
  %shr26.i = lshr exact i32 %189, 16
  %and27.i = and i32 %shr26.i, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.43, ptr noundef %191, i32 noundef %shr24.i, i32 noundef %and27.i, i32 noundef %shr18.i) #12
  br label %if.then14

if.end29.i:                                       ; preds = %qlcnic_get_fw_version.exit.i
  %192 = ptrtoint ptr %fw5 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %fw5, align 4
  %194 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %adapter, align 8
  %fw_type.i101.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %195, i32 0, i32 11
  %196 = ptrtoint ptr %fw_type.i101.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %fw_type.i101.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %cmp.not.i102.i = icmp eq i8 %197, 0
  br i1 %cmp.not.i102.i, label %if.end.i107.i, label %if.then.i104.i

if.then.i104.i:                                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %193, i32 0, i32 1
  %198 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i103.i = getelementptr i8, ptr %199, i32 4098108
  %200 = ptrtoint ptr %arrayidx.i103.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx.i103.i, align 4
  %202 = call i32 @llvm.bswap.i32(i32 %201) #8
  br label %qlcnic_get_bios_version.exit.i

if.end.i107.i:                                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %203 = ptrtoint ptr %file_prd_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %file_prd_off.i.i.i, align 8
  %data3.i.i = getelementptr inbounds %struct.firmware, ptr %193, i32 0, i32 1
  %205 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %data3.i.i, align 4
  %arrayidx4.i.i = getelementptr i8, ptr %206, i32 %204
  %add.ptr.i105.i = getelementptr i32, ptr %arrayidx4.i.i, i32 12
  %207 = ptrtoint ptr %add.ptr.i105.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %add.ptr.i105.i, align 4
  %209 = call i32 @llvm.bswap.i32(i32 %208) #8
  %shl.i106.i = shl i32 %209, 16
  %shr.i.i = lshr i32 %209, 8
  %and.i.i = and i32 %shr.i.i, 65280
  %add.i.i = or i32 %and.i.i, %shl.i106.i
  %shr5.i.i = lshr i32 %209, 24
  %add6.i.i = or i32 %add.i.i, %shr5.i.i
  br label %qlcnic_get_bios_version.exit.i

qlcnic_get_bios_version.exit.i:                   ; preds = %if.end.i107.i, %if.then.i104.i
  %retval.0.i108.i = phi i32 [ %202, %if.then.i104.i ], [ %add6.i.i, %if.end.i107.i ]
  %call.i.i = call i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef 2, i32 noundef 136323328) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i109.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i109.i, label %if.end.i110.i, label %qlcnic_get_bios_version.exit.i.qlcnic_rom_fast_read.exit.i_crit_edge

qlcnic_get_bios_version.exit.i.qlcnic_rom_fast_read.exit.i_crit_edge: ; preds = %qlcnic_get_bios_version.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_rom_fast_read.exit.i

if.end.i110.i:                                    ; preds = %qlcnic_get_bios_version.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = call fastcc i32 @do_rom_fast_read(ptr noundef %adapter, i32 noundef 4098108, ptr noundef nonnull %bios.i) #8
  call void @qlcnic_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 2) #8
  br label %qlcnic_rom_fast_read.exit.i

qlcnic_rom_fast_read.exit.i:                      ; preds = %if.end.i110.i, %qlcnic_get_bios_version.exit.i.qlcnic_rom_fast_read.exit.i_crit_edge
  %210 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %bios.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i108.i, i32 %211)
  %cmp32.not.i = icmp eq i32 %retval.0.i108.i, %211
  br i1 %cmp32.not.i, label %qlcnic_validate_firmware.exit, label %do.end37.i

do.end37.i:                                       ; preds = %qlcnic_rom_fast_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev38.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %arrayidx40.i = getelementptr [2 x ptr], ptr @fw_name, i32 0, i32 %conv.i
  %212 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx40.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38.i, ptr noundef nonnull @.str.46, ptr noundef %213) #12
  br label %if.then14

qlcnic_validate_firmware.exit:                    ; preds = %qlcnic_rom_fast_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  call void @arm_heavy_mb() #8
  %214 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %adapter, align 8
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %215, align 8
  %reg_tbl.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %215, i32 0, i32 55
  %218 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %reg_tbl.i, align 4
  %arrayidx47.i = getelementptr i32, ptr %219, i32 15
  %220 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx47.i, align 4
  %add.ptr.i = getelementptr i8, ptr %217, i32 %221
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2018915346) #8, !srcloc !127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bios.i) #8
  br label %if.end17

if.then14:                                        ; preds = %do.end37.i, %do.end.i, %if.end10.i.if.then14_crit_edge, %if.else.i.if.then14_crit_edge, %do.end21.i.i, %do.end13.i.i, %do.end5.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bios.i) #8
  %222 = ptrtoint ptr %fw5 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %fw5, align 4
  call void @release_firmware(ptr noundef %223) #8
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #8
  br label %next.backedge

next.backedge:                                    ; preds = %if.then14, %if.else.next.backedge_crit_edge
  %224 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %adapter, align 8
  %fw_type1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %225, i32 0, i32 11
  %226 = ptrtoint ptr %fw_type1.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %fw_type1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %227)
  %cond.i = icmp ne i8 %227, -1
  %..i = zext i1 %cond.i to i8
  %228 = ptrtoint ptr %fw_type1.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %..i, ptr %fw_type1.i, align 2
  %229 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %adapter, align 8
  %fw_type3 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %230, i32 0, i32 11
  %231 = ptrtoint ptr %fw_type3 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %fw_type3, align 2
  %cmp = icmp eq i8 %232, 1
  br i1 %cmp, label %next.backedge.if.then_crit_edge, label %next.backedge.if.else_crit_edge

next.backedge.if.else_crit_edge:                  ; preds = %next.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

next.backedge.if.then_crit_edge:                  ; preds = %next.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end17:                                         ; preds = %qlcnic_validate_firmware.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_release_firmware(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 64
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 4
  tail call void @release_firmware(ptr noundef %1) #8
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @qlcnic_alloc_sw_resources.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 237, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 446, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @qlcnic_pinit_from_rom._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @qlcnic_pinit_from_rom._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 453, i32 3}
!13 = !{ptr @qlcnic_pinit_from_rom._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @qlcnic_pinit_from_rom._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 476, i32 4}
!17 = !{ptr @qlcnic_pinit_from_rom._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @qlcnic_pinit_from_rom._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 623, i32 3}
!21 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @qlcnic_setup_idc_param._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @qlcnic_setup_idc_param._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 717, i32 3}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @qlcnic_check_flash_fw_ver._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @qlcnic_check_flash_fw_ver._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 1114, i32 2}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @qlcnic_load_firmware._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @qlcnic_load_firmware._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 1172, i32 4}
!37 = !{ptr @qlcnic_load_firmware._entry.19, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @qlcnic_load_firmware._entry_ptr.21, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 322, i32 3}
!41 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @do_rom_fast_read._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @do_rom_fast_read._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 303, i32 4}
!46 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @qlcnic_wait_rom_done._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @qlcnic_wait_rom_done._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @crb_addr_xform, !50, !"crb_addr_xform", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 16, i32 21}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 570, i32 2}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @qlcnic_cmd_peg_ready._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @qlcnic_cmd_peg_ready._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 591, i32 2}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @qlcnic_receive_peg_ready._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @qlcnic_receive_peg_ready._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 654, i32 3}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @qlcnic_get_flt_entry._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @qlcnic_get_flt_entry._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 668, i32 3}
!69 = !{ptr @qlcnic_get_flt_entry._entry.33, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @qlcnic_get_flt_entry._entry_ptr.35, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 679, i32 3}
!73 = !{ptr @qlcnic_get_flt_entry._entry.36, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @qlcnic_get_flt_entry._entry_ptr.38, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 1056, i32 3}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @qlcnic_rom_lock_recovery._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @qlcnic_rom_lock_recovery._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 1102, i32 2}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 1103, i32 2}
!84 = !{ptr @fw_name, !85, !"fw_name", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 1101, i32 20}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 1229, i32 3}
!88 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @qlcnic_validate_firmware._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @qlcnic_validate_firmware._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 1238, i32 3}
!93 = !{ptr @qlcnic_validate_firmware._entry.45, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @qlcnic_validate_firmware._entry_ptr.47, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 910, i32 3}
!97 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @qlcnic_validate_unified_romimage._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @qlcnic_validate_unified_romimage._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 916, i32 3}
!102 = !{ptr @qlcnic_validate_unified_romimage._entry.50, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @qlcnic_validate_unified_romimage._entry_ptr.52, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 922, i32 3}
!106 = !{ptr @qlcnic_validate_unified_romimage._entry.53, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @qlcnic_validate_unified_romimage._entry_ptr.55, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 928, i32 3}
!110 = !{ptr @qlcnic_validate_unified_romimage._entry.56, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @qlcnic_validate_unified_romimage._entry_ptr.58, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 1022, i32 29}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c", i32 1023, i32 32}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"auto-init"}
!126 = !{i64 2157806172}
!127 = !{i64 5076866}
!128 = !{i64 2157806786}
!129 = !{i64 2157831092}
!130 = !{i64 2157831718}
!131 = !{i64 5077284}
!132 = !{i64 2157832798}
!133 = !{i64 2157833220}
!134 = !{i64 2157836335}
!135 = !{i64 2157838665}
!136 = !{i64 2157839803}
!137 = !{i64 2157866179}
!138 = !{i64 2157867047}
!139 = !{i64 2157876389}
