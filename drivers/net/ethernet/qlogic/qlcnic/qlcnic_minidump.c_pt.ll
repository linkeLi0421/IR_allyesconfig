; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qlcnic_dump_operations = type { i32, ptr }
%struct.qlcnic_82xx_dump_template_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [16 x i32], [8 x i32], [7 x i32], i32, [0 x i32] }
%struct.qlcnic_fw_dump = type { i8, i8, i32, i32, ptr, ptr, i32, ptr, i8, i32, i32, i32, i32 }
%struct.qlcnic_83xx_dump_template_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [16 x i32], [8 x i32], [16 x i32], [0 x i32] }
%struct.qlcnic_cmd_args = type { %struct.completion, %struct.list_head, %struct._cdrp_cmd, %struct._cdrp_cmd, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct._cdrp_cmd = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.qlcnic_hardware_context = type { ptr, ptr, i32, %struct.rwlock_t, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, [3 x i32], i32, i32, i32, i32, ptr, %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_fw_dump, %struct.qlcnic_fdt, %struct.qlc_83xx_reset, %struct.qlc_83xx_idc, ptr, ptr, ptr, ptr, ptr, [5 x i32], [4 x i32], ptr, i8, [6 x i8], i8, ptr, i32, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.qlcnic_nic_intr_coalesce = type { i8, i8, i16, i16, i16, i16, i16, i32 }
%struct.qlcnic_fdt = type { i32, i16, i16, i16, i16, [16 x i8], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i16, i8, [65 x i8] }
%struct.qlc_83xx_reset = type { ptr, i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, i8, i8 }
%struct.qlc_83xx_idc = type { ptr, i64, i64, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr }
%struct.qlcnic_hardware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qlcnic_adapter = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i8, i8, i8, [6 x i8], i64, i8, i8, i8, [128 x i32], i8, ptr, ptr, ptr, %struct.qlcnic_adapter_stats, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.qlcnic_filter_hash, %struct.qlcnic_filter_hash, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, ptr }
%struct.qlcnic_adapter_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.qlcnic_filter_hash = type { ptr, i8, i16, i16 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.144, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.144 = type { ptr }
%struct.qlcnic_common_entry_hdr = type { i32, i32, i32, i8, [2 x i8], i8 }
%struct.qlcnic_dump_entry = type { %struct.qlcnic_common_entry_hdr, %union.anon.150 }
%union.anon.150 = type { %struct.__crb }
%struct.__crb = type { i32, [3 x i8], i8, i32, i32, [4 x i32] }
%struct.__queue = type { i32, [2 x i8], i16, i32, i32, [8 x i8], i32, [2 x i8], i8, i8 }
%struct.__ctrl = type { i32, i16, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i32 }
%struct.__cache = type { i32, i16, i16, i32, i32, i32, i32, i32, [2 x i8], i8, i8 }
%struct.qlcnic_pex_dma_descriptor = type { i32, i32, i32, i32, i32, i32, [6 x i32] }
%struct.__pollrd = type { i32, i32, i32, i16, i16, i32, i32, i32, [4 x i8] }
%struct.__mux2 = type { i32, i32, i32, i32, i32, i32, i32, [2 x i8], i8, i8 }

@qlcnic_fw_cmd_get_minidump_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1222, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Can't get template size %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qlcnic_fw_cmd_get_minidump_temp\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qlcnic_fw_cmd_get_minidump_temp._entry_ptr = internal global ptr @qlcnic_fw_cmd_get_minidump_temp._entry, section ".printk_index", align 4
@qlcnic_fw_cmd_get_minidump_temp._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1244, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to get minidump template header %d\0A\00", [53 x i8] zeroinitializer }, align 32
@qlcnic_fw_cmd_get_minidump_temp._entry_ptr.7 = internal global ptr @qlcnic_fw_cmd_get_minidump_temp._entry.5, section ".printk_index", align 4
@qlcnic_fw_cmd_get_minidump_temp._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1255, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Template header checksum validation failed\0A\00", [52 x i8] zeroinitializer }, align 32
@qlcnic_fw_cmd_get_minidump_temp._entry_ptr.10 = internal global ptr @qlcnic_fw_cmd_get_minidump_temp._entry.8, section ".printk_index", align 4
@qlcnic_fw_cmd_get_minidump_temp._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 1278, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Default minidump capture mask 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qlcnic_fw_cmd_get_minidump_temp._entry_ptr.14 = internal global ptr @qlcnic_fw_cmd_get_minidump_temp._entry.11, section ".printk_index", align 4
@qlcnic_dump_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1309, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Dump not enabled\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qlcnic_dump_fw\00", [17 x i8] zeroinitializer }, align 32
@qlcnic_dump_fw._entry_ptr = internal global ptr @qlcnic_dump_fw._entry, section ".printk_index", align 4
@qlcnic_dump_fw._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 1315, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Previous dump not cleared, not capturing dump\0A\00", [49 x i8] zeroinitializer }, align 32
@qlcnic_dump_fw._entry_ptr.19 = internal global ptr @qlcnic_dump_fw._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Take FW dump\0A\00", [18 x i8] zeroinitializer }, align 32
@qlcnic_fw_dump_ops = internal constant { [20 x %struct.qlcnic_dump_operations], [32 x i8] } { [20 x %struct.qlcnic_dump_operations] [%struct.qlcnic_dump_operations { i32 0, ptr @qlcnic_dump_nop }, %struct.qlcnic_dump_operations { i32 1, ptr @qlcnic_dump_crb }, %struct.qlcnic_dump_operations { i32 2, ptr @qlcnic_dump_mux }, %struct.qlcnic_dump_operations { i32 3, ptr @qlcnic_dump_que }, %struct.qlcnic_dump_operations { i32 4, ptr @qlcnic_read_rom }, %struct.qlcnic_dump_operations { i32 6, ptr @qlcnic_dump_ocm }, %struct.qlcnic_dump_operations { i32 7, ptr @qlcnic_dump_ctrl }, %struct.qlcnic_dump_operations { i32 8, ptr @qlcnic_dump_l1_cache }, %struct.qlcnic_dump_operations { i32 9, ptr @qlcnic_dump_l1_cache }, %struct.qlcnic_dump_operations { i32 11, ptr @qlcnic_dump_l1_cache }, %struct.qlcnic_dump_operations { i32 12, ptr @qlcnic_dump_l1_cache }, %struct.qlcnic_dump_operations { i32 21, ptr @qlcnic_dump_l2_cache }, %struct.qlcnic_dump_operations { i32 22, ptr @qlcnic_dump_l2_cache }, %struct.qlcnic_dump_operations { i32 23, ptr @qlcnic_dump_l2_cache }, %struct.qlcnic_dump_operations { i32 24, ptr @qlcnic_dump_l2_cache }, %struct.qlcnic_dump_operations { i32 71, ptr @qlcnic_read_rom }, %struct.qlcnic_dump_operations { i32 72, ptr @qlcnic_read_memory }, %struct.qlcnic_dump_operations { i32 98, ptr @qlcnic_dump_ctrl }, %struct.qlcnic_dump_operations { i32 99, ptr @qlcnic_dump_nop }, %struct.qlcnic_dump_operations { i32 255, ptr @qlcnic_dump_nop }], [32 x i8] zeroinitializer }, align 32
@qlcnic_83xx_fw_dump_ops = internal constant { [23 x %struct.qlcnic_dump_operations], [40 x i8] } { [23 x %struct.qlcnic_dump_operations] [%struct.qlcnic_dump_operations { i32 0, ptr @qlcnic_dump_nop }, %struct.qlcnic_dump_operations { i32 1, ptr @qlcnic_dump_crb }, %struct.qlcnic_dump_operations { i32 2, ptr @qlcnic_dump_mux }, %struct.qlcnic_dump_operations { i32 3, ptr @qlcnic_dump_que }, %struct.qlcnic_dump_operations { i32 4, ptr @qlcnic_83xx_dump_rom }, %struct.qlcnic_dump_operations { i32 6, ptr @qlcnic_dump_ocm }, %struct.qlcnic_dump_operations { i32 7, ptr @qlcnic_dump_ctrl }, %struct.qlcnic_dump_operations { i32 8, ptr @qlcnic_dump_l1_cache }, %struct.qlcnic_dump_operations { i32 9, ptr @qlcnic_dump_l1_cache }, %struct.qlcnic_dump_operations { i32 11, ptr @qlcnic_dump_l1_cache }, %struct.qlcnic_dump_operations { i32 12, ptr @qlcnic_dump_l1_cache }, %struct.qlcnic_dump_operations { i32 21, ptr @qlcnic_dump_l2_cache }, %struct.qlcnic_dump_operations { i32 22, ptr @qlcnic_dump_l2_cache }, %struct.qlcnic_dump_operations { i32 23, ptr @qlcnic_dump_l2_cache }, %struct.qlcnic_dump_operations { i32 24, ptr @qlcnic_dump_l2_cache }, %struct.qlcnic_dump_operations { i32 35, ptr @qlcnic_read_pollrd }, %struct.qlcnic_dump_operations { i32 36, ptr @qlcnic_read_mux2 }, %struct.qlcnic_dump_operations { i32 37, ptr @qlcnic_read_pollrdmwr }, %struct.qlcnic_dump_operations { i32 71, ptr @qlcnic_83xx_dump_rom }, %struct.qlcnic_dump_operations { i32 72, ptr @qlcnic_read_memory }, %struct.qlcnic_dump_operations { i32 98, ptr @qlcnic_dump_ctrl }, %struct.qlcnic_dump_operations { i32 99, ptr @qlcnic_dump_nop }, %struct.qlcnic_dump_operations { i32 255, ptr @qlcnic_dump_nop }], [40 x i8] zeroinitializer }, align 32
@qlcnic_dump_fw._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.2, i32 1369, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Skipping unknown entry opcode %d\0A\00", [62 x i8] zeroinitializer }, align 32
@qlcnic_dump_fw._entry_ptr.23 = internal global ptr @qlcnic_dump_fw._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FW_DUMP=%s\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"Dump data %d bytes captured, dump data address = %p, template header size %d bytes, template address = %p\0A\00", [53 x i8] zeroinitializer }, align 32
@qlcnic_83xx_get_minidump_template._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1437, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Supports FW dump capability\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qlcnic_83xx_get_minidump_template\00", [62 x i8] zeroinitializer }, align 32
@qlcnic_83xx_get_minidump_template._entry_ptr = internal global ptr @qlcnic_83xx_get_minidump_template._entry, section ".printk_index", align 4
@qlcnic_83xx_get_minidump_template._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 1452, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Extended iSCSI dump capability and updated capture mask to 0x1f\0A\00", [63 x i8] zeroinitializer }, align 32
@qlcnic_83xx_get_minidump_template._entry_ptr.30 = internal global ptr @qlcnic_83xx_get_minidump_template._entry.28, section ".printk_index", align 4
@qlcnic_dump_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 447, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Timed out, aborting poll CRB\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qlcnic_dump_ctrl\00", [47 x i8] zeroinitializer }, align 32
@qlcnic_dump_ctrl._entry_ptr = internal global ptr @qlcnic_dump_ctrl._entry, section ".printk_index", align 4
@qlcnic_dump_ctrl._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 491, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unknown opcode\0A\00", [16 x i8] zeroinitializer }, align 32
@qlcnic_dump_ctrl._entry_ptr.35 = internal global ptr @qlcnic_dump_ctrl._entry.33, section ".printk_index", align 4
@qlcnic_dump_l2_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 643, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Timeout exceeded in %s, aborting dump\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qlcnic_dump_l2_cache\00", [43 x i8] zeroinitializer }, align 32
@qlcnic_dump_l2_cache._entry_ptr = internal global ptr @qlcnic_dump_l2_cache._entry, section ".printk_index", align 4
@qlcnic_read_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 869, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Failed to read memory dump using PEX DMA: mask[0x%x]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qlcnic_read_memory\00", [45 x i8] zeroinitializer }, align 32
@qlcnic_read_memory._entry_ptr = internal global ptr @qlcnic_read_memory._entry, section ".printk_index", align 4
@qlcnic_read_memory._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 878, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Failed to read memory dump using test agent method: mask[0x%x]\0A\00", [32 x i8] zeroinitializer }, align 32
@qlcnic_read_memory._entry_ptr.42 = internal global ptr @qlcnic_read_memory._entry.40, section ".printk_index", align 4
@qlcnic_read_memory_pexdma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 789, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: DMA engine is not available\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qlcnic_read_memory_pexdma\00", [38 x i8] zeroinitializer }, align 32
@qlcnic_read_memory_pexdma._entry_ptr = internal global ptr @qlcnic_read_memory_pexdma._entry, section ".printk_index", align 4
@qlcnic_read_memory_pexdma._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 833, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Failed to write DMA descriptor to MS memory at address 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@qlcnic_read_memory_pexdma._entry_ptr.47 = internal global ptr @qlcnic_read_memory_pexdma._entry.45, section ".printk_index", align 4
@qlcnic_read_memory_pexdma._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 839, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to start PEX DMA operation\0A\00", [61 x i8] zeroinitializer }, align 32
@qlcnic_read_memory_pexdma._entry_ptr.50 = internal global ptr @qlcnic_read_memory_pexdma._entry.48, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qlcnic_start_pex_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 760, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PEX DMA operation timed out\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qlcnic_start_pex_dma\00", [43 x i8] zeroinitializer }, align 32
@qlcnic_start_pex_dma._entry_ptr = internal global ptr @qlcnic_start_pex_dma._entry, section ".printk_index", align 4
@qlcnic_read_memory_test_agent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 673, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unaligned memory addr:0x%x size:0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qlcnic_read_memory_test_agent\00", [34 x i8] zeroinitializer }, align 32
@qlcnic_read_memory_test_agent._entry_ptr = internal global ptr @qlcnic_read_memory_test_agent._entry, section ".printk_index", align 4
@qlcnic_read_memory_test_agent._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 693, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read through agent\0A\00", [34 x i8] zeroinitializer }, align 32
@qlcnic_read_memory_test_agent._entry_ptr.57 = internal global ptr @qlcnic_read_memory_test_agent._entry.55, section ".printk_index", align 4
@qlcnic_read_pollrd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.58, ptr @.str.2, i32 974, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qlcnic_read_pollrd\00", [45 x i8] zeroinitializer }, align 32
@qlcnic_read_pollrd._entry_ptr = internal global ptr @qlcnic_read_pollrd._entry, section ".printk_index", align 4
@qlcnic_read_pollrdmwr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.59, ptr @.str.2, i32 928, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qlcnic_read_pollrdmwr\00", [42 x i8] zeroinitializer }, align 32
@qlcnic_read_pollrdmwr._entry_ptr = internal global ptr @qlcnic_read_pollrdmwr._entry, section ".printk_index", align 4
@qlcnic_valid_dump_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 900, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Invalid entry, Type:%d\09Mask:%d\09Size:%dCap_size:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qlcnic_valid_dump_entry\00", [40 x i8] zeroinitializer }, align 32
@qlcnic_valid_dump_entry._entry_ptr = internal global ptr @qlcnic_valid_dump_entry._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1221, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1242, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1254, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1276, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1309, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1314, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1319, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"qlcnic_fw_dump_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1033, i32 44 }
@___asan_gen_.122 = private unnamed_addr constant [24 x i8] c"qlcnic_83xx_fw_dump_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1056, i32 44 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1368, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1390, i32 31 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1392, i32 7 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1437, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1451, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 446, i32 6 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 490, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 641, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 867, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 876, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 789, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 832, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 839, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 760, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 671, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 692, i32 5 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 972, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 926, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.255 = private constant [56 x i8] c"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 897, i32 3 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @qlcnic_83xx_get_minidump_template._entry, ptr @qlcnic_83xx_get_minidump_template._entry.28, ptr @qlcnic_83xx_get_minidump_template._entry_ptr, ptr @qlcnic_83xx_get_minidump_template._entry_ptr.30, ptr @qlcnic_dump_ctrl._entry, ptr @qlcnic_dump_ctrl._entry.33, ptr @qlcnic_dump_ctrl._entry_ptr, ptr @qlcnic_dump_ctrl._entry_ptr.35, ptr @qlcnic_dump_fw._entry, ptr @qlcnic_dump_fw._entry.17, ptr @qlcnic_dump_fw._entry.21, ptr @qlcnic_dump_fw._entry_ptr, ptr @qlcnic_dump_fw._entry_ptr.19, ptr @qlcnic_dump_fw._entry_ptr.23, ptr @qlcnic_dump_l2_cache._entry, ptr @qlcnic_dump_l2_cache._entry_ptr, ptr @qlcnic_fw_cmd_get_minidump_temp._entry, ptr @qlcnic_fw_cmd_get_minidump_temp._entry.11, ptr @qlcnic_fw_cmd_get_minidump_temp._entry.5, ptr @qlcnic_fw_cmd_get_minidump_temp._entry.8, ptr @qlcnic_fw_cmd_get_minidump_temp._entry_ptr, ptr @qlcnic_fw_cmd_get_minidump_temp._entry_ptr.10, ptr @qlcnic_fw_cmd_get_minidump_temp._entry_ptr.14, ptr @qlcnic_fw_cmd_get_minidump_temp._entry_ptr.7, ptr @qlcnic_read_memory._entry, ptr @qlcnic_read_memory._entry.40, ptr @qlcnic_read_memory._entry_ptr, ptr @qlcnic_read_memory._entry_ptr.42, ptr @qlcnic_read_memory_pexdma._entry, ptr @qlcnic_read_memory_pexdma._entry.45, ptr @qlcnic_read_memory_pexdma._entry.48, ptr @qlcnic_read_memory_pexdma._entry_ptr, ptr @qlcnic_read_memory_pexdma._entry_ptr.47, ptr @qlcnic_read_memory_pexdma._entry_ptr.50, ptr @qlcnic_read_memory_test_agent._entry, ptr @qlcnic_read_memory_test_agent._entry.55, ptr @qlcnic_read_memory_test_agent._entry_ptr, ptr @qlcnic_read_memory_test_agent._entry_ptr.57, ptr @qlcnic_read_pollrd._entry, ptr @qlcnic_read_pollrd._entry_ptr, ptr @qlcnic_read_pollrdmwr._entry, ptr @qlcnic_read_pollrdmwr._entry_ptr, ptr @qlcnic_start_pex_dma._entry, ptr @qlcnic_start_pex_dma._entry_ptr, ptr @qlcnic_valid_dump_entry._entry, ptr @qlcnic_valid_dump_entry._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @qlcnic_fw_dump_ops, ptr @qlcnic_83xx_fw_dump_ops, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_fw_cmd_get_minidump_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_fw_cmd_get_minidump_temp._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_fw_cmd_get_minidump_temp._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_fw_cmd_get_minidump_temp._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_dump_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_dump_fw._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_fw_dump_ops to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_fw_dump_ops to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_dump_fw._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_get_minidump_template._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_get_minidump_template._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_dump_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_dump_ctrl._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_dump_l2_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_read_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_read_memory._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_read_memory_pexdma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_read_memory_pexdma._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_read_memory_pexdma._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_start_pex_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_read_memory_test_agent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_read_memory_test_agent._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_read_pollrd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_read_pollrdmwr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_valid_dump_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qlcnic_82xx_get_saved_state(ptr nocapture noundef readonly %t_hdr, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.qlcnic_82xx_dump_template_hdr, ptr %t_hdr, i32 0, i32 10, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qlcnic_82xx_set_saved_state(ptr nocapture noundef writeonly %t_hdr, i32 noundef %index, i32 noundef %value) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.qlcnic_82xx_dump_template_hdr, ptr %t_hdr, i32 0, i32 10, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qlcnic_82xx_cache_tmpl_hdr_values(ptr nocapture noundef %fw_dump) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tmpl_hdr = getelementptr inbounds %struct.qlcnic_fw_dump, ptr %fw_dump, i32 0, i32 5
  %0 = ptrtoint ptr %tmpl_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tmpl_hdr, align 4
  %size = getelementptr inbounds %struct.qlcnic_82xx_dump_template_hdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %tmpl_hdr_size = getelementptr inbounds %struct.qlcnic_fw_dump, ptr %fw_dump, i32 0, i32 9
  %4 = ptrtoint ptr %tmpl_hdr_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmpl_hdr_size, align 4
  %version = getelementptr inbounds %struct.qlcnic_82xx_dump_template_hdr, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version, align 4
  %version1 = getelementptr inbounds %struct.qlcnic_fw_dump, ptr %fw_dump, i32 0, i32 10
  %7 = ptrtoint ptr %version1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %version1, align 4
  %num_entries = getelementptr inbounds %struct.qlcnic_82xx_dump_template_hdr, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_entries, align 4
  %num_entries2 = getelementptr inbounds %struct.qlcnic_fw_dump, ptr %fw_dump, i32 0, i32 11
  %10 = ptrtoint ptr %num_entries2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %num_entries2, align 4
  %offset = getelementptr inbounds %struct.qlcnic_82xx_dump_template_hdr, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %offset3 = getelementptr inbounds %struct.qlcnic_fw_dump, ptr %fw_dump, i32 0, i32 12
  %13 = ptrtoint ptr %offset3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %offset3, align 4
  %cap_mask = getelementptr inbounds %struct.qlcnic_82xx_dump_template_hdr, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cap_mask, align 4
  %drv_cap_mask = getelementptr inbounds %struct.qlcnic_82xx_dump_template_hdr, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %drv_cap_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %drv_cap_mask, align 4
  %cap_mask5 = getelementptr inbounds %struct.qlcnic_fw_dump, ptr %fw_dump, i32 0, i32 3
  %17 = ptrtoint ptr %cap_mask5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %cap_mask5, align 4
  %capabilities = getelementptr inbounds %struct.qlcnic_82xx_dump_template_hdr, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %capabilities, align 4
  %use_pex_dma = getelementptr inbounds %struct.qlcnic_fw_dump, ptr %fw_dump, i32 0, i32 8
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = ptrtoint ptr %use_pex_dma to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %use_pex_dma, align 4
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qlcnic_82xx_get_cap_size(ptr nocapture noundef readonly %t_hdr, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.qlcnic_82xx_dump_template_hdr, ptr %t_hdr, i32 0, i32 11, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qlcnic_82xx_set_sys_info(ptr nocapture noundef writeonly %t_hdr, i32 noundef %idx, i32 noundef %value) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.qlcnic_82xx_dump_template_hdr, ptr %t_hdr, i32 0, i32 9, i32 %idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qlcnic_82xx_store_cap_mask(ptr nocapture noundef writeonly %tmpl_hdr, i32 noundef %mask) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_cap_mask = getelementptr inbounds %struct.qlcnic_82xx_dump_template_hdr, ptr %tmpl_hdr, i32 0, i32 8
  %0 = ptrtoint ptr %drv_cap_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mask, ptr %drv_cap_mask, align 4
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qlcnic_83xx_get_saved_state(ptr nocapture noundef readonly %t_hdr, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.qlcnic_83xx_dump_template_hdr, ptr %t_hdr, i32 0, i32 10, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qlcnic_83xx_set_saved_state(ptr nocapture noundef writeonly %t_hdr, i32 noundef %index, i32 noundef %value) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.qlcnic_83xx_dump_template_hdr, ptr %t_hdr, i32 0, i32 10, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qlcnic_83xx_cache_tmpl_hdr_values(ptr nocapture noundef %fw_dump) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tmpl_hdr = getelementptr inbounds %struct.qlcnic_fw_dump, ptr %fw_dump, i32 0, i32 5
  %0 = ptrtoint ptr %tmpl_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tmpl_hdr, align 4
  %size = getelementptr inbounds %struct.qlcnic_83xx_dump_template_hdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %tmpl_hdr_size = getelementptr inbounds %struct.qlcnic_fw_dump, ptr %fw_dump, i32 0, i32 9
  %4 = ptrtoint ptr %tmpl_hdr_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmpl_hdr_size, align 4
  %version = getelementptr inbounds %struct.qlcnic_83xx_dump_template_hdr, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version, align 4
  %version1 = getelementptr inbounds %struct.qlcnic_fw_dump, ptr %fw_dump, i32 0, i32 10
  %7 = ptrtoint ptr %version1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %version1, align 4
  %num_entries = getelementptr inbounds %struct.qlcnic_83xx_dump_template_hdr, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_entries, align 4
  %num_entries2 = getelementptr inbounds %struct.qlcnic_fw_dump, ptr %fw_dump, i32 0, i32 11
  %10 = ptrtoint ptr %num_entries2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %num_entries2, align 4
  %offset = getelementptr inbounds %struct.qlcnic_83xx_dump_template_hdr, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %offset3 = getelementptr inbounds %struct.qlcnic_fw_dump, ptr %fw_dump, i32 0, i32 12
  %13 = ptrtoint ptr %offset3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %offset3, align 4
  %cap_mask = getelementptr inbounds %struct.qlcnic_83xx_dump_template_hdr, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cap_mask, align 4
  %drv_cap_mask = getelementptr inbounds %struct.qlcnic_83xx_dump_template_hdr, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %drv_cap_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %drv_cap_mask, align 4
  %cap_mask5 = getelementptr inbounds %struct.qlcnic_fw_dump, ptr %fw_dump, i32 0, i32 3
  %17 = ptrtoint ptr %cap_mask5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %cap_mask5, align 4
  %18 = load i32, ptr %version1, align 4
  %and = and i32 %18, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %and)
  %cmp = icmp ugt i32 %and, 131072
  %use_pex_dma = getelementptr inbounds %struct.qlcnic_fw_dump, ptr %fw_dump, i32 0, i32 8
  %frombool = zext i1 %cmp to i8
  %19 = ptrtoint ptr %use_pex_dma to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %use_pex_dma, align 4
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qlcnic_83xx_get_cap_size(ptr nocapture noundef readonly %t_hdr, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.qlcnic_83xx_dump_template_hdr, ptr %t_hdr, i32 0, i32 11, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qlcnic_83xx_set_sys_info(ptr nocapture noundef writeonly %t_hdr, i32 noundef %idx, i32 noundef %value) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.qlcnic_83xx_dump_template_hdr, ptr %t_hdr, i32 0, i32 9, i32 %idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qlcnic_83xx_store_cap_mask(ptr nocapture noundef writeonly %tmpl_hdr, i32 noundef %mask) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_cap_mask = getelementptr inbounds %struct.qlcnic_83xx_dump_template_hdr, ptr %tmpl_hdr, i32 0, i32 8
  %0 = ptrtoint ptr %drv_cap_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mask, ptr %drv_cap_mask, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_fw_cmd_get_minidump_temp(ptr noundef %adapter) local_unnamed_addr #5 align 64 {
entry:
  %cmd.i93 = alloca %struct.qlcnic_cmd_args, align 4
  %tmp_addr_t.i = alloca i32, align 4
  %tmp_hdr.i.i = alloca %struct.qlcnic_83xx_dump_template_hdr, align 4
  %cmd.i = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %fw_dump2 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i) #13
  %2 = call ptr @memset(ptr %cmd.i, i32 255, i32 120)
  %hw_ops.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_ops.i.i, align 4
  %alloc_mbx_args.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %alloc_mbx_args.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alloc_mbx_args.i.i, align 4
  %call.i.i = call i32 %6(ptr noundef nonnull %cmd.i, ptr noundef %adapter, i32 noundef 47) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %hw_ops.i18.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 46
  %9 = ptrtoint ptr %hw_ops.i18.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_ops.i18.i, align 4
  %mbx_cmd.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %mbx_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mbx_cmd.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.if.then2.i_crit_edge, label %qlcnic_issue_cmd.exit.i

if.end.i.if.then2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then2.i

qlcnic_issue_cmd.exit.i:                          ; preds = %if.end.i
  %call.i19.i = call i32 %12(ptr noundef %adapter, ptr noundef nonnull %cmd.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %cmp.not.i = icmp eq i32 %call.i19.i, 0
  br i1 %cmp.not.i, label %qlcnic_issue_cmd.exit.i.if.end7.i_crit_edge, label %qlcnic_issue_cmd.exit.i.if.then2.i_crit_edge

qlcnic_issue_cmd.exit.i.if.then2.i_crit_edge:     ; preds = %qlcnic_issue_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then2.i

qlcnic_issue_cmd.exit.i.if.end7.i_crit_edge:      ; preds = %qlcnic_issue_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then2.i:                                       ; preds = %qlcnic_issue_cmd.exit.i.if.then2.i_crit_edge, %if.end.i.if.then2.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %tmp_hdr.i.i) #13
  %13 = call ptr @memset(ptr %tmp_hdr.i.i, i32 255, i32 208)
  %pdev.i.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %14 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i.i.i, align 8
  %device1.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %device1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device1.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %17)
  %cmp.i.i.i = icmp eq i16 %17, -32736
  br i1 %cmp.i.i.i, label %if.then2.i.qlcnic_fw_flash_get_minidump_temp_size.exit.thread.i_crit_edge, label %if.end.i.i

if.then2.i.qlcnic_fw_flash_get_minidump_temp_size.exit.thread.i_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qlcnic_fw_flash_get_minidump_temp_size.exit.thread.i

if.end.i.i:                                       ; preds = %if.then2.i
  %call1.i.i = call i32 @qlcnic_83xx_lock_flash(ptr noundef %adapter) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i20.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i20.i, label %qlcnic_fw_flash_get_minidump_temp_size.exit.i, label %if.end.i.i.qlcnic_fw_flash_get_minidump_temp_size.exit.thread.i_crit_edge

if.end.i.i.qlcnic_fw_flash_get_minidump_temp_size.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qlcnic_fw_flash_get_minidump_temp_size.exit.thread.i

qlcnic_fw_flash_get_minidump_temp_size.exit.thread.i: ; preds = %if.end.i.i.qlcnic_fw_flash_get_minidump_temp_size.exit.thread.i_crit_edge, %if.then2.i.qlcnic_fw_flash_get_minidump_temp_size.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %tmp_hdr.i.i) #13
  br label %if.then5.i

qlcnic_fw_flash_get_minidump_temp_size.exit.i:    ; preds = %if.end.i.i
  %call4.i.i = call i32 @qlcnic_83xx_lockless_flash_read32(ptr noundef %adapter, i32 noundef 5373952, ptr noundef nonnull %tmp_hdr.i.i, i32 noundef 52) #13
  call void @qlcnic_83xx_unlock_flash(ptr noundef %adapter) #13
  %size5.i.i = getelementptr inbounds %struct.qlcnic_83xx_dump_template_hdr, ptr %tmp_hdr.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %size5.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size5.i.i, align 4
  %arg.i.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arg.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %arrayidx.i.i, align 4
  %version.i.i = getelementptr inbounds %struct.qlcnic_83xx_dump_template_hdr, ptr %tmp_hdr.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %version.i.i, align 4
  %25 = load ptr, ptr %arg.i.i, align 4
  %arrayidx8.i.i = getelementptr i32, ptr %25, i32 3
  %26 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %arrayidx8.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %tmp_hdr.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool4.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool4.not.i, label %qlcnic_fw_flash_get_minidump_temp_size.exit.i.if.end7.i_crit_edge, label %qlcnic_fw_flash_get_minidump_temp_size.exit.i.if.then5.i_crit_edge

qlcnic_fw_flash_get_minidump_temp_size.exit.i.if.then5.i_crit_edge: ; preds = %qlcnic_fw_flash_get_minidump_temp_size.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5.i

qlcnic_fw_flash_get_minidump_temp_size.exit.i.if.end7.i_crit_edge: ; preds = %qlcnic_fw_flash_get_minidump_temp_size.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then5.i:                                       ; preds = %qlcnic_fw_flash_get_minidump_temp_size.exit.i.if.then5.i_crit_edge, %qlcnic_fw_flash_get_minidump_temp_size.exit.thread.i
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i) #13
  br label %do.end

if.end7.i:                                        ; preds = %qlcnic_fw_flash_get_minidump_temp_size.exit.i.if.end7.i_crit_edge, %qlcnic_issue_cmd.exit.i.if.end7.i_crit_edge
  %tobool9.not = phi i1 [ false, %qlcnic_fw_flash_get_minidump_temp_size.exit.i.if.end7.i_crit_edge ], [ true, %qlcnic_issue_cmd.exit.i.if.end7.i_crit_edge ]
  %arg.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %28, i32 2
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool11.not.i = icmp eq i32 %30, 0
  br i1 %tobool11.not.i, label %if.end7.i.do.end_crit_edge, label %if.end

if.end7.i.do.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %if.end7.i.do.end_crit_edge, %if.then5.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %entry.do.end_crit_edge ], [ -5, %if.then5.i ], [ -5, %if.end7.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i) #13
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %retval.0.i.ph) #16
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i) #13
  %call3 = call noalias ptr @vzalloc(i32 noundef %30) #17
  %tmpl_hdr = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 5
  %33 = ptrtoint ptr %tmpl_hdr to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call3, ptr %tmpl_hdr, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  br i1 %tobool9.not, label %if.end11, label %if.end7.flash_temp_crit_edge

if.end7.flash_temp_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %flash_temp

if.end11:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd.i93) #13
  %34 = call ptr @memset(ptr %cmd.i93, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_addr_t.i) #13
  %35 = ptrtoint ptr %tmp_addr_t.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %tmp_addr_t.i, align 4
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %36 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %call.i.i94 = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %30, ptr noundef nonnull %tmp_addr_t.i, i32 noundef 3264, i32 noundef 0) #13
  %tobool.not.i95 = icmp eq ptr %call.i.i94, null
  br i1 %tobool.not.i95, label %__qlcnic_fw_cmd_get_minidump_temp.exit.thread, label %if.end.i98

__qlcnic_fw_cmd_get_minidump_temp.exit.thread:    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_addr_t.i) #13
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i93) #13
  br label %flash_temp

if.end.i98:                                       ; preds = %if.end11
  %38 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter, align 8
  %hw_ops.i.i96 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %39, i32 0, i32 46
  %40 = ptrtoint ptr %hw_ops.i.i96 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_ops.i.i96, align 4
  %alloc_mbx_args.i.i97 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %alloc_mbx_args.i.i97 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %alloc_mbx_args.i.i97, align 4
  %call.i40.i = call i32 %43(ptr noundef nonnull %cmd.i93, ptr noundef %adapter, i32 noundef 48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %tobool2.not.i = icmp eq i32 %call.i40.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i98.__qlcnic_fw_cmd_get_minidump_temp.exit_crit_edge

if.end.i98.__qlcnic_fw_cmd_get_minidump_temp.exit_crit_edge: ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #15
  br label %__qlcnic_fw_cmd_get_minidump_temp.exit

if.end4.i:                                        ; preds = %if.end.i98
  %44 = ptrtoint ptr %tmp_addr_t.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tmp_addr_t.i, align 4
  %arg.i99 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd.i93, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %arg.i99 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arg.i99, align 4
  %arrayidx.i100 = getelementptr i32, ptr %47, i32 1
  %48 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %arrayidx.i100, align 4
  %49 = load ptr, ptr %arg.i99, align 4
  %arrayidx11.i = getelementptr i32, ptr %49, i32 2
  %50 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %arrayidx11.i, align 4
  %51 = load ptr, ptr %arg.i99, align 4
  %arrayidx14.i = getelementptr i32, ptr %51, i32 3
  %52 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %30, ptr %arrayidx14.i, align 4
  %53 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adapter, align 8
  %hw_ops.i41.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %54, i32 0, i32 46
  %55 = ptrtoint ptr %hw_ops.i41.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw_ops.i41.i, align 4
  %mbx_cmd.i.i101 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %mbx_cmd.i.i101 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mbx_cmd.i.i101, align 4
  %tobool.not.i.i102 = icmp eq ptr %58, null
  br i1 %tobool.not.i.i102, label %if.end4.i.if.end21.i_crit_edge, label %qlcnic_issue_cmd.exit.i103

if.end4.i.if.end21.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

qlcnic_issue_cmd.exit.i103:                       ; preds = %if.end4.i
  %call.i42.i = call i32 %58(ptr noundef %adapter, ptr noundef nonnull %cmd.i93) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %cmp.i = icmp eq i32 %call.i42.i, 0
  br i1 %cmp.i, label %for.cond.preheader.i, label %qlcnic_issue_cmd.exit.i103.if.end21.i_crit_edge

qlcnic_issue_cmd.exit.i103.if.end21.i_crit_edge:  ; preds = %qlcnic_issue_cmd.exit.i103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

for.cond.preheader.i:                             ; preds = %qlcnic_issue_cmd.exit.i103
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp1846.not.i = icmp ult i32 %30, 4
  br i1 %cmp1846.not.i, label %for.cond.preheader.i.if.end21.i_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.if.end21.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %div39.i = lshr i32 %30, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %tmp_buf.049.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call.i.i94, %for.body.preheader.i ]
  %i.048.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %buffer.addr.047.i = phi ptr [ %incdec.ptr20.i, %for.body.i.for.body.i_crit_edge ], [ %call3, %for.body.preheader.i ]
  %incdec.ptr.i = getelementptr i32, ptr %tmp_buf.049.i, i32 1
  %59 = ptrtoint ptr %tmp_buf.049.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tmp_buf.049.i, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60) #13
  %incdec.ptr20.i = getelementptr i32, ptr %buffer.addr.047.i, i32 1
  %62 = ptrtoint ptr %buffer.addr.047.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %buffer.addr.047.i, align 4
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div39.i
  br i1 %exitcond.not.i, label %for.body.i.if.end21.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.if.end21.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

if.end21.i:                                       ; preds = %for.body.i.if.end21.i_crit_edge, %for.cond.preheader.i.if.end21.i_crit_edge, %qlcnic_issue_cmd.exit.i103.if.end21.i_crit_edge, %if.end4.i.if.end21.i_crit_edge
  %retval.0.i45.i = phi i32 [ %call.i42.i, %qlcnic_issue_cmd.exit.i103.if.end21.i_crit_edge ], [ -5, %if.end4.i.if.end21.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end21.i_crit_edge ], [ 0, %for.body.i.if.end21.i_crit_edge ]
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd.i93) #13
  br label %__qlcnic_fw_cmd_get_minidump_temp.exit

__qlcnic_fw_cmd_get_minidump_temp.exit:           ; preds = %if.end21.i, %if.end.i98.__qlcnic_fw_cmd_get_minidump_temp.exit_crit_edge
  %err.0.i = phi i32 [ %retval.0.i45.i, %if.end21.i ], [ -12, %if.end.i98.__qlcnic_fw_cmd_get_minidump_temp.exit_crit_edge ]
  %63 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdev.i, align 8
  %dev23.i = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  %65 = ptrtoint ptr %tmp_addr_t.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tmp_addr_t.i, align 4
  call void @dma_free_attrs(ptr noundef %dev23.i, i32 noundef %30, ptr noundef nonnull %call.i.i94, i32 noundef %66, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_addr_t.i) #13
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd.i93) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool13.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool13.not, label %__qlcnic_fw_cmd_get_minidump_temp.exit.if.end26_crit_edge, label %__qlcnic_fw_cmd_get_minidump_temp.exit.flash_temp_crit_edge

__qlcnic_fw_cmd_get_minidump_temp.exit.flash_temp_crit_edge: ; preds = %__qlcnic_fw_cmd_get_minidump_temp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %flash_temp

__qlcnic_fw_cmd_get_minidump_temp.exit.if.end26_crit_edge: ; preds = %__qlcnic_fw_cmd_get_minidump_temp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

flash_temp:                                       ; preds = %__qlcnic_fw_cmd_get_minidump_temp.exit.flash_temp_crit_edge, %__qlcnic_fw_cmd_get_minidump_temp.exit.thread, %if.end7.flash_temp_crit_edge
  %pdev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %67 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %device1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %70)
  %cmp.i.i = icmp eq i16 %70, -32736
  br i1 %cmp.i.i, label %flash_temp.do.end20_crit_edge, label %if.end.i106

flash_temp.do.end20_crit_edge:                    ; preds = %flash_temp
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end20

if.end.i106:                                      ; preds = %flash_temp
  %call1.i = call i32 @qlcnic_83xx_lock_flash(ptr noundef %adapter) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i105 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i105, label %qlcnic_fw_flash_get_minidump_temp.exit, label %if.end.i106.do.end20_crit_edge

if.end.i106.do.end20_crit_edge:                   ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end20

qlcnic_fw_flash_get_minidump_temp.exit:           ; preds = %if.end.i106
  %div8.i = lshr i32 %30, 2
  %call4.i = call i32 @qlcnic_83xx_lockless_flash_read32(ptr noundef %adapter, i32 noundef 5373952, ptr noundef nonnull %call3, i32 noundef %div8.i) #13
  call void @qlcnic_83xx_unlock_flash(ptr noundef %adapter) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool16.not = icmp eq i32 %call4.i, 0
  br i1 %tobool16.not, label %qlcnic_fw_flash_get_minidump_temp.exit.if.end26_crit_edge, label %qlcnic_fw_flash_get_minidump_temp.exit.do.end20_crit_edge

qlcnic_fw_flash_get_minidump_temp.exit.do.end20_crit_edge: ; preds = %qlcnic_fw_flash_get_minidump_temp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end20

qlcnic_fw_flash_get_minidump_temp.exit.if.end26_crit_edge: ; preds = %qlcnic_fw_flash_get_minidump_temp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

do.end20:                                         ; preds = %qlcnic_fw_flash_get_minidump_temp.exit.do.end20_crit_edge, %if.end.i106.do.end20_crit_edge, %flash_temp.do.end20_crit_edge
  %retval.0.i107128 = phi i32 [ %call4.i, %qlcnic_fw_flash_get_minidump_temp.exit.do.end20_crit_edge ], [ -5, %flash_temp.do.end20_crit_edge ], [ -5, %if.end.i106.do.end20_crit_edge ]
  %71 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev.i.i, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i107128) #16
  %73 = ptrtoint ptr %tmpl_hdr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tmpl_hdr, align 4
  call void @vfree(ptr noundef %74) #13
  %75 = ptrtoint ptr %tmpl_hdr to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %tmpl_hdr, align 4
  br label %cleanup

if.end26:                                         ; preds = %qlcnic_fw_flash_get_minidump_temp.exit.if.end26_crit_edge, %__qlcnic_fw_cmd_get_minidump_temp.exit.if.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp12.not.i = icmp ult i32 %30, 4
  br i1 %cmp12.not.i, label %if.end26.do.end32_crit_edge, label %while.body.preheader.i

if.end26.do.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end32

while.body.preheader.i:                           ; preds = %if.end26
  %div11.i = lshr i32 %30, 2
  br label %while.body.i

while.cond1.preheader.i:                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %tobool.not16.i = icmp ult i64 %add.i, 4294967296
  %extract.t.i = trunc i64 %add.i to i32
  br i1 %tobool.not16.i, label %while.cond1.preheader.i.qlcnic_temp_checksum.exit_crit_edge, label %while.cond1.preheader.i.while.body2.i_crit_edge

while.cond1.preheader.i.while.body2.i_crit_edge:  ; preds = %while.cond1.preheader.i
  br label %while.body2.i

while.cond1.preheader.i.qlcnic_temp_checksum.exit_crit_edge: ; preds = %while.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qlcnic_temp_checksum.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %count.015.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %div11.i, %while.body.preheader.i ]
  %sum.014.i = phi i64 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %temp_buffer.addr.013.i = phi ptr [ %incdec.ptr.i108, %while.body.i.while.body.i_crit_edge ], [ %call3, %while.body.preheader.i ]
  %dec.i = add nsw i32 %count.015.i, -1
  %incdec.ptr.i108 = getelementptr i32, ptr %temp_buffer.addr.013.i, i32 1
  %76 = ptrtoint ptr %temp_buffer.addr.013.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %temp_buffer.addr.013.i, align 4
  %conv.i = zext i32 %77 to i64
  %add.i = add i64 %sum.014.i, %conv.i
  %cmp.i109 = icmp ugt i32 %count.015.i, 1
  br i1 %cmp.i109, label %while.body.i.while.body.i_crit_edge, label %while.cond1.preheader.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body2.i:                                    ; preds = %while.body2.i.while.body2.i_crit_edge, %while.cond1.preheader.i.while.body2.i_crit_edge
  %sum.117.i = phi i64 [ %add4.i, %while.body2.i.while.body2.i_crit_edge ], [ %add.i, %while.cond1.preheader.i.while.body2.i_crit_edge ]
  %shr.i = lshr i64 %sum.117.i, 32
  %and.i = and i64 %sum.117.i, 4294967295
  %add4.i = add nuw nsw i64 %and.i, %shr.i
  %tobool.not.i110 = icmp ult i64 %add4.i, 4294967296
  br i1 %tobool.not.i110, label %while.end5.loopexit.i, label %while.body2.i.while.body2.i_crit_edge

while.body2.i.while.body2.i_crit_edge:            ; preds = %while.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body2.i

while.end5.loopexit.i:                            ; preds = %while.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  %extract.t19.i = trunc i64 %add4.i to i32
  br label %qlcnic_temp_checksum.exit

qlcnic_temp_checksum.exit:                        ; preds = %while.end5.loopexit.i, %while.cond1.preheader.i.qlcnic_temp_checksum.exit_crit_edge
  %sum.1.lcssa.off0.i = phi i32 [ %extract.t.i, %while.cond1.preheader.i.qlcnic_temp_checksum.exit_crit_edge ], [ %extract.t19.i, %while.end5.loopexit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sum.1.lcssa.off0.i)
  %tobool28.not = icmp eq i32 %sum.1.lcssa.off0.i, -1
  br i1 %tobool28.not, label %if.end37, label %qlcnic_temp_checksum.exit.do.end32_crit_edge

qlcnic_temp_checksum.exit.do.end32_crit_edge:     ; preds = %qlcnic_temp_checksum.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end32

do.end32:                                         ; preds = %qlcnic_temp_checksum.exit.do.end32_crit_edge, %if.end26.do.end32_crit_edge
  %pdev33 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %78 = ptrtoint ptr %pdev33 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev33, align 8
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.9) #16
  %80 = ptrtoint ptr %tmpl_hdr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tmpl_hdr, align 4
  call void @vfree(ptr noundef %81) #13
  %82 = ptrtoint ptr %tmpl_hdr to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %tmpl_hdr, align 4
  br label %cleanup

if.end37:                                         ; preds = %qlcnic_temp_checksum.exit
  %83 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %84, i32 0, i32 46
  %85 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw_ops.i, align 4
  %cache_tmpl_hdr_values.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %86, i32 0, i32 47
  %87 = ptrtoint ptr %cache_tmpl_hdr_values.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cache_tmpl_hdr_values.i, align 4
  call void %88(ptr noundef %fw_dump2) #13
  %use_pex_dma = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 8
  %89 = ptrtoint ptr %use_pex_dma to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %use_pex_dma, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool38.not = icmp eq i8 %90, 0
  br i1 %tobool38.not, label %if.end37.do.end51_crit_edge, label %if.then39

if.end37.do.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end51

if.then39:                                        ; preds = %if.end37
  %dma_buffer = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 7
  %91 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %dma_buffer, align 4
  %pdev40 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %92 = ptrtoint ptr %pdev40 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdev40, align 8
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  %phys_addr = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 6
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev41, i32 noundef 65536, ptr noundef %phys_addr, i32 noundef 3264, i32 noundef 0) #13
  %tobool43.not = icmp eq ptr %call.i, null
  br i1 %tobool43.not, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %use_pex_dma to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %use_pex_dma, align 4
  br label %do.end51

if.else:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  %95 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i, ptr %dma_buffer, align 4
  br label %do.end51

do.end51:                                         ; preds = %if.else, %if.then44, %if.end37.do.end51_crit_edge
  %pdev52 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %96 = ptrtoint ptr %pdev52 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdev52, align 8
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  %cap_mask = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 3
  %98 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cap_mask, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev53, ptr noundef nonnull @.str.12, i32 noundef %99) #16
  %call54 = call i32 @qlcnic_enable_fw_dump_state(ptr noundef %adapter) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %do.end32, %do.end20, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end20 ], [ -5, %do.end32 ], [ 0, %do.end51 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_enable_fw_dump_state(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_dump_fw(ptr noundef %adapter) local_unnamed_addr #5 align 64 {
entry:
  %mesg = alloca [64 x i8], align 1
  %msg = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %fw_dump1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %mesg) #13
  %4 = call ptr @memset(ptr %mesg, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #13
  %5 = getelementptr inbounds [2 x ptr], ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mesg, ptr %msg, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %5, align 4
  %tmpl_hdr6 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 5
  %8 = ptrtoint ptr %tmpl_hdr6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tmpl_hdr6, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @qlcnic_check_fw_dump_state(ptr noundef %adapter) #13
  br i1 %call, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef nonnull @.str.15) #16
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %12 = ptrtoint ptr %fw_dump1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fw_dump1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  br i1 %tobool11.not, label %do.body19, label %do.end15

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17, ptr noundef nonnull @.str.18) #16
  br label %cleanup

do.body19:                                        ; preds = %if.end10
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 8
  %msg_enable = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %17, i32 0, i32 35
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %do.body19.do.end25_crit_edge, label %if.then22

do.body19.do.end25_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end25

if.then22:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #15
  %netdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %21, ptr noundef nonnull @.str.20) #16
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.body19.do.end25_crit_edge
  %cap_mask = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 3
  %22 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cap_mask, align 4
  %and28 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.end25.for.inc_crit_edge, label %if.then30

do.end25.for.inc_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then30:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %25, i32 0, i32 46
  %26 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_ops.i, align 4
  %get_cap_size.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %27, i32 0, i32 48
  %28 = ptrtoint ptr %get_cap_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_cap_size.i, align 4
  %call.i = call i32 %29(ptr noundef nonnull %9, i32 noundef 1) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %do.end25.for.inc_crit_edge
  %dump_size.1 = phi i32 [ %call.i, %if.then30 ], [ 0, %do.end25.for.inc_crit_edge ]
  %30 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cap_mask, align 4
  %and28.1 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.1)
  %tobool29.not.1 = icmp eq i32 %and28.1, 0
  br i1 %tobool29.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then30.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then30.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter, align 8
  %hw_ops.i.1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %33, i32 0, i32 46
  %34 = ptrtoint ptr %hw_ops.i.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_ops.i.1, align 4
  %get_cap_size.i.1 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %35, i32 0, i32 48
  %36 = ptrtoint ptr %get_cap_size.i.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_cap_size.i.1, align 4
  %call.i.1 = call i32 %37(ptr noundef nonnull %9, i32 noundef 2) #13
  %add.1 = add i32 %call.i.1, %dump_size.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then30.1, %for.inc.for.inc.1_crit_edge
  %dump_size.1.1 = phi i32 [ %add.1, %if.then30.1 ], [ %dump_size.1, %for.inc.for.inc.1_crit_edge ]
  %38 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cap_mask, align 4
  %and28.2 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.2)
  %tobool29.not.2 = icmp eq i32 %and28.2, 0
  br i1 %tobool29.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then30.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then30.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter, align 8
  %hw_ops.i.2 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %41, i32 0, i32 46
  %42 = ptrtoint ptr %hw_ops.i.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_ops.i.2, align 4
  %get_cap_size.i.2 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %43, i32 0, i32 48
  %44 = ptrtoint ptr %get_cap_size.i.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_cap_size.i.2, align 4
  %call.i.2 = call i32 %45(ptr noundef nonnull %9, i32 noundef 3) #13
  %add.2 = add i32 %call.i.2, %dump_size.1.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then30.2, %for.inc.1.for.inc.2_crit_edge
  %dump_size.1.2 = phi i32 [ %add.2, %if.then30.2 ], [ %dump_size.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %46 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cap_mask, align 4
  %and28.3 = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.3)
  %tobool29.not.3 = icmp eq i32 %and28.3, 0
  br i1 %tobool29.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then30.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

if.then30.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adapter, align 8
  %hw_ops.i.3 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %49, i32 0, i32 46
  %50 = ptrtoint ptr %hw_ops.i.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw_ops.i.3, align 4
  %get_cap_size.i.3 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %51, i32 0, i32 48
  %52 = ptrtoint ptr %get_cap_size.i.3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %get_cap_size.i.3, align 4
  %call.i.3 = call i32 %53(ptr noundef nonnull %9, i32 noundef 4) #13
  %add.3 = add i32 %call.i.3, %dump_size.1.2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then30.3, %for.inc.2.for.inc.3_crit_edge
  %dump_size.1.3 = phi i32 [ %add.3, %if.then30.3 ], [ %dump_size.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %54 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cap_mask, align 4
  %and28.4 = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.4)
  %tobool29.not.4 = icmp eq i32 %and28.4, 0
  br i1 %tobool29.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then30.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

if.then30.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter, align 8
  %hw_ops.i.4 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %57, i32 0, i32 46
  %58 = ptrtoint ptr %hw_ops.i.4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw_ops.i.4, align 4
  %get_cap_size.i.4 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %59, i32 0, i32 48
  %60 = ptrtoint ptr %get_cap_size.i.4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %get_cap_size.i.4, align 4
  %call.i.4 = call i32 %61(ptr noundef nonnull %9, i32 noundef 5) #13
  %add.4 = add i32 %call.i.4, %dump_size.1.3
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then30.4, %for.inc.3.for.inc.4_crit_edge
  %dump_size.1.4 = phi i32 [ %add.4, %if.then30.4 ], [ %dump_size.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %62 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cap_mask, align 4
  %and28.5 = and i32 %63, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.5)
  %tobool29.not.5 = icmp eq i32 %and28.5, 0
  br i1 %tobool29.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then30.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5

if.then30.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adapter, align 8
  %hw_ops.i.5 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %65, i32 0, i32 46
  %66 = ptrtoint ptr %hw_ops.i.5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_ops.i.5, align 4
  %get_cap_size.i.5 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %67, i32 0, i32 48
  %68 = ptrtoint ptr %get_cap_size.i.5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %get_cap_size.i.5, align 4
  %call.i.5 = call i32 %69(ptr noundef nonnull %9, i32 noundef 6) #13
  %add.5 = add i32 %call.i.5, %dump_size.1.4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then30.5, %for.inc.4.for.inc.5_crit_edge
  %dump_size.1.5 = phi i32 [ %add.5, %if.then30.5 ], [ %dump_size.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %70 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cap_mask, align 4
  %and28.6 = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.6)
  %tobool29.not.6 = icmp eq i32 %and28.6, 0
  br i1 %tobool29.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then30.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6

if.then30.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adapter, align 8
  %hw_ops.i.6 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %73, i32 0, i32 46
  %74 = ptrtoint ptr %hw_ops.i.6 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw_ops.i.6, align 4
  %get_cap_size.i.6 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %75, i32 0, i32 48
  %76 = ptrtoint ptr %get_cap_size.i.6 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %get_cap_size.i.6, align 4
  %call.i.6 = call i32 %77(ptr noundef nonnull %9, i32 noundef 7) #13
  %add.6 = add i32 %call.i.6, %dump_size.1.5
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then30.6, %for.inc.5.for.inc.6_crit_edge
  %dump_size.1.6 = phi i32 [ %add.6, %if.then30.6 ], [ %dump_size.1.5, %for.inc.5.for.inc.6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dump_size.1.6)
  %tobool33.not = icmp eq i32 %dump_size.1.6, 0
  br i1 %tobool33.not, label %for.inc.6.cleanup_crit_edge, label %if.end35

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end35:                                         ; preds = %for.inc.6
  %call36 = call noalias ptr @vzalloc(i32 noundef %dump_size.1.6) #17
  %data = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 4
  %78 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call36, ptr %data, align 4
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %if.end35.cleanup_crit_edge, label %if.end40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %size = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 2
  %79 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %dump_size.1.6, ptr %size, align 4
  %num_entries = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 11
  %80 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_entries, align 4
  %offset = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 12
  %82 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %offset, align 4
  %84 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %adapter, align 8
  %hw_ops.i216 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %85, i32 0, i32 46
  %86 = ptrtoint ptr %hw_ops.i216 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw_ops.i216, align 4
  %set_sys_info.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %87, i32 0, i32 49
  %88 = ptrtoint ptr %set_sys_info.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %set_sys_info.i, align 4
  call void %89(ptr noundef nonnull %9, i32 noundef 0, i32 noundef 328514) #13
  %fw_version = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 62
  %90 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %fw_version, align 4
  %92 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adapter, align 8
  %hw_ops.i217 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %93, i32 0, i32 46
  %94 = ptrtoint ptr %hw_ops.i217 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw_ops.i217, align 4
  %set_sys_info.i218 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %95, i32 0, i32 49
  %96 = ptrtoint ptr %set_sys_info.i218 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %set_sys_info.i218, align 4
  call void %97(ptr noundef nonnull %9, i32 noundef 1, i32 noundef %91) #13
  %98 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 8
  %100 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %device1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %101)
  %cmp.i = icmp eq i16 %101, -32736
  br i1 %cmp.i, label %if.end40.if.end48_crit_edge, label %if.else

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.else:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %pci_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 6
  %102 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %pci_func, align 1
  %idxprom = zext i8 %103 to i32
  %arrayidx = getelementptr %struct.qlcnic_83xx_dump_template_hdr, ptr %9, i32 0, i32 12, i32 %idxprom
  %104 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx, align 4
  %saved_state = getelementptr inbounds %struct.qlcnic_83xx_dump_template_hdr, ptr %9, i32 0, i32 10
  %arrayidx44 = getelementptr %struct.qlcnic_83xx_dump_template_hdr, ptr %9, i32 0, i32 10, i32 3
  %106 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %arrayidx44, align 4
  %107 = load i8, ptr %pci_func, align 1
  %conv = zext i8 %107 to i32
  %108 = ptrtoint ptr %saved_state to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %conv, ptr %saved_state, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.end40.if.end48_crit_edge
  %fw_dump_ops.0 = phi ptr [ @qlcnic_83xx_fw_dump_ops, %if.else ], [ @qlcnic_fw_dump_ops, %if.end40.if.end48_crit_edge ]
  %ops_cnt.0 = phi i32 [ 23, %if.else ], [ 20, %if.end40.if.end48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp227.not = icmp eq i32 %81, 0
  br i1 %cmp227.not, label %if.end48.for.end114_crit_edge, label %if.end48.for.body51_crit_edge

if.end48.for.body51_crit_edge:                    ; preds = %if.end48
  br label %for.body51

if.end48.for.end114_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end114

for.body51:                                       ; preds = %for.inc112.for.body51_crit_edge, %if.end48.for.body51_crit_edge
  %buffer.0231 = phi ptr [ %buffer.1, %for.inc112.for.body51_crit_edge ], [ %call36, %if.end48.for.body51_crit_edge ]
  %i.1230 = phi i32 [ %inc113, %for.inc112.for.body51_crit_edge ], [ 0, %if.end48.for.body51_crit_edge ]
  %buf_offset.0229 = phi i32 [ %buf_offset.1, %for.inc112.for.body51_crit_edge ], [ 0, %if.end48.for.body51_crit_edge ]
  %entry_offset.0228 = phi i32 [ %entry_offset.1, %for.inc112.for.body51_crit_edge ], [ %83, %if.end48.for.body51_crit_edge ]
  %add.ptr = getelementptr i8, ptr %9, i32 %entry_offset.0228
  %mask = getelementptr inbounds %struct.qlcnic_common_entry_hdr, ptr %add.ptr, i32 0, i32 5
  %109 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %mask, align 1
  %conv52 = zext i8 %110 to i32
  %111 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cap_mask, align 4
  %and54 = and i32 %112, %conv52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.then56, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body51
  %113 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %add.ptr, align 1
  br label %while.body

if.then56:                                        ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.qlcnic_common_entry_hdr, ptr %add.ptr, i32 0, i32 3
  %115 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %flags, align 1
  %117 = or i8 %116, -128
  store i8 %117, ptr %flags, align 1
  %offset61 = getelementptr inbounds %struct.qlcnic_common_entry_hdr, ptr %add.ptr, i32 0, i32 1
  %118 = ptrtoint ptr %offset61 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %offset61, align 1
  br label %for.inc112

while.body:                                       ; preds = %if.end71.while.body_crit_edge, %while.cond.preheader
  %ops_index.0226 = phi i32 [ 0, %while.cond.preheader ], [ %inc72, %if.end71.while.body_crit_edge ]
  %arrayidx67 = getelementptr %struct.qlcnic_dump_operations, ptr %fw_dump_ops.0, i32 %ops_index.0226
  %120 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %121)
  %cmp68 = icmp eq i32 %114, %121
  br i1 %cmp68, label %while.end, label %if.end71

if.end71:                                         ; preds = %while.body
  %inc72 = add nuw nsw i32 %ops_index.0226, 1
  %exitcond.not = icmp eq i32 %inc72, %ops_cnt.0
  br i1 %exitcond.not, label %if.end71.do.end78_crit_edge, label %if.end71.while.body_crit_edge

if.end71.while.body_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end71.do.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end78

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %ops_index.0226, i32 %ops_cnt.0)
  %cmp73 = icmp eq i32 %ops_index.0226, %ops_cnt.0
  br i1 %cmp73, label %while.end.do.end78_crit_edge, label %if.end89

while.end.do.end78_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end78

do.end78:                                         ; preds = %while.end.do.end78_crit_edge, %if.end71.do.end78_crit_edge
  %122 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %add.ptr, align 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.22, i32 noundef %123) #16
  %flags82 = getelementptr inbounds %struct.qlcnic_common_entry_hdr, ptr %add.ptr, i32 0, i32 3
  %124 = ptrtoint ptr %flags82 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %flags82, align 1
  %126 = or i8 %125, -128
  store i8 %126, ptr %flags82, align 1
  %offset87 = getelementptr inbounds %struct.qlcnic_common_entry_hdr, ptr %add.ptr, i32 0, i32 1
  %127 = ptrtoint ptr %offset87 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %offset87, align 1
  br label %for.inc112

if.end89:                                         ; preds = %while.end
  %handler = getelementptr %struct.qlcnic_dump_operations, ptr %fw_dump_ops.0, i32 %ops_index.0226, i32 1
  %129 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %handler, align 4
  %call91 = call i32 %130(ptr noundef %adapter, ptr noundef %add.ptr, ptr noundef %buffer.0231) #13
  %cap_size.i = getelementptr inbounds %struct.qlcnic_common_entry_hdr, ptr %add.ptr, i32 0, i32 2
  %131 = ptrtoint ptr %cap_size.i to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %cap_size.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %call91)
  %cmp.not.i = icmp eq i32 %132, %call91
  br i1 %cmp.not.i, label %if.end103, label %if.then94

if.then94:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  %133 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %add.ptr, align 1
  %135 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %mask, align 1
  %conv.i = zext i8 %136 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.60, i32 noundef %134, i32 noundef %conv.i, i32 noundef %call91, i32 noundef %132) #16
  %flags96 = getelementptr inbounds %struct.qlcnic_common_entry_hdr, ptr %add.ptr, i32 0, i32 3
  %137 = ptrtoint ptr %flags96 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %flags96, align 1
  %139 = or i8 %138, -128
  store i8 %139, ptr %flags96, align 1
  %offset101 = getelementptr inbounds %struct.qlcnic_common_entry_hdr, ptr %add.ptr, i32 0, i32 1
  %140 = ptrtoint ptr %offset101 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %offset101, align 1
  br label %for.inc112

if.end103:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  %142 = ptrtoint ptr %cap_size.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %cap_size.i, align 1
  %add105 = add i32 %143, %buf_offset.0229
  %offset107 = getelementptr inbounds %struct.qlcnic_common_entry_hdr, ptr %add.ptr, i32 0, i32 1
  %144 = ptrtoint ptr %offset107 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %offset107, align 1
  %146 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %data, align 4
  %add.ptr110 = getelementptr i8, ptr %147, i32 %add105
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1386, i32 noundef 0) #13
  %call.i219 = call i32 @__cond_resched() #13
  br label %for.inc112

for.inc112:                                       ; preds = %if.end103, %if.then94, %do.end78, %if.then56
  %.pn = phi i32 [ %128, %do.end78 ], [ %145, %if.end103 ], [ %141, %if.then94 ], [ %119, %if.then56 ]
  %buf_offset.1 = phi i32 [ %buf_offset.0229, %do.end78 ], [ %add105, %if.end103 ], [ %buf_offset.0229, %if.then94 ], [ %buf_offset.0229, %if.then56 ]
  %buffer.1 = phi ptr [ %buffer.0231, %do.end78 ], [ %add.ptr110, %if.end103 ], [ %buffer.0231, %if.then94 ], [ %buffer.0231, %if.then56 ]
  %entry_offset.1 = add i32 %.pn, %entry_offset.0228
  %inc113 = add nuw i32 %i.1230, 1
  %exitcond232.not = icmp eq i32 %inc113, %81
  br i1 %exitcond232.not, label %for.inc112.for.end114_crit_edge, label %for.inc112.for.body51_crit_edge

for.inc112.for.body51_crit_edge:                  ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body51

for.inc112.for.end114_crit_edge:                  ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end114

for.end114:                                       ; preds = %for.inc112.for.end114_crit_edge, %if.end48.for.end114_crit_edge
  %148 = ptrtoint ptr %fw_dump1 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 1, ptr %fw_dump1, align 4
  %netdev117 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %149 = ptrtoint ptr %netdev117 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %netdev117, align 4
  %call119 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mesg, i32 noundef 64, ptr noundef nonnull @.str.24, ptr noundef %150)
  %151 = ptrtoint ptr %netdev117 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %netdev117, align 4
  %153 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %size, align 4
  %155 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %data, align 4
  %tmpl_hdr_size = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 9
  %157 = ptrtoint ptr %tmpl_hdr_size to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %tmpl_hdr_size, align 4
  %159 = ptrtoint ptr %tmpl_hdr6 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %tmpl_hdr6, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %152, ptr noundef nonnull @.str.25, i32 noundef %154, ptr noundef %156, i32 noundef %158, ptr noundef %160) #16
  %call125 = call i32 @kobject_uevent_env(ptr noundef %dev2, i32 noundef 2, ptr noundef nonnull %msg) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end114, %if.end35.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end15 ], [ 0, %for.end114 ], [ -5, %do.end ], [ -5, %entry.cleanup_crit_edge ], [ -5, %for.inc.6.cleanup_crit_edge ], [ -12, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mesg) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qlcnic_check_fw_dump_state(ptr noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_83xx_get_minidump_template(ptr noundef %adapter) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %pdev3 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %2 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev3, align 8
  %fw_version = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 62
  %4 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_version, align 4
  %call = tail call i32 @qlcnic_83xx_get_fw_version(ptr noundef %adapter) #13
  %tmpl_hdr = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 5
  %6 = ptrtoint ptr %tmpl_hdr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tmpl_hdr, align 4
  %cmp = icmp eq ptr %7, null
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp4 = icmp ugt i32 %call, %5
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.then, label %entry.cleanup26_crit_edge

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup26

if.then:                                          ; preds = %entry
  tail call void @vfree(ptr noundef %7) #13
  %8 = ptrtoint ptr %tmpl_hdr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %tmpl_hdr, align 4
  %9 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev3, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30672, i16 %12)
  %cmp.i = icmp eq i16 %12, -30672
  br i1 %cmp.i, label %qlcnic_83xx_md_check_extended_dump_capability.exit, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

qlcnic_83xx_md_check_extended_dump_capability.exit: ; preds = %if.then
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %extra_capability.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %14, i32 0, i32 41
  %15 = ptrtoint ptr %extra_capability.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %extra_capability.i, align 8
  %and.i = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %qlcnic_83xx_md_check_extended_dump_capability.exit.if.end_crit_edge, label %if.then8

qlcnic_83xx_md_check_extended_dump_capability.exit.if.end_crit_edge: ; preds = %qlcnic_83xx_md_check_extended_dump_capability.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then8:                                         ; preds = %qlcnic_83xx_md_check_extended_dump_capability.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 @qlcnic_83xx_extend_md_capab(ptr noundef %adapter) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br label %if.end

if.end:                                           ; preds = %if.then8, %qlcnic_83xx_md_check_extended_dump_capability.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %extended.0.off0 = phi i1 [ %tobool.not, %if.then8 ], [ false, %qlcnic_83xx_md_check_extended_dump_capability.exit.if.end_crit_edge ], [ false, %if.then.if.end_crit_edge ]
  %call10 = tail call i32 @qlcnic_fw_cmd_get_minidump_temp(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end, label %if.end.cleanup26_crit_edge

if.end.cleanup26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup26

do.end:                                           ; preds = %if.end
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.26) #16
  br i1 %extended.0.off0, label %if.then15, label %do.end.cleanup26_crit_edge

do.end.cleanup26_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup26

if.then15:                                        ; preds = %do.end
  %17 = ptrtoint ptr %tmpl_hdr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tmpl_hdr, align 4
  %tobool17.not = icmp eq ptr %18, null
  br i1 %tobool17.not, label %if.then15.cleanup26_crit_edge, label %if.end19

if.then15.cleanup26_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup26

if.end19:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %drv_cap_mask = getelementptr inbounds %struct.qlcnic_83xx_dump_template_hdr, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %drv_cap_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 31, ptr %drv_cap_mask, align 4
  %cap_mask = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 3
  %20 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 31, ptr %cap_mask, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.29) #16
  br label %cleanup26

cleanup26:                                        ; preds = %if.end19, %if.then15.cleanup26_crit_edge, %do.end.cleanup26_crit_edge, %if.end.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_get_fw_version(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_extend_md_capab(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_free_mbx_args(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_lock_flash(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_lockless_flash_read32(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_unlock_flash(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qlcnic_dump_nop(ptr nocapture noundef readnone %adapter, ptr nocapture noundef %entry1, ptr nocapture noundef readnone %buffer) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.qlcnic_common_entry_hdr, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %2 = or i8 %1, -128
  store i8 %2, ptr %flags, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_dump_crb(ptr noundef %adapter, ptr nocapture noundef readonly %entry1, ptr nocapture noundef writeonly %buffer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %no_ops = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %no_ops to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %no_ops, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13.not = icmp eq i32 %1, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %region = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1
  %2 = ptrtoint ptr %region to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %region, align 1
  %stride = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %addr.016 = phi i32 [ %3, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %buffer.addr.014 = phi ptr [ %buffer, %for.body.lr.ph ], [ %incdec.ptr3, %for.body.for.body_crit_edge ]
  %call = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %addr.016) #13
  %4 = tail call i32 @llvm.bswap.i32(i32 %addr.016)
  %incdec.ptr = getelementptr i32, ptr %buffer.addr.014, i32 1
  %5 = ptrtoint ptr %buffer.addr.014 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %buffer.addr.014, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %call)
  %incdec.ptr3 = getelementptr i32, ptr %buffer.addr.014, i32 2
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %incdec.ptr, align 4
  %8 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %stride, align 1
  %conv = zext i8 %9 to i32
  %add = add i32 %addr.016, %conv
  %inc = add nuw i32 %i.015, 1
  %10 = ptrtoint ptr %no_ops to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %no_ops, align 1
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo = shl i32 %11, 3
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_dump_mux(ptr noundef %adapter, ptr nocapture noundef readonly %entry1, ptr nocapture noundef writeonly %buffer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %region = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1
  %no_ops = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %no_ops to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %no_ops, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not = icmp eq i32 %1, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %val2 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %val2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %val2, align 1
  %read_addr = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 2
  %val_stride = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %val.020 = phi i32 [ %3, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %loop.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %buffer.addr.018 = phi ptr [ %buffer, %for.body.lr.ph ], [ %incdec.ptr4, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %region to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %region, align 1
  %call = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %5, i32 noundef %val.020) #13
  %6 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %read_addr, align 1
  %call3 = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %7) #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %val.020)
  %incdec.ptr = getelementptr i32, ptr %buffer.addr.018, i32 1
  %9 = ptrtoint ptr %buffer.addr.018 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %buffer.addr.018, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %call3)
  %incdec.ptr4 = getelementptr i32, ptr %buffer.addr.018, i32 2
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %incdec.ptr, align 4
  %12 = ptrtoint ptr %val_stride to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %val_stride, align 1
  %add = add i32 %13, %val.020
  %inc = add nuw i32 %loop.019, 1
  %14 = ptrtoint ptr %no_ops to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %no_ops, align 1
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo = shl i32 %15, 3
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_dump_que(ptr noundef %adapter, ptr nocapture noundef readonly %entry1, ptr nocapture noundef writeonly %buffer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %region = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1
  %read_addr = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 2
  %read_addr_cnt = getelementptr inbounds %struct.__queue, ptr %region, i32 0, i32 8
  %0 = ptrtoint ptr %read_addr_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %read_addr_cnt, align 1
  %conv = zext i8 %1 to i32
  %no_ops = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 4
  %2 = ptrtoint ptr %no_ops to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %no_ops, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp34.not = icmp eq i32 %3, 0
  br i1 %cmp34.not, label %entry.for.end14_crit_edge, label %for.body.lr.ph

entry.for.end14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end14

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp530.not = icmp eq i8 %1, 0
  %read_addr_stride = getelementptr inbounds %struct.__queue, ptr %region, i32 0, i32 9
  %stride = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %que_id.037 = phi i32 [ 0, %for.body.lr.ph ], [ %add11, %for.end.for.body_crit_edge ]
  %loop.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc13, %for.end.for.body_crit_edge ]
  %buffer.addr.035 = phi ptr [ %buffer, %for.body.lr.ph ], [ %buffer.addr.1.lcssa, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %region to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %region, align 1
  %call = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %5, i32 noundef %que_id.037) #13
  br i1 %cmp530.not, label %for.body.for.end_crit_edge, label %for.body7.preheader

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body7.preheader:                              ; preds = %for.body
  %6 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %read_addr, align 1
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body7.preheader
  %addr.033 = phi i32 [ %add, %for.body7.for.body7_crit_edge ], [ %7, %for.body7.preheader ]
  %i.032 = phi i32 [ %inc, %for.body7.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %buffer.addr.131 = phi ptr [ %incdec.ptr, %for.body7.for.body7_crit_edge ], [ %buffer.addr.035, %for.body7.preheader ]
  %call8 = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %addr.033) #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %call8)
  %incdec.ptr = getelementptr i32, ptr %buffer.addr.131, i32 1
  %9 = ptrtoint ptr %buffer.addr.131 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %buffer.addr.131, align 4
  %10 = ptrtoint ptr %read_addr_stride to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %read_addr_stride, align 1
  %conv9 = zext i8 %11 to i32
  %add = add i32 %addr.033, %conv9
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body7.for.end_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7

for.body7.for.end_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body7.for.end_crit_edge, %for.body.for.end_crit_edge
  %buffer.addr.1.lcssa = phi ptr [ %buffer.addr.035, %for.body.for.end_crit_edge ], [ %incdec.ptr, %for.body7.for.end_crit_edge ]
  %12 = ptrtoint ptr %stride to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %stride, align 1
  %conv10 = zext i16 %13 to i32
  %add11 = add i32 %que_id.037, %conv10
  %inc13 = add nuw i32 %loop.036, 1
  %14 = ptrtoint ptr %no_ops to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %no_ops, align 1
  %cmp = icmp ult i32 %inc13, %15
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end14_crit_edge

for.end.for.end14_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end14

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end14:                                        ; preds = %for.end.for.end14_crit_edge, %entry.for.end14_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end14_crit_edge ], [ %15, %for.end.for.end14_crit_edge ]
  %mul = shl nuw nsw i32 %conv, 2
  %mul16 = mul i32 %mul, %.lcssa
  ret i32 %mul16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_read_rom(ptr noundef %adapter, ptr nocapture noundef readonly %entry1, ptr nocapture noundef writeonly %buffer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %addr2 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %addr2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %addr2, align 1
  %size3 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %size3 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %size3, align 1
  %div48 = lshr i32 %3, 2
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %reg_tbl49 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 55
  %8 = ptrtoint ptr %reg_tbl49 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_tbl49, align 4
  %arrayidx50 = getelementptr i32, ptr %9, i32 21
  %10 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx50, align 4
  %add.ptr51 = getelementptr i8, ptr %7, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #13, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not52 = icmp eq i32 %12, 0
  br i1 %tobool.not52, label %entry.if.then_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

entry.if.then_crit_edge:                          ; preds = %entry
  br label %if.then

if.then:                                          ; preds = %if.then.if.then_crit_edge, %entry.if.then_crit_edge
  %count.053 = phi i32 [ %inc, %if.then.if.then_crit_edge ], [ 0, %entry.if.then_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #13
  %inc = add nuw nsw i32 %count.053, 1
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %14, i32 0, i32 55
  %17 = ptrtoint ptr %reg_tbl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_tbl, align 4
  %arrayidx = getelementptr i32, ptr %18, i32 21
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %count.053)
  %cmp = icmp ult i32 %count.053, 999
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then.if.then_crit_edge, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then.if.then_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

do.body:                                          ; preds = %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !130
  tail call void @arm_heavy_mb() #13
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %pci_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pci_func, align 1
  %conv = zext i8 %25 to i32
  %26 = shl nuw i32 %conv, 24
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %23, align 8
  %reg_tbl10 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %23, i32 0, i32 55
  %29 = ptrtoint ptr %reg_tbl10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_tbl10, align 4
  %arrayidx11 = getelementptr i32, ptr %30, i32 3
  %31 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx11, align 4
  %add.ptr12 = getelementptr i8, ptr %28, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %26) #13, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp1354.not = icmp ult i32 %3, 4
  br i1 %cmp1354.not, label %do.body.for.end_crit_edge, label %for.body.preheader

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %do.body
  %umax = call i32 @llvm.umax.i32(i32 %div48, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %buffer.addr.057 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %buffer, %for.body.preheader ]
  %i.056 = phi i32 [ %inc20, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %fl_addr.055 = phi i32 [ %add19, %for.body.for.body_crit_edge ], [ %1, %for.body.preheader ]
  %and = and i32 %fl_addr.055, -65536
  %call15 = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef 1108410416, i32 noundef %and) #13
  %conv17 = and i32 %fl_addr.055, 65535
  %add = or i32 %conv17, 1108672512
  %call18 = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %add) #13
  %add19 = add i32 %fl_addr.055, 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %call18)
  %incdec.ptr = getelementptr i32, ptr %buffer.addr.057, i32 1
  %34 = ptrtoint ptr %buffer.addr.057 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %buffer.addr.057, align 4
  %inc20 = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc20, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body.for.end_crit_edge
  %35 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %reg_tbl26 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %36, i32 0, i32 55
  %39 = ptrtoint ptr %reg_tbl26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_tbl26, align 4
  %arrayidx27 = getelementptr i32, ptr %40, i32 22
  %41 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx27, align 4
  %add.ptr28 = getelementptr i8, ptr %38, i32 %42
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #13, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  %44 = ptrtoint ptr %size3 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %size3, align 1
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_dump_ocm(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %entry1, ptr nocapture noundef writeonly %buffer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %no_ops = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %no_ops to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %no_ops, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not = icmp eq i32 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %read_addr = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %read_addr, align 1
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %read_addr_stride = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %buffer.addr.013 = phi ptr [ %buffer, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %addr.011 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr3, %for.body.for.body_crit_edge ]
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr.011) #13, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %incdec.ptr = getelementptr i32, ptr %buffer.addr.013, i32 1
  %9 = ptrtoint ptr %buffer.addr.013 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %buffer.addr.013, align 4
  %10 = ptrtoint ptr %read_addr_stride to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %read_addr_stride, align 1
  %add.ptr3 = getelementptr i8, ptr %addr.011, i32 %11
  %inc = add nuw i32 %i.012, 1
  %12 = ptrtoint ptr %no_ops to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %no_ops, align 1
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo = shl i32 %13, 2
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_dump_ctrl(ptr noundef %adapter, ptr nocapture noundef readonly %entry1, ptr nocapture noundef readnone %buffer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %tmpl_hdr = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 5
  %2 = ptrtoint ptr %tmpl_hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tmpl_hdr, align 8
  %no_ops3 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 4
  %4 = ptrtoint ptr %no_ops3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %no_ops3, align 1
  %conv4 = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4)
  %cmp202.not = icmp eq i32 %conv4, 0
  br i1 %cmp202.not, label %entry.cleanup_crit_edge, label %for.cond6.preheader.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond6.preheader.lr.ph:                        ; preds = %entry
  %region = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1
  %6 = ptrtoint ptr %region to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %region, align 1
  %opcode = getelementptr inbounds %struct.__ctrl, ptr %region, i32 0, i32 9
  %index_v65 = getelementptr inbounds %struct.__ctrl, ptr %region, i32 0, i32 8
  %shl_val = getelementptr inbounds %struct.__ctrl, ptr %region, i32 0, i32 7
  %shr_val = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5
  %val271 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 2
  %val377 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 3
  %val179 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 1
  %index_a57 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1, i32 2
  %timeout23 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1
  %pdev85 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %stride = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 2
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.end.for.cond6.preheader_crit_edge, %for.cond6.preheader.lr.ph
  %addr.0205 = phi i32 [ %7, %for.cond6.preheader.lr.ph ], [ %add89, %for.end.for.cond6.preheader_crit_edge ]
  %timeout.0204 = phi i32 [ 0, %for.cond6.preheader.lr.ph ], [ %timeout.3, %for.end.for.cond6.preheader_crit_edge ]
  %i.0203 = phi i32 [ 0, %for.cond6.preheader.lr.ph ], [ %inc91, %for.end.for.cond6.preheader_crit_edge ]
  br label %for.body9

for.body9:                                        ; preds = %for.inc.for.body9_crit_edge, %for.cond6.preheader
  %addr.1201 = phi i32 [ %addr.0205, %for.cond6.preheader ], [ %addr.4, %for.inc.for.body9_crit_edge ]
  %timeout.1200 = phi i32 [ %timeout.0204, %for.cond6.preheader ], [ %timeout.3, %for.inc.for.body9_crit_edge ]
  %k.0199 = phi i32 [ 0, %for.cond6.preheader ], [ %inc87, %for.inc.for.body9_crit_edge ]
  %8 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %opcode, align 1
  %conv10 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 1, %k.0199
  %and = and i32 %shl, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body9.for.inc_crit_edge, label %if.end

for.body9.for.inc_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body9
  %10 = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shl, label %do.end84 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 4, label %sw.bb15
    i32 8, label %sw.bb19
    i32 16, label %while.cond.preheader
    i32 32, label %sw.bb41
    i32 64, label %sw.bb49
    i32 128, label %sw.bb64
  ]

while.cond.preheader:                             ; preds = %if.end
  %11 = ptrtoint ptr %timeout23 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %timeout23, align 1
  %conv24193 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %timeout.1200, i32 %conv24193)
  %cmp25.not194 = icmp sgt i32 %timeout.1200, %conv24193
  br i1 %cmp25.not194, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %val179 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %val179, align 1
  %call = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %addr.1201, i32 noundef %14) #13
  br label %for.inc

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %addr.1201) #13
  %call14 = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %addr.1201, i32 noundef %call13) #13
  br label %for.inc

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call16 = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %addr.1201) #13
  %15 = ptrtoint ptr %val271 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %val271, align 1
  %and17 = and i32 %16, %call16
  %call18 = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %addr.1201, i32 noundef %and17) #13
  br label %for.inc

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call20 = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %addr.1201) #13
  %17 = ptrtoint ptr %val377 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %val377, align 1
  %or = or i32 %18, %call20
  %call21 = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %addr.1201, i32 noundef %or) #13
  br label %for.inc

while.body:                                       ; preds = %if.end34.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %timeout.2195 = phi i32 [ %inc, %if.end34.while.body_crit_edge ], [ %timeout.1200, %while.cond.preheader.while.body_crit_edge ]
  %call27 = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %addr.1201) #13
  %19 = ptrtoint ptr %val271 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %val271, align 1
  %and29 = and i32 %20, %call27
  %21 = ptrtoint ptr %val179 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %val179, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and29, i32 %22)
  %cmp31 = icmp eq i32 %and29, %22
  br i1 %cmp31, label %while.body.while.end_crit_edge, label %if.end34

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end34:                                         ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #13
  %inc = add nsw i32 %timeout.2195, 1
  %23 = ptrtoint ptr %timeout23 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %timeout23, align 1
  %conv24 = zext i16 %24 to i32
  %cmp25.not.not = icmp slt i32 %timeout.2195, %conv24
  br i1 %cmp25.not.not, label %if.end34.while.body_crit_edge, label %if.end34.while.end_crit_edge

if.end34.while.end_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end34.while.body_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %if.end34.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %timeout.2.lcssa = phi i32 [ %timeout.1200, %while.cond.preheader.while.end_crit_edge ], [ %timeout.2195, %while.body.while.end_crit_edge ], [ %inc, %if.end34.while.end_crit_edge ]
  %25 = ptrtoint ptr %timeout23 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %timeout23, align 1
  %conv36 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %timeout.2.lcssa, i32 %conv36)
  %cmp37 = icmp sgt i32 %timeout.2.lcssa, %conv36
  br i1 %cmp37, label %do.end, label %while.end.for.inc_crit_edge

while.end.for.inc_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %pdev85 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev85, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.31) #16
  br label %cleanup

sw.bb41:                                          ; preds = %if.end
  %29 = ptrtoint ptr %index_a57 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %index_a57, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool43.not = icmp eq i8 %30, 0
  br i1 %tobool43.not, label %sw.bb41.if.end46_crit_edge, label %if.then44

sw.bb41.if.end46_crit_edge:                       ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then44:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #15
  %conv42 = zext i8 %30 to i32
  %31 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %32, i32 0, i32 46
  %33 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_ops.i, align 4
  %get_saved_state.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %34, i32 0, i32 45
  %35 = ptrtoint ptr %get_saved_state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_saved_state.i, align 4
  %call.i = tail call i32 %36(ptr noundef %3, i32 noundef %conv42) #13
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %sw.bb41.if.end46_crit_edge
  %addr.2 = phi i32 [ %call.i, %if.then44 ], [ %addr.1201, %sw.bb41.if.end46_crit_edge ]
  %call47 = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %addr.2) #13
  %37 = ptrtoint ptr %index_v65 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %index_v65, align 1
  %conv48 = zext i8 %38 to i32
  %39 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter, align 8
  %hw_ops.i179 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %40, i32 0, i32 46
  %41 = ptrtoint ptr %hw_ops.i179 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_ops.i179, align 4
  %set_saved_state.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %42, i32 0, i32 46
  %43 = ptrtoint ptr %set_saved_state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_saved_state.i, align 4
  tail call void %44(ptr noundef %3, i32 noundef %conv48, i32 noundef %call47) #13
  br label %for.inc

sw.bb49:                                          ; preds = %if.end
  %45 = ptrtoint ptr %index_v65 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %index_v65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool52.not = icmp eq i8 %46, 0
  br i1 %tobool52.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #15
  %conv51 = zext i8 %46 to i32
  %47 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adapter, align 8
  %hw_ops.i180 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %48, i32 0, i32 46
  %49 = ptrtoint ptr %hw_ops.i180 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_ops.i180, align 4
  %get_saved_state.i181 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %50, i32 0, i32 45
  %51 = ptrtoint ptr %get_saved_state.i181 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %get_saved_state.i181, align 4
  %call.i182 = tail call i32 %52(ptr noundef %3, i32 noundef %conv51) #13
  br label %if.end56

if.else:                                          ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %val179 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %val179, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then53
  %data.0 = phi i32 [ %call.i182, %if.then53 ], [ %54, %if.else ]
  %55 = ptrtoint ptr %index_a57 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %index_a57, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool59.not = icmp eq i8 %56, 0
  br i1 %tobool59.not, label %if.end56.if.end62_crit_edge, label %if.then60

if.end56.if.end62_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  %conv58 = zext i8 %56 to i32
  %57 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter, align 8
  %hw_ops.i183 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %58, i32 0, i32 46
  %59 = ptrtoint ptr %hw_ops.i183 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw_ops.i183, align 4
  %get_saved_state.i184 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %60, i32 0, i32 45
  %61 = ptrtoint ptr %get_saved_state.i184 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %get_saved_state.i184, align 4
  %call.i185 = tail call i32 %62(ptr noundef %3, i32 noundef %conv58) #13
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end56.if.end62_crit_edge
  %addr.3 = phi i32 [ %call.i185, %if.then60 ], [ %addr.1201, %if.end56.if.end62_crit_edge ]
  %call63 = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %addr.3, i32 noundef %data.0) #13
  br label %for.inc

sw.bb64:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %index_v65 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %index_v65, align 1
  %conv66 = zext i8 %64 to i32
  %65 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adapter, align 8
  %hw_ops.i186 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %66, i32 0, i32 46
  %67 = ptrtoint ptr %hw_ops.i186 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw_ops.i186, align 4
  %get_saved_state.i187 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %68, i32 0, i32 45
  %69 = ptrtoint ptr %get_saved_state.i187 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %get_saved_state.i187, align 4
  %call.i188 = tail call i32 %70(ptr noundef %3, i32 noundef %conv66) #13
  %71 = ptrtoint ptr %shl_val to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %shl_val, align 1
  %conv68 = zext i8 %72 to i32
  %shl69 = shl i32 %call.i188, %conv68
  %73 = ptrtoint ptr %shr_val to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %shr_val, align 1
  %conv70 = zext i8 %74 to i32
  %shr = lshr i32 %shl69, %conv70
  %75 = ptrtoint ptr %val271 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %val271, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool72.not = icmp eq i32 %76, 0
  %and75 = select i1 %tobool72.not, i32 -1, i32 %76
  %spec.select = and i32 %and75, %shr
  %77 = ptrtoint ptr %val377 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %val377, align 1
  %or78 = or i32 %spec.select, %78
  %79 = ptrtoint ptr %val179 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %val179, align 1
  %add = add i32 %or78, %80
  %81 = ptrtoint ptr %index_v65 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %index_v65, align 1
  %conv81 = zext i8 %82 to i32
  %83 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adapter, align 8
  %hw_ops.i189 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %84, i32 0, i32 46
  %85 = ptrtoint ptr %hw_ops.i189 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw_ops.i189, align 4
  %set_saved_state.i190 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %86, i32 0, i32 46
  %87 = ptrtoint ptr %set_saved_state.i190 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %set_saved_state.i190, align 4
  tail call void %88(ptr noundef %3, i32 noundef %conv81, i32 noundef %add) #13
  br label %for.inc

do.end84:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %89 = ptrtoint ptr %pdev85 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdev85, align 8
  %dev86 = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev86, ptr noundef nonnull @.str.34) #16
  br label %for.inc

for.inc:                                          ; preds = %do.end84, %sw.bb64, %if.end62, %if.end46, %while.end.for.inc_crit_edge, %sw.bb19, %sw.bb15, %sw.bb12, %sw.bb, %for.body9.for.inc_crit_edge
  %timeout.3 = phi i32 [ %timeout.1200, %do.end84 ], [ %timeout.1200, %sw.bb64 ], [ %timeout.1200, %if.end62 ], [ %timeout.1200, %if.end46 ], [ %timeout.2.lcssa, %while.end.for.inc_crit_edge ], [ %timeout.1200, %sw.bb19 ], [ %timeout.1200, %sw.bb15 ], [ %timeout.1200, %sw.bb12 ], [ %timeout.1200, %sw.bb ], [ %timeout.1200, %for.body9.for.inc_crit_edge ]
  %addr.4 = phi i32 [ %addr.1201, %do.end84 ], [ %addr.1201, %sw.bb64 ], [ %addr.3, %if.end62 ], [ %addr.2, %if.end46 ], [ %addr.1201, %while.end.for.inc_crit_edge ], [ %addr.1201, %sw.bb19 ], [ %addr.1201, %sw.bb15 ], [ %addr.1201, %sw.bb12 ], [ %addr.1201, %sw.bb ], [ %addr.1201, %for.body9.for.inc_crit_edge ]
  %inc87 = add nuw nsw i32 %k.0199, 1
  %exitcond.not = icmp eq i32 %inc87, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body9_crit_edge

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body9

for.end:                                          ; preds = %for.inc
  %91 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %stride, align 1
  %conv88 = zext i8 %92 to i32
  %add89 = add i32 %addr.4, %conv88
  %inc91 = add nuw nsw i32 %i.0203, 1
  %exitcond206.not = icmp eq i32 %inc91, %conv4
  br i1 %exitcond206.not, label %for.end.cleanup_crit_edge, label %for.end.for.cond6.preheader_crit_edge

for.end.for.cond6.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond6.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_dump_l1_cache(ptr noundef %adapter, ptr nocapture noundef readonly %entry1, ptr nocapture noundef writeonly %buffer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %region = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1
  %no_ops = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %no_ops to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %no_ops, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp36.not = icmp eq i32 %1, 0
  br i1 %cmp36.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %init_tag_val = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %init_tag_val to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %init_tag_val, align 1
  %conv = zext i16 %3 to i32
  %ctrl_addr = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5
  %ctrl_val = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 1
  %read_addr = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 2
  %read_addr_num = getelementptr inbounds %struct.__cache, ptr %region, i32 0, i32 9
  %read_addr_stride = getelementptr inbounds %struct.__cache, ptr %region, i32 0, i32 10
  %stride = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.lr.ph
  %val.039 = phi i32 [ %conv, %for.body.lr.ph ], [ %add11, %while.end.for.body_crit_edge ]
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %while.end.for.body_crit_edge ]
  %buffer.addr.037 = phi ptr [ %buffer, %for.body.lr.ph ], [ %buffer.addr.1.lcssa, %while.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %region to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %region, align 1
  %call = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %5, i32 noundef %val.039) #13
  %6 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ctrl_addr, align 1
  %8 = ptrtoint ptr %ctrl_val to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %ctrl_val, align 1
  %conv5 = and i32 %9, 65535
  %call6 = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %7, i32 noundef %conv5) #13
  %10 = ptrtoint ptr %read_addr_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %read_addr_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not32 = icmp eq i8 %11, 0
  br i1 %tobool.not32, label %for.body.while.end_crit_edge, label %while.body.preheader

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.preheader:                             ; preds = %for.body
  %conv7 = zext i8 %11 to i32
  %12 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %read_addr, align 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %addr.035 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ %13, %while.body.preheader ]
  %cnt.034 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %conv7, %while.body.preheader ]
  %buffer.addr.133 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %buffer.addr.037, %while.body.preheader ]
  %call8 = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %addr.035) #13
  %14 = tail call i32 @llvm.bswap.i32(i32 %call8)
  %incdec.ptr = getelementptr i32, ptr %buffer.addr.133, i32 1
  %15 = ptrtoint ptr %buffer.addr.133 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %buffer.addr.133, align 4
  %16 = ptrtoint ptr %read_addr_stride to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %read_addr_stride, align 1
  %conv9 = zext i8 %17 to i32
  %add = add i32 %addr.035, %conv9
  %dec = add nsw i32 %cnt.034, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.body.while.end_crit_edge
  %buffer.addr.1.lcssa = phi ptr [ %buffer.addr.037, %for.body.while.end_crit_edge ], [ %incdec.ptr, %while.body.while.end_crit_edge ]
  %18 = ptrtoint ptr %stride to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %stride, align 1
  %conv10 = zext i16 %19 to i32
  %add11 = add i32 %val.039, %conv10
  %inc = add nuw i32 %i.038, 1
  %20 = ptrtoint ptr %no_ops to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %no_ops, align 1
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %while.end.for.body_crit_edge, label %for.end.loopexit

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end.loopexit:                                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo = shl i32 %21, 2
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %read_addr_num13 = getelementptr inbounds %struct.__cache, ptr %region, i32 0, i32 9
  %22 = ptrtoint ptr %read_addr_num13 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %read_addr_num13, align 1
  %conv14 = zext i8 %23 to i32
  %mul15 = mul i32 %.lcssa, %conv14
  ret i32 %mul15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_dump_l2_cache(ptr noundef %adapter, ptr nocapture noundef readonly %entry1, ptr nocapture noundef writeonly %buffer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %region = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1
  %ctrl_val = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 1
  %no_ops = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %no_ops to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %no_ops, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp91.not = icmp eq i32 %1, 0
  br i1 %cmp91.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %ctrl_val to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %ctrl_val, align 1
  %4 = lshr i32 %3, 24
  %shr = lshr i32 %3, 16
  %conv3 = trunc i32 %shr to i8
  %init_tag_val = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %init_tag_val to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %init_tag_val, align 1
  %conv = zext i16 %6 to i32
  %ctrl_addr = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3)
  %tobool18.not = icmp eq i8 %conv3, 0
  %conv23 = and i32 %shr, 255
  %read_addr = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 2
  %read_addr_num = getelementptr inbounds %struct.__cache, ptr %region, i32 0, i32 9
  %read_addr_stride = getelementptr inbounds %struct.__cache, ptr %region, i32 0, i32 10
  %stride = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1, i32 2
  %7 = trunc i32 %4 to i8
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.lr.ph
  %time_out.095 = phi i8 [ 0, %for.body.lr.ph ], [ %time_out.3, %while.end.for.body_crit_edge ]
  %val.094 = phi i32 [ %conv, %for.body.lr.ph ], [ %add45, %while.end.for.body_crit_edge ]
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc46, %while.end.for.body_crit_edge ]
  %buffer.addr.092 = phi ptr [ %buffer, %for.body.lr.ph ], [ %buffer.addr.1.lcssa, %while.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %region to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %region, align 1
  %call = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %9, i32 noundef %val.094) #13
  %10 = ptrtoint ptr %ctrl_val to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %ctrl_val, align 1
  %conv13 = trunc i32 %11 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv13)
  %tobool.not = icmp eq i16 %conv13, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %ctrl_addr, align 1
  %conv16 = and i32 %11, 65535
  %call17 = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %13, i32 noundef %conv16) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  br i1 %tobool18.not, label %if.end.skip_poll_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

if.end.skip_poll_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %skip_poll

do.body:                                          ; preds = %if.end26.do.body_crit_edge, %if.end.do.body_crit_edge
  %time_out.1 = phi i8 [ %inc, %if.end26.do.body_crit_edge ], [ %time_out.095, %if.end.do.body_crit_edge ]
  %14 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %ctrl_addr, align 1
  %call22 = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %15) #13
  %and = and i32 %conv23, %call22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %do.body.do.end_crit_edge, label %if.end26

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end26:                                         ; preds = %do.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #13
  %inc = add i8 %time_out.1, 1
  %cmp29.not = icmp ugt i8 %inc, %7
  br i1 %cmp29.not, label %if.end26.do.end_crit_edge, label %if.end26.do.body_crit_edge

if.end26.do.body_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.end26.do.end_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %if.end26.do.end_crit_edge, %do.body.do.end_crit_edge
  %time_out.2 = phi i8 [ %inc, %if.end26.do.end_crit_edge ], [ %time_out.1, %do.body.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %time_out.2, i8 %7)
  %cmp33 = icmp ugt i8 %time_out.2, %7
  br i1 %cmp33, label %do.end38, label %do.end.skip_poll_crit_edge

do.end.skip_poll_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %skip_poll

do.end38:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #16
  br label %cleanup

skip_poll:                                        ; preds = %do.end.skip_poll_crit_edge, %if.end.skip_poll_crit_edge
  %time_out.3 = phi i8 [ %time_out.2, %do.end.skip_poll_crit_edge ], [ %time_out.095, %if.end.skip_poll_crit_edge ]
  %18 = ptrtoint ptr %read_addr_num to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %read_addr_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool41.not87 = icmp eq i8 %19, 0
  br i1 %tobool41.not87, label %skip_poll.while.end_crit_edge, label %while.body.preheader

skip_poll.while.end_crit_edge:                    ; preds = %skip_poll
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.preheader:                             ; preds = %skip_poll
  %conv40 = zext i8 %19 to i32
  %20 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %read_addr, align 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %addr.090 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ %21, %while.body.preheader ]
  %cnt.089 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %conv40, %while.body.preheader ]
  %buffer.addr.188 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %buffer.addr.092, %while.body.preheader ]
  %call42 = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %addr.090) #13
  %22 = tail call i32 @llvm.bswap.i32(i32 %call42)
  %incdec.ptr = getelementptr i32, ptr %buffer.addr.188, i32 1
  %23 = ptrtoint ptr %buffer.addr.188 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %buffer.addr.188, align 4
  %24 = ptrtoint ptr %read_addr_stride to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %read_addr_stride, align 1
  %conv43 = zext i8 %25 to i32
  %add = add i32 %addr.090, %conv43
  %dec = add nsw i32 %cnt.089, -1
  %tobool41.not = icmp eq i32 %dec, 0
  br i1 %tobool41.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %skip_poll.while.end_crit_edge
  %buffer.addr.1.lcssa = phi ptr [ %buffer.addr.092, %skip_poll.while.end_crit_edge ], [ %incdec.ptr, %while.body.while.end_crit_edge ]
  %26 = ptrtoint ptr %stride to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %stride, align 1
  %conv44 = zext i16 %27 to i32
  %add45 = add i32 %val.094, %conv44
  %inc46 = add nuw i32 %i.093, 1
  %28 = ptrtoint ptr %no_ops to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %no_ops, align 1
  %cmp = icmp ult i32 %inc46, %29
  br i1 %cmp, label %while.end.for.body_crit_edge, label %for.end.loopexit

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end.loopexit:                                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo = shl i32 %29, 2
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %read_addr_num48 = getelementptr inbounds %struct.__cache, ptr %region, i32 0, i32 9
  %30 = ptrtoint ptr %read_addr_num48 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %read_addr_num48, align 1
  %conv49 = zext i8 %31 to i32
  %mul50 = mul i32 %.lcssa, %conv49
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end38
  %retval.0 = phi i32 [ -22, %do.end38 ], [ %mul50, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_read_memory(ptr noundef %adapter, ptr nocapture noundef readonly %entry1, ptr nocapture noundef writeonly %buffer) #5 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %region = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #13
  %4 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ret, align 4
  %use_pex_dma = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 8
  %5 = ptrtoint ptr %use_pex_dma to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %use_pex_dma, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then:                                          ; preds = %entry
  %tmpl_hdr3.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 5
  %7 = ptrtoint ptr %tmpl_hdr3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tmpl_hdr3.i, align 4
  %hw_ops.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 46
  %9 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_ops.i.i, align 4
  %get_saved_state.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %10, i32 0, i32 45
  %11 = ptrtoint ptr %get_saved_state.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_saved_state.i.i, align 4
  %call.i.i = tail call i32 %12(ptr noundef %8, i32 noundef 8) #13
  %mul.i = shl i32 %call.i.i, 16
  %add4.i = add i32 %mul.i, 1999765512
  %call5.i = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %add4.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i)
  %tobool.not.i = icmp sgt i32 %call5.i, -1
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #16
  %13 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -5, ptr %ret, align 4
  br label %do.end

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 48) #18
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -12, ptr %ret, align 4
  br label %do.end

if.end9.i:                                        ; preds = %if.end.i
  %phys_addr.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 6
  %16 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys_addr.i, align 4
  %dma_buffer10.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 48, i32 7
  %18 = ptrtoint ptr %dma_buffer10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_buffer10.i, align 4
  %dma_desc_cmd.i = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %dma_desc_cmd.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %dma_desc_cmd.i, align 1
  %and11.i = and i32 %21, 65295
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %pci_func.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %pci_func.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pci_func.i, align 1
  %26 = shl i8 %25, 4
  %shl.i = zext i8 %26 to i32
  %or.i = or i32 %and11.i, %shl.i
  %shl14.i = shl nuw i32 %or.i, 16
  %dma_desc_cmd16.i = getelementptr inbounds %struct.qlcnic_pex_dma_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %dma_desc_cmd16.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shl14.i, ptr %dma_desc_cmd16.i, align 4
  %dma_bus_addr_low.i = getelementptr inbounds %struct.qlcnic_pex_dma_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %dma_bus_addr_low.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %17, ptr %dma_bus_addr_low.i, align 8
  %dma_bus_addr_high.i = getelementptr inbounds %struct.qlcnic_pex_dma_descriptor, ptr %call7.i.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %dma_bus_addr_high.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %dma_bus_addr_high.i, align 4
  %src_addr_high.i = getelementptr inbounds %struct.qlcnic_pex_dma_descriptor, ptr %call7.i.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %src_addr_high.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %src_addr_high.i, align 4
  %size22.i = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 3
  %31 = ptrtoint ptr %size22.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %size22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp111.not.i = icmp eq i32 %32, 0
  br i1 %cmp111.not.i, label %if.end9.i.qlcnic_read_memory_pexdma.exit_crit_edge, label %while.body.lr.ph.i

if.end9.i.qlcnic_read_memory_pexdma.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qlcnic_read_memory_pexdma.exit

while.body.lr.ph.i:                               ; preds = %if.end9.i
  %addr.i = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 2
  %src_addr_low.i = getelementptr inbounds %struct.qlcnic_pex_dma_descriptor, ptr %call7.i.i.i, i32 0, i32 2
  %start_dma_cmd.i.i = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end47.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %33 = phi i32 [ %32, %while.body.lr.ph.i ], [ %61, %if.end47.i.while.body.i_crit_edge ]
  %read_size.0113.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add48.i, %if.end47.i.while.body.i_crit_edge ]
  %buffer.addr.0112.i = phi ptr [ %buffer, %while.body.lr.ph.i ], [ %add.ptr.i, %if.end47.i.while.body.i_crit_edge ]
  %sub.i = sub i32 %33, %read_size.0113.i
  %34 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 65536) #13
  %35 = ptrtoint ptr %addr.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %addr.i, align 1
  %add31.i = add i32 %36, %read_size.0113.i
  %37 = ptrtoint ptr %src_addr_low.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add31.i, ptr %src_addr_low.i, align 8
  %38 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %34, ptr %call7.i.i.i, align 8
  %39 = ptrtoint ptr %region to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %region, align 1
  %conv32.i = zext i32 %40 to i64
  %call33.i = tail call i32 @qlcnic_ms_mem_write128(ptr noundef %adapter, i64 noundef %conv32.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end40.i, label %do.end38.i

do.end38.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call33.i, ptr %ret, align 4
  %42 = ptrtoint ptr %region to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %region, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.46, i32 noundef %43) #16
  br label %qlcnic_read_memory_pexdma.exit

if.end40.i:                                       ; preds = %while.body.i
  %44 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev, align 8
  %46 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter, align 8
  %tmpl_hdr2.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %47, i32 0, i32 48, i32 5
  %48 = ptrtoint ptr %tmpl_hdr2.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tmpl_hdr2.i.i, align 8
  %hw_ops.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %47, i32 0, i32 46
  %50 = ptrtoint ptr %hw_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw_ops.i.i.i, align 4
  %get_saved_state.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %51, i32 0, i32 45
  %52 = ptrtoint ptr %get_saved_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %get_saved_state.i.i.i, align 4
  %call.i.i.i = tail call i32 %53(ptr noundef %49, i32 noundef 8) #13
  %mul.i.i = shl i32 %call.i.i.i, 16
  %add.i.i = add i32 %mul.i.i, 1999765504
  %54 = ptrtoint ptr %region to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %region, align 1
  %call4.i.i = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %add.i.i, i32 noundef %55) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end40.i.do.end46.i_crit_edge

if.end40.i.do.end46.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end46.i

if.end.i.i:                                       ; preds = %if.end40.i
  %add5.i.i = add i32 %mul.i.i, 1999765508
  %call6.i.i = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %add5.i.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end.i.i.do.end46.i_crit_edge

if.end.i.i.do.end46.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end46.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %add10.i.i = add i32 %mul.i.i, 1999765512
  %56 = ptrtoint ptr %start_dma_cmd.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %start_dma_cmd.i.i, align 1
  %call11.i.i = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %add10.i.i, i32 noundef %57) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end9.i.i.for.body.i.i_crit_edge, label %if.end9.i.i.do.end46.i_crit_edge

if.end9.i.i.do.end46.i_crit_edge:                 ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end46.i

if.end9.i.i.for.body.i.i_crit_edge:               ; preds = %if.end9.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.then18.i.i.for.body.i.i_crit_edge, %if.end9.i.i.for.body.i.i_crit_edge
  %i.052.i.i = phi i32 [ %inc.i.i, %if.then18.i.i.for.body.i.i_crit_edge ], [ 0, %if.end9.i.i.for.body.i.i_crit_edge ]
  %call16.i.i = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %add10.i.i) #13
  %and.i.i = and i32 %call16.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool17.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end47.i, label %if.then18.i.i

if.then18.i.i:                                    ; preds = %for.body.i.i
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 500, i32 noundef 2) #13
  %inc.i.i = add nuw nsw i32 %i.052.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 400
  br i1 %exitcond.not.i.i, label %do.end.i.i, label %if.then18.i.i.for.body.i.i_crit_edge

if.then18.i.i.for.body.i.i_crit_edge:             ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev1.i.le.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.le.i, ptr noundef nonnull @.str.51) #16
  br label %do.end46.i

do.end46.i:                                       ; preds = %do.end.i.i, %if.end9.i.i.do.end46.i_crit_edge, %if.end.i.i.do.end46.i_crit_edge, %if.end40.i.do.end46.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %do.end.i.i ], [ %call4.i.i, %if.end40.i.do.end46.i_crit_edge ], [ %call6.i.i, %if.end.i.i.do.end46.i_crit_edge ], [ %call11.i.i, %if.end9.i.i.do.end46.i_crit_edge ]
  %58 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %retval.0.i.ph.i, ptr %ret, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.49) #16
  br label %qlcnic_read_memory_pexdma.exit

if.end47.i:                                       ; preds = %for.body.i.i
  %59 = call ptr @memcpy(ptr %buffer.addr.0112.i, ptr %19, i32 %34)
  %div102.i = lshr i32 %34, 2
  %add.ptr.i = getelementptr i32, ptr %buffer.addr.0112.i, i32 %div102.i
  %add48.i = add i32 %34, %read_size.0113.i
  %60 = ptrtoint ptr %size22.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %size22.i, align 1
  %cmp.i = icmp ugt i32 %61, %add48.i
  br i1 %cmp.i, label %if.end47.i.while.body.i_crit_edge, label %qlcnic_read_memory_pexdma.exit.loopexit

if.end47.i.while.body.i_crit_edge:                ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

qlcnic_read_memory_pexdma.exit.loopexit:          ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %ret, align 4
  br label %qlcnic_read_memory_pexdma.exit

qlcnic_read_memory_pexdma.exit:                   ; preds = %qlcnic_read_memory_pexdma.exit.loopexit, %do.end46.i, %do.end38.i, %if.end9.i.qlcnic_read_memory_pexdma.exit_crit_edge
  %read_size.0108.i = phi i32 [ %read_size.0113.i, %do.end46.i ], [ %read_size.0113.i, %do.end38.i ], [ 0, %if.end9.i.qlcnic_read_memory_pexdma.exit_crit_edge ], [ %add48.i, %qlcnic_read_memory_pexdma.exit.loopexit ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  %63 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool4.not = icmp eq i32 %.pr, 0
  br i1 %tobool4.not, label %qlcnic_read_memory_pexdma.exit.cleanup_crit_edge, label %qlcnic_read_memory_pexdma.exit.do.end_crit_edge

qlcnic_read_memory_pexdma.exit.do.end_crit_edge:  ; preds = %qlcnic_read_memory_pexdma.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

qlcnic_read_memory_pexdma.exit.cleanup_crit_edge: ; preds = %qlcnic_read_memory_pexdma.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %qlcnic_read_memory_pexdma.exit.do.end_crit_edge, %if.then8.i, %do.end.i
  %mask = getelementptr inbounds %struct.qlcnic_common_entry_hdr, ptr %entry1, i32 0, i32 5
  %64 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %mask, align 1
  %conv = zext i8 %65 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.38, i32 noundef %conv) #16
  br label %if.end6

if.end6:                                          ; preds = %do.end, %entry.if.end6_crit_edge
  %size.i = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 3
  %66 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %size.i, align 1
  %addr1.i = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 2
  %68 = ptrtoint ptr %addr1.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %addr1.i, align 1
  %and.i = and i32 %69, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i30 = icmp eq i32 %and.i, 0
  %70 = and i32 %67, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool2.not.i = icmp eq i32 %70, 0
  %or.cond.i = select i1 %tobool.not.i30, i1 %tobool2.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i33, label %qlcnic_read_memory_test_agent.exit.thread

qlcnic_read_memory_test_agent.exit.thread:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.53, i32 noundef %69, i32 noundef %67) #16
  %73 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -22, ptr %ret, align 4
  br label %do.end12

if.end.i33:                                       ; preds = %if.end6
  %74 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adapter, align 8
  %mem_lock.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %75, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mem_lock.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.not67.i = icmp eq i32 %67, 0
  br i1 %cmp.not67.i, label %if.end.i33.qlcnic_read_memory_test_agent.exit_crit_edge, label %if.end.i33.while.body.i34_crit_edge

if.end.i33.while.body.i34_crit_edge:              ; preds = %if.end.i33
  br label %while.body.i34

if.end.i33.qlcnic_read_memory_test_agent.exit_crit_edge: ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #15
  br label %qlcnic_read_memory_test_agent.exit

while.body.i34:                                   ; preds = %if.end22.i.while.body.i34_crit_edge, %if.end.i33.while.body.i34_crit_edge
  %reg_read.072.i = phi i32 [ %sub.i35, %if.end22.i.while.body.i34_crit_edge ], [ %67, %if.end.i33.while.body.i34_crit_edge ]
  %addr.071.i = phi i32 [ %add.i, %if.end22.i.while.body.i34_crit_edge ], [ %69, %if.end.i33.while.body.i34_crit_edge ]
  %ret.addr.069.i = phi ptr [ %add.ptr.i36, %if.end22.i.while.body.i34_crit_edge ], [ %ret, %if.end.i33.while.body.i34_crit_edge ]
  %buffer.addr.068.i = phi ptr [ %incdec.ptr.3.i, %if.end22.i.while.body.i34_crit_edge ], [ %buffer, %if.end.i33.while.body.i34_crit_edge ]
  %call.i = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef 1090519188, i32 noundef %addr.071.i) #13
  %call3.i = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef 1090519192, i32 noundef 0) #13
  %call4.i = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef 1090519184, i32 noundef 3) #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.body.i34
  %i.064.i = phi i32 [ 0, %while.body.i34 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call6.i = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef 1090519184) #13
  %and7.i = and i32 %call6.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %for.body.i.if.end22.i_crit_edge, label %for.inc.i

for.body.i.if.end22.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.064.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %if.then12.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.then12.i:                                      ; preds = %for.inc.i
  %call13.i = tail call i32 @__printk_ratelimit(ptr noundef nonnull @.str.54) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then12.i.if.end22.i_crit_edge, label %do.end18.i

if.then12.i.if.end22.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

do.end18.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev, align 8
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.56) #16
  %78 = ptrtoint ptr %ret.addr.069.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -5, ptr %ret.addr.069.i, align 4
  br label %qlcnic_read_memory_test_agent.exit

if.end22.i:                                       ; preds = %if.then12.i.if.end22.i_crit_edge, %for.body.i.if.end22.i_crit_edge
  %call26.i = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef 1090519208) #13
  %79 = tail call i32 @llvm.bswap.i32(i32 %call26.i) #13
  %incdec.ptr.i = getelementptr i32, ptr %buffer.addr.068.i, i32 1
  %80 = ptrtoint ptr %buffer.addr.068.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %buffer.addr.068.i, align 4
  %call26.1.i = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef 1090519212) #13
  %81 = tail call i32 @llvm.bswap.i32(i32 %call26.1.i) #13
  %incdec.ptr.1.i = getelementptr i32, ptr %buffer.addr.068.i, i32 2
  %82 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %incdec.ptr.i, align 4
  %call26.2.i = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef 1090519224) #13
  %83 = tail call i32 @llvm.bswap.i32(i32 %call26.2.i) #13
  %incdec.ptr.2.i = getelementptr i32, ptr %buffer.addr.068.i, i32 3
  %84 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %incdec.ptr.1.i, align 4
  %call26.3.i = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef 1090519228) #13
  %85 = tail call i32 @llvm.bswap.i32(i32 %call26.3.i) #13
  %incdec.ptr.3.i = getelementptr i32, ptr %buffer.addr.068.i, i32 4
  %86 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %incdec.ptr.2.i, align 4
  %add.i = add i32 %addr.071.i, 16
  %sub.i35 = add i32 %reg_read.072.i, -16
  %add.ptr.i36 = getelementptr i32, ptr %ret.addr.069.i, i32 16
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 705, i32 noundef 0) #13
  %call.i.i37 = tail call i32 @__cond_resched() #13
  %cmp.not.i = icmp eq i32 %sub.i35, 0
  br i1 %cmp.not.i, label %if.end22.i.qlcnic_read_memory_test_agent.exit_crit_edge, label %if.end22.i.while.body.i34_crit_edge

if.end22.i.while.body.i34_crit_edge:              ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i34

if.end22.i.qlcnic_read_memory_test_agent.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qlcnic_read_memory_test_agent.exit

qlcnic_read_memory_test_agent.exit:               ; preds = %if.end22.i.qlcnic_read_memory_test_agent.exit_crit_edge, %do.end18.i, %if.end.i33.qlcnic_read_memory_test_agent.exit_crit_edge
  %87 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %adapter, align 8
  %mem_lock32.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %88, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mem_lock32.i) #13
  %89 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %size.i, align 1
  %91 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pr41 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr41)
  %tobool8.not = icmp eq i32 %.pr41, 0
  br i1 %tobool8.not, label %qlcnic_read_memory_test_agent.exit.cleanup_crit_edge, label %qlcnic_read_memory_test_agent.exit.do.end12_crit_edge

qlcnic_read_memory_test_agent.exit.do.end12_crit_edge: ; preds = %qlcnic_read_memory_test_agent.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

qlcnic_read_memory_test_agent.exit.cleanup_crit_edge: ; preds = %qlcnic_read_memory_test_agent.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end12:                                         ; preds = %qlcnic_read_memory_test_agent.exit.do.end12_crit_edge, %qlcnic_read_memory_test_agent.exit.thread
  %mask14 = getelementptr inbounds %struct.qlcnic_common_entry_hdr, ptr %entry1, i32 0, i32 5
  %92 = ptrtoint ptr %mask14 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %mask14, align 1
  %conv15 = zext i8 %93 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.41, i32 noundef %conv15) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %qlcnic_read_memory_test_agent.exit.cleanup_crit_edge, %qlcnic_read_memory_pexdma.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end12 ], [ %read_size.0108.i, %qlcnic_read_memory_pexdma.exit.cleanup_crit_edge ], [ %90, %qlcnic_read_memory_test_agent.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_ind_rd(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_ind_wr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_ms_mem_write128(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_83xx_dump_rom(ptr noundef %adapter, ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %addr, align 1
  %size2 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %size2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %size2, align 1
  %div8 = lshr i32 %3, 2
  %call = tail call i32 @qlcnic_83xx_lockless_flash_read32(ptr noundef %adapter, i32 noundef %1, ptr noundef %buffer, i32 noundef %div8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %size2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %size2, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_read_pollrd(ptr noundef %adapter, ptr nocapture noundef readonly %entry1, ptr nocapture noundef writeonly %buffer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %region = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1
  %poll_wait2 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5
  %0 = ptrtoint ptr %poll_wait2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %poll_wait2, align 1
  %no_ops = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 4
  %2 = ptrtoint ptr %no_ops to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %no_ops, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp50.not = icmp eq i16 %3, 0
  br i1 %cmp50.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %sel_val3 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %sel_val3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %sel_val3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp546.not = icmp eq i32 %1, 0
  %poll_mask = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 1
  %read_addr = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1
  %sel_val_stride = getelementptr inbounds %struct.__pollrd, ptr %region, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc18, %if.end14.for.body_crit_edge ]
  %sel_val.052 = phi i32 [ %5, %for.body.lr.ph ], [ %add, %if.end14.for.body_crit_edge ]
  %buffer.addr.051 = phi ptr [ %buffer, %for.body.lr.ph ], [ %incdec.ptr16, %if.end14.for.body_crit_edge ]
  %6 = ptrtoint ptr %region to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %region, align 1
  %call = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %7, i32 noundef %sel_val.052) #13
  br i1 %cmp546.not, label %for.body.while.end_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %for.body.while.body_crit_edge
  %wait_count.047 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 0, %for.body.while.body_crit_edge ]
  %8 = ptrtoint ptr %region to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %region, align 1
  %call8 = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %9) #13
  %10 = ptrtoint ptr %poll_mask to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %poll_mask, align 1
  %and = and i32 %11, %call8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9.not = icmp eq i32 %and, 0
  br i1 %cmp9.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %while.body
  %inc = add nuw i32 %wait_count.047, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %if.end.do.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.body.while.end_crit_edge
  %wait_count.0.lcssa = phi i32 [ 0, %for.body.while.end_crit_edge ], [ %wait_count.047, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %wait_count.0.lcssa, i32 %1)
  %cmp11 = icmp eq i32 %wait_count.0.lcssa, %1
  br i1 %cmp11, label %while.end.do.end_crit_edge, label %if.end14

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %while.end.do.end_crit_edge, %if.end.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.58) #16
  br label %cleanup

if.end14:                                         ; preds = %while.end
  %14 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %read_addr, align 1
  %call15 = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %15) #13
  %16 = tail call i32 @llvm.bswap.i32(i32 %sel_val.052)
  %incdec.ptr = getelementptr i32, ptr %buffer.addr.051, i32 1
  %17 = ptrtoint ptr %buffer.addr.051 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %buffer.addr.051, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %call15)
  %incdec.ptr16 = getelementptr i32, ptr %buffer.addr.051, i32 2
  %19 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %incdec.ptr, align 4
  %20 = ptrtoint ptr %sel_val_stride to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %sel_val_stride, align 1
  %conv17 = zext i16 %21 to i32
  %add = add i32 %sel_val.052, %conv17
  %inc18 = add nuw nsw i32 %i.053, 1
  %22 = ptrtoint ptr %no_ops to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %no_ops, align 1
  %conv = zext i16 %23 to i32
  %cmp = icmp ult i32 %inc18, %conv
  br i1 %cmp, label %if.end14.for.body_crit_edge, label %for.end.loopexit

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast = zext i16 %23 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 3
  br label %cleanup

cleanup:                                          ; preds = %for.end.loopexit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %phi.bo, %for.end.loopexit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_read_mux2(ptr noundef %adapter, ptr nocapture noundef readonly %entry1, ptr nocapture noundef writeonly %buffer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %region = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1
  %no_ops = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5
  %0 = ptrtoint ptr %no_ops to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %no_ops, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp51.not = icmp eq i32 %1, 0
  br i1 %cmp51.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sel_val23 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 4
  %2 = ptrtoint ptr %sel_val23 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %sel_val23, align 1
  %sel_val12 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %sel_val12 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %sel_val12, align 1
  %sel_val_mask = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 1
  %sel_addr2 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1
  %read_addr = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 2
  %sel_val_stride = getelementptr inbounds %struct.__mux2, ptr %region, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %sel_val2.054 = phi i32 [ %3, %for.body.lr.ph ], [ %add19, %for.body.for.body_crit_edge ]
  %sel_val1.053 = phi i32 [ %5, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %buffer.addr.052 = phi ptr [ %buffer, %for.body.lr.ph ], [ %incdec.ptr16, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %region to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %region, align 1
  %call = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %7, i32 noundef %sel_val1.053) #13
  %8 = ptrtoint ptr %sel_val_mask to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %sel_val_mask, align 1
  %and = and i32 %9, %sel_val1.053
  %10 = ptrtoint ptr %sel_addr2 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %sel_addr2, align 1
  %call4 = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %11, i32 noundef %and) #13
  %12 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %read_addr, align 1
  %call5 = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %13) #13
  %14 = tail call i32 @llvm.bswap.i32(i32 %and)
  %incdec.ptr = getelementptr i32, ptr %buffer.addr.052, i32 1
  %15 = ptrtoint ptr %buffer.addr.052 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %buffer.addr.052, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %call5)
  %incdec.ptr6 = getelementptr i32, ptr %buffer.addr.052, i32 2
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %incdec.ptr, align 4
  %18 = ptrtoint ptr %region to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %region, align 1
  %call8 = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %19, i32 noundef %sel_val2.054) #13
  %20 = ptrtoint ptr %sel_val_mask to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %sel_val_mask, align 1
  %and10 = and i32 %21, %sel_val2.054
  %22 = ptrtoint ptr %sel_addr2 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %sel_addr2, align 1
  %call12 = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %23, i32 noundef %and10) #13
  %24 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %read_addr, align 1
  %call14 = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %25) #13
  %26 = tail call i32 @llvm.bswap.i32(i32 %and10)
  %incdec.ptr15 = getelementptr i32, ptr %buffer.addr.052, i32 3
  %27 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %incdec.ptr6, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %call14)
  %incdec.ptr16 = getelementptr i32, ptr %buffer.addr.052, i32 4
  %29 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %incdec.ptr15, align 4
  %30 = ptrtoint ptr %sel_val_stride to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sel_val_stride, align 1
  %conv = zext i8 %31 to i32
  %add = add i32 %sel_val1.053, %conv
  %add19 = add i32 %sel_val2.054, %conv
  %inc = add nuw i32 %i.055, 1
  %32 = ptrtoint ptr %no_ops to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %no_ops, align 1
  %cmp = icmp ult i32 %inc, %33
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo = shl i32 %33, 4
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_read_pollrdmwr(ptr noundef %adapter, ptr nocapture noundef readonly %entry1, ptr nocapture noundef writeonly %buffer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %region = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1
  %poll_wait2 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5
  %0 = ptrtoint ptr %poll_wait2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %poll_wait2, align 1
  %2 = ptrtoint ptr %region to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %region, align 1
  %val1 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %val1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %val1, align 1
  %call = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %3, i32 noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp60.not = icmp eq i32 %1, 0
  br i1 %cmp60.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %poll_mask = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %wait_count.061 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %6 = ptrtoint ptr %region to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %region, align 1
  %call4 = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %7) #13
  %8 = ptrtoint ptr %poll_mask to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %poll_mask, align 1
  %and = and i32 %9, %call4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp5.not = icmp eq i32 %and, 0
  br i1 %cmp5.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %while.body
  %inc = add nuw i32 %wait_count.061, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %if.end.do.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %wait_count.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %wait_count.061, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %wait_count.0.lcssa, i32 %1)
  %cmp6 = icmp eq i32 %wait_count.0.lcssa, %1
  br i1 %cmp6, label %while.end.do.end_crit_edge, label %if.end8

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %while.end.do.end_crit_edge, %if.end.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.59) #16
  br label %cleanup

if.end8:                                          ; preds = %while.end
  %addr2 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %addr2 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %addr2, align 1
  %call9 = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %13) #13
  %mod_mask = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %mod_mask to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %mod_mask, align 1
  %and10 = and i32 %15, %call9
  %16 = ptrtoint ptr %addr2 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %addr2, align 1
  %call12 = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %17, i32 noundef %and10) #13
  %18 = ptrtoint ptr %region to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %region, align 1
  %val2 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %val2 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %val2, align 1
  %call14 = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %19, i32 noundef %21) #13
  br i1 %cmp60.not, label %if.end8.while.end26_crit_edge, label %while.body17.lr.ph

if.end8.while.end26_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end26

while.body17.lr.ph:                               ; preds = %if.end8
  %poll_mask20 = getelementptr inbounds %struct.qlcnic_dump_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 5, i32 1
  br label %while.body17

while.body17:                                     ; preds = %while.body17.while.body17_crit_edge, %while.body17.lr.ph
  %wait_count.164 = phi i32 [ 0, %while.body17.lr.ph ], [ %inc25, %while.body17.while.body17_crit_edge ]
  %22 = ptrtoint ptr %region to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %region, align 1
  %call19 = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %23) #13
  %24 = ptrtoint ptr %poll_mask20 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %poll_mask20, align 1
  %and21 = and i32 %25, %call19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %cmp22.not = icmp ne i32 %and21, 0
  %inc25 = add nuw i32 %wait_count.164, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc25, i32 %1)
  %exitcond65.not = icmp eq i32 %inc25, %1
  %or.cond = select i1 %cmp22.not, i1 true, i1 %exitcond65.not
  br i1 %or.cond, label %while.body17.while.end26_crit_edge, label %while.body17.while.body17_crit_edge

while.body17.while.body17_crit_edge:              ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body17

while.body17.while.end26_crit_edge:               ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end26

while.end26:                                      ; preds = %while.body17.while.end26_crit_edge, %if.end8.while.end26_crit_edge
  %26 = ptrtoint ptr %addr2 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %addr2, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %incdec.ptr = getelementptr i32, ptr %buffer, i32 1
  %29 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %buffer, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %and10)
  %31 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %incdec.ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end26, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 8, %while.end26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 1221, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qlcnic_fw_cmd_get_minidump_temp._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @qlcnic_fw_cmd_get_minidump_temp._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 1242, i32 4}
!10 = !{ptr @qlcnic_fw_cmd_get_minidump_temp._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @qlcnic_fw_cmd_get_minidump_temp._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 1254, i32 3}
!14 = !{ptr @qlcnic_fw_cmd_get_minidump_temp._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @qlcnic_fw_cmd_get_minidump_temp._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 1276, i32 2}
!18 = !{ptr @.str.13, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @qlcnic_fw_cmd_get_minidump_temp._entry.11, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @qlcnic_fw_cmd_get_minidump_temp._entry_ptr.14, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 1309, i32 3}
!23 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @qlcnic_dump_fw._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @qlcnic_dump_fw._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 1314, i32 3}
!28 = !{ptr @qlcnic_dump_fw._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @qlcnic_dump_fw._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 1319, i32 2}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 1368, i32 4}
!34 = !{ptr @qlcnic_dump_fw._entry.21, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @qlcnic_dump_fw._entry_ptr.23, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 1390, i32 31}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 1392, i32 7}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 1437, i32 3}
!42 = !{ptr @.str.27, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @qlcnic_83xx_get_minidump_template._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @qlcnic_83xx_get_minidump_template._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.29, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 1451, i32 4}
!47 = !{ptr @qlcnic_83xx_get_minidump_template._entry.28, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @qlcnic_83xx_get_minidump_template._entry_ptr.30, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @qlcnic_fw_dump_ops, !50, !"qlcnic_fw_dump_ops", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 1033, i32 44}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 446, i32 6}
!53 = !{ptr @.str.32, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @qlcnic_dump_ctrl._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @qlcnic_dump_ctrl._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 490, i32 5}
!58 = !{ptr @qlcnic_dump_ctrl._entry.33, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @qlcnic_dump_ctrl._entry_ptr.35, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 641, i32 4}
!62 = !{ptr @.str.37, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @qlcnic_dump_l2_cache._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @qlcnic_dump_l2_cache._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 867, i32 4}
!67 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @qlcnic_read_memory._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @qlcnic_read_memory._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 876, i32 3}
!72 = !{ptr @qlcnic_read_memory._entry.40, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @qlcnic_read_memory._entry_ptr.42, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 789, i32 3}
!76 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @qlcnic_read_memory_pexdma._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @qlcnic_read_memory_pexdma._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 832, i32 4}
!81 = !{ptr @qlcnic_read_memory_pexdma._entry.45, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @qlcnic_read_memory_pexdma._entry_ptr.47, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 839, i32 4}
!85 = !{ptr @qlcnic_read_memory_pexdma._entry.48, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @qlcnic_read_memory_pexdma._entry_ptr.50, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 760, i32 3}
!89 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @qlcnic_start_pex_dma._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @qlcnic_start_pex_dma._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 671, i32 3}
!94 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @qlcnic_read_memory_test_agent._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @qlcnic_read_memory_test_agent._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 692, i32 5}
!99 = !{ptr @qlcnic_read_memory_test_agent._entry.55, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @qlcnic_read_memory_test_agent._entry_ptr.57, !98, !"_entry_ptr", i1 false, i1 false}
!101 = distinct !{null, !102, !"qlcnic_ms_read_data", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 19, i32 18}
!103 = !{ptr @qlcnic_83xx_fw_dump_ops, !104, !"qlcnic_83xx_fw_dump_ops", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 1056, i32 44}
!105 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 972, i32 4}
!107 = !{ptr @qlcnic_read_pollrd._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @qlcnic_read_pollrd._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 926, i32 3}
!111 = !{ptr @qlcnic_read_pollrdmwr._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @qlcnic_read_pollrdmwr._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c", i32 897, i32 3}
!115 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @qlcnic_valid_dump_entry._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @qlcnic_valid_dump_entry._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i8 0, i8 2}
!128 = !{i64 6081347}
!129 = !{i64 2158064893}
!130 = !{i64 2158065328}
!131 = !{i64 6080929}
!132 = !{i64 2158066621}
!133 = !{i64 2158063967}
