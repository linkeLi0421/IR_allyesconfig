; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla2xxx/qla_sup.c_pt.bc'
source_filename = "../drivers/scsi/qla2xxx/qla_sup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.scsi_qla_host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.work_struct, ptr, i32, [16 x i8], %struct.anon.79, %struct.atomic_t, i32, i32, i32, i32, i16, i16, %struct.fc_port, %union.port_id_t, i8, i16, i8, %struct.atomic_t, i8, i32, %struct.timer_list, [8 x i8], [8 x i8], [8 x i8], [8 x i8], ptr, %struct.completion, i16, i16, [6 x i8], %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i16, ptr, i32, %struct.atomic_t, i16, i16, ptr, %struct.scsi_qlt_host, ptr, i32, i32, %struct.fc_host_statistics, %struct.qla_statistics, %struct.bidi_statistics, %struct.atomic_t, %struct.qla8044_reset_template, i16, i16, i16, i16, i16, i16, ptr, %struct.purex_list, %struct.purex_item, %struct.name_list_extended, i32, %struct.wait_queue_head, %struct.wait_queue_head, i8, [8 x i8], [8 x i8], i16, [4 x i16], %struct.list_head, %struct.fab_scan, i8, i32, i64, i64, i64, i64, i64, i64, %struct.edif_dbell, %struct.pur_core }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.79 = type { i16, [2 x i8] }
%struct.fc_port = type { %struct.list_head, ptr, [3 x i8], i8, [8 x i8], [8 x i8], %union.port_id_t, i16, i16, %struct.completion, i32, i32, ptr, i8, i32, ptr, %struct.list_head, %struct.spinlock, %struct.kref, ptr, i32, %struct.list_head, %struct.work_struct, %struct.work_struct, i64, i32, [2 x ptr], i16, i16, i16, i8, [8 x i8], i16, i32, %struct.atomic_t, i32, i32, ptr, ptr, i32, i8, i8, i8, i32, i32, i16, ptr, i32, ptr, %struct.ct_sns_desc, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.work_struct, [64 x i8], i8, i8, i16, i16, ptr, i64, i64, i64, %struct.anon.143 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ct_sns_desc = type { ptr, i32 }
%struct.anon.143 = type { i16, i32, i32, i64, i64, i8, i8, i16, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock }
%union.port_id_t = type { i24 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.scsi_qlt_host = type { ptr, %struct.mutex, %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qla_statistics = type { i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, %struct.qla_dif_statistics }
%struct.qla_dif_statistics = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.bidi_statistics = type { i64, i64 }
%struct.atomic_t = type { i32 }
%struct.qla8044_reset_template = type { i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.purex_list = type { %struct.list_head, %struct.spinlock }
%struct.purex_item = type { %struct.list_head, ptr, ptr, %struct.atomic_t, i16, %struct.anon.166 }
%struct.anon.166 = type { [64 x i8] }
%struct.name_list_extended = type { ptr, i32, %struct.list_head, i32, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.fab_scan = type { ptr, i32, i16, i32, %struct.delayed_work }
%struct.edif_dbell = type { i32, %struct.spinlock, %struct.list_head, %struct.completion }
%struct.pur_core = type { i32, %struct.spinlock, %struct.list_head }
%struct.qla_hw_data = type { ptr, ptr, %struct.anon.144, i16, i16, [108 x i8], %struct.spinlock, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i16, i8, ptr, ptr, ptr, [8 x i32], [8 x i32], [8 x i32], i8, i8, i8, i8, ptr, ptr, i16, i16, i8, i8, i8, %struct.atomic_t, i8, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i16, i16, ptr, i16, i16, ptr, i16, i8, i8, i16, i32, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i8, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i64, i8, i8, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, %struct.fc_els_flogi, ptr, [32 x i16], [32 x i32], [8 x i32], ptr, ptr, i32, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i32, i32, %struct.mutex, i16, i16, i16, i16, i16, [2 x i16], i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, [16 x i16], [4 x i8], [4 x i16], [3 x i8], [3 x i8], i32, [3 x i8], [3 x i8], [2 x %struct.fwdt], ptr, i32, i32, i8, i32, i32, ptr, i32, i8, i32, i32, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, [8 x i16], i64, i64, %struct.mutex, i32, i16, [4 x i16], [17 x i8], [80 x i8], [17 x i8], ptr, i32, i32, i32, i32, %struct.mutex, [2 x i8], [2 x i8], [16 x i8], [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.156, i8, i16, i8, i16, i16, ptr, %struct.list_head, [8 x i32], i16, i16, i16, i32, ptr, ptr, ptr, %struct.work_struct, %struct.qlfc_fw, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rwlock_t, i16, i32, ptr, %struct.qla82xx_legacy_intr_set, i16, i16, %struct.list_head, i8, i32, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mr_data_fx00, i32, [36 x i8], %struct.qlt_hw_data, i32, i32, i16, i16, ptr, %struct.anon.163, i64, i64, i64, i64, i64, %struct.atomic_t, i16, i8, %struct.atomic_t, i16, %struct.qla_hw_data_stat, i32, ptr, %struct.btree_head32, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.els_reject, i8 }
%struct.anon.144 = type { i56 }
%struct.fc_els_flogi = type <{ i8, [3 x i8], %struct.fc_els_csp, i64, i64, [4 x %struct.fc_els_cssp], [16 x i8] }>
%struct.fc_els_csp = type { i8, i8, i16, i16, i16, %union.anon.152, i32 }
%union.anon.152 = type { %struct.anon.154 }
%struct.anon.154 = type { i32 }
%struct.fc_els_cssp = type { i16, i16, i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.fwdt = type { ptr, i32, i32 }
%struct.anon.156 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlfc_fw = type { ptr, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.qla82xx_legacy_intr_set = type { i32, i32, i32, i32 }
%struct.mr_data_fx00 = type { [64 x i8], [32 x i8], [16 x i8], [16 x i8], [16 x i8], [32 x i8], %struct.fc_port, i8, i8, i8, i32, i16, i8, i16, i32, i32, i8, i8, i8 }
%struct.qlt_hw_data = type { i8, i32, ptr, ptr, i16, i16, ptr, ptr, ptr, ptr, i32, i16, i32, i32, i32, [2 x i8], [2 x i8], [8 x i8], ptr, ptr, ptr, %struct.list_head, i32, i32, i32, %struct.spinlock, i32, %struct.spinlock, i32, [60 x i8], %struct.spinlock, [84 x i8] }
%struct.anon.163 = type { %struct.anon.164, %struct.anon.165 }
%struct.anon.164 = type { %struct.list_head, i32 }
%struct.anon.165 = type { %struct.list_head, i32 }
%struct.qla_hw_data_stat = type { i32, i32 }
%struct.btree_head32 = type { %struct.btree_head }
%struct.btree_head = type { ptr, ptr, i32 }
%struct.els_reject = type { ptr, i32, i16 }
%struct.device_reg_24xx = type { i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, [10 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, [6 x i32], i32, [2 x i32], i32, [2 x i32], i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.81, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.81 = type { ptr }
%struct.req_que = type { i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i32, i16, i32, i32, ptr, i16, [64 x i8] }
%struct.qla_flt_location = type { [4 x i8], i16, i16, i8, [5 x i8], i16 }
%struct.qla_flt_header = type { i16, i16, i16, i16, [0 x %struct.qla_flt_region] }
%struct.qla_flt_region = type { i16, i8, i8, i32, i32, i32 }
%struct.isp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qla_fdt_layout = type { [4 x i8], i16, i16, i16, [2 x i8], [16 x i8], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i16, i8, [65 x i8] }
%struct.qla_npiv_header = type { [2 x i8], i16, i16, [4 x i16], i16 }
%struct.fc_vport_identifiers = type { i64, i64, i32, i8, i32, [64 x i8] }
%struct.qla_npiv_entry = type { i16, i16, i8, i8, i16, [8 x i8], [8 x i8] }
%struct.device_reg_2xxx = type { i16, i16, [1 x i16], i16, i16, i16, i16, i16, %union.anon.145, i16, [4 x i16], i16, i16, i16, [5 x i16], i16, [3 x i16], i16, [3 x i16], i16, [5 x i16], i16, i16, %union.anon.148 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { i16, i16, i16, i16, i16, i16, i16, i16, [59 x i16] }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { [8 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.active_regions = type { i8, %struct.anon.171 }
%struct.anon.171 = type { i8, i8, i8, i8 }
%struct.qla_fcp_prio_cfg = type { [4 x i8], i16, i16, i16, i16, i16, i8, i8, [1023 x %struct.qla_fcp_prio_entry], [16 x i8] }
%struct.qla_fcp_prio_entry = type { i16, i8, i8, i32, i32, i16, i16, [8 x i8], [8 x i8] }

@.str = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Unsupported NPIV-Config detected: version=0x%x entries=0x%x checksum=0x%x.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to allocate memory for data.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Inconsistent NPIV-Config detected: version=0x%x entries=0x%x checksum=0x%x.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"NPIV[%02x]: wwpn=%llx wwnn=%llx vf_id=%#x Q_qos=%#x F_qos=%#x.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"NPIV-Config Failed to create vport [%02x]: wwpn=%llx wwnn=%llx.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unable to program nvram address=%x data=%x.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unable to update fw options (beacon on).\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to update fw options (beacon off).\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/scsi/qla2xxx/qla_sup.c\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Unable to allocate memory for optrom burst read (%x KB).\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Unable to burst-read optrom segment (%x/%x/%llx).\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Reverting to slow-read.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No matching ROM signature.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"PCI data struct not found pcir_adr=%x.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Read BIOS %d.%d.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Read EFI %d.%d.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unrecognized code type %x at pcids %x.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dumping fw ver from flash:.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unrecognized fw revision at %x.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FW Version: %d.%d.%d.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"U\AA\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCIR\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Read FCODE %d.%d.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Firmware revision %d.%d.%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Firmware revision (flash) %u.%u.%u (%x).\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unrecognized golden fw at %#x.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%.*s\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Unable to allocate memory for fcp priority data (%x).\0A\00", [41 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Flash read dword at %x timeout.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DEF\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCI\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"QFLT\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Inconsistent FLTL detected: checksum=0x%x.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FLTL[%s] = 0x%x.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FLT\00", [28 x i8] zeroinitializer }, align 32
@__const.qla2xxx_get_flt_info.def_fw = private unnamed_addr constant [3 x i32] [i32 131072, i32 131072, i32 655360], align 4
@__const.qla2xxx_get_flt_info.def_boot = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 524288], align 4
@__const.qla2xxx_get_flt_info.def_vpd_nvram = private unnamed_addr constant [3 x i32] [i32 294912, i32 294912, i32 851968], align 4
@__const.qla2xxx_get_flt_info.def_vpd0 = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 851968], align 4
@__const.qla2xxx_get_flt_info.def_vpd1 = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 852992], align 4
@__const.qla2xxx_get_flt_info.def_nvram0 = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 852096], align 4
@__const.qla2xxx_get_flt_info.def_nvram1 = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 852352], align 4
@__const.qla2xxx_get_flt_info.def_fdt = private unnamed_addr constant [3 x i32] [i32 69632, i32 327680, i32 884736], align 4
@__const.qla2xxx_get_flt_info.def_npiv_conf0 = private unnamed_addr constant [3 x i32] [i32 90112, i32 376832, i32 856064], align 4
@__const.qla2xxx_get_flt_info.def_npiv_conf1 = private unnamed_addr constant [3 x i32] [i32 94208, i32 380928, i32 860160], align 4
@__const.qla2xxx_get_flt_info.fcp_prio_cfg0 = private unnamed_addr constant [3 x i32] [i32 65536, i32 245760, i32 0], align 4
@__const.qla2xxx_get_flt_info.fcp_prio_cfg1 = private unnamed_addr constant [3 x i32] [i32 73728, i32 253952, i32 0], align 4
@.str.35 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Unsupported FLT detected: version=0x%x length=0x%x checksum=0x%x.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Inconsistent FLT detected: version=0x%x length=0x%x checksum=0x%x.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"FLT[%#x]: start=%#x end=%#x size=%#x.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Region %x is secure\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"FLT[%s]: boot=0x%x fw=0x%x vpd_nvram=0x%x vpd=0x%x nvram=0x%x fdt=0x%x flt=0x%x npiv=0x%x fcp_prif_cfg=0x%x.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MID\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FDT\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"QLID\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Inconsistent FDT detected: checksum=0x%x id=%c version0x%x.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"FDT[%s]: (0x%x/0x%x) erase=0x%x pr=%x wrtd=0x%x blk=0x%x.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"fcoe_dev_init_timeout=%d fcoe_reset_timeout=%d.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NVRAM didn't go ready...\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Flash write dword at %x timeout.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Invalid address %x - not a region start address\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed allocate burst (%x bytes)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Secure region %x not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to allocate memory for SFUB\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SFUB extract and verify successful\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to lock flash semaphore.\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unprotect flash...\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed unprotect flash\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Erase sector %#x...\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed erase sector %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Disable Write and Release Semaphore.\00", [59 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to protect flash.\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Reset chip to ROM.\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to reset to ROM code.\00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Lock Semaphore\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Enable Write.\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Sending Secure Flash MB Cmd\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Secure Flash MB Cmd failed %x.\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Write burst (%#lx dwords)...\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed burst write at %x (%p/%#llx)...\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Protect flash...\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed protect flash\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Adapter did not come out of reset\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SFUB checksum failed, 0x%x, 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to unprotect flash.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to erase sector %x.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed burst-write at %x (%p/%#llx)....\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Reverting to slow write...\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed slopw write %x (%x)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to protect flash\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 65535]
@__sancov_gen_cov_switch_values.78 = internal global [46 x i64] [i64 44, i64 16, i64 1, i64 2, i64 7, i64 9, i64 20, i64 21, i64 22, i64 23, i64 26, i64 41, i64 42, i64 47, i64 80, i64 82, i64 114, i64 116, i64 117, i64 120, i64 129, i64 135, i64 136, i64 149, i64 150, i64 151, i64 162, i64 164, i64 170, i64 172, i64 212, i64 213, i64 214, i64 215, i64 216, i64 218, i64 268, i64 269, i64 270, i64 271, i64 272, i64 273, i64 274, i64 275, i64 293, i64 294]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 8, i64 19, i64 31, i64 191]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 65535]
@__sancov_gen_cov_switch_values.81 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 31, i64 32, i64 64, i64 191, i64 194, i64 218]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 8, i64 210, i64 227]
@__sancov_gen_cov_switch_values.83 = internal global [10 x i64] [i64 8, i64 8, i64 19, i64 32, i64 56, i64 62, i64 64, i64 79, i64 109, i64 110]
@__sancov_gen_cov_switch_values.84 = internal global [10 x i64] [i64 8, i64 8, i64 19, i64 32, i64 56, i64 62, i64 64, i64 79, i64 109, i64 110]
@__sancov_gen_cov_switch_values.85 = internal global [9 x i64] [i64 7, i64 8, i64 32, i64 56, i64 62, i64 64, i64 79, i64 109, i64 110]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 218]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 32]
@__sancov_gen_cov_switch_values.88 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 218]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 218]
@__sancov_gen_cov_switch_values.91 = internal global [8 x i64] [i64 6, i64 16, i64 1, i64 2, i64 209, i64 211, i64 240, i64 241]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 8, i64 13, i64 16, i64 32]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 8, i64 120, i64 130]
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1122, i32 7 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1132, i32 7 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1144, i32 7 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1174, i32 7 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1183, i32 9 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1484, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1639, i32 7 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1704, i32 7 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2592, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3024, i32 7 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3041, i32 8 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3045, i32 8 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3189, i32 8 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3206, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3221, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3236, i32 8 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3241, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3263, i32 7 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3273, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3281, i32 8 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3317, i32 21 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3332, i32 21 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3356, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3393, i32 7 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3521, i32 7 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3537, i32 7 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3590, i32 31 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 3606, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 470, i32 6 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 549, i32 36 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 549, i32 43 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 610, i32 24 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 619, i32 7 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 631, i32 6 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 639, i32 37 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 693, i32 7 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 704, i32 7 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 715, i32 7 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 721, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 935, i32 6 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 949, i32 36 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 949, i32 43 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 962, i32 23 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 969, i32 7 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1034, i32 6 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1065, i32 6 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 355, i32 9 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 512, i32 6 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2703, i32 7 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2713, i32 7 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2778, i32 16 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2789, i32 8 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2801, i32 7 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2811, i32 7 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2816, i32 6 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2820, i32 36 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2830, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2834, i32 9 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2848, i32 8 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2854, i32 9 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2859, i32 8 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2866, i32 9 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2873, i32 8 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2884, i32 8 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2896, i32 8 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2903, i32 9 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2925, i32 7 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2930, i32 8 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2943, i32 6 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2948, i32 7 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2960, i32 8 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2644, i32 7 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1298, i32 7 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1315, i32 9 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1341, i32 8 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1351, i32 8 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1359, i32 8 }
@___asan_gen_.329 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.330 = private constant [34 x i8] c"../drivers/scsi/qla2xxx/qla_sup.c\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1369, i32 7 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_read_flash_data(ptr nocapture noundef readonly %vha, ptr nocapture noundef %dwptr, i32 noundef %faddr, i32 noundef %dwords) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dwords)
  %cmp11.not = icmp eq i32 %dwords, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %flash_data_off.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 210
  %2 = ptrtoint ptr %flash_data_off.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flash_data_off.i, align 4
  %add.i = add i32 %3, %faddr
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.014 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %dwptr.addr.013 = phi ptr [ %incdec.ptr, %if.end.for.body_crit_edge ], [ %dwptr, %for.body.preheader ]
  %faddr.addr.012 = phi i32 [ %inc3, %if.end.for.body_crit_edge ], [ %add.i, %for.body.preheader ]
  %call1 = tail call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %1, i32 noundef %faddr.addr.012, ptr noundef %dwptr.addr.013)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %dwptr.addr.013 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dwptr.addr.013, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %7 = ptrtoint ptr %dwptr.addr.013 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dwptr.addr.013, align 4
  %inc = add nuw i32 %i.014, 1
  %inc3 = add i32 %faddr.addr.012, 1
  %incdec.ptr = getelementptr i32, ptr %dwptr.addr.013, i32 1
  %exitcond.not = icmp eq i32 %inc, %dwords
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call1, %for.body.for.end_crit_edge ], [ 0, %if.end.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla24xx_read_flash_dword(ptr nocapture noundef readonly %ha, i32 noundef %addr, ptr nocapture noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 9
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %and = and i32 %addr, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %2) #8, !srcloc !166
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %dec13 = phi i32 [ 29999, %entry ], [ %dec, %if.end.while.body_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  %.mask = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool3.not = icmp eq i32 %.mask, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %flash_data = getelementptr inbounds %struct.device_reg_24xx, ptr %1, i32 0, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %flash_data) #8, !srcloc !167
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  br label %cleanup

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #8
  tail call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 466, i32 noundef 0) #8
  %call.i = tail call i32 @__cond_resched() #8
  %dec = add nsw i32 %dec13, -1
  %tobool.not = icmp eq i32 %dec13, 0
  br i1 %tobool.not, label %while.end, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ha, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %10, i32 noundef 28816, ptr noundef nonnull @.str.28, i32 noundef %addr) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %storemerge = phi i32 [ -559030611, %while.end ], [ %5, %if.then ]
  %retval.0 = phi i32 [ 256, %while.end ], [ 0, %if.then ]
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %data, align 4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2xxx_get_flash_info(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  %ids.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 46006144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %req_q_map.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %req_q_map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req_q_map.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %ring.i = getelementptr inbounds %struct.req_que, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring.i, align 4
  %12 = and i32 %3, 6016
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %.not = icmp eq i32 %12, 0
  %13 = and i32 %3, 8064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %.not167 = icmp eq i32 %13, 0
  %.mux = select i1 %.not, i32 328704, i32 70656
  %14 = and i32 %3, 16256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %.not166 = icmp eq i32 %14, 0
  %.mux.mux = select i1 %.not167, i32 885760, i32 %.mux
  br i1 %.not166, label %if.else35.i, label %if.end.if.end87.i_crit_edge

if.end.if.end87.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87.i

if.else35.i:                                      ; preds = %if.end
  %15 = and i32 %3, 4046848
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %if.else72.i, label %if.else35.i.if.end76_crit_edge

if.else35.i.if.end76_crit_edge:                   ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.else72.i:                                      ; preds = %if.else35.i
  %17 = and i32 %3, 41943040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %if.else72.i.if.end87.i_crit_edge, label %if.else72.i.if.end76_crit_edge

if.else72.i.if.end76_crit_edge:                   ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.else72.i.if.end87.i_crit_edge:                 ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.else72.i.if.end87.i_crit_edge, %if.end.if.end87.i_crit_edge
  %flt_addr.0 = phi i32 [ 0, %if.else72.i.if.end87.i_crit_edge ], [ %.mux.mux, %if.end.if.end87.i_crit_edge ]
  %arrayidx91.i = getelementptr i8, ptr %11, i32 1
  %arrayidx97.i = getelementptr i8, ptr %11, i32 25
  %arrayidx99.i = getelementptr i8, ptr %11, i32 24
  %arrayidx115.i = getelementptr i8, ptr %11, i32 2
  %arrayidx120.i = getelementptr i8, ptr %11, i32 3
  %arrayidx126.i = getelementptr i8, ptr %11, i32 21
  %arrayidx130.i = getelementptr i8, ptr %11, i32 17
  %arrayidx133.i = getelementptr i8, ptr %11, i32 16
  br label %do.body.i

do.body.i:                                        ; preds = %if.end125.i.do.body.i_crit_edge, %if.end87.i
  %pcihdr.0.i = phi i32 [ 0, %if.end87.i ], [ %add136.i, %if.end125.i.do.body.i_crit_edge ]
  %shr.i = lshr exact i32 %pcihdr.0.i, 2
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %flash_data_off.i.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %20, i32 0, i32 210
  %21 = ptrtoint ptr %flash_data_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flash_data_off.i.i.i, align 4
  %add.i.i.i = add i32 %22, %shr.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %do.body.i
  %i.014.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %do.body.i ]
  %dwptr.addr.013.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ %11, %do.body.i ]
  %faddr.addr.012.i.i = phi i32 [ %inc3.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ %add.i.i.i, %do.body.i ]
  %call1.i.i = tail call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %20, i32 noundef %faddr.addr.012.i.i, ptr noundef %dwptr.addr.013.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp2.not.i.i, label %if.end.i.i, label %for.body.i.i.qla24xx_read_flash_data.exit.i_crit_edge

for.body.i.i.qla24xx_read_flash_data.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %23 = ptrtoint ptr %dwptr.addr.013.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dwptr.addr.013.i.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  %26 = ptrtoint ptr %dwptr.addr.013.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dwptr.addr.013.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %inc3.i.i = add i32 %faddr.addr.012.i.i, 1
  %incdec.ptr.i.i = getelementptr i32, ptr %dwptr.addr.013.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %if.end.i.i.qla24xx_read_flash_data.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end.i.i.qla24xx_read_flash_data.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit.i

qla24xx_read_flash_data.exit.i:                   ; preds = %if.end.i.i.qla24xx_read_flash_data.exit.i_crit_edge, %for.body.i.i.qla24xx_read_flash_data.exit.i_crit_edge
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %28)
  %cmp.not.i = icmp eq i8 %28, 85
  br i1 %cmp.not.i, label %lor.lhs.false90.i, label %qla24xx_read_flash_data.exit.i.if.end76_crit_edge

qla24xx_read_flash_data.exit.i.if.end76_crit_edge: ; preds = %qla24xx_read_flash_data.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

lor.lhs.false90.i:                                ; preds = %qla24xx_read_flash_data.exit.i
  %29 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx91.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %30)
  %cmp93.not.i = icmp eq i8 %30, -86
  br i1 %cmp93.not.i, label %if.end96.i, label %lor.lhs.false90.i.if.end76_crit_edge

lor.lhs.false90.i.if.end76_crit_edge:             ; preds = %lor.lhs.false90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.end96.i:                                       ; preds = %lor.lhs.false90.i
  %31 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx97.i, align 1
  %conv98.i = zext i8 %32 to i32
  %shl.i = shl nuw nsw i32 %conv98.i, 8
  %33 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx99.i, align 1
  %conv100.i = zext i8 %34 to i32
  %or.i = or i32 %shl.i, %conv100.i
  %add.i = add i32 %or.i, %pcihdr.0.i
  %shr101.i = lshr i32 %add.i, 2
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 4
  %flash_data_off.i.i240.i = getelementptr inbounds %struct.qla_hw_data, ptr %36, i32 0, i32 210
  %37 = ptrtoint ptr %flash_data_off.i.i240.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flash_data_off.i.i240.i, align 4
  %add.i.i241.i = add i32 %shr101.i, %38
  br label %for.body.i247.i

for.body.i247.i:                                  ; preds = %if.end.i252.i.for.body.i247.i_crit_edge, %if.end96.i
  %i.014.i242.i = phi i32 [ %inc.i248.i, %if.end.i252.i.for.body.i247.i_crit_edge ], [ 0, %if.end96.i ]
  %dwptr.addr.013.i243.i = phi ptr [ %incdec.ptr.i250.i, %if.end.i252.i.for.body.i247.i_crit_edge ], [ %11, %if.end96.i ]
  %faddr.addr.012.i244.i = phi i32 [ %inc3.i249.i, %if.end.i252.i.for.body.i247.i_crit_edge ], [ %add.i.i241.i, %if.end96.i ]
  %call1.i245.i = tail call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %36, i32 noundef %faddr.addr.012.i244.i, ptr noundef %dwptr.addr.013.i243.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i245.i)
  %cmp2.not.i246.i = icmp eq i32 %call1.i245.i, 0
  br i1 %cmp2.not.i246.i, label %if.end.i252.i, label %for.body.i247.i.qla24xx_read_flash_data.exit254.i_crit_edge

for.body.i247.i.qla24xx_read_flash_data.exit254.i_crit_edge: ; preds = %for.body.i247.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit254.i

if.end.i252.i:                                    ; preds = %for.body.i247.i
  %39 = ptrtoint ptr %dwptr.addr.013.i243.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dwptr.addr.013.i243.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #8
  %42 = ptrtoint ptr %dwptr.addr.013.i243.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %dwptr.addr.013.i243.i, align 4
  %inc.i248.i = add nuw nsw i32 %i.014.i242.i, 1
  %inc3.i249.i = add i32 %faddr.addr.012.i244.i, 1
  %incdec.ptr.i250.i = getelementptr i32, ptr %dwptr.addr.013.i243.i, i32 1
  %exitcond.not.i251.i = icmp eq i32 %inc.i248.i, 32
  br i1 %exitcond.not.i251.i, label %if.end.i252.i.qla24xx_read_flash_data.exit254.i_crit_edge, label %if.end.i252.i.for.body.i247.i_crit_edge

if.end.i252.i.for.body.i247.i_crit_edge:          ; preds = %if.end.i252.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i247.i

if.end.i252.i.qla24xx_read_flash_data.exit254.i_crit_edge: ; preds = %if.end.i252.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit254.i

qla24xx_read_flash_data.exit254.i:                ; preds = %if.end.i252.i.qla24xx_read_flash_data.exit254.i_crit_edge, %for.body.i247.i.qla24xx_read_flash_data.exit254.i_crit_edge
  %43 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %44)
  %cmp107.not.i = icmp eq i8 %44, 80
  br i1 %cmp107.not.i, label %lor.lhs.false109.i, label %qla24xx_read_flash_data.exit254.i.if.end76_crit_edge

qla24xx_read_flash_data.exit254.i.if.end76_crit_edge: ; preds = %qla24xx_read_flash_data.exit254.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

lor.lhs.false109.i:                               ; preds = %qla24xx_read_flash_data.exit254.i
  %45 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx91.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %46)
  %cmp112.not.i = icmp eq i8 %46, 67
  br i1 %cmp112.not.i, label %lor.lhs.false114.i, label %lor.lhs.false109.i.if.end76_crit_edge

lor.lhs.false109.i.if.end76_crit_edge:            ; preds = %lor.lhs.false109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

lor.lhs.false114.i:                               ; preds = %lor.lhs.false109.i
  %47 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx115.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %48)
  %cmp117.not.i = icmp eq i8 %48, 73
  br i1 %cmp117.not.i, label %lor.lhs.false119.i, label %lor.lhs.false114.i.if.end76_crit_edge

lor.lhs.false114.i.if.end76_crit_edge:            ; preds = %lor.lhs.false114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

lor.lhs.false119.i:                               ; preds = %lor.lhs.false114.i
  %49 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx120.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 82, i8 %50)
  %cmp122.not.i = icmp eq i8 %50, 82
  br i1 %cmp122.not.i, label %if.end125.i, label %lor.lhs.false119.i.if.end76_crit_edge

lor.lhs.false119.i.if.end76_crit_edge:            ; preds = %lor.lhs.false119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.end125.i:                                      ; preds = %lor.lhs.false119.i
  %51 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx126.i, align 1
  %53 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx130.i, align 1
  %conv131.i = zext i8 %54 to i32
  %55 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx133.i, align 1
  %conv134.i = zext i8 %56 to i32
  %57 = shl nuw nsw i32 %conv131.i, 17
  %58 = shl nuw nsw i32 %conv134.i, 9
  %mul.i = or i32 %58, %57
  %add136.i = add i32 %mul.i, %pcihdr.0.i
  %tobool137.not.i = icmp sgt i8 %52, -1
  br i1 %tobool137.not.i, label %if.end125.i.do.body.i_crit_edge, label %do.end.i

if.end125.i.do.body.i_crit_edge:                  ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end.i:                                         ; preds = %if.end125.i
  %shr138.i = lshr exact i32 %add136.i, 2
  %59 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw, align 4
  %flash_data_off.i.i256.i = getelementptr inbounds %struct.qla_hw_data, ptr %60, i32 0, i32 210
  %61 = ptrtoint ptr %flash_data_off.i.i256.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flash_data_off.i.i256.i, align 4
  %add.i.i257.i = add i32 %62, %shr138.i
  %call1.i261.i = tail call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %60, i32 noundef %add.i.i257.i, ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i261.i)
  %cmp2.not.i262.i = icmp eq i32 %call1.i261.i, 0
  br i1 %cmp2.not.i262.i, label %if.end.i268.i, label %do.end.i.qla24xx_read_flash_data.exit270.i_crit_edge

do.end.i.qla24xx_read_flash_data.exit270.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit270.i

if.end.i268.i:                                    ; preds = %do.end.i
  %63 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %11, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #8
  %66 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %11, align 4
  %inc3.i265.i = add i32 %add.i.i257.i, 1
  %incdec.ptr.i266.i = getelementptr i32, ptr %11, i32 1
  %call1.i261.1.i = tail call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %60, i32 noundef %inc3.i265.i, ptr noundef %incdec.ptr.i266.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i261.1.i)
  %cmp2.not.i262.1.i = icmp eq i32 %call1.i261.1.i, 0
  br i1 %cmp2.not.i262.1.i, label %if.end.i268.1.i, label %if.end.i268.i.qla24xx_read_flash_data.exit270.i_crit_edge

if.end.i268.i.qla24xx_read_flash_data.exit270.i_crit_edge: ; preds = %if.end.i268.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit270.i

if.end.i268.1.i:                                  ; preds = %if.end.i268.i
  %67 = ptrtoint ptr %incdec.ptr.i266.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %incdec.ptr.i266.i, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #8
  %70 = ptrtoint ptr %incdec.ptr.i266.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %incdec.ptr.i266.i, align 4
  %inc3.i265.1.i = add i32 %add.i.i257.i, 2
  %incdec.ptr.i266.1.i = getelementptr i32, ptr %11, i32 2
  %call1.i261.2.i = tail call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %60, i32 noundef %inc3.i265.1.i, ptr noundef %incdec.ptr.i266.1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i261.2.i)
  %cmp2.not.i262.2.i = icmp eq i32 %call1.i261.2.i, 0
  br i1 %cmp2.not.i262.2.i, label %if.end.i268.2.i, label %if.end.i268.1.i.qla24xx_read_flash_data.exit270.i_crit_edge

if.end.i268.1.i.qla24xx_read_flash_data.exit270.i_crit_edge: ; preds = %if.end.i268.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit270.i

if.end.i268.2.i:                                  ; preds = %if.end.i268.1.i
  %71 = ptrtoint ptr %incdec.ptr.i266.1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %incdec.ptr.i266.1.i, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #8
  %74 = ptrtoint ptr %incdec.ptr.i266.1.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %incdec.ptr.i266.1.i, align 4
  %inc3.i265.2.i = add i32 %add.i.i257.i, 3
  %incdec.ptr.i266.2.i = getelementptr i32, ptr %11, i32 3
  %call1.i261.3.i = tail call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %60, i32 noundef %inc3.i265.2.i, ptr noundef %incdec.ptr.i266.2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i261.3.i)
  %cmp2.not.i262.3.i = icmp eq i32 %call1.i261.3.i, 0
  br i1 %cmp2.not.i262.3.i, label %if.end.i268.3.i, label %if.end.i268.2.i.qla24xx_read_flash_data.exit270.i_crit_edge

if.end.i268.2.i.qla24xx_read_flash_data.exit270.i_crit_edge: ; preds = %if.end.i268.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit270.i

if.end.i268.3.i:                                  ; preds = %if.end.i268.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %incdec.ptr.i266.2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %incdec.ptr.i266.2.i, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #8
  %78 = ptrtoint ptr %incdec.ptr.i266.2.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %incdec.ptr.i266.2.i, align 4
  br label %qla24xx_read_flash_data.exit270.i

qla24xx_read_flash_data.exit270.i:                ; preds = %if.end.i268.3.i, %if.end.i268.2.i.qla24xx_read_flash_data.exit270.i_crit_edge, %if.end.i268.1.i.qla24xx_read_flash_data.exit270.i_crit_edge, %if.end.i268.i.qla24xx_read_flash_data.exit270.i_crit_edge, %do.end.i.qla24xx_read_flash_data.exit270.i_crit_edge
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %11, ptr noundef nonnull dereferenceable(4) @.str.31, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool141.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool141.not.i, label %if.end143.i, label %qla24xx_read_flash_data.exit270.i.if.end76_crit_edge

qla24xx_read_flash_data.exit270.i.if.end76_crit_edge: ; preds = %qla24xx_read_flash_data.exit270.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.end143.i:                                      ; preds = %qla24xx_read_flash_data.exit270.i
  %79 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ring.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %80, align 2
  %83 = tail call i16 @llvm.bswap.i16(i16 %82) #8
  %incdec.ptr.i = getelementptr i16, ptr %80, i32 1
  %84 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %incdec.ptr.i, align 2
  %86 = tail call i16 @llvm.bswap.i16(i16 %85) #8
  %add148.1.i = add i16 %86, %83
  %incdec.ptr.1.i = getelementptr i16, ptr %80, i32 2
  %87 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %incdec.ptr.1.i, align 2
  %89 = tail call i16 @llvm.bswap.i16(i16 %88) #8
  %add148.2.i = add i16 %add148.1.i, %89
  %incdec.ptr.2.i = getelementptr i16, ptr %80, i32 3
  %90 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %incdec.ptr.2.i, align 2
  %92 = tail call i16 @llvm.bswap.i16(i16 %91) #8
  %add148.3.i = add i16 %add148.2.i, %92
  %incdec.ptr.3.i = getelementptr i16, ptr %80, i32 4
  %93 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %incdec.ptr.3.i, align 2
  %95 = tail call i16 @llvm.bswap.i16(i16 %94) #8
  %add148.4.i = add i16 %add148.3.i, %95
  %incdec.ptr.4.i = getelementptr i16, ptr %80, i32 5
  %96 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %incdec.ptr.4.i, align 2
  %98 = tail call i16 @llvm.bswap.i16(i16 %97) #8
  %add148.5.i = add i16 %add148.4.i, %98
  %incdec.ptr.5.i = getelementptr i16, ptr %80, i32 6
  %99 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %incdec.ptr.5.i, align 2
  %101 = tail call i16 @llvm.bswap.i16(i16 %100) #8
  %add148.6.i = add i16 %add148.5.i, %101
  %incdec.ptr.6.i = getelementptr i16, ptr %80, i32 7
  %102 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %incdec.ptr.6.i, align 2
  %104 = tail call i16 @llvm.bswap.i16(i16 %103) #8
  %add148.7.i = add i16 %add148.6.i, %104
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add148.7.i)
  %tobool150.not.i = icmp eq i16 %add148.7.i, 0
  br i1 %tobool150.not.i, label %if.end153.i, label %qla2xxx_find_flt_start.exit

if.end153.i:                                      ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #10
  %start_hi.i = getelementptr inbounds %struct.qla_flt_location, ptr %11, i32 0, i32 2
  %105 = ptrtoint ptr %start_hi.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %start_hi.i, align 2
  %start_lo.i = getelementptr inbounds %struct.qla_flt_location, ptr %11, i32 0, i32 1
  %107 = ptrtoint ptr %start_lo.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %start_lo.i, align 2
  %109 = zext i16 %106 to i32
  %110 = zext i16 %108 to i32
  %111 = shl nuw i32 %110, 16
  %112 = or i32 %111, %109
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #8
  %shr159.i = ashr i32 %113, 2
  br label %if.end76

qla2xxx_find_flt_start.exit:                      ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv152.i = zext i16 %add148.7.i to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 69, ptr noundef nonnull @.str.32, i32 noundef %conv152.i) #8
  tail call void @ql_dump_buffer(i32 noundef 1073872896, ptr noundef %vha, i32 noundef 270, ptr noundef %11, i32 noundef 16) #8
  br label %cleanup

if.end76:                                         ; preds = %if.end153.i, %qla24xx_read_flash_data.exit270.i.if.end76_crit_edge, %lor.lhs.false119.i.if.end76_crit_edge, %lor.lhs.false114.i.if.end76_crit_edge, %lor.lhs.false109.i.if.end76_crit_edge, %qla24xx_read_flash_data.exit254.i.if.end76_crit_edge, %lor.lhs.false90.i.if.end76_crit_edge, %qla24xx_read_flash_data.exit.i.if.end76_crit_edge, %if.else72.i.if.end76_crit_edge, %if.else35.i.if.end76_crit_edge
  %flt_addr.1 = phi i32 [ %flt_addr.0, %qla24xx_read_flash_data.exit270.i.if.end76_crit_edge ], [ %shr159.i, %if.end153.i ], [ 1033216, %if.else35.i.if.end76_crit_edge ], [ 17408, %if.else72.i.if.end76_crit_edge ], [ %flt_addr.0, %lor.lhs.false119.i.if.end76_crit_edge ], [ %flt_addr.0, %lor.lhs.false114.i.if.end76_crit_edge ], [ %flt_addr.0, %lor.lhs.false109.i.if.end76_crit_edge ], [ %flt_addr.0, %qla24xx_read_flash_data.exit254.i.if.end76_crit_edge ], [ %flt_addr.0, %lor.lhs.false90.i.if.end76_crit_edge ], [ %flt_addr.0, %qla24xx_read_flash_data.exit.i.if.end76_crit_edge ]
  %loc.0.i = phi ptr [ @.str.29, %qla24xx_read_flash_data.exit270.i.if.end76_crit_edge ], [ @.str.30, %if.end153.i ], [ @.str.29, %if.else35.i.if.end76_crit_edge ], [ @.str.29, %if.else72.i.if.end76_crit_edge ], [ @.str.29, %lor.lhs.false119.i.if.end76_crit_edge ], [ @.str.29, %lor.lhs.false114.i.if.end76_crit_edge ], [ @.str.29, %lor.lhs.false109.i.if.end76_crit_edge ], [ @.str.29, %qla24xx_read_flash_data.exit254.i.if.end76_crit_edge ], [ @.str.29, %lor.lhs.false90.i.if.end76_crit_edge ], [ @.str.29, %qla24xx_read_flash_data.exit.i.if.end76_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 70, ptr noundef nonnull @.str.33, ptr noundef nonnull %loc.0.i, i32 noundef %flt_addr.1) #8
  %114 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hw, align 4
  %isp_type.i114 = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 54
  %116 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %isp_type.i114, align 8
  %and1.i = and i32 %117, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %and4.i = lshr i32 %117, 11
  %and4.lobit.i = and i32 %and4.i, 1
  %cond6.i = select i1 %tobool.not.i, i32 %and4.lobit.i, i32 2
  %flt7.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 85
  %118 = ptrtoint ptr %flt7.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %flt7.i, align 8
  %region8.i = getelementptr inbounds %struct.qla_flt_header, ptr %119, i32 0, i32 4
  %port_no.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 38
  %120 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %cmp.i = icmp eq i8 %121, 0
  %__const.qla2xxx_get_flt_info.fcp_prio_cfg0.pn.i = select i1 %cmp.i, ptr @__const.qla2xxx_get_flt_info.fcp_prio_cfg0, ptr @__const.qla2xxx_get_flt_info.fcp_prio_cfg1
  %cond16.in.i = getelementptr [3 x i32], ptr %__const.qla2xxx_get_flt_info.fcp_prio_cfg0.pn.i, i32 0, i32 %cond6.i
  %122 = ptrtoint ptr %cond16.in.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %cond16.i = load i32, ptr %cond16.in.i, align 4
  %123 = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220
  %flt_region_fcp_prio.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 14
  %124 = ptrtoint ptr %flt_region_fcp_prio.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %cond16.i, ptr %flt_region_fcp_prio.i, align 4
  %125 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %flt_addr.1, ptr %123, align 4
  %isp_ops.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 234
  %126 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %isp_ops.i, align 4
  %read_optrom.i = getelementptr inbounds %struct.isp_operations, ptr %127, i32 0, i32 29
  %128 = ptrtoint ptr %read_optrom.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %read_optrom.i, align 4
  %shl.i115 = shl i32 %flt_addr.1, 2
  %call.i = tail call ptr %129(ptr noundef %vha, ptr noundef %119, i32 noundef %shl.i115, i32 noundef 4088) #8
  %130 = ptrtoint ptr %119 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %119, align 2
  %132 = zext i16 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values)
  switch i16 %131, label %if.then24.i [
    i16 -1, label %if.end76.no_flash_data.i_crit_edge
    i16 256, label %for.body.preheader.i
  ]

if.end76.no_flash_data.i_crit_edge:               ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_flash_data.i

if.then24.i:                                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %133 = tail call i16 @llvm.bswap.i16(i16 %131) #8
  %conv26.i = zext i16 %133 to i32
  %length.i = getelementptr inbounds %struct.qla_flt_header, ptr %119, i32 0, i32 1
  %134 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %length.i, align 2
  %136 = tail call i16 @llvm.bswap.i16(i16 %135) #8
  %conv27.i = zext i16 %136 to i32
  %checksum.i = getelementptr inbounds %struct.qla_flt_header, ptr %119, i32 0, i32 2
  %137 = ptrtoint ptr %checksum.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %checksum.i, align 4
  %139 = tail call i16 @llvm.bswap.i16(i16 %138) #8
  %conv28.i = zext i16 %139 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 71, ptr noundef nonnull @.str.35, i32 noundef %conv26.i, i32 noundef %conv27.i, i32 noundef %conv28.i) #8
  br label %no_flash_data.i

for.body.preheader.i:                             ; preds = %if.end76
  %length30.i = getelementptr inbounds %struct.qla_flt_header, ptr %119, i32 0, i32 1
  %140 = ptrtoint ptr %length30.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %length30.i, align 2
  %142 = tail call i16 @llvm.bswap.i16(i16 %141) #8
  %conv31.i = zext i16 %142 to i32
  %add.i116 = add nuw nsw i32 %conv31.i, 8
  %div1193.i = lshr i32 %add.i116, 1
  %conv32.i = trunc i32 %div1193.i to i16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %chksum.01279.i = phi i16 [ %add36.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %cnt.01278.i = phi i16 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %conv32.i, %for.body.preheader.i ]
  %wptr.01277.i = phi ptr [ %incdec.ptr.i117, %for.body.i.for.body.i_crit_edge ], [ %119, %for.body.preheader.i ]
  %dec.i = add i16 %cnt.01278.i, -1
  %143 = ptrtoint ptr %wptr.01277.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %wptr.01277.i, align 2
  %145 = tail call i16 @llvm.bswap.i16(i16 %144) #8
  %add36.i = add i16 %145, %chksum.01279.i
  %incdec.ptr.i117 = getelementptr i16, ptr %wptr.01277.i, i32 1
  %tobool33.not.i118 = icmp eq i16 %dec.i, 0
  br i1 %tobool33.not.i118, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add36.i)
  %phi.cmp.i = icmp eq i16 %add36.i, 0
  br i1 %phi.cmp.i, label %if.end46.i, label %if.then39.i

if.then39.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %checksum44.i = getelementptr inbounds %struct.qla_flt_header, ptr %119, i32 0, i32 2
  %146 = ptrtoint ptr %checksum44.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %checksum44.i, align 4
  %148 = tail call i16 @llvm.bswap.i16(i16 %147) #8
  %conv45.i = zext i16 %148 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 72, ptr noundef nonnull @.str.36, i32 noundef 1, i32 noundef %conv31.i, i32 noundef %conv45.i) #8
  br label %no_flash_data.i

if.end46.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %142)
  %tobool52.not1280.i = icmp ult i16 %142, 16
  br i1 %tobool52.not1280.i, label %if.end46.i.qla2xxx_get_flt_info.exit_crit_edge, label %for.body53.lr.ph.i

if.end46.i.qla2xxx_get_flt_info.exit_crit_edge:   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla2xxx_get_flt_info.exit

for.body53.lr.ph.i:                               ; preds = %if.end46.i
  %149 = lshr i16 %142, 4
  %flt_region_vpd_sec850.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 9
  %flt_region_vpd_nvram_sec.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 7
  %flt_region_nvram_sec715.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 11
  %flt_region_aux_img_status_sec.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 19
  %flt_region_aux_img_status_pri.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 18
  %flt_region_boot_sec.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 3
  %flt_region_fw_sec.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 5
  %flt_region_img_status_sec.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 17
  %flt_region_img_status_pri.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 16
  %flt_region_nvram419.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 10
  %flt_region_vpd381.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 8
  %flt_region_bootload.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 15
  %flt_region_gold_fw358.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 13
  %flt_region_fw355.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 4
  %flt_region_boot330.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 2
  %flt_region_npiv_conf303.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 12
  %flt_region_fdt.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 1
  %flt_region_vpd_nvram.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 6
  br label %for.body53.i

for.body53.i:                                     ; preds = %for.inc853.i.for.body53.i_crit_edge, %for.body53.lr.ph.i
  %cnt.11282.i = phi i16 [ %149, %for.body53.lr.ph.i ], [ %dec854.i, %for.inc853.i.for.body53.i_crit_edge ]
  %region.01281.i = phi ptr [ %region8.i, %for.body53.lr.ph.i ], [ %incdec.ptr855.i, %for.inc853.i.for.body53.i_crit_edge ]
  %start54.i = getelementptr inbounds %struct.qla_flt_region, ptr %region.01281.i, i32 0, i32 4
  %150 = ptrtoint ptr %start54.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %start54.i, align 4
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #8
  %shr.i119 = lshr i32 %152, 2
  %153 = ptrtoint ptr %region.01281.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %region.01281.i, align 4
  %155 = tail call i16 @llvm.bswap.i16(i16 %154) #8
  %conv55.i = zext i16 %155 to i32
  %end.i120 = getelementptr inbounds %struct.qla_flt_region, ptr %region.01281.i, i32 0, i32 5
  %156 = ptrtoint ptr %end.i120 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %end.i120, align 4
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #8
  %shr56.i = lshr i32 %158, 2
  %size.i = getelementptr inbounds %struct.qla_flt_region, ptr %region.01281.i, i32 0, i32 3
  %159 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %size.i, align 4
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #8
  %shr57.i = lshr i32 %161, 2
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 73, ptr noundef nonnull @.str.37, i32 noundef %conv55.i, i32 noundef %shr.i119, i32 noundef %shr56.i, i32 noundef %shr57.i) #8
  %attribute.i = getelementptr inbounds %struct.qla_flt_region, ptr %region.01281.i, i32 0, i32 1
  %162 = ptrtoint ptr %attribute.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %attribute.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool58.not.i = icmp eq i8 %163, 0
  br i1 %tobool58.not.i, label %for.body53.i.if.end62.i_crit_edge, label %if.then59.i

for.body53.i.if.end62.i_crit_edge:                ; preds = %for.body53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

if.then59.i:                                      ; preds = %for.body53.i
  call void @__sanitizer_cov_trace_pc() #10
  %164 = ptrtoint ptr %region.01281.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %region.01281.i, align 4
  %conv61.i = zext i16 %165 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.38, i32 noundef %conv61.i) #8
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then59.i, %for.body53.i.if.end62.i_crit_edge
  %166 = ptrtoint ptr %region.01281.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %region.01281.i, align 4
  %168 = tail call i16 @llvm.bswap.i16(i16 %167) #8
  %169 = zext i16 %168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %168, label %if.end62.i.for.inc853.i_crit_edge [
    i16 164, label %sw.bb.i
    i16 1, label %sw.bb71.i
    i16 7, label %if.end62.i.for.inc853.sink.split.i_crit_edge
    i16 20, label %sw.bb80.i
    i16 22, label %sw.bb103.i
    i16 212, label %sw.bb127.i
    i16 214, label %sw.bb160.i
    i16 21, label %sw.bb194.i
    i16 23, label %sw.bb207.i
    i16 213, label %sw.bb221.i
    i16 215, label %sw.bb255.i
    i16 26, label %sw.bb289.i
    i16 41, label %sw.bb290.i
    i16 42, label %sw.bb297.i
    i16 47, label %sw.bb305.i
    i16 135, label %sw.bb306.i
    i16 136, label %sw.bb314.i
    i16 120, label %if.end62.i.for.inc853.sink.split.i_crit_edge168
    i16 162, label %sw.bb324.i
    i16 116, label %sw.bb332.i
    i16 151, label %sw.bb334.i
    i16 117, label %sw.bb357.i
    i16 114, label %sw.bb359.i
    i16 129, label %sw.bb360.i
    i16 170, label %sw.bb383.i
    i16 172, label %sw.bb402.i
    i16 149, label %sw.bb421.i
    i16 150, label %sw.bb448.i
    i16 2, label %sw.bb475.i
    i16 9, label %sw.bb502.i
    i16 293, label %sw.bb529.i
    i16 294, label %sw.bb556.i
    i16 269, label %sw.bb583.i
    i16 271, label %sw.bb616.i
    i16 273, label %sw.bb650.i
    i16 275, label %sw.bb684.i
    i16 80, label %if.end62.i.sw.bb718.i_crit_edge
    i16 268, label %if.end62.i.sw.bb718.i_crit_edge169
    i16 82, label %if.end62.i.sw.bb751.i_crit_edge
    i16 270, label %if.end62.i.sw.bb751.i_crit_edge170
    i16 216, label %if.end62.i.sw.bb785.i_crit_edge
    i16 272, label %if.end62.i.sw.bb785.i_crit_edge171
    i16 218, label %if.end62.i.sw.bb819.i_crit_edge
    i16 274, label %if.end62.i.sw.bb819.i_crit_edge172
  ]

if.end62.i.sw.bb819.i_crit_edge172:               ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb819.i

if.end62.i.sw.bb819.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb819.i

if.end62.i.sw.bb785.i_crit_edge171:               ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb785.i

if.end62.i.sw.bb785.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb785.i

if.end62.i.sw.bb751.i_crit_edge170:               ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb751.i

if.end62.i.sw.bb751.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb751.i

if.end62.i.sw.bb718.i_crit_edge169:               ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb718.i

if.end62.i.sw.bb718.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb718.i

if.end62.i.for.inc853.sink.split.i_crit_edge168:  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

if.end62.i.for.inc853.sink.split.i_crit_edge:     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

if.end62.i.for.inc853.i_crit_edge:                ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

sw.bb.i:                                          ; preds = %if.end62.i
  %170 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %isp_type.i114, align 8
  %and67.i = and i32 %171, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %sw.bb.i.for.inc853.i_crit_edge, label %sw.bb.i.for.inc853.sink.split.i_crit_edge

sw.bb.i.for.inc853.sink.split.i_crit_edge:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb.i.for.inc853.i_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

sw.bb71.i:                                        ; preds = %if.end62.i
  %172 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %isp_type.i114, align 8
  %and74.i = and i32 %173, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %sw.bb71.i.for.inc853.sink.split.i_crit_edge, label %sw.bb71.i.for.inc853.i_crit_edge

sw.bb71.i.for.inc853.i_crit_edge:                 ; preds = %sw.bb71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

sw.bb71.i.for.inc853.sink.split.i_crit_edge:      ; preds = %sw.bb71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb80.i:                                        ; preds = %if.end62.i
  %174 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %isp_type.i114, align 8
  %and83.i = and i32 %175, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  br i1 %tobool84.not.i, label %if.end86.i, label %sw.bb80.i.for.inc853.i_crit_edge

sw.bb80.i.for.inc853.i_crit_edge:                 ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end86.i:                                       ; preds = %sw.bb80.i
  %176 = ptrtoint ptr %flt_region_vpd_nvram.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %shr.i119, ptr %flt_region_vpd_nvram.i, align 4
  %177 = and i32 %175, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %if.end96.i121, label %if.end86.i.for.inc853.i_crit_edge

if.end86.i.for.inc853.i_crit_edge:                ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end96.i121:                                    ; preds = %if.end86.i
  %179 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %cmp99.i = icmp eq i8 %180, 0
  br i1 %cmp99.i, label %if.end96.i121.for.inc853.sink.split.i_crit_edge, label %if.end96.i121.for.inc853.i_crit_edge

if.end96.i121.for.inc853.i_crit_edge:             ; preds = %if.end96.i121
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end96.i121.for.inc853.sink.split.i_crit_edge:  ; preds = %if.end96.i121
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb103.i:                                       ; preds = %if.end62.i
  %181 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %isp_type.i114, align 8
  %183 = and i32 %182, 344064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %if.end119.i, label %sw.bb103.i.for.inc853.i_crit_edge

sw.bb103.i.for.inc853.i_crit_edge:                ; preds = %sw.bb103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end119.i:                                      ; preds = %sw.bb103.i
  %185 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %186)
  %cmp122.i = icmp eq i8 %186, 1
  br i1 %cmp122.i, label %if.end119.i.for.inc853.sink.split.i_crit_edge, label %if.end119.i.for.inc853.i_crit_edge

if.end119.i.for.inc853.i_crit_edge:               ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end119.i.for.inc853.sink.split.i_crit_edge:    ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb127.i:                                       ; preds = %if.end62.i
  %187 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %isp_type.i114, align 8
  %189 = and i32 %188, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %sw.bb127.i.for.inc853.i_crit_edge, label %if.end152.i

sw.bb127.i.for.inc853.i_crit_edge:                ; preds = %sw.bb127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end152.i:                                      ; preds = %sw.bb127.i
  %191 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %192)
  %cmp155.i = icmp eq i8 %192, 2
  br i1 %cmp155.i, label %if.end152.i.for.inc853.sink.split.i_crit_edge, label %if.end152.i.for.inc853.i_crit_edge

if.end152.i.for.inc853.i_crit_edge:               ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end152.i.for.inc853.sink.split.i_crit_edge:    ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb160.i:                                       ; preds = %if.end62.i
  %193 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %isp_type.i114, align 8
  %195 = and i32 %194, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %sw.bb160.i.for.inc853.i_crit_edge, label %if.end186.i

sw.bb160.i.for.inc853.i_crit_edge:                ; preds = %sw.bb160.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end186.i:                                      ; preds = %sw.bb160.i
  %197 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %198)
  %cmp189.i = icmp eq i8 %198, 3
  br i1 %cmp189.i, label %if.end186.i.for.inc853.sink.split.i_crit_edge, label %if.end186.i.for.inc853.i_crit_edge

if.end186.i.for.inc853.i_crit_edge:               ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end186.i.for.inc853.sink.split.i_crit_edge:    ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb194.i:                                       ; preds = %if.end62.i
  %199 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %isp_type.i114, align 8
  %and197.i = and i32 %200, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197.i)
  %tobool198.not.i = icmp eq i32 %and197.i, 0
  br i1 %tobool198.not.i, label %if.end200.i, label %sw.bb194.i.for.inc853.i_crit_edge

sw.bb194.i.for.inc853.i_crit_edge:                ; preds = %sw.bb194.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end200.i:                                      ; preds = %sw.bb194.i
  %201 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %cmp203.i = icmp eq i8 %202, 0
  br i1 %cmp203.i, label %if.end200.i.for.inc853.sink.split.i_crit_edge, label %if.end200.i.for.inc853.i_crit_edge

if.end200.i.for.inc853.i_crit_edge:               ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end200.i.for.inc853.sink.split.i_crit_edge:    ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb207.i:                                       ; preds = %if.end62.i
  %203 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %isp_type.i114, align 8
  %and210.i = and i32 %204, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210.i)
  %tobool211.not.i = icmp eq i32 %and210.i, 0
  br i1 %tobool211.not.i, label %if.end213.i, label %sw.bb207.i.for.inc853.i_crit_edge

sw.bb207.i.for.inc853.i_crit_edge:                ; preds = %sw.bb207.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end213.i:                                      ; preds = %sw.bb207.i
  %205 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %206)
  %cmp216.i = icmp eq i8 %206, 1
  br i1 %cmp216.i, label %if.end213.i.for.inc853.sink.split.i_crit_edge, label %if.end213.i.for.inc853.i_crit_edge

if.end213.i.for.inc853.i_crit_edge:               ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end213.i.for.inc853.sink.split.i_crit_edge:    ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb221.i:                                       ; preds = %if.end62.i
  %207 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %isp_type.i114, align 8
  %209 = and i32 %208, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %sw.bb221.i.for.inc853.i_crit_edge, label %if.end247.i

sw.bb221.i.for.inc853.i_crit_edge:                ; preds = %sw.bb221.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end247.i:                                      ; preds = %sw.bb221.i
  %211 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %212)
  %cmp250.i = icmp eq i8 %212, 2
  br i1 %cmp250.i, label %if.end247.i.for.inc853.sink.split.i_crit_edge, label %if.end247.i.for.inc853.i_crit_edge

if.end247.i.for.inc853.i_crit_edge:               ; preds = %if.end247.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end247.i.for.inc853.sink.split.i_crit_edge:    ; preds = %if.end247.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb255.i:                                       ; preds = %if.end62.i
  %213 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %isp_type.i114, align 8
  %215 = and i32 %214, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %sw.bb255.i.for.inc853.i_crit_edge, label %if.end281.i

sw.bb255.i.for.inc853.i_crit_edge:                ; preds = %sw.bb255.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end281.i:                                      ; preds = %sw.bb255.i
  %217 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %218)
  %cmp284.i = icmp eq i8 %218, 3
  br i1 %cmp284.i, label %if.end281.i.for.inc853.sink.split.i_crit_edge, label %if.end281.i.for.inc853.i_crit_edge

if.end281.i.for.inc853.i_crit_edge:               ; preds = %if.end281.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end281.i.for.inc853.sink.split.i_crit_edge:    ; preds = %if.end281.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb289.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb290.i:                                       ; preds = %if.end62.i
  %219 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %cmp293.i = icmp eq i8 %220, 0
  br i1 %cmp293.i, label %sw.bb290.i.for.inc853.sink.split.i_crit_edge, label %sw.bb290.i.for.inc853.i_crit_edge

sw.bb290.i.for.inc853.i_crit_edge:                ; preds = %sw.bb290.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

sw.bb290.i.for.inc853.sink.split.i_crit_edge:     ; preds = %sw.bb290.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb297.i:                                       ; preds = %if.end62.i
  %221 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %222)
  %cmp300.i = icmp eq i8 %222, 1
  br i1 %cmp300.i, label %sw.bb297.i.for.inc853.sink.split.i_crit_edge, label %sw.bb297.i.for.inc853.i_crit_edge

sw.bb297.i.for.inc853.i_crit_edge:                ; preds = %sw.bb297.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

sw.bb297.i.for.inc853.sink.split.i_crit_edge:     ; preds = %sw.bb297.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb305.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb306.i:                                       ; preds = %if.end62.i
  %223 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %cmp309.i = icmp eq i8 %224, 0
  br i1 %cmp309.i, label %sw.bb306.i.for.inc853.sink.split.i_crit_edge, label %sw.bb306.i.for.inc853.i_crit_edge

sw.bb306.i.for.inc853.i_crit_edge:                ; preds = %sw.bb306.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

sw.bb306.i.for.inc853.sink.split.i_crit_edge:     ; preds = %sw.bb306.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb314.i:                                       ; preds = %if.end62.i
  %225 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %226)
  %cmp317.i = icmp eq i8 %226, 1
  br i1 %cmp317.i, label %sw.bb314.i.for.inc853.sink.split.i_crit_edge, label %sw.bb314.i.for.inc853.i_crit_edge

sw.bb314.i.for.inc853.i_crit_edge:                ; preds = %sw.bb314.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

sw.bb314.i.for.inc853.sink.split.i_crit_edge:     ; preds = %sw.bb314.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb324.i:                                       ; preds = %if.end62.i
  %227 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %isp_type.i114, align 8
  %and327.i = and i32 %228, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and327.i)
  %tobool328.not.i = icmp eq i32 %and327.i, 0
  br i1 %tobool328.not.i, label %sw.bb324.i.for.inc853.i_crit_edge, label %sw.bb324.i.for.inc853.sink.split.i_crit_edge

sw.bb324.i.for.inc853.sink.split.i_crit_edge:     ; preds = %sw.bb324.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb324.i.for.inc853.i_crit_edge:                ; preds = %sw.bb324.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

sw.bb332.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb334.i:                                       ; preds = %if.end62.i
  %229 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %isp_type.i114, align 8
  %231 = and i32 %230, 352256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %sw.bb334.i.for.inc853.i_crit_edge, label %sw.bb334.i.for.inc853.sink.split.i_crit_edge

sw.bb334.i.for.inc853.sink.split.i_crit_edge:     ; preds = %sw.bb334.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb334.i.for.inc853.i_crit_edge:                ; preds = %sw.bb334.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

sw.bb357.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb359.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb360.i:                                       ; preds = %if.end62.i
  %233 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %isp_type.i114, align 8
  %235 = and i32 %234, 352256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %sw.bb360.i.for.inc853.i_crit_edge, label %sw.bb360.i.for.inc853.sink.split.i_crit_edge

sw.bb360.i.for.inc853.sink.split.i_crit_edge:     ; preds = %sw.bb360.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb360.i.for.inc853.i_crit_edge:                ; preds = %sw.bb360.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

sw.bb383.i:                                       ; preds = %if.end62.i
  %237 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %isp_type.i114, align 8
  %239 = and i32 %238, 327680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %sw.bb383.i.for.inc853.i_crit_edge, label %if.end394.i

sw.bb383.i.for.inc853.i_crit_edge:                ; preds = %sw.bb383.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end394.i:                                      ; preds = %sw.bb383.i
  %241 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %cmp397.i = icmp eq i8 %242, 0
  br i1 %cmp397.i, label %if.end394.i.for.inc853.sink.split.i_crit_edge, label %if.end394.i.for.inc853.i_crit_edge

if.end394.i.for.inc853.i_crit_edge:               ; preds = %if.end394.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end394.i.for.inc853.sink.split.i_crit_edge:    ; preds = %if.end394.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb402.i:                                       ; preds = %if.end62.i
  %243 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %isp_type.i114, align 8
  %245 = and i32 %244, 327680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %sw.bb402.i.for.inc853.i_crit_edge, label %if.end413.i

sw.bb402.i.for.inc853.i_crit_edge:                ; preds = %sw.bb402.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end413.i:                                      ; preds = %sw.bb402.i
  %247 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %248)
  %cmp416.i = icmp eq i8 %248, 1
  br i1 %cmp416.i, label %if.end413.i.for.inc853.sink.split.i_crit_edge, label %if.end413.i.for.inc853.i_crit_edge

if.end413.i.for.inc853.i_crit_edge:               ; preds = %if.end413.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.end413.i.for.inc853.sink.split.i_crit_edge:    ; preds = %if.end413.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb421.i:                                       ; preds = %if.end62.i
  %249 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %isp_type.i114, align 8
  %251 = and i32 %250, 3670016
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %252 = icmp ne i32 %251, 0
  %253 = and i32 %250, 41943040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %254 = icmp eq i32 %253, 0
  %or.cond.i = and i1 %252, %254
  br i1 %or.cond.i, label %sw.bb421.i.for.inc853.sink.split.i_crit_edge, label %sw.bb421.i.for.inc853.i_crit_edge

sw.bb421.i.for.inc853.i_crit_edge:                ; preds = %sw.bb421.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

sw.bb421.i.for.inc853.sink.split.i_crit_edge:     ; preds = %sw.bb421.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb448.i:                                       ; preds = %if.end62.i
  %255 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %isp_type.i114, align 8
  %257 = and i32 %256, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %sw.bb448.i.for.inc853.i_crit_edge, label %sw.bb448.i.for.inc853.sink.split.i_crit_edge

sw.bb448.i.for.inc853.sink.split.i_crit_edge:     ; preds = %sw.bb448.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb448.i.for.inc853.i_crit_edge:                ; preds = %sw.bb448.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

sw.bb475.i:                                       ; preds = %if.end62.i
  %259 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %isp_type.i114, align 8
  %261 = and i32 %260, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %sw.bb475.i.for.inc853.i_crit_edge, label %sw.bb475.i.for.inc853.sink.split.i_crit_edge

sw.bb475.i.for.inc853.sink.split.i_crit_edge:     ; preds = %sw.bb475.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb475.i.for.inc853.i_crit_edge:                ; preds = %sw.bb475.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

sw.bb502.i:                                       ; preds = %if.end62.i
  %263 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %isp_type.i114, align 8
  %265 = and i32 %264, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %sw.bb502.i.for.inc853.i_crit_edge, label %sw.bb502.i.for.inc853.sink.split.i_crit_edge

sw.bb502.i.for.inc853.sink.split.i_crit_edge:     ; preds = %sw.bb502.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb502.i.for.inc853.i_crit_edge:                ; preds = %sw.bb502.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

sw.bb529.i:                                       ; preds = %if.end62.i
  %267 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %isp_type.i114, align 8
  %269 = and i32 %268, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %sw.bb529.i.for.inc853.i_crit_edge, label %sw.bb529.i.for.inc853.sink.split.i_crit_edge

sw.bb529.i.for.inc853.sink.split.i_crit_edge:     ; preds = %sw.bb529.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb529.i.for.inc853.i_crit_edge:                ; preds = %sw.bb529.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

sw.bb556.i:                                       ; preds = %if.end62.i
  %271 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %isp_type.i114, align 8
  %273 = and i32 %272, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %sw.bb556.i.for.inc853.i_crit_edge, label %sw.bb556.i.for.inc853.sink.split.i_crit_edge

sw.bb556.i.for.inc853.sink.split.i_crit_edge:     ; preds = %sw.bb556.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb556.i.for.inc853.i_crit_edge:                ; preds = %sw.bb556.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

sw.bb583.i:                                       ; preds = %if.end62.i
  %275 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %isp_type.i114, align 8
  %277 = and i32 %276, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %sw.bb583.i.for.inc853.i_crit_edge, label %if.then608.i

sw.bb583.i.for.inc853.i_crit_edge:                ; preds = %sw.bb583.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.then608.i:                                     ; preds = %sw.bb583.i
  %279 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %280)
  %cmp611.i = icmp eq i8 %280, 0
  br i1 %cmp611.i, label %if.then608.i.for.inc853.sink.split.i_crit_edge, label %if.then608.i.for.inc853.i_crit_edge

if.then608.i.for.inc853.i_crit_edge:              ; preds = %if.then608.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.then608.i.for.inc853.sink.split.i_crit_edge:   ; preds = %if.then608.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb616.i:                                       ; preds = %if.end62.i
  %281 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %isp_type.i114, align 8
  %283 = and i32 %282, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %sw.bb616.i.for.inc853.i_crit_edge, label %if.then641.i

sw.bb616.i.for.inc853.i_crit_edge:                ; preds = %sw.bb616.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.then641.i:                                     ; preds = %sw.bb616.i
  %285 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %286)
  %cmp644.i = icmp eq i8 %286, 1
  br i1 %cmp644.i, label %if.then641.i.for.inc853.sink.split.i_crit_edge, label %if.then641.i.for.inc853.i_crit_edge

if.then641.i.for.inc853.i_crit_edge:              ; preds = %if.then641.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.then641.i.for.inc853.sink.split.i_crit_edge:   ; preds = %if.then641.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb650.i:                                       ; preds = %if.end62.i
  %287 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %isp_type.i114, align 8
  %289 = and i32 %288, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %sw.bb650.i.for.inc853.i_crit_edge, label %if.then675.i

sw.bb650.i.for.inc853.i_crit_edge:                ; preds = %sw.bb650.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.then675.i:                                     ; preds = %sw.bb650.i
  %291 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %292)
  %cmp678.i = icmp eq i8 %292, 2
  br i1 %cmp678.i, label %if.then675.i.for.inc853.sink.split.i_crit_edge, label %if.then675.i.for.inc853.i_crit_edge

if.then675.i.for.inc853.i_crit_edge:              ; preds = %if.then675.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.then675.i.for.inc853.sink.split.i_crit_edge:   ; preds = %if.then675.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb684.i:                                       ; preds = %if.end62.i
  %293 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %isp_type.i114, align 8
  %295 = and i32 %294, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %295)
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %sw.bb684.i.for.inc853.i_crit_edge, label %if.then709.i

sw.bb684.i.for.inc853.i_crit_edge:                ; preds = %sw.bb684.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.then709.i:                                     ; preds = %sw.bb684.i
  %297 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %298)
  %cmp712.i = icmp eq i8 %298, 3
  br i1 %cmp712.i, label %if.then709.i.for.inc853.sink.split.i_crit_edge, label %if.then709.i.for.inc853.i_crit_edge

if.then709.i.for.inc853.i_crit_edge:              ; preds = %if.then709.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.then709.i.for.inc853.sink.split.i_crit_edge:   ; preds = %if.then709.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb718.i:                                       ; preds = %if.end62.i.sw.bb718.i_crit_edge, %if.end62.i.sw.bb718.i_crit_edge169
  %299 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %isp_type.i114, align 8
  %301 = and i32 %300, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %sw.bb718.i.for.inc853.i_crit_edge, label %if.then743.i

sw.bb718.i.for.inc853.i_crit_edge:                ; preds = %sw.bb718.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.then743.i:                                     ; preds = %sw.bb718.i
  %303 = ptrtoint ptr %flt_region_vpd_nvram_sec.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %shr.i119, ptr %flt_region_vpd_nvram_sec.i, align 4
  %304 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %305)
  %cmp746.i = icmp eq i8 %305, 0
  br i1 %cmp746.i, label %if.then743.i.for.inc853.sink.split.i_crit_edge, label %if.then743.i.for.inc853.i_crit_edge

if.then743.i.for.inc853.i_crit_edge:              ; preds = %if.then743.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.then743.i.for.inc853.sink.split.i_crit_edge:   ; preds = %if.then743.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb751.i:                                       ; preds = %if.end62.i.sw.bb751.i_crit_edge, %if.end62.i.sw.bb751.i_crit_edge170
  %306 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %isp_type.i114, align 8
  %308 = and i32 %307, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %308)
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %sw.bb751.i.for.inc853.i_crit_edge, label %if.then776.i

sw.bb751.i.for.inc853.i_crit_edge:                ; preds = %sw.bb751.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.then776.i:                                     ; preds = %sw.bb751.i
  %310 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %311)
  %cmp779.i = icmp eq i8 %311, 1
  br i1 %cmp779.i, label %if.then776.i.for.inc853.sink.split.i_crit_edge, label %if.then776.i.for.inc853.i_crit_edge

if.then776.i.for.inc853.i_crit_edge:              ; preds = %if.then776.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.then776.i.for.inc853.sink.split.i_crit_edge:   ; preds = %if.then776.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb785.i:                                       ; preds = %if.end62.i.sw.bb785.i_crit_edge, %if.end62.i.sw.bb785.i_crit_edge171
  %312 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %isp_type.i114, align 8
  %314 = and i32 %313, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %sw.bb785.i.for.inc853.i_crit_edge, label %if.then810.i

sw.bb785.i.for.inc853.i_crit_edge:                ; preds = %sw.bb785.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.then810.i:                                     ; preds = %sw.bb785.i
  %316 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %317)
  %cmp813.i = icmp eq i8 %317, 2
  br i1 %cmp813.i, label %if.then810.i.for.inc853.sink.split.i_crit_edge, label %if.then810.i.for.inc853.i_crit_edge

if.then810.i.for.inc853.i_crit_edge:              ; preds = %if.then810.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.then810.i.for.inc853.sink.split.i_crit_edge:   ; preds = %if.then810.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

sw.bb819.i:                                       ; preds = %if.end62.i.sw.bb819.i_crit_edge, %if.end62.i.sw.bb819.i_crit_edge172
  %318 = ptrtoint ptr %isp_type.i114 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %isp_type.i114, align 8
  %320 = and i32 %319, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %320)
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %sw.bb819.i.for.inc853.i_crit_edge, label %if.then844.i

sw.bb819.i.for.inc853.i_crit_edge:                ; preds = %sw.bb819.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.then844.i:                                     ; preds = %sw.bb819.i
  %322 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %323)
  %cmp847.i = icmp eq i8 %323, 3
  br i1 %cmp847.i, label %if.then844.i.for.inc853.sink.split.i_crit_edge, label %if.then844.i.for.inc853.i_crit_edge

if.then844.i.for.inc853.i_crit_edge:              ; preds = %if.then844.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.i

if.then844.i.for.inc853.sink.split.i_crit_edge:   ; preds = %if.then844.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc853.sink.split.i

for.inc853.sink.split.i:                          ; preds = %if.then844.i.for.inc853.sink.split.i_crit_edge, %if.then810.i.for.inc853.sink.split.i_crit_edge, %if.then776.i.for.inc853.sink.split.i_crit_edge, %if.then743.i.for.inc853.sink.split.i_crit_edge, %if.then709.i.for.inc853.sink.split.i_crit_edge, %if.then675.i.for.inc853.sink.split.i_crit_edge, %if.then641.i.for.inc853.sink.split.i_crit_edge, %if.then608.i.for.inc853.sink.split.i_crit_edge, %sw.bb556.i.for.inc853.sink.split.i_crit_edge, %sw.bb529.i.for.inc853.sink.split.i_crit_edge, %sw.bb502.i.for.inc853.sink.split.i_crit_edge, %sw.bb475.i.for.inc853.sink.split.i_crit_edge, %sw.bb448.i.for.inc853.sink.split.i_crit_edge, %sw.bb421.i.for.inc853.sink.split.i_crit_edge, %if.end413.i.for.inc853.sink.split.i_crit_edge, %if.end394.i.for.inc853.sink.split.i_crit_edge, %sw.bb360.i.for.inc853.sink.split.i_crit_edge, %sw.bb359.i, %sw.bb357.i, %sw.bb334.i.for.inc853.sink.split.i_crit_edge, %sw.bb332.i, %sw.bb324.i.for.inc853.sink.split.i_crit_edge, %sw.bb314.i.for.inc853.sink.split.i_crit_edge, %sw.bb306.i.for.inc853.sink.split.i_crit_edge, %sw.bb305.i, %sw.bb297.i.for.inc853.sink.split.i_crit_edge, %sw.bb290.i.for.inc853.sink.split.i_crit_edge, %sw.bb289.i, %if.end281.i.for.inc853.sink.split.i_crit_edge, %if.end247.i.for.inc853.sink.split.i_crit_edge, %if.end213.i.for.inc853.sink.split.i_crit_edge, %if.end200.i.for.inc853.sink.split.i_crit_edge, %if.end186.i.for.inc853.sink.split.i_crit_edge, %if.end152.i.for.inc853.sink.split.i_crit_edge, %if.end119.i.for.inc853.sink.split.i_crit_edge, %if.end96.i121.for.inc853.sink.split.i_crit_edge, %sw.bb71.i.for.inc853.sink.split.i_crit_edge, %sw.bb.i.for.inc853.sink.split.i_crit_edge, %if.end62.i.for.inc853.sink.split.i_crit_edge, %if.end62.i.for.inc853.sink.split.i_crit_edge168
  %flt_region_fw355.sink.i = phi ptr [ %flt_region_fdt.i, %sw.bb289.i ], [ %flt_region_gold_fw358.i, %sw.bb305.i ], [ %flt_region_fw355.i, %sw.bb332.i ], [ %flt_region_gold_fw358.i, %sw.bb357.i ], [ %flt_region_bootload.i, %sw.bb359.i ], [ %flt_region_fw355.i, %sw.bb.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_fw355.i, %sw.bb71.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_boot330.i, %if.end62.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_vpd381.i, %if.end96.i121.for.inc853.sink.split.i_crit_edge ], [ %flt_region_vpd381.i, %if.end119.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_vpd381.i, %if.end152.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_vpd381.i, %if.end186.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_nvram419.i, %if.end200.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_nvram419.i, %if.end213.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_nvram419.i, %if.end247.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_nvram419.i, %if.end281.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_npiv_conf303.i, %sw.bb290.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_npiv_conf303.i, %sw.bb297.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_fcp_prio.i, %sw.bb306.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_fcp_prio.i, %sw.bb314.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_boot330.i, %if.end62.i.for.inc853.sink.split.i_crit_edge168 ], [ %flt_region_boot330.i, %sw.bb324.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_fw355.i, %sw.bb334.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_vpd381.i, %sw.bb360.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_nvram419.i, %if.end394.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_nvram419.i, %if.end413.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_img_status_pri.i, %sw.bb421.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_img_status_sec.i, %sw.bb448.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_fw_sec.i, %sw.bb475.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_boot_sec.i, %sw.bb502.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_aux_img_status_pri.i, %sw.bb529.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_aux_img_status_sec.i, %sw.bb556.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_nvram_sec715.i, %if.then608.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_nvram_sec715.i, %if.then641.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_nvram_sec715.i, %if.then675.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_nvram_sec715.i, %if.then709.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_vpd_sec850.i, %if.then743.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_vpd_sec850.i, %if.then776.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_vpd_sec850.i, %if.then810.i.for.inc853.sink.split.i_crit_edge ], [ %flt_region_vpd_sec850.i, %if.then844.i.for.inc853.sink.split.i_crit_edge ]
  %324 = ptrtoint ptr %flt_region_fw355.sink.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %shr.i119, ptr %flt_region_fw355.sink.i, align 4
  br label %for.inc853.i

for.inc853.i:                                     ; preds = %for.inc853.sink.split.i, %if.then844.i.for.inc853.i_crit_edge, %sw.bb819.i.for.inc853.i_crit_edge, %if.then810.i.for.inc853.i_crit_edge, %sw.bb785.i.for.inc853.i_crit_edge, %if.then776.i.for.inc853.i_crit_edge, %sw.bb751.i.for.inc853.i_crit_edge, %if.then743.i.for.inc853.i_crit_edge, %sw.bb718.i.for.inc853.i_crit_edge, %if.then709.i.for.inc853.i_crit_edge, %sw.bb684.i.for.inc853.i_crit_edge, %if.then675.i.for.inc853.i_crit_edge, %sw.bb650.i.for.inc853.i_crit_edge, %if.then641.i.for.inc853.i_crit_edge, %sw.bb616.i.for.inc853.i_crit_edge, %if.then608.i.for.inc853.i_crit_edge, %sw.bb583.i.for.inc853.i_crit_edge, %sw.bb556.i.for.inc853.i_crit_edge, %sw.bb529.i.for.inc853.i_crit_edge, %sw.bb502.i.for.inc853.i_crit_edge, %sw.bb475.i.for.inc853.i_crit_edge, %sw.bb448.i.for.inc853.i_crit_edge, %sw.bb421.i.for.inc853.i_crit_edge, %if.end413.i.for.inc853.i_crit_edge, %sw.bb402.i.for.inc853.i_crit_edge, %if.end394.i.for.inc853.i_crit_edge, %sw.bb383.i.for.inc853.i_crit_edge, %sw.bb360.i.for.inc853.i_crit_edge, %sw.bb334.i.for.inc853.i_crit_edge, %sw.bb324.i.for.inc853.i_crit_edge, %sw.bb314.i.for.inc853.i_crit_edge, %sw.bb306.i.for.inc853.i_crit_edge, %sw.bb297.i.for.inc853.i_crit_edge, %sw.bb290.i.for.inc853.i_crit_edge, %if.end281.i.for.inc853.i_crit_edge, %sw.bb255.i.for.inc853.i_crit_edge, %if.end247.i.for.inc853.i_crit_edge, %sw.bb221.i.for.inc853.i_crit_edge, %if.end213.i.for.inc853.i_crit_edge, %sw.bb207.i.for.inc853.i_crit_edge, %if.end200.i.for.inc853.i_crit_edge, %sw.bb194.i.for.inc853.i_crit_edge, %if.end186.i.for.inc853.i_crit_edge, %sw.bb160.i.for.inc853.i_crit_edge, %if.end152.i.for.inc853.i_crit_edge, %sw.bb127.i.for.inc853.i_crit_edge, %if.end119.i.for.inc853.i_crit_edge, %sw.bb103.i.for.inc853.i_crit_edge, %if.end96.i121.for.inc853.i_crit_edge, %if.end86.i.for.inc853.i_crit_edge, %sw.bb80.i.for.inc853.i_crit_edge, %sw.bb71.i.for.inc853.i_crit_edge, %sw.bb.i.for.inc853.i_crit_edge, %if.end62.i.for.inc853.i_crit_edge
  %dec854.i = add nsw i16 %cnt.11282.i, -1
  %incdec.ptr855.i = getelementptr %struct.qla_flt_region, ptr %region.01281.i, i32 1
  %tobool52.not.i = icmp eq i16 %dec854.i, 0
  br i1 %tobool52.not.i, label %for.inc853.i.qla2xxx_get_flt_info.exit_crit_edge, label %for.inc853.i.for.body53.i_crit_edge

for.inc853.i.for.body53.i_crit_edge:              ; preds = %for.inc853.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body53.i

for.inc853.i.qla2xxx_get_flt_info.exit_crit_edge: ; preds = %for.inc853.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla2xxx_get_flt_info.exit

no_flash_data.i:                                  ; preds = %if.then39.i, %if.then24.i, %if.end76.no_flash_data.i_crit_edge
  %arrayidx858.i = getelementptr [3 x i32], ptr @__const.qla2xxx_get_flt_info.def_fw, i32 0, i32 %cond6.i
  %325 = ptrtoint ptr %arrayidx858.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %arrayidx858.i, align 4
  %flt_region_fw859.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 4
  %327 = ptrtoint ptr %flt_region_fw859.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %326, ptr %flt_region_fw859.i, align 4
  %arrayidx860.i = getelementptr [3 x i32], ptr @__const.qla2xxx_get_flt_info.def_boot, i32 0, i32 %cond6.i
  %328 = ptrtoint ptr %arrayidx860.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx860.i, align 4
  %flt_region_boot861.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 2
  %330 = ptrtoint ptr %flt_region_boot861.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %329, ptr %flt_region_boot861.i, align 4
  %arrayidx862.i = getelementptr [3 x i32], ptr @__const.qla2xxx_get_flt_info.def_vpd_nvram, i32 0, i32 %cond6.i
  %331 = ptrtoint ptr %arrayidx862.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %arrayidx862.i, align 4
  %flt_region_vpd_nvram863.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 6
  %333 = ptrtoint ptr %flt_region_vpd_nvram863.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %332, ptr %flt_region_vpd_nvram863.i, align 4
  %334 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %335)
  %cmp866.i = icmp eq i8 %335, 0
  %__const.qla2xxx_get_flt_info.def_vpd0.__const.qla2xxx_get_flt_info.def_vpd1.i = select i1 %cmp866.i, ptr @__const.qla2xxx_get_flt_info.def_vpd0, ptr @__const.qla2xxx_get_flt_info.def_vpd1
  %cond873.in.i = getelementptr [3 x i32], ptr %__const.qla2xxx_get_flt_info.def_vpd0.__const.qla2xxx_get_flt_info.def_vpd1.i, i32 0, i32 %cond6.i
  %336 = ptrtoint ptr %cond873.in.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %cond873.i = load i32, ptr %cond873.in.i, align 4
  %flt_region_vpd874.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 8
  %337 = ptrtoint ptr %flt_region_vpd874.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %cond873.i, ptr %flt_region_vpd874.i, align 4
  %__const.qla2xxx_get_flt_info.def_nvram0.pn.i = select i1 %cmp866.i, ptr @__const.qla2xxx_get_flt_info.def_nvram0, ptr @__const.qla2xxx_get_flt_info.def_nvram1
  %cond884.in.i = getelementptr [3 x i32], ptr %__const.qla2xxx_get_flt_info.def_nvram0.pn.i, i32 0, i32 %cond6.i
  %338 = ptrtoint ptr %cond884.in.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %cond884.i = load i32, ptr %cond884.in.i, align 4
  %flt_region_nvram885.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 10
  %339 = ptrtoint ptr %flt_region_nvram885.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %cond884.i, ptr %flt_region_nvram885.i, align 4
  %arrayidx886.i = getelementptr [3 x i32], ptr @__const.qla2xxx_get_flt_info.def_fdt, i32 0, i32 %cond6.i
  %340 = ptrtoint ptr %arrayidx886.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %arrayidx886.i, align 4
  %flt_region_fdt887.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 1
  %342 = ptrtoint ptr %flt_region_fdt887.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %341, ptr %flt_region_fdt887.i, align 4
  %__const.qla2xxx_get_flt_info.def_npiv_conf0.pn.i = select i1 %cmp866.i, ptr @__const.qla2xxx_get_flt_info.def_npiv_conf0, ptr @__const.qla2xxx_get_flt_info.def_npiv_conf1
  %cond897.in.i = getelementptr [3 x i32], ptr %__const.qla2xxx_get_flt_info.def_npiv_conf0.pn.i, i32 0, i32 %cond6.i
  %343 = ptrtoint ptr %cond897.in.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %cond897.i = load i32, ptr %cond897.in.i, align 4
  %flt_region_npiv_conf898.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 12
  %344 = ptrtoint ptr %flt_region_npiv_conf898.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %cond897.i, ptr %flt_region_npiv_conf898.i, align 4
  br label %qla2xxx_get_flt_info.exit

qla2xxx_get_flt_info.exit:                        ; preds = %no_flash_data.i, %for.inc853.i.qla2xxx_get_flt_info.exit_crit_edge, %if.end46.i.qla2xxx_get_flt_info.exit_crit_edge
  %loc.0.i122 = phi ptr [ @.str.29, %no_flash_data.i ], [ @.str.34, %if.end46.i.qla2xxx_get_flt_info.exit_crit_edge ], [ @.str.34, %for.inc853.i.qla2xxx_get_flt_info.exit_crit_edge ]
  %flt_region_boot899.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 2
  %345 = ptrtoint ptr %flt_region_boot899.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %flt_region_boot899.i, align 4
  %flt_region_fw900.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 4
  %347 = ptrtoint ptr %flt_region_fw900.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %flt_region_fw900.i, align 4
  %flt_region_vpd_nvram901.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 6
  %349 = ptrtoint ptr %flt_region_vpd_nvram901.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %flt_region_vpd_nvram901.i, align 4
  %flt_region_vpd902.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 8
  %351 = ptrtoint ptr %flt_region_vpd902.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %flt_region_vpd902.i, align 4
  %flt_region_nvram903.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 10
  %353 = ptrtoint ptr %flt_region_nvram903.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %flt_region_nvram903.i, align 4
  %flt_region_fdt904.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 1
  %355 = ptrtoint ptr %flt_region_fdt904.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %flt_region_fdt904.i, align 4
  %357 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %123, align 4
  %flt_region_npiv_conf906.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 220, i32 12
  %359 = ptrtoint ptr %flt_region_npiv_conf906.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %flt_region_npiv_conf906.i, align 4
  %361 = ptrtoint ptr %flt_region_fcp_prio.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %flt_region_fcp_prio.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 74, ptr noundef nonnull @.str.39, ptr noundef nonnull %loc.0.i122, i32 noundef %346, i32 noundef %348, i32 noundef %350, i32 noundef %352, i32 noundef %354, i32 noundef %356, i32 noundef %358, i32 noundef %360, i32 noundef %362) #8
  %363 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %hw, align 4
  %req_q_map.i124 = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 24
  %365 = ptrtoint ptr %req_q_map.i124 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %req_q_map.i124, align 4
  %367 = ptrtoint ptr %366 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %366, align 4
  %ring.i125 = getelementptr inbounds %struct.req_que, ptr %368, i32 0, i32 1
  %369 = ptrtoint ptr %ring.i125 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %ring.i125, align 4
  %isp_ops.i126 = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 234
  %371 = ptrtoint ptr %isp_ops.i126 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %isp_ops.i126, align 4
  %read_optrom.i127 = getelementptr inbounds %struct.isp_operations, ptr %372, i32 0, i32 29
  %373 = ptrtoint ptr %read_optrom.i127 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %read_optrom.i127, align 4
  %flt_region_fdt.i128 = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 220, i32 1
  %375 = ptrtoint ptr %flt_region_fdt.i128 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %flt_region_fdt.i128, align 4
  %shl.i129 = shl i32 %376, 2
  %call.i130 = tail call ptr %374(ptr noundef %vha, ptr noundef %370, i32 noundef %shl.i129, i32 noundef 1024) #8
  %377 = ptrtoint ptr %370 to i32
  call void @__asan_load2_noabort(i32 %377)
  %378 = load i16, ptr %370, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %378)
  %cmp.i131 = icmp eq i16 %378, -1
  br i1 %cmp.i131, label %qla2xxx_get_flt_info.exit.no_flash_data.i141_crit_edge, label %if.end.i

qla2xxx_get_flt_info.exit.no_flash_data.i141_crit_edge: ; preds = %qla2xxx_get_flt_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_flash_data.i141

if.end.i:                                         ; preds = %qla2xxx_get_flt_info.exit
  %bcmp.i132 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %370, ptr noundef nonnull dereferenceable(4) @.str.42, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i132)
  %tobool.not.i133 = icmp eq i32 %bcmp.i132, 0
  br i1 %tobool.not.i133, label %if.end.i.for.body.i136_crit_edge, label %if.end.i.no_flash_data.i141_crit_edge

if.end.i.no_flash_data.i141_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_flash_data.i141

if.end.i.for.body.i136_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i136

for.body.i136:                                    ; preds = %for.body.i136.for.body.i136_crit_edge, %if.end.i.for.body.i136_crit_edge
  %wptr.0206.i = phi ptr [ %incdec.ptr.i135, %for.body.i136.for.body.i136_crit_edge ], [ %370, %if.end.i.for.body.i136_crit_edge ]
  %chksum.0205.i = phi i16 [ %add.i134, %for.body.i136.for.body.i136_crit_edge ], [ 0, %if.end.i.for.body.i136_crit_edge ]
  %cnt.0204.i = phi i16 [ %inc.i, %for.body.i136.for.body.i136_crit_edge ], [ 0, %if.end.i.for.body.i136_crit_edge ]
  %379 = ptrtoint ptr %wptr.0206.i to i32
  call void @__asan_load2_noabort(i32 %379)
  %380 = load i16, ptr %wptr.0206.i, align 2
  %381 = tail call i16 @llvm.bswap.i16(i16 %380) #8
  %add.i134 = add i16 %381, %chksum.0205.i
  %inc.i = add nuw nsw i16 %cnt.0204.i, 1
  %incdec.ptr.i135 = getelementptr i16, ptr %wptr.0206.i, i32 1
  %cmp7.i = icmp ult i16 %cnt.0204.i, 63
  br i1 %cmp7.i, label %for.body.i136.for.body.i136_crit_edge, label %for.end.i137

for.body.i136.for.body.i136_crit_edge:            ; preds = %for.body.i136
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i136

for.end.i137:                                     ; preds = %for.body.i136
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i134)
  %tobool12.not.i = icmp eq i16 %add.i134, 0
  br i1 %tobool12.not.i, label %if.end19.i, label %if.then13.i

if.then13.i:                                      ; preds = %for.end.i137
  call void @__sanitizer_cov_trace_pc() #10
  %conv14.i = zext i16 %add.i134 to i32
  %382 = ptrtoint ptr %370 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %370, align 4
  %conv17.i = zext i8 %383 to i32
  %version.i = getelementptr inbounds %struct.qla_fdt_layout, ptr %370, i32 0, i32 1
  %384 = ptrtoint ptr %version.i to i32
  call void @__asan_load2_noabort(i32 %384)
  %385 = load i16, ptr %version.i, align 4
  %386 = tail call i16 @llvm.bswap.i16(i16 %385) #8
  %conv18.i = zext i16 %386 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 76, ptr noundef nonnull @.str.43, i32 noundef %conv14.i, i32 noundef %conv17.i, i32 noundef %conv18.i) #8
  tail call void @ql_dump_buffer(i32 noundef 1073872896, ptr noundef %vha, i32 noundef 275, ptr noundef %370, i32 noundef 128) #8
  br label %no_flash_data.i141

if.end19.i:                                       ; preds = %for.end.i137
  %man_id21.i = getelementptr inbounds %struct.qla_fdt_layout, ptr %370, i32 0, i32 6
  %387 = ptrtoint ptr %man_id21.i to i32
  call void @__asan_load2_noabort(i32 %387)
  %388 = load i16, ptr %man_id21.i, align 4
  %389 = tail call i16 @llvm.bswap.i16(i16 %388) #8
  %id.i = getelementptr inbounds %struct.qla_fdt_layout, ptr %370, i32 0, i32 7
  %390 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %390)
  %391 = load i16, ptr %id.i, align 2
  %392 = tail call i16 @llvm.bswap.i16(i16 %391) #8
  %wrt_disable_bits.i = getelementptr inbounds %struct.qla_fdt_layout, ptr %370, i32 0, i32 21
  %393 = ptrtoint ptr %wrt_disable_bits.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %wrt_disable_bits.i, align 1
  %conv22.i = zext i8 %394 to i32
  %fdt_wrt_disable.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 213
  %395 = ptrtoint ptr %fdt_wrt_disable.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 %conv22.i, ptr %fdt_wrt_disable.i, align 8
  %wrt_enable_bits.i = getelementptr inbounds %struct.qla_fdt_layout, ptr %370, i32 0, i32 12
  %396 = ptrtoint ptr %wrt_enable_bits.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %wrt_enable_bits.i, align 4
  %conv23.i = zext i8 %397 to i32
  %fdt_wrt_enable.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 214
  %398 = ptrtoint ptr %fdt_wrt_enable.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %conv23.i, ptr %fdt_wrt_enable.i, align 4
  %wrt_sts_reg_cmd.i = getelementptr inbounds %struct.qla_fdt_layout, ptr %370, i32 0, i32 13
  %399 = ptrtoint ptr %wrt_sts_reg_cmd.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %wrt_sts_reg_cmd.i, align 1
  %conv24.i = zext i8 %400 to i32
  %fdt_wrt_sts_reg_cmd.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 219
  %401 = ptrtoint ptr %fdt_wrt_sts_reg_cmd.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %conv24.i, ptr %fdt_wrt_sts_reg_cmd.i, align 16
  %isp_type.i138 = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 54
  %402 = ptrtoint ptr %isp_type.i138 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %isp_type.i138, align 8
  %and25.i = and i32 %403, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %erase_cmd29.i = getelementptr inbounds %struct.qla_fdt_layout, ptr %370, i32 0, i32 9
  %404 = ptrtoint ptr %erase_cmd29.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %erase_cmd29.i, align 1
  %conv30.i = zext i8 %405 to i32
  br i1 %tobool26.not.i, label %if.else.i140, label %if.end19.i.if.end33.i_crit_edge

if.end19.i.if.end33.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.else.i140:                                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i139 = or i32 %conv30.i, 768
  %flash_conf_off.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 209
  %406 = ptrtoint ptr %flash_conf_off.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %flash_conf_off.i.i, align 8
  %add.i.i = add i32 %or.i139, %407
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else.i140, %if.end19.i.if.end33.i_crit_edge
  %conv28.sink.i = phi i32 [ %add.i.i, %if.else.i140 ], [ %conv30.i, %if.end19.i.if.end33.i_crit_edge ]
  %408 = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 215
  %409 = ptrtoint ptr %408 to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %conv28.sink.i, ptr %408, align 32
  %block_size.i = getelementptr inbounds %struct.qla_fdt_layout, ptr %370, i32 0, i32 16
  %410 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %block_size.i, align 4
  %412 = tail call i32 @llvm.bswap.i32(i32 %411) #8
  %fdt_block_size.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 216
  %413 = ptrtoint ptr %fdt_block_size.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %412, ptr %fdt_block_size.i, align 4
  %unprotect_sec_cmd.i = getelementptr inbounds %struct.qla_fdt_layout, ptr %370, i32 0, i32 14
  %414 = ptrtoint ptr %unprotect_sec_cmd.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %unprotect_sec_cmd.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %415)
  %tobool34.not.i = icmp eq i8 %415, 0
  br i1 %tobool34.not.i, label %if.end33.i.qla2xxx_get_fdt_info.exit_crit_edge, label %if.then35.i

if.end33.i.qla2xxx_get_fdt_info.exit_crit_edge:   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla2xxx_get_fdt_info.exit

if.then35.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv37.i = zext i8 %415 to i32
  %or38.i = or i32 %conv37.i, 768
  %flash_conf_off.i163.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 209
  %416 = ptrtoint ptr %flash_conf_off.i163.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %flash_conf_off.i163.i, align 8
  %add.i164.i = add i32 %or38.i, %417
  %fdt_unprotect_sec_cmd.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 217
  %418 = ptrtoint ptr %fdt_unprotect_sec_cmd.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 %add.i164.i, ptr %fdt_unprotect_sec_cmd.i, align 8
  %protect_sec_cmd.i = getelementptr inbounds %struct.qla_fdt_layout, ptr %370, i32 0, i32 25
  %419 = ptrtoint ptr %protect_sec_cmd.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %protect_sec_cmd.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %420)
  %tobool41.not.i = icmp eq i8 %420, 0
  %conv40.i = zext i8 %420 to i32
  %or44.i = or i32 %conv40.i, 768
  %cond.v.i = select i1 %tobool41.not.i, i32 822, i32 %or44.i
  %cond.i = add i32 %cond.v.i, %417
  %fdt_protect_sec_cmd.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 218
  %421 = ptrtoint ptr %fdt_protect_sec_cmd.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 %cond.i, ptr %fdt_protect_sec_cmd.i, align 4
  br label %qla2xxx_get_fdt_info.exit

no_flash_data.i141:                               ; preds = %if.then13.i, %if.end.i.no_flash_data.i141_crit_edge, %qla2xxx_get_flt_info.exit.no_flash_data.i141_crit_edge
  %isp_type49.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 54
  %422 = ptrtoint ptr %isp_type49.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %isp_type49.i, align 8
  %424 = and i32 %423, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %424)
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %if.end59.i, label %if.then57.i

if.then57.i:                                      ; preds = %no_flash_data.i141
  call void @__sanitizer_cov_trace_pc() #10
  %fdt_block_size58.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 216
  %426 = ptrtoint ptr %fdt_block_size58.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 65536, ptr %fdt_block_size58.i, align 4
  br label %qla2xxx_get_fdt_info.exit

if.end59.i:                                       ; preds = %no_flash_data.i141
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ids.i.i) #8
  %427 = ptrtoint ptr %ids.i.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 0, ptr %ids.i.i, align 4
  %flash_conf_off.i.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 209
  %428 = ptrtoint ptr %flash_conf_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %flash_conf_off.i.i.i, align 8
  %add.i.i.i142 = add i32 %429, 939
  %call1.i.i143 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %364, i32 noundef %add.i.i.i142, ptr noundef nonnull %ids.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i143)
  %tobool.not.i.i = icmp eq i32 %call1.i.i143, 0
  %430 = ptrtoint ptr %ids.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %ids.i.i, align 4
  br i1 %tobool.not.i.i, label %if.end.i.i144, label %if.end.i.thread.i

if.end.i.i144:                                    ; preds = %if.end59.i
  %conv.i.i = trunc i32 %431 to i8
  %conv3.i.i = lshr i32 %431, 8
  %conv4.i.i = trunc i32 %conv3.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559030611, i32 %431)
  %cmp.not.i.i = icmp eq i32 %431, -559030611
  br i1 %cmp.not.i.i, label %if.end.i.i144.qla24xx_get_flash_manufacturer.exit.thread.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i144.qla24xx_get_flash_manufacturer.exit.thread.i_crit_edge: ; preds = %if.end.i.i144
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_get_flash_manufacturer.exit.thread.i

if.end.i.thread.i:                                ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559030611, i32 %431)
  %cmp.not.i186.i = icmp eq i32 %431, -559030611
  br i1 %cmp.not.i186.i, label %if.end.i.thread.i.qla24xx_get_flash_manufacturer.exit.thread.i_crit_edge, label %if.end.i.thread.i.if.then12.i.i_crit_edge

if.end.i.thread.i.if.then12.i.i_crit_edge:        ; preds = %if.end.i.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i.i

if.end.i.thread.i.qla24xx_get_flash_manufacturer.exit.thread.i_crit_edge: ; preds = %if.end.i.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_get_flash_manufacturer.exit.thread.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i)
  %cmp7.i.i = icmp eq i8 %conv.i.i, 0
  br i1 %cmp7.i.i, label %land.lhs.true.i.i.if.then12.i.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.i.if.then12.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv4.i.i)
  %cmp10.i.i = icmp eq i8 %conv4.i.i, 0
  br i1 %cmp10.i.i, label %lor.lhs.false.i.i.if.then12.i.i_crit_edge, label %lor.lhs.false.i.i.qla24xx_get_flash_manufacturer.exit.i_crit_edge

lor.lhs.false.i.i.qla24xx_get_flash_manufacturer.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_get_flash_manufacturer.exit.i

lor.lhs.false.i.i.if.then12.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i.i

if.then12.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then12.i.i_crit_edge, %land.lhs.true.i.i.if.then12.i.i_crit_edge, %if.end.i.thread.i.if.then12.i.i_crit_edge
  %man_id.0187193.i = phi i8 [ %conv.i.i, %lor.lhs.false.i.i.if.then12.i.i_crit_edge ], [ 0, %land.lhs.true.i.i.if.then12.i.i_crit_edge ], [ 0, %if.end.i.thread.i.if.then12.i.i_crit_edge ]
  %flash_id.0189.i = phi i8 [ 0, %lor.lhs.false.i.i.if.then12.i.i_crit_edge ], [ %conv4.i.i, %land.lhs.true.i.i.if.then12.i.i_crit_edge ], [ 0, %if.end.i.thread.i.if.then12.i.i_crit_edge ]
  %432 = ptrtoint ptr %flash_conf_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %flash_conf_off.i.i.i, align 8
  %add.i35.i.i = add i32 %433, 159
  %call14.i.i = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %364, i32 noundef %add.i35.i.i, ptr noundef nonnull %ids.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.then16.i.i, label %if.then12.i.i.qla24xx_get_flash_manufacturer.exit.i_crit_edge

if.then12.i.i.qla24xx_get_flash_manufacturer.exit.i_crit_edge: ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_get_flash_manufacturer.exit.i

if.then16.i.i:                                    ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %434 = ptrtoint ptr %ids.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %ids.i.i, align 4
  %conv17.i.i = trunc i32 %435 to i8
  %conv19.i.i = lshr i32 %435, 8
  %conv21.i.i = trunc i32 %conv19.i.i to i8
  br label %qla24xx_get_flash_manufacturer.exit.i

qla24xx_get_flash_manufacturer.exit.thread.i:     ; preds = %if.end.i.thread.i.qla24xx_get_flash_manufacturer.exit.thread.i_crit_edge, %if.end.i.i144.qla24xx_get_flash_manufacturer.exit.thread.i_crit_edge
  %man_id.1.ph.i = phi i8 [ 0, %if.end.i.thread.i.qla24xx_get_flash_manufacturer.exit.thread.i_crit_edge ], [ -83, %if.end.i.i144.qla24xx_get_flash_manufacturer.exit.thread.i_crit_edge ]
  %flash_id.1.ph.i = phi i8 [ 0, %if.end.i.thread.i.qla24xx_get_flash_manufacturer.exit.thread.i_crit_edge ], [ %conv4.i.i, %if.end.i.i144.qla24xx_get_flash_manufacturer.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ids.i.i) #8
  %conv61197.i = zext i8 %flash_id.1.ph.i to i16
  %fdt_wrt_disable62198.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 213
  %436 = ptrtoint ptr %fdt_wrt_disable62198.i to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 156, ptr %fdt_wrt_disable62198.i, align 8
  %437 = ptrtoint ptr %flash_conf_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %flash_conf_off.i.i.i, align 8
  %add.i170199.i = add i32 %438, 984
  %fdt_erase_cmd64200.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 215
  %439 = ptrtoint ptr %fdt_erase_cmd64200.i to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 %add.i170199.i, ptr %fdt_erase_cmd64200.i, align 32
  br label %sw.default.i

qla24xx_get_flash_manufacturer.exit.i:            ; preds = %if.then16.i.i, %if.then12.i.i.qla24xx_get_flash_manufacturer.exit.i_crit_edge, %lor.lhs.false.i.i.qla24xx_get_flash_manufacturer.exit.i_crit_edge
  %man_id.1.i = phi i8 [ %conv17.i.i, %if.then16.i.i ], [ %man_id.0187193.i, %if.then12.i.i.qla24xx_get_flash_manufacturer.exit.i_crit_edge ], [ %conv.i.i, %lor.lhs.false.i.i.qla24xx_get_flash_manufacturer.exit.i_crit_edge ]
  %flash_id.1.i = phi i8 [ %conv21.i.i, %if.then16.i.i ], [ %flash_id.0189.i, %if.then12.i.i.qla24xx_get_flash_manufacturer.exit.i_crit_edge ], [ %conv4.i.i, %lor.lhs.false.i.i.qla24xx_get_flash_manufacturer.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ids.i.i) #8
  %conv61.i145 = zext i8 %flash_id.1.i to i16
  %fdt_wrt_disable62.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 213
  %440 = ptrtoint ptr %fdt_wrt_disable62.i to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 156, ptr %fdt_wrt_disable62.i, align 8
  %441 = ptrtoint ptr %flash_conf_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %flash_conf_off.i.i.i, align 8
  %add.i170.i = add i32 %442, 984
  %fdt_erase_cmd64.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 215
  %443 = ptrtoint ptr %fdt_erase_cmd64.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 %add.i170.i, ptr %fdt_erase_cmd64.i, align 32
  %444 = zext i8 %man_id.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %444, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %man_id.1.i, label %qla24xx_get_flash_manufacturer.exit.i.sw.default.i_crit_edge [
    i8 -65, label %sw.bb.i146
    i8 19, label %sw.bb81.i
    i8 31, label %sw.bb83.i
  ]

qla24xx_get_flash_manufacturer.exit.i.sw.default.i_crit_edge: ; preds = %qla24xx_get_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

sw.bb.i146:                                       ; preds = %qla24xx_get_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -114, i8 %flash_id.1.i)
  %cmp67.i = icmp eq i8 %flash_id.1.i, -114
  %fdt_block_size70.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 216
  br i1 %cmp67.i, label %if.end73.thread.i, label %if.end73.i

if.end73.thread.i:                                ; preds = %sw.bb.i146
  call void @__sanitizer_cov_trace_pc() #10
  %445 = ptrtoint ptr %fdt_block_size70.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 65536, ptr %fdt_block_size70.i, align 4
  br label %qla2xxx_get_fdt_info.exit

if.end73.i:                                       ; preds = %sw.bb.i146
  %446 = ptrtoint ptr %fdt_block_size70.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 32768, ptr %fdt_block_size70.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %flash_id.1.i)
  %cmp75.i = icmp eq i8 %flash_id.1.i, -128
  br i1 %cmp75.i, label %if.then77.i, label %if.end73.i.qla2xxx_get_fdt_info.exit_crit_edge

if.end73.i.qla2xxx_get_fdt_info.exit_crit_edge:   ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla2xxx_get_fdt_info.exit

if.then77.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i172.i = add i32 %442, 850
  %447 = ptrtoint ptr %fdt_erase_cmd64.i to i32
  call void @__asan_store4_noabort(i32 %447)
  store i32 %add.i172.i, ptr %fdt_erase_cmd64.i, align 32
  br label %qla2xxx_get_fdt_info.exit

sw.bb81.i:                                        ; preds = %qla24xx_get_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %fdt_block_size82.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 216
  %448 = ptrtoint ptr %fdt_block_size82.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 65536, ptr %fdt_block_size82.i, align 4
  br label %qla2xxx_get_fdt_info.exit

sw.bb83.i:                                        ; preds = %qla24xx_get_flash_manufacturer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %fdt_block_size84.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 216
  %449 = ptrtoint ptr %fdt_block_size84.i to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 4096, ptr %fdt_block_size84.i, align 4
  %add.i174.i = add i32 %442, 800
  %450 = ptrtoint ptr %fdt_erase_cmd64.i to i32
  call void @__asan_store4_noabort(i32 %450)
  store i32 %add.i174.i, ptr %fdt_erase_cmd64.i, align 32
  %add.i176.i = add i32 %442, 825
  %fdt_unprotect_sec_cmd88.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 217
  %451 = ptrtoint ptr %fdt_unprotect_sec_cmd88.i to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 %add.i176.i, ptr %fdt_unprotect_sec_cmd88.i, align 8
  %add.i178.i = add i32 %442, 822
  %fdt_protect_sec_cmd90.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 218
  %452 = ptrtoint ptr %fdt_protect_sec_cmd90.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %add.i178.i, ptr %fdt_protect_sec_cmd90.i, align 4
  br label %qla2xxx_get_fdt_info.exit

sw.default.i:                                     ; preds = %qla24xx_get_flash_manufacturer.exit.i.sw.default.i_crit_edge, %qla24xx_get_flash_manufacturer.exit.thread.i
  %conv61202.i = phi i16 [ %conv61197.i, %qla24xx_get_flash_manufacturer.exit.thread.i ], [ %conv61.i145, %qla24xx_get_flash_manufacturer.exit.i.sw.default.i_crit_edge ]
  %conv60201.in.i = phi i8 [ %man_id.1.ph.i, %qla24xx_get_flash_manufacturer.exit.thread.i ], [ %man_id.1.i, %qla24xx_get_flash_manufacturer.exit.i.sw.default.i_crit_edge ]
  %conv60201.i = zext i8 %conv60201.in.i to i16
  %fdt_block_size91.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 216
  %453 = ptrtoint ptr %fdt_block_size91.i to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 65536, ptr %fdt_block_size91.i, align 4
  br label %qla2xxx_get_fdt_info.exit

qla2xxx_get_fdt_info.exit:                        ; preds = %sw.default.i, %sw.bb83.i, %sw.bb81.i, %if.then77.i, %if.end73.i.qla2xxx_get_fdt_info.exit_crit_edge, %if.end73.thread.i, %if.then57.i, %if.then35.i, %if.end33.i.qla2xxx_get_fdt_info.exit_crit_edge
  %loc.0.i147 = phi ptr [ @.str.40, %if.then57.i ], [ @.str.40, %sw.default.i ], [ @.str.40, %sw.bb83.i ], [ @.str.40, %sw.bb81.i ], [ @.str.40, %if.then77.i ], [ @.str.40, %if.end73.i.qla2xxx_get_fdt_info.exit_crit_edge ], [ @.str.41, %if.then35.i ], [ @.str.41, %if.end33.i.qla2xxx_get_fdt_info.exit_crit_edge ], [ @.str.40, %if.end73.thread.i ]
  %mid.0.i = phi i16 [ 0, %if.then57.i ], [ %conv60201.i, %sw.default.i ], [ 31, %sw.bb83.i ], [ 19, %sw.bb81.i ], [ 191, %if.then77.i ], [ 191, %if.end73.i.qla2xxx_get_fdt_info.exit_crit_edge ], [ %389, %if.then35.i ], [ %389, %if.end33.i.qla2xxx_get_fdt_info.exit_crit_edge ], [ 191, %if.end73.thread.i ]
  %fid.0.i = phi i16 [ 0, %if.then57.i ], [ %conv61202.i, %sw.default.i ], [ %conv61.i145, %sw.bb83.i ], [ %conv61.i145, %sw.bb81.i ], [ 128, %if.then77.i ], [ %conv61.i145, %if.end73.i.qla2xxx_get_fdt_info.exit_crit_edge ], [ %392, %if.then35.i ], [ %392, %if.end33.i.qla2xxx_get_fdt_info.exit_crit_edge ], [ 142, %if.end73.thread.i ]
  %conv92.i = zext i16 %mid.0.i to i32
  %conv93.i = zext i16 %fid.0.i to i32
  %fdt_erase_cmd94.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 215
  %454 = ptrtoint ptr %fdt_erase_cmd94.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %fdt_erase_cmd94.i, align 32
  %fdt_protect_sec_cmd95.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 218
  %456 = ptrtoint ptr %fdt_protect_sec_cmd95.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %fdt_protect_sec_cmd95.i, align 4
  %fdt_wrt_disable96.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 213
  %458 = ptrtoint ptr %fdt_wrt_disable96.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %fdt_wrt_disable96.i, align 8
  %fdt_block_size97.i = getelementptr inbounds %struct.qla_hw_data, ptr %364, i32 0, i32 216
  %460 = ptrtoint ptr %fdt_block_size97.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %fdt_block_size97.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 77, ptr noundef nonnull @.str.44, ptr noundef nonnull %loc.0.i147, i32 noundef %conv92.i, i32 noundef %conv93.i, i32 noundef %455, i32 noundef %457, i32 noundef %459, i32 noundef %461) #8
  %462 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %hw, align 4
  %isp_type.i149 = getelementptr inbounds %struct.qla_hw_data, ptr %463, i32 0, i32 54
  %464 = ptrtoint ptr %isp_type.i149 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %isp_type.i149, align 8
  %466 = and i32 %465, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %466)
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %qla2xxx_get_fdt_info.exit.cleanup_crit_edge, label %if.end.i156

qla2xxx_get_fdt_info.exit.cleanup_crit_edge:      ; preds = %qla2xxx_get_fdt_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i156:                                      ; preds = %qla2xxx_get_fdt_info.exit
  %req_q_map.i150 = getelementptr inbounds %struct.qla_hw_data, ptr %463, i32 0, i32 24
  %468 = ptrtoint ptr %req_q_map.i150 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %req_q_map.i150, align 4
  %470 = ptrtoint ptr %469 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %469, align 4
  %ring.i151 = getelementptr inbounds %struct.req_que, ptr %471, i32 0, i32 1
  %472 = ptrtoint ptr %ring.i151 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %ring.i151, align 4
  %isp_ops.i152 = getelementptr inbounds %struct.qla_hw_data, ptr %463, i32 0, i32 234
  %474 = ptrtoint ptr %isp_ops.i152 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %isp_ops.i152, align 4
  %read_optrom.i153 = getelementptr inbounds %struct.isp_operations, ptr %475, i32 0, i32 29
  %476 = ptrtoint ptr %read_optrom.i153 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %read_optrom.i153, align 4
  %call.i154 = tail call ptr %477(ptr noundef %vha, ptr noundef %473, i32 noundef 4098140, i32 noundef 8) #8
  %478 = ptrtoint ptr %473 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %473, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %479)
  %cmp.i155 = icmp eq i32 %479, -1
  br i1 %cmp.i155, label %if.then7.i, label %if.else.i158

if.then7.i:                                       ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #10
  %fcoe_dev_init_timeout.i = getelementptr inbounds %struct.qla_hw_data, ptr %463, i32 0, i32 251
  %480 = ptrtoint ptr %fcoe_dev_init_timeout.i to i32
  call void @__asan_store4_noabort(i32 %480)
  store i32 30, ptr %fcoe_dev_init_timeout.i, align 64
  br label %if.end10.i

if.else.i158:                                     ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #10
  %481 = tail call i32 @llvm.bswap.i32(i32 %479) #8
  %fcoe_dev_init_timeout8.i = getelementptr inbounds %struct.qla_hw_data, ptr %463, i32 0, i32 251
  %482 = ptrtoint ptr %fcoe_dev_init_timeout8.i to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 %481, ptr %fcoe_dev_init_timeout8.i, align 64
  %incdec.ptr.i157 = getelementptr i32, ptr %473, i32 1
  %483 = ptrtoint ptr %incdec.ptr.i157 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %incdec.ptr.i157, align 4
  %485 = tail call i32 @llvm.bswap.i32(i32 %484) #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i158, %if.then7.i
  %.sink.i159 = phi i32 [ 10, %if.then7.i ], [ %485, %if.else.i158 ]
  %486 = getelementptr inbounds %struct.qla_hw_data, ptr %463, i32 0, i32 252
  %487 = ptrtoint ptr %486 to i32
  call void @__asan_store4_noabort(i32 %487)
  store i32 %.sink.i159, ptr %486, align 4
  %fcoe_dev_init_timeout11.i = getelementptr inbounds %struct.qla_hw_data, ptr %463, i32 0, i32 251
  %488 = ptrtoint ptr %fcoe_dev_init_timeout11.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %fcoe_dev_init_timeout11.i, align 64
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 78, ptr noundef nonnull @.str.45, i32 noundef %489, i32 noundef %.sink.i159) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10.i, %qla2xxx_get_fdt_info.exit.cleanup_crit_edge, %qla2xxx_find_flt_start.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 258, %qla2xxx_find_flt_start.exit ], [ 0, %qla2xxx_get_fdt_info.exit.cleanup_crit_edge ], [ 0, %if.end10.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2xxx_flash_npiv_conf(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  %hdr = alloca %struct.qla_npiv_header, align 2
  %vid = alloca %struct.fc_vport_identifiers, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hdr) #8
  %0 = getelementptr inbounds %struct.qla_npiv_header, ptr %hdr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.qla_npiv_header, ptr %hdr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.qla_npiv_header, ptr %hdr, i32 0, i32 4
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %3 = call ptr @memset(ptr %hdr, i32 255, i32 16)
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %isp_type, align 8
  %8 = and i32 %7, 393088
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %entry.cleanup144_crit_edge, label %if.end

entry.cleanup144_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup144

if.end:                                           ; preds = %entry
  %and44 = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp ne i32 %and44, 0
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load volatile i32, ptr %flags, align 8
  %11 = and i32 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool51.not = icmp ne i32 %11, 0
  %brmerge = select i1 %tobool51.not, i1 true, i1 %tobool45.not
  br i1 %brmerge, label %if.end.cleanup144_crit_edge, label %if.end59

if.end.cleanup144_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup144

if.end59:                                         ; preds = %if.end
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 234
  %12 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %isp_ops, align 4
  %read_optrom = getelementptr inbounds %struct.isp_operations, ptr %13, i32 0, i32 29
  %14 = ptrtoint ptr %read_optrom to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_optrom, align 4
  %flt_region_npiv_conf = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 220, i32 12
  %16 = ptrtoint ptr %flt_region_npiv_conf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flt_region_npiv_conf, align 4
  %shl = shl i32 %17, 2
  %call = call ptr %15(ptr noundef %vha, ptr noundef nonnull %hdr, i32 noundef %shl, i32 noundef 16) #8
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %0, align 2
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %19, label %if.then67 [
    i16 -1, label %if.end59.cleanup144_crit_edge
    i16 256, label %if.end72
  ]

if.end59.cleanup144_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup144

if.then67:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %21 = call i16 @llvm.bswap.i16(i16 %19)
  %conv69 = zext i16 %21 to i32
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %1, align 2
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %conv70 = zext i16 %24 to i32
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %2, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %conv71 = zext i16 %27 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28816, ptr noundef nonnull @.str, i32 noundef %conv69, i32 noundef %conv70, i32 noundef %conv71) #8
  br label %cleanup144

if.end72:                                         ; preds = %if.end59
  %call1.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3264, i32 noundef 2) #12
  %tobool74.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool74.not, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28817, ptr noundef nonnull @.str.1) #8
  br label %cleanup144

if.end76:                                         ; preds = %if.end72
  %28 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %isp_ops, align 4
  %read_optrom78 = getelementptr inbounds %struct.isp_operations, ptr %29, i32 0, i32 29
  %30 = ptrtoint ptr %read_optrom78 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_optrom78, align 4
  %32 = ptrtoint ptr %flt_region_npiv_conf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flt_region_npiv_conf, align 4
  %shl80 = shl i32 %33, 2
  %call81 = call ptr %31(ptr noundef %vha, ptr noundef nonnull %call1.i.i, i32 noundef %shl80, i32 noundef 16384) #8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %1, align 2
  %36 = call i16 @llvm.bswap.i16(i16 %35)
  %conv83 = zext i16 %36 to i32
  %mul = mul nuw nsw i32 %conv83, 24
  %add = add nuw nsw i32 %mul, 16
  %shr = lshr exact i32 %add, 1
  %conv84 = trunc i32 %shr to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv84)
  %tobool85.not209 = icmp eq i16 %conv84, 0
  br i1 %tobool85.not209, label %if.end76.if.end98_crit_edge, label %if.end76.for.body_crit_edge

if.end76.for.body_crit_edge:                      ; preds = %if.end76
  br label %for.body

if.end76.if.end98_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end76.for.body_crit_edge
  %chksum.0212 = phi i16 [ %add88, %for.body.for.body_crit_edge ], [ 0, %if.end76.for.body_crit_edge ]
  %cnt.0211 = phi i16 [ %dec, %for.body.for.body_crit_edge ], [ %conv84, %if.end76.for.body_crit_edge ]
  %wptr.0210 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call1.i.i, %if.end76.for.body_crit_edge ]
  %dec = add i16 %cnt.0211, -1
  %37 = ptrtoint ptr %wptr.0210 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %wptr.0210, align 2
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  %add88 = add i16 %39, %chksum.0212
  %incdec.ptr = getelementptr i16, ptr %wptr.0210, i32 1
  %tobool85.not = icmp eq i16 %dec, 0
  br i1 %tobool85.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add88)
  %phi.cmp = icmp eq i16 %add88, 0
  br i1 %phi.cmp, label %for.end.if.end98_crit_edge, label %if.then91

for.end.if.end98_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then91:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %0, align 2
  %42 = call i16 @llvm.bswap.i16(i16 %41)
  %conv93 = zext i16 %42 to i32
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %2, align 2
  %45 = call i16 @llvm.bswap.i16(i16 %44)
  %conv97 = zext i16 %45 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28818, ptr noundef nonnull @.str.2, i32 noundef %conv93, i32 noundef %conv83, i32 noundef %conv97) #8
  br label %done

if.end98:                                         ; preds = %for.end.if.end98_crit_edge, %if.end76.if.end98_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool101.not213 = icmp eq i16 %35, 0
  br i1 %tobool101.not213, label %if.end98.done_crit_edge, label %for.body102.lr.ph

if.end98.done_crit_edge:                          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

for.body102.lr.ph:                                ; preds = %if.end98
  %add.ptr = getelementptr i8, ptr %call1.i.i, i32 16
  %npiv_info = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 35
  %roles = getelementptr inbounds %struct.fc_vport_identifiers, ptr %vid, i32 0, i32 2
  %vport_type = getelementptr inbounds %struct.fc_vport_identifiers, ptr %vid, i32 0, i32 4
  %port_name117 = getelementptr inbounds %struct.fc_vport_identifiers, ptr %vid, i32 0, i32 1
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %46 = getelementptr inbounds i8, ptr %vid, i32 16
  br label %for.body102

for.body102:                                      ; preds = %cleanup.for.body102_crit_edge, %for.body102.lr.ph
  %entry1.0217 = phi ptr [ %add.ptr, %for.body102.lr.ph ], [ %incdec.ptr142, %cleanup.for.body102_crit_edge ]
  %i.0215 = phi i32 [ 0, %for.body102.lr.ph ], [ %inc, %cleanup.for.body102_crit_edge ]
  %cnt.1214 = phi i16 [ %36, %for.body102.lr.ph ], [ %dec141, %cleanup.for.body102_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %vid) #8
  %47 = ptrtoint ptr %npiv_info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %npiv_info, align 32
  %arrayidx = getelementptr %struct.qla_npiv_entry, ptr %48, i32 %i.0215
  %49 = call ptr @memcpy(ptr %arrayidx, ptr %entry1.0217, i32 24)
  %50 = ptrtoint ptr %entry1.0217 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %entry1.0217, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %51)
  %cmp106 = icmp eq i16 %51, -1
  %52 = and i16 %51, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %cmp112 = icmp eq i16 %52, 0
  %or.cond208 = or i1 %cmp106, %cmp112
  br i1 %or.cond208, label %for.body102.cleanup_crit_edge, label %if.end115

for.body102.cleanup_crit_edge:                    ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end115:                                        ; preds = %for.body102
  %53 = call ptr @memset(ptr %46, i32 0, i32 80)
  %54 = ptrtoint ptr %roles to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %roles, align 8
  %55 = ptrtoint ptr %vport_type to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 7, ptr %vport_type, align 8
  %port_name = getelementptr inbounds %struct.qla_npiv_entry, ptr %entry1.0217, i32 0, i32 5
  %56 = ptrtoint ptr %port_name to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %57 = load i64, ptr %port_name, align 1
  %58 = ptrtoint ptr %port_name117 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %port_name117, align 8
  %node_name = getelementptr inbounds %struct.qla_npiv_entry, ptr %entry1.0217, i32 0, i32 6
  %59 = ptrtoint ptr %node_name to i32
  call void @__asan_loadN_noabort(i32 %59, i32 8)
  %60 = load i64, ptr %node_name, align 1
  %61 = ptrtoint ptr %vid to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %vid, align 8
  %conv121 = zext i16 %cnt.1214 to i32
  %vf_id = getelementptr inbounds %struct.qla_npiv_entry, ptr %entry1.0217, i32 0, i32 1
  %62 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vf_id, align 2
  %64 = call i16 @llvm.bswap.i16(i16 %63)
  %conv124 = zext i16 %64 to i32
  %q_qos = getelementptr inbounds %struct.qla_npiv_entry, ptr %entry1.0217, i32 0, i32 2
  %65 = ptrtoint ptr %q_qos to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %q_qos, align 2
  %conv125 = zext i8 %66 to i32
  %f_qos = getelementptr inbounds %struct.qla_npiv_entry, ptr %entry1.0217, i32 0, i32 3
  %67 = ptrtoint ptr %f_qos to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %f_qos, align 1
  %conv126 = zext i8 %68 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28819, ptr noundef nonnull @.str.3, i32 noundef %conv121, i64 noundef %57, i64 noundef %60, i32 noundef %conv124, i32 noundef %conv125, i32 noundef %conv126) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.0215)
  %cmp127 = icmp ult i32 %i.0215, 32
  br i1 %cmp127, label %if.then129, label %if.end115.cleanup_crit_edge

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then129:                                       ; preds = %if.end115
  %69 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %host, align 8
  %call130 = call ptr @fc_vport_create(ptr noundef %70, i32 noundef 0, ptr noundef nonnull %vid) #8
  %tobool131.not = icmp eq ptr %call130, null
  br i1 %tobool131.not, label %if.then132, label %if.then129.cleanup_crit_edge

if.then129.cleanup_crit_edge:                     ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then132:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %port_name117 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %port_name117, align 8
  %73 = ptrtoint ptr %vid to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %vid, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28820, ptr noundef nonnull @.str.4, i32 noundef %conv121, i64 noundef %72, i64 noundef %74) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then132, %if.then129.cleanup_crit_edge, %if.end115.cleanup_crit_edge, %for.body102.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %vid) #8
  %dec141 = add i16 %cnt.1214, -1
  %incdec.ptr142 = getelementptr %struct.qla_npiv_entry, ptr %entry1.0217, i32 1
  %inc = add nuw nsw i32 %i.0215, 1
  %tobool101.not = icmp eq i16 %dec141, 0
  br i1 %tobool101.not, label %cleanup.done_crit_edge, label %cleanup.for.body102_crit_edge

cleanup.for.body102_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body102

cleanup.done_crit_edge:                           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

done:                                             ; preds = %cleanup.done_crit_edge, %if.end98.done_crit_edge, %if.then91
  call void @kfree(ptr noundef nonnull %call1.i.i) #8
  br label %cleanup144

cleanup144:                                       ; preds = %done, %if.then75, %if.then67, %if.end59.cleanup144_crit_edge, %if.end.cleanup144_crit_edge, %entry.cleanup144_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hdr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dbg(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_log(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_vport_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qla2x00_read_nvram_data(ptr nocapture noundef readonly %vha, ptr noundef returned writeonly %buf, i32 noundef %naddr, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  tail call fastcc void @qla2x00_lock_nvram_access(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bytes)
  %cmp8.not = icmp ult i32 %bytes, 2
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %shr = lshr i32 %bytes, 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %naddr.addr.09 = phi i32 [ %inc1, %for.body.for.body_crit_edge ], [ %naddr, %for.body.preheader ]
  %call = tail call fastcc zeroext i16 @qla2x00_get_nvram_word(ptr noundef %1, i32 noundef %naddr.addr.09)
  %2 = tail call i16 @llvm.bswap.i16(i16 %call)
  %arrayidx = getelementptr i16, ptr %buf, i32 %i.010
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.010, 1
  %inc1 = add i32 %naddr.addr.09, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %isp_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isp_type.i, align 8
  %6 = and i32 %5, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.then.i, label %for.end.qla2x00_unlock_nvram_access.exit_crit_edge

for.end.qla2x00_unlock_nvram_access.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla2x00_unlock_nvram_access.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %iobase.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %host_semaphore.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %9, i32 0, i32 8, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %host_semaphore.i, i16 0) #8, !srcloc !170
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %host_semaphore.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %qla2x00_unlock_nvram_access.exit

qla2x00_unlock_nvram_access.exit:                 ; preds = %if.then.i, %for.end.qla2x00_unlock_nvram_access.exit_crit_edge
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla2x00_lock_nvram_access(ptr nocapture noundef readonly %ha) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 9
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %nvram = getelementptr inbounds %struct.device_reg_2xxx, ptr %1, i32 0, i32 7
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %.mask = and i16 %6, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %tobool12.not47 = icmp eq i16 %.mask, 0
  br i1 %tobool12.not47, label %if.then.while.end_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 21474800) #8
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %.mask49 = and i16 %8, 128
  %tobool12.not = icmp eq i16 %.mask49, 0
  br i1 %tobool12.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then.while.end_crit_edge
  %host_semaphore = getelementptr inbounds %struct.device_reg_2xxx, ptr %1, i32 0, i32 8, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %host_semaphore, i16 256) #8, !srcloc !170
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %host_semaphore) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 1073740) #8
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %host_semaphore) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %12 = and i16 %11, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp48 = icmp eq i16 %12, 0
  br i1 %cmp48, label %while.end.while.body25_crit_edge, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.end.while.body25_crit_edge:                 ; preds = %while.end
  br label %while.body25

while.body25:                                     ; preds = %while.body25.while.body25_crit_edge, %while.end.while.body25_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 21474800) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %host_semaphore, i16 256) #8, !srcloc !170
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %host_semaphore) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 1073740) #8
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %host_semaphore) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %17 = and i16 %16, 256
  %cmp = icmp eq i16 %17, 0
  br i1 %cmp, label %while.body25.while.body25_crit_edge, label %while.body25.if.end_crit_edge

while.body25.if.end_crit_edge:                    ; preds = %while.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body25.while.body25_crit_edge:              ; preds = %while.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body25

if.end:                                           ; preds = %while.body25.if.end_crit_edge, %while.end.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @qla2x00_get_nvram_word(ptr nocapture noundef readonly %ha, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %addr, 21
  %or = or i32 %shl, -1073741824
  %iobase.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 9
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  br label %for.body.i

for.cond3.preheader.i:                            ; preds = %if.end.i
  %nvram.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %1, i32 0, i32 7
  br label %for.body7.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %cnt.048.i = phi i8 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %nv_cmd.addr.047.i = phi i32 [ %or, %entry ], [ %shl2.i, %if.end.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %nv_cmd.addr.047.i)
  %tobool.not.i = icmp sgt i32 %nv_cmd.addr.047.i, -1
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %nvram.i46.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %3, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i46.i, i16 1600) #8, !srcloc !170
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i46.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i46.i, i16 1856) #8, !srcloc !170
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i46.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i46.i, i16 1600) #8, !srcloc !170
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i46.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i46.i, i16 576) #8, !srcloc !170
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i46.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i46.i, i16 832) #8, !srcloc !170
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i46.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i46.i, i16 576) #8, !srcloc !170
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i46.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #8
  %shl2.i = shl i32 %nv_cmd.addr.047.i, 1
  %inc.i = add nuw nsw i8 %cnt.048.i, 1
  %cmp.i = icmp ult i8 %cnt.048.i, 10
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %for.cond3.preheader.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.cond3.preheader.i
  %data.050.i = phi i16 [ 0, %for.cond3.preheader.i ], [ %20, %for.body7.i.for.body7.i_crit_edge ]
  %cnt.149.i = phi i8 [ 0, %for.cond3.preheader.i ], [ %inc25.i, %for.body7.i.for.body7.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i, i16 768) #8, !srcloc !170
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #8
  %shl10.i = shl i16 %data.050.i, 1
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %18 = lshr i16 %17, 11
  %19 = and i16 %18, 1
  %20 = or i16 %19, %shl10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i, i16 512) #8, !srcloc !170
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #8
  %inc25.i = add nuw nsw i8 %cnt.149.i, 1
  %cmp5.i = icmp ult i8 %cnt.149.i, 15
  br i1 %cmp5.i, label %for.body7.i.for.body7.i_crit_edge, label %qla2x00_nvram_request.exit

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7.i

qla2x00_nvram_request.exit:                       ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i, i16 0) #8, !srcloc !170
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #8
  ret i16 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qla24xx_read_nvram_data(ptr nocapture noundef readonly %vha, ptr noundef returned %buf, i32 noundef %naddr, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp ne i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bytes)
  %cmp24.not = icmp ult i32 %bytes, 4
  %or.cond = or i1 %5, %cmp24.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %shr = lshr i32 %bytes, 2
  %nvram_data_off.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 212
  %6 = ptrtoint ptr %nvram_data_off.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nvram_data_off.i, align 4
  %add.i = add i32 %7, %naddr
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.body.preheader
  %i.027 = phi i32 [ %inc, %if.end9.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %dwptr.026 = phi ptr [ %incdec.ptr, %if.end9.for.body_crit_edge ], [ %buf, %for.body.preheader ]
  %naddr.addr.025 = phi i32 [ %inc10, %if.end9.for.body_crit_edge ], [ %add.i, %for.body.preheader ]
  %call6 = tail call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %1, i32 noundef %naddr.addr.025, ptr noundef %dwptr.026)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %8 = ptrtoint ptr %dwptr.026 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dwptr.026, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %11 = ptrtoint ptr %dwptr.026 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dwptr.026, align 4
  %inc = add nuw nsw i32 %i.027, 1
  %inc10 = add i32 %naddr.addr.025, 1
  %incdec.ptr = getelementptr i32, ptr %dwptr.026, i32 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %if.end9.cleanup_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_write_nvram_data(ptr nocapture noundef readonly %vha, ptr nocapture noundef readonly %buf, i32 noundef %naddr, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #8
  tail call fastcc void @qla2x00_lock_nvram_access(ptr noundef %1)
  %iobase.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %nvram_base.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %nvram_base.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nvram_base.i, align 2
  %conv.i = zext i16 %9 to i32
  %call1.i = tail call fastcc zeroext i16 @qla2x00_get_nvram_word(ptr noundef %1, i32 noundef %conv.i) #8
  %10 = ptrtoint ptr %nvram_base.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nvram_base.i, align 2
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 4
  %nvram.i.i.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %13, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i.i.i, i16 1600) #8, !srcloc !170
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i.i.i, i16 1856) #8, !srcloc !170
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i.i.i, i16 1600) #8, !srcloc !170
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #8
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase.i, align 4
  %nvram.i2.i.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %21, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i2.i.i, i16 576) #8, !srcloc !170
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i2.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i2.i.i, i16 832) #8, !srcloc !170
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i2.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i2.i.i, i16 576) #8, !srcloc !170
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i2.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #8
  %28 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase.i, align 4
  %nvram.i4.i.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %29, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i4.i.i, i16 576) #8, !srcloc !170
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i4.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i4.i.i, i16 832) #8, !srcloc !170
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i4.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i4.i.i, i16 576) #8, !srcloc !170
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i4.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %word.023.i.i = phi i16 [ 0, %entry ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %36 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iobase.i, align 4
  %nvram.i6.i.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %37, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i6.i.i, i16 1600) #8, !srcloc !170
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i6.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i6.i.i, i16 1856) #8, !srcloc !170
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i6.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i6.i.i, i16 1600) #8, !srcloc !170
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i6.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 2147480) #8
  %inc.i.i = add nuw nsw i16 %word.023.i.i, 1
  %cmp.i.i = icmp ult i16 %word.023.i.i, 7
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %conv3.i = zext i16 %11 to i32
  %44 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iobase.i, align 4
  %nvram.i8.i.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %45, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i8.i.i, i16 0) #8, !srcloc !170
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i8.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 2147480) #8
  %shl.i.i = shl i32 %conv3.i, 21
  %or3.i.i = or i32 %shl.i.i, -1610186176
  br label %for.body8.i.i

for.body8.i.i:                                    ; preds = %if.end.i.i.for.body8.i.i_crit_edge, %for.end.i.i
  %nv_cmd.025.i.i = phi i32 [ %or3.i.i, %for.end.i.i ], [ %shl9.i.i, %if.end.i.i.for.body8.i.i_crit_edge ]
  %count.024.i.i = phi i32 [ 0, %for.end.i.i ], [ %inc11.i.i, %if.end.i.i.for.body8.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %nv_cmd.025.i.i)
  %tobool.not.i.i = icmp sgt i32 %nv_cmd.025.i.i, -1
  %48 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iobase.i, align 4
  %nvram.i12.i.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %49, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i12.i.i, i16 1600) #8, !srcloc !170
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i12.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i12.i.i, i16 1856) #8, !srcloc !170
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i12.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i12.i.i, i16 1600) #8, !srcloc !170
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i12.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i12.i.i, i16 576) #8, !srcloc !170
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i12.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i12.i.i, i16 832) #8, !srcloc !170
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i12.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i12.i.i, i16 576) #8, !srcloc !170
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i12.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 2147480) #8
  %shl9.i.i = shl i32 %nv_cmd.025.i.i, 1
  %inc11.i.i = add nuw nsw i32 %count.024.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc11.i.i, 27
  br i1 %exitcond.not.i.i, label %for.end12.i.i, label %if.end.i.i.for.body8.i.i_crit_edge

if.end.i.i.for.body8.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8.i.i

for.end12.i.i:                                    ; preds = %if.end.i.i
  %61 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iobase.i, align 4
  %nvram.i14.i.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %62, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i14.i.i, i16 0) #8, !srcloc !170
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i14.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i.i.i, i16 512) #8, !srcloc !170
  %65 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %for.end12.i.i
  %tmo.addr.0.i.i = phi i32 [ 100000, %for.end12.i.i ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 2147480) #8
  %67 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %dec.i.i = add nsw i32 %tmo.addr.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool16.not.i.i = icmp ne i32 %dec.i.i, 0
  %68 = and i16 %67, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %cmp21.i.i = icmp eq i16 %68, 0
  %or.cond104.i = select i1 %tobool16.not.i.i, i1 %cmp21.i.i, i1 false
  br i1 %or.cond104.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  %69 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %iobase.i, align 4
  %nvram.i16.i.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %70, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i16.i.i, i16 0) #8, !srcloc !170
  %71 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i16.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 2147480) #8
  %73 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %iobase.i, align 4
  %nvram.i18.i.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %74, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i18.i.i, i16 1600) #8, !srcloc !170
  %75 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i18.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i18.i.i, i16 1856) #8, !srcloc !170
  %77 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i18.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i18.i.i, i16 1600) #8, !srcloc !170
  %79 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i18.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 2147480) #8
  br label %for.body26.i.i

for.body26.i.i:                                   ; preds = %for.body26.i.i.for.body26.i.i_crit_edge, %do.end.i.i
  %count.126.i.i = phi i32 [ 0, %do.end.i.i ], [ %inc28.i.i, %for.body26.i.i.for.body26.i.i_crit_edge ]
  %81 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %iobase.i, align 4
  %nvram.i20.i.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %82, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i20.i.i, i16 576) #8, !srcloc !170
  %83 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i20.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i20.i.i, i16 832) #8, !srcloc !170
  %85 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i20.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i20.i.i, i16 576) #8, !srcloc !170
  %87 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i20.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 2147480) #8
  %inc28.i.i = add nuw nsw i32 %count.126.i.i, 1
  %exitcond27.not.i.i = icmp eq i32 %inc28.i.i, 10
  br i1 %exitcond27.not.i.i, label %qla2x00_write_nvram_word_tmo.exit.i, label %for.body26.i.i.for.body26.i.i_crit_edge

for.body26.i.i.for.body26.i.i_crit_edge:          ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26.i.i

qla2x00_write_nvram_word_tmo.exit.i:              ; preds = %for.body26.i.i
  %89 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %iobase.i, align 4
  %nvram.i22.i.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %90, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i22.i.i, i16 0) #8, !srcloc !170
  %91 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i22.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 2147480) #8
  %93 = ptrtoint ptr %nvram_base.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %nvram_base.i, align 2
  %conv6.i = zext i16 %94 to i32
  %call7.i = tail call fastcc zeroext i16 @qla2x00_get_nvram_word(ptr noundef %1, i32 noundef %conv6.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4660, i16 %call7.i)
  %cmp10.not.i = icmp eq i16 %call7.i, 4660
  %or.cond.i = select i1 %tobool16.not.i.i, i1 %cmp10.not.i, i1 false
  br i1 %or.cond.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %qla2x00_write_nvram_word_tmo.exit.i
  %95 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %iobase.i, align 4
  %nvram.i.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %96, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i.i, i16 1600) #8, !srcloc !170
  %97 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i.i, i16 1856) #8, !srcloc !170
  %99 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i.i, i16 1600) #8, !srcloc !170
  %101 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 2147480) #8
  %103 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %iobase.i, align 4
  %nvram.i77.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %104, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i77.i, i16 576) #8, !srcloc !170
  %105 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i77.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i77.i, i16 832) #8, !srcloc !170
  %107 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i77.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %108(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i77.i, i16 576) #8, !srcloc !170
  %109 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i77.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 2147480) #8
  %111 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %iobase.i, align 4
  %nvram.i79.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %112, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i79.i, i16 576) #8, !srcloc !170
  %113 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i79.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i79.i, i16 832) #8, !srcloc !170
  %115 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i79.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i79.i, i16 576) #8, !srcloc !170
  %117 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i79.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %118(i32 noundef 2147480) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i
  %word.0105.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %119 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %iobase.i, align 4
  %nvram.i81.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %120, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i81.i, i16 1600) #8, !srcloc !170
  %121 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i81.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %122(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i81.i, i16 1856) #8, !srcloc !170
  %123 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i81.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i81.i, i16 1600) #8, !srcloc !170
  %125 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i81.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %126(i32 noundef 2147480) #8
  %inc.i = add nuw nsw i32 %word.0105.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %127 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %iobase.i, align 4
  %nvram.i83.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %128, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i83.i, i16 0) #8, !srcloc !170
  %129 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i83.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 2147480) #8
  %131 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %iobase.i, align 4
  %nvram.i85.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %132, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i85.i, i16 1632) #8, !srcloc !170
  %133 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i85.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %134(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i85.i, i16 1888) #8, !srcloc !170
  %135 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i85.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %136(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i85.i, i16 1632) #8, !srcloc !170
  %137 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i85.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %138(i32 noundef 2147480) #8
  %139 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %iobase.i, align 4
  %nvram.i87.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %140, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i87.i, i16 608) #8, !srcloc !170
  %141 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i87.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %142(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i87.i, i16 864) #8, !srcloc !170
  %143 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i87.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %144(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i87.i, i16 608) #8, !srcloc !170
  %145 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i87.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %146(i32 noundef 2147480) #8
  %147 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %iobase.i, align 4
  %nvram.i89.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %148, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i89.i, i16 608) #8, !srcloc !170
  %149 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i89.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %150(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i89.i, i16 864) #8, !srcloc !170
  %151 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i89.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %152(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i89.i, i16 608) #8, !srcloc !170
  %153 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i89.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %154(i32 noundef 2147480) #8
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %for.end.i
  %word.1106.i = phi i32 [ 0, %for.end.i ], [ %inc19.i, %for.body17.i.for.body17.i_crit_edge ]
  %155 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %iobase.i, align 4
  %nvram.i91.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %156, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i91.i, i16 1632) #8, !srcloc !170
  %157 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i91.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %158(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i91.i, i16 1888) #8, !srcloc !170
  %159 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i91.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %160(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i91.i, i16 1632) #8, !srcloc !170
  %161 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i91.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %162 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %162(i32 noundef 2147480) #8
  %inc19.i = add nuw nsw i32 %word.1106.i, 1
  %exitcond108.not.i = icmp eq i32 %inc19.i, 8
  br i1 %exitcond108.not.i, label %for.end20.i, label %for.body17.i.for.body17.i_crit_edge

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17.i

for.end20.i:                                      ; preds = %for.body17.i
  %163 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %iobase.i, align 4
  %nvram.i93.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %164, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i93.i, i16 0) #8, !srcloc !170
  %165 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i93.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %166(i32 noundef 2147480) #8
  %167 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %iobase.i, align 4
  %nvram.i95.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %168, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i95.i, i16 1632) #8, !srcloc !170
  %169 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i95.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %170(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i95.i, i16 1888) #8, !srcloc !170
  %171 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i95.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %172 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %172(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i95.i, i16 1632) #8, !srcloc !170
  %173 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i95.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %174 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %174(i32 noundef 2147480) #8
  %175 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %iobase.i, align 4
  %nvram.i97.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %176, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i97.i, i16 1632) #8, !srcloc !170
  %177 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i97.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %178(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i97.i, i16 1888) #8, !srcloc !170
  %179 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i97.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %180 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %180(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i97.i, i16 1632) #8, !srcloc !170
  %181 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i97.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %182(i32 noundef 2147480) #8
  %183 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %iobase.i, align 4
  %nvram.i99.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %184, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i99.i, i16 1632) #8, !srcloc !170
  %185 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i99.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %186 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %186(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i99.i, i16 1888) #8, !srcloc !170
  %187 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i99.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %188(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i99.i, i16 1632) #8, !srcloc !170
  %189 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i99.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %190 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %190(i32 noundef 2147480) #8
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.body24.i.for.body24.i_crit_edge, %for.end20.i
  %word.2107.i = phi i32 [ 0, %for.end20.i ], [ %inc26.i, %for.body24.i.for.body24.i_crit_edge ]
  %191 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %iobase.i, align 4
  %nvram.i101.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %192, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i101.i, i16 1632) #8, !srcloc !170
  %193 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i101.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %194 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %194(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i101.i, i16 1888) #8, !srcloc !170
  %195 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i101.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %196 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %196(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i101.i, i16 1632) #8, !srcloc !170
  %197 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i101.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %198 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %198(i32 noundef 2147480) #8
  %inc26.i = add nuw nsw i32 %word.2107.i, 1
  %exitcond109.not.i = icmp eq i32 %inc26.i, 8
  br i1 %exitcond109.not.i, label %for.end27.i, label %for.body24.i.for.body24.i_crit_edge

for.body24.i.for.body24.i_crit_edge:              ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24.i

for.end27.i:                                      ; preds = %for.body24.i
  %199 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %iobase.i, align 4
  %nvram.i103.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %200, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i103.i, i16 0) #8, !srcloc !170
  %201 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i103.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %202 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %202(i32 noundef 2147480) #8
  %nvram.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %3, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i, i16 512) #8, !srcloc !170
  %203 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %for.end27.i
  %wait_cnt.0.i = phi i32 [ 20000, %for.end27.i ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %dec.i = add nsw i32 %wait_cnt.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.then30.i, label %if.end.i

if.then30.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %7, i32 noundef 28814, ptr noundef nonnull @.str.46) #8
  br label %qla2x00_clear_nvram_protection.exit

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %204 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %204(i32 noundef 2147480) #8
  %205 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %206 = and i16 %205, 2048
  %cmp34.i = icmp eq i16 %206, 0
  br i1 %cmp34.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.qla2x00_clear_nvram_protection.exit_crit_edge

if.end.i.qla2x00_clear_nvram_protection.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla2x00_clear_nvram_protection.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.else.i:                                        ; preds = %qla2x00_write_nvram_word_tmo.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %207 = tail call i16 @llvm.bswap.i16(i16 %call1.i) #8
  %208 = ptrtoint ptr %nvram_base.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %nvram_base.i, align 2
  %conv40.i = zext i16 %209 to i32
  tail call fastcc void @qla2x00_write_nvram_word(ptr noundef %1, i32 noundef %conv40.i, i16 noundef zeroext %207) #8
  br label %qla2x00_clear_nvram_protection.exit

qla2x00_clear_nvram_protection.exit:              ; preds = %if.else.i, %if.end.i.qla2x00_clear_nvram_protection.exit_crit_edge, %if.then30.i
  %cmp.not.i = phi i1 [ false, %if.then30.i ], [ false, %if.else.i ], [ true, %if.end.i.qla2x00_clear_nvram_protection.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bytes)
  %cmp634.not = icmp ult i32 %bytes, 2
  br i1 %cmp634.not, label %qla2x00_clear_nvram_protection.exit.for.end_crit_edge, label %for.body.preheader

qla2x00_clear_nvram_protection.exit.for.end_crit_edge: ; preds = %qla2x00_clear_nvram_protection.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %qla2x00_clear_nvram_protection.exit
  %shr = lshr i32 %bytes, 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %naddr.addr.037 = phi i32 [ %inc8, %for.body.for.body_crit_edge ], [ %naddr, %for.body.preheader ]
  %wptr.036 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %buf, %for.body.preheader ]
  %i.035 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %210 = ptrtoint ptr %wptr.036 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %wptr.036, align 2
  %212 = tail call i16 @llvm.bswap.i16(i16 %211)
  tail call fastcc void @qla2x00_write_nvram_word(ptr noundef %1, i32 noundef %naddr.addr.037, i16 noundef zeroext %212)
  %incdec.ptr = getelementptr i16, ptr %wptr.036, i32 1
  %inc = add nuw nsw i32 %i.035, 1
  %inc8 = add i32 %naddr.addr.037, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %qla2x00_clear_nvram_protection.exit.for.end_crit_edge
  %213 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %1, align 128
  %driver_data.i.i.i20 = getelementptr inbounds %struct.pci_dev, ptr %214, i32 0, i32 44, i32 8
  %215 = ptrtoint ptr %driver_data.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %driver_data.i.i.i20, align 4
  br i1 %cmp.not.i, label %if.end.i22, label %for.end.qla2x00_set_nvram_protection.exit_crit_edge

for.end.qla2x00_set_nvram_protection.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla2x00_set_nvram_protection.exit

if.end.i22:                                       ; preds = %for.end
  %217 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %iobase.i, align 4
  %nvram.i.i21 = getelementptr inbounds %struct.device_reg_2xxx, ptr %218, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i.i21, i16 1600) #8, !srcloc !170
  %219 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i.i21) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %220 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %220(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i.i21, i16 1856) #8, !srcloc !170
  %221 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i.i21) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %222 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %222(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i.i21, i16 1600) #8, !srcloc !170
  %223 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i.i21) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %224 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %224(i32 noundef 2147480) #8
  %225 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %iobase.i, align 4
  %nvram.i50.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %226, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i50.i, i16 576) #8, !srcloc !170
  %227 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i50.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %228 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %228(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i50.i, i16 832) #8, !srcloc !170
  %229 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i50.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %230 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %230(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i50.i, i16 576) #8, !srcloc !170
  %231 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i50.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %232 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %232(i32 noundef 2147480) #8
  %233 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %iobase.i, align 4
  %nvram.i52.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %234, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i52.i, i16 576) #8, !srcloc !170
  %235 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i52.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %236 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %236(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i52.i, i16 832) #8, !srcloc !170
  %237 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i52.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %238 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %238(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i52.i, i16 576) #8, !srcloc !170
  %239 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i52.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %240 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %240(i32 noundef 2147480) #8
  br label %for.body.i25

for.body.i25:                                     ; preds = %for.body.i25.for.body.i25_crit_edge, %if.end.i22
  %word.077.i = phi i32 [ 0, %if.end.i22 ], [ %inc.i23, %for.body.i25.for.body.i25_crit_edge ]
  %241 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %iobase.i, align 4
  %nvram.i54.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %242, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i54.i, i16 1600) #8, !srcloc !170
  %243 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i54.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %244 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %244(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i54.i, i16 1856) #8, !srcloc !170
  %245 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i54.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %246 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %246(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i54.i, i16 1600) #8, !srcloc !170
  %247 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i54.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %248 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %248(i32 noundef 2147480) #8
  %inc.i23 = add nuw nsw i32 %word.077.i, 1
  %exitcond.not.i24 = icmp eq i32 %inc.i23, 8
  br i1 %exitcond.not.i24, label %for.end.i26, label %for.body.i25.for.body.i25_crit_edge

for.body.i25.for.body.i25_crit_edge:              ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i25

for.end.i26:                                      ; preds = %for.body.i25
  %249 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %iobase.i, align 4
  %nvram.i56.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %250, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i56.i, i16 0) #8, !srcloc !170
  %251 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i56.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %252 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %252(i32 noundef 2147480) #8
  %253 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %iobase.i, align 4
  %nvram.i58.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %254, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i58.i, i16 1632) #8, !srcloc !170
  %255 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i58.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %256 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %256(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i58.i, i16 1888) #8, !srcloc !170
  %257 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i58.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %258 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %258(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i58.i, i16 1632) #8, !srcloc !170
  %259 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i58.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %260 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %260(i32 noundef 2147480) #8
  %261 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %iobase.i, align 4
  %nvram.i60.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %262, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i60.i, i16 608) #8, !srcloc !170
  %263 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i60.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %264 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %264(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i60.i, i16 864) #8, !srcloc !170
  %265 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i60.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %266 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %266(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i60.i, i16 608) #8, !srcloc !170
  %267 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i60.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %268 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %268(i32 noundef 2147480) #8
  %269 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %iobase.i, align 4
  %nvram.i62.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %270, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i62.i, i16 608) #8, !srcloc !170
  %271 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i62.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %272 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %272(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i62.i, i16 864) #8, !srcloc !170
  %273 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i62.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %274 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %274(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i62.i, i16 608) #8, !srcloc !170
  %275 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i62.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %276 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %276(i32 noundef 2147480) #8
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.end.i26
  %word.178.i = phi i32 [ 0, %for.end.i26 ], [ %inc6.i, %for.body4.i.for.body4.i_crit_edge ]
  %277 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %iobase.i, align 4
  %nvram.i64.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %278, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i64.i, i16 1632) #8, !srcloc !170
  %279 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i64.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %280 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %280(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i64.i, i16 1888) #8, !srcloc !170
  %281 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i64.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %282 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %282(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i64.i, i16 1632) #8, !srcloc !170
  %283 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i64.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %284 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %284(i32 noundef 2147480) #8
  %inc6.i = add nuw nsw i32 %word.178.i, 1
  %exitcond80.not.i = icmp eq i32 %inc6.i, 8
  br i1 %exitcond80.not.i, label %for.end7.i, label %for.body4.i.for.body4.i_crit_edge

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4.i

for.end7.i:                                       ; preds = %for.body4.i
  %285 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %iobase.i, align 4
  %nvram.i66.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %286, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i66.i, i16 0) #8, !srcloc !170
  %287 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i66.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %288 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %288(i32 noundef 2147480) #8
  %289 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %iobase.i, align 4
  %nvram.i68.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %290, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i68.i, i16 1632) #8, !srcloc !170
  %291 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i68.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %292 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %292(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i68.i, i16 1888) #8, !srcloc !170
  %293 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i68.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %294 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %294(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i68.i, i16 1632) #8, !srcloc !170
  %295 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i68.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %296 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %296(i32 noundef 2147480) #8
  %297 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %iobase.i, align 4
  %nvram.i70.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %298, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i70.i, i16 608) #8, !srcloc !170
  %299 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i70.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %300 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %300(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i70.i, i16 864) #8, !srcloc !170
  %301 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i70.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %302 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %302(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i70.i, i16 608) #8, !srcloc !170
  %303 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i70.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %304 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %304(i32 noundef 2147480) #8
  %305 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %iobase.i, align 4
  %nvram.i72.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %306, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i72.i, i16 1632) #8, !srcloc !170
  %307 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i72.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %308 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %308(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i72.i, i16 1888) #8, !srcloc !170
  %309 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i72.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %310 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %310(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i72.i, i16 1632) #8, !srcloc !170
  %311 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i72.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %312 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %312(i32 noundef 2147480) #8
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.end7.i
  %word.279.i = phi i32 [ 0, %for.end7.i ], [ %inc12.i, %for.body10.i.for.body10.i_crit_edge ]
  %313 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %iobase.i, align 4
  %nvram.i74.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %314, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i74.i, i16 608) #8, !srcloc !170
  %315 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i74.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %316 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %316(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i74.i, i16 864) #8, !srcloc !170
  %317 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i74.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %318 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %318(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i74.i, i16 608) #8, !srcloc !170
  %319 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i74.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %320 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %320(i32 noundef 2147480) #8
  %inc12.i = add nuw nsw i32 %word.279.i, 1
  %exitcond81.not.i = icmp eq i32 %inc12.i, 8
  br i1 %exitcond81.not.i, label %for.end13.i, label %for.body10.i.for.body10.i_crit_edge

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.i

for.end13.i:                                      ; preds = %for.body10.i
  %321 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %iobase.i, align 4
  %nvram.i76.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %322, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i76.i, i16 0) #8, !srcloc !170
  %323 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i76.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %324 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %324(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i.i21, i16 512) #8, !srcloc !170
  %325 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i.i21) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %do.body.i30

do.body.i30:                                      ; preds = %if.end17.i.do.body.i30_crit_edge, %for.end13.i
  %wait_cnt.0.i27 = phi i32 [ 20000, %for.end13.i ], [ %dec.i28, %if.end17.i.do.body.i30_crit_edge ]
  %dec.i28 = add nsw i32 %wait_cnt.0.i27, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i28)
  %tobool.not.i29 = icmp eq i32 %dec.i28, 0
  br i1 %tobool.not.i29, label %if.then16.i, label %if.end17.i

if.then16.i:                                      ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %216, i32 noundef 28815, ptr noundef nonnull @.str.46) #8
  br label %qla2x00_set_nvram_protection.exit

if.end17.i:                                       ; preds = %do.body.i30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %326 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %326(i32 noundef 2147480) #8
  %327 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i.i21) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %328 = and i16 %327, 2048
  %cmp20.i = icmp eq i16 %328, 0
  br i1 %cmp20.i, label %if.end17.i.do.body.i30_crit_edge, label %if.end17.i.qla2x00_set_nvram_protection.exit_crit_edge

if.end17.i.qla2x00_set_nvram_protection.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla2x00_set_nvram_protection.exit

if.end17.i.do.body.i30_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i30

qla2x00_set_nvram_protection.exit:                ; preds = %if.end17.i.qla2x00_set_nvram_protection.exit_crit_edge, %if.then16.i, %for.end.qla2x00_set_nvram_protection.exit_crit_edge
  %isp_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %329 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %isp_type.i, align 8
  %331 = and i32 %330, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %331)
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %if.then.i32, label %qla2x00_set_nvram_protection.exit.qla2x00_unlock_nvram_access.exit_crit_edge

qla2x00_set_nvram_protection.exit.qla2x00_unlock_nvram_access.exit_crit_edge: ; preds = %qla2x00_set_nvram_protection.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla2x00_unlock_nvram_access.exit

if.then.i32:                                      ; preds = %qla2x00_set_nvram_protection.exit
  call void @__sanitizer_cov_trace_pc() #10
  %333 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %iobase.i, align 4
  %host_semaphore.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %334, i32 0, i32 8, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %host_semaphore.i, i16 0) #8, !srcloc !170
  %335 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %host_semaphore.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %qla2x00_unlock_nvram_access.exit

qla2x00_unlock_nvram_access.exit:                 ; preds = %if.then.i32, %qla2x00_set_nvram_protection.exit.qla2x00_unlock_nvram_access.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call2) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla2x00_write_nvram_word(ptr nocapture noundef readonly %ha, i32 noundef %addr, i16 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 9
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %nvram.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %1, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i, i16 1600) #8, !srcloc !170
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i, i16 1856) #8, !srcloc !170
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i, i16 1600) #8, !srcloc !170
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #8
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase, align 4
  %nvram.i55 = getelementptr inbounds %struct.device_reg_2xxx, ptr %13, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i55, i16 576) #8, !srcloc !170
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i55) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i55, i16 832) #8, !srcloc !170
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i55) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i55, i16 576) #8, !srcloc !170
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i55) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #8
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase, align 4
  %nvram.i57 = getelementptr inbounds %struct.device_reg_2xxx, ptr %21, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i57, i16 576) #8, !srcloc !170
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i57) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i57, i16 832) #8, !srcloc !170
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i57) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i57, i16 576) #8, !srcloc !170
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i57) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %word.076 = phi i16 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %28 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase, align 4
  %nvram.i59 = getelementptr inbounds %struct.device_reg_2xxx, ptr %29, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i59, i16 1600) #8, !srcloc !170
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i59) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i59, i16 1856) #8, !srcloc !170
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i59) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i59, i16 1600) #8, !srcloc !170
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i59) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #8
  %inc = add nuw nsw i16 %word.076, 1
  %cmp = icmp ult i16 %word.076, 7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %36 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iobase, align 4
  %nvram.i61 = getelementptr inbounds %struct.device_reg_2xxx, ptr %37, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i61, i16 0) #8, !srcloc !170
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i61) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 2147480) #8
  %conv2 = zext i16 %data to i32
  %40 = shl i32 %addr, 21
  %41 = shl nuw nsw i32 %conv2, 5
  %or3 = or i32 %41, %40
  %shl4 = or i32 %or3, -1610612736
  br label %for.body8

for.body8:                                        ; preds = %if.end.for.body8_crit_edge, %for.end
  %nv_cmd.078 = phi i32 [ %shl4, %for.end ], [ %shl9, %if.end.for.body8_crit_edge ]
  %count.077 = phi i32 [ 0, %for.end ], [ %inc11, %if.end.for.body8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %nv_cmd.078)
  %tobool.not = icmp sgt i32 %nv_cmd.078, -1
  %42 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iobase, align 4
  %nvram.i65 = getelementptr inbounds %struct.device_reg_2xxx, ptr %43, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i65, i16 1600) #8, !srcloc !170
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i65) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i65, i16 1856) #8, !srcloc !170
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i65) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i65, i16 1600) #8, !srcloc !170
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i65) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end

if.else:                                          ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i65, i16 576) #8, !srcloc !170
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i65) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i65, i16 832) #8, !srcloc !170
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i65) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i65, i16 576) #8, !srcloc !170
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i65) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 2147480) #8
  %shl9 = shl i32 %nv_cmd.078, 1
  %inc11 = add nuw nsw i32 %count.077, 1
  %exitcond.not = icmp eq i32 %inc11, 27
  br i1 %exitcond.not, label %for.end12, label %if.end.for.body8_crit_edge

if.end.for.body8_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8

for.end12:                                        ; preds = %if.end
  %55 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iobase, align 4
  %nvram.i67 = getelementptr inbounds %struct.device_reg_2xxx, ptr %56, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i67, i16 0) #8, !srcloc !170
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i67) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i, i16 512) #8, !srcloc !170
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %do.body

do.body:                                          ; preds = %if.end17.do.body_crit_edge, %for.end12
  %wait_cnt.0 = phi i32 [ 20000, %for.end12 ], [ %dec, %if.end17.do.body_crit_edge ]
  %dec = add nsw i32 %wait_cnt.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool15.not = icmp eq i32 %dec, 0
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %5, i32 noundef 28813, ptr noundef nonnull @.str.46) #8
  br label %do.end

if.end17:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 2147480) #8
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %62 = and i16 %61, 2048
  %cmp22 = icmp eq i16 %62, 0
  br i1 %cmp22, label %if.end17.do.body_crit_edge, label %if.end17.do.end_crit_edge

if.end17.do.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end17.do.end_crit_edge, %if.then16
  %63 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %iobase, align 4
  %nvram.i69 = getelementptr inbounds %struct.device_reg_2xxx, ptr %64, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i69, i16 0) #8, !srcloc !170
  %65 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i69) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 2147480) #8
  %67 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iobase, align 4
  %nvram.i71 = getelementptr inbounds %struct.device_reg_2xxx, ptr %68, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i71, i16 1600) #8, !srcloc !170
  %69 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i71) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i71, i16 1856) #8, !srcloc !170
  %71 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i71) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i71, i16 1600) #8, !srcloc !170
  %73 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i71) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 2147480) #8
  br label %for.body27

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %do.end
  %count.179 = phi i32 [ 0, %do.end ], [ %inc29, %for.body27.for.body27_crit_edge ]
  %75 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %iobase, align 4
  %nvram.i73 = getelementptr inbounds %struct.device_reg_2xxx, ptr %76, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i73, i16 576) #8, !srcloc !170
  %77 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i73) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i73, i16 832) #8, !srcloc !170
  %79 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i73) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i73, i16 576) #8, !srcloc !170
  %81 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i73) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 2147480) #8
  %inc29 = add nuw nsw i32 %count.179, 1
  %exitcond80.not = icmp eq i32 %inc29, 10
  br i1 %exitcond80.not, label %for.end30, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body27

for.end30:                                        ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %iobase, align 4
  %nvram.i75 = getelementptr inbounds %struct.device_reg_2xxx, ptr %84, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i75, i16 0) #8, !srcloc !170
  %85 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i75) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 2147480) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_write_nvram_data(ptr noundef %vha, ptr nocapture noundef readonly %buf, i32 noundef %naddr, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase, align 4
  %ctrl_status = getelementptr inbounds %struct.device_reg_24xx, ptr %7, i32 0, i32 2
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  %9 = or i32 %8, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_status, i32 %9) #8, !srcloc !166
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  %nvram_conf_off.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 211
  %11 = ptrtoint ptr %nvram_conf_off.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nvram_conf_off.i, align 16
  %add.i = add i32 %12, 257
  %call10 = tail call fastcc i32 @qla24xx_write_flash_dword(ptr noundef %1, i32 noundef %add.i, i32 noundef 0)
  %13 = ptrtoint ptr %nvram_conf_off.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nvram_conf_off.i, align 16
  %add.i56 = add i32 %14, 257
  %call12 = tail call fastcc i32 @qla24xx_write_flash_dword(ptr noundef %1, i32 noundef %add.i56, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bytes)
  %cmp62.not = icmp ult i32 %bytes, 4
  br i1 %cmp62.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %shr = lshr i32 %bytes, 2
  %nvram_data_off.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 212
  %15 = ptrtoint ptr %nvram_data_off.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nvram_data_off.i, align 4
  %add.i57 = add i32 %16, %naddr
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.065 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %dwptr.064 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %buf, %for.body.preheader ]
  %naddr.addr.063 = phi i32 [ %inc18, %for.inc.for.body_crit_edge ], [ %add.i57, %for.body.preheader ]
  %17 = ptrtoint ptr %dwptr.064 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dwptr.064, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %call14 = tail call fastcc i32 @qla24xx_write_flash_dword(ptr noundef %1, i32 noundef %naddr.addr.063, i32 noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.inc, label %if.then16

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %dwptr.064 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dwptr.064, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28826, ptr noundef nonnull @.str.5, i32 noundef %naddr.addr.063, i32 noundef %21) #8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.065, 1
  %inc18 = add i32 %naddr.addr.063, 1
  %incdec.ptr = getelementptr i32, ptr %dwptr.064, i32 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then16, %if.end.for.end_crit_edge
  %22 = ptrtoint ptr %nvram_conf_off.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nvram_conf_off.i, align 16
  %add.i59 = add i32 %23, 257
  %call20 = tail call fastcc i32 @qla24xx_write_flash_dword(ptr noundef %1, i32 noundef %add.i59, i32 noundef 140)
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  %25 = and i32 %24, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_status, i32 %25) #8, !srcloc !166
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla24xx_write_flash_dword(ptr nocapture noundef readonly %ha, i32 noundef %addr, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 9
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %flash_data = getelementptr inbounds %struct.device_reg_24xx, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %data) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %flash_data, i32 %2) #8, !srcloc !166
  %or = or i32 %addr, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #8, !srcloc !166
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %dec10 = phi i32 [ 499999, %entry ], [ %dec, %if.end.while.body_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  %.mask = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool2.not = icmp eq i32 %.mask, 0
  br i1 %tobool2.not, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #8
  tail call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 508, i32 noundef 0) #8
  %call.i = tail call i32 @__cond_resched() #8
  %dec = add nsw i32 %dec10, -1
  %tobool.not = icmp eq i32 %dec10, 0
  br i1 %tobool.not, label %while.end, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ha, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %9, i32 noundef 28816, ptr noundef nonnull @.str.47, i32 noundef %addr) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 256, %while.end ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qla25xx_read_nvram_data(ptr nocapture noundef readonly %vha, ptr noundef returned %buf, i32 noundef %naddr, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bytes)
  %cmp12.not = icmp ult i32 %bytes, 4
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %shr = lshr i32 %bytes, 2
  %flash_data_off.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 210
  %2 = ptrtoint ptr %flash_data_off.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flash_data_off.i, align 4
  %flt_region_vpd_nvram = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 220, i32 6
  %4 = ptrtoint ptr %flt_region_vpd_nvram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flt_region_vpd_nvram, align 4
  %or = or i32 %5, %naddr
  %add.i = add i32 %3, %or
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.015 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %dwptr.014 = phi ptr [ %incdec.ptr, %if.end.for.body_crit_edge ], [ %buf, %for.body.preheader ]
  %naddr.addr.013 = phi i32 [ %inc2, %if.end.for.body_crit_edge ], [ %add.i, %for.body.preheader ]
  %call1 = tail call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %1, i32 noundef %naddr.addr.013, ptr noundef %dwptr.014)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %dwptr.014 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dwptr.014, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %9 = ptrtoint ptr %dwptr.014 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dwptr.014, align 4
  %inc = add nuw nsw i32 %i.015, 1
  %inc2 = add i32 %naddr.addr.013, 1
  %incdec.ptr = getelementptr i32, ptr %dwptr.014, i32 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret ptr %buf
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla25xx_write_nvram_data(ptr noundef %vha, ptr nocapture noundef readonly %buf, i32 noundef %naddr, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %call = tail call noalias ptr @vmalloc(i32 noundef 65536) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %2 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp_ops, align 4
  %read_optrom = getelementptr inbounds %struct.isp_operations, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %read_optrom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_optrom, align 4
  %flt_region_vpd_nvram = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 220, i32 6
  %6 = ptrtoint ptr %flt_region_vpd_nvram to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flt_region_vpd_nvram, align 4
  %shl = shl i32 %7, 2
  %call1 = tail call ptr %5(ptr noundef %vha, ptr noundef nonnull %call, i32 noundef %shl, i32 noundef 65536) #8
  %shl2 = shl i32 %naddr, 2
  %add.ptr = getelementptr i8, ptr %call, i32 %shl2
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %bytes)
  %9 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %isp_ops, align 4
  %write_optrom = getelementptr inbounds %struct.isp_operations, ptr %10, i32 0, i32 30
  %11 = ptrtoint ptr %write_optrom to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_optrom, align 4
  %13 = ptrtoint ptr %flt_region_vpd_nvram to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flt_region_vpd_nvram, align 4
  %shl5 = shl i32 %14, 2
  %call6 = tail call i32 %12(ptr noundef %vha, ptr noundef nonnull %call, i32 noundef %shl5, i32 noundef 65536) #8
  tail call void @vfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 259, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2x00_beacon_blink(ptr nocapture noundef readonly %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isp_type, align 8
  %6 = and i32 %5, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %do.body6, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body6:                                         ; preds = %entry
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 6
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #8
  %pio_address = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pio_address, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %9, 206
  %and13 = and i32 %add, 1048575
  %add14 = or i32 %and13, -18874368
  %10 = inttoptr i32 %add14 to ptr
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %10) #8, !srcloc !171
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  %13 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pio_address, align 8
  %add20 = add i32 %14, 204
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %15 = inttoptr i32 %add22 to ptr
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %15) #8, !srcloc !171
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  br label %if.end28

if.else:                                          ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %gpioe = getelementptr inbounds %struct.device_reg_2xxx, ptr %3, i32 0, i32 22
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %gpioe) #8, !srcloc !171
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %gpiod = getelementptr inbounds %struct.device_reg_2xxx, ptr %3, i32 0, i32 21
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %gpiod) #8, !srcloc !171
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then11
  %gpio_data.0 = phi i16 [ %17, %if.then11 ], [ %21, %if.else ]
  %gpio_enable.0 = phi i16 [ %12, %if.then11 ], [ %19, %if.else ]
  %22 = or i16 %gpio_enable.0, 192
  %23 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pio_address, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool32.not = icmp eq i32 %24, 0
  br i1 %tobool32.not, label %if.else42, label %do.body34

do.body34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @arm_heavy_mb() #8
  %25 = tail call i16 @llvm.bswap.i16(i16 %22)
  %26 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pio_address, align 8
  %add38 = add i32 %27, 206
  %and39 = and i32 %add38, 1048575
  %add40 = or i32 %and39, -18874368
  %28 = inttoptr i32 %add40 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 %25) #8, !srcloc !170
  br label %if.end46

if.else42:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %gpioe43 = getelementptr inbounds %struct.device_reg_2xxx, ptr %3, i32 0, i32 22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %29 = tail call i16 @llvm.bswap.i16(i16 %22) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %gpioe43, i16 %29) #8, !srcloc !170
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %gpioe43) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end46

if.end46:                                         ; preds = %if.else42, %do.body34
  %31 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %isp_type, align 8
  %and1.i = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %beacon_color_state7.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 223
  %33 = ptrtoint ptr %beacon_color_state7.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %beacon_color_state7.i, align 8
  br i1 %tobool.not.i, label %if.else6.i, label %if.then.i

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %34)
  %cmp.i = icmp eq i8 %34, 7
  %..i = select i1 %cmp.i, i8 0, i8 7
  %.27.i = select i1 %cmp.i, i16 0, i16 193
  br label %qla2x00_flip_colors.exit

if.else6.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp9.i = icmp eq i8 %34, 1
  %not.cmp9.i = xor i1 %cmp9.i, true
  %.28.i = zext i1 %not.cmp9.i to i8
  %.29.i = select i1 %cmp9.i, i16 0, i16 64
  br label %qla2x00_flip_colors.exit

qla2x00_flip_colors.exit:                         ; preds = %if.else6.i, %if.then.i
  %.sink26.i = phi i8 [ %..i, %if.then.i ], [ %.28.i, %if.else6.i ]
  %.sink.i = phi i16 [ %.27.i, %if.then.i ], [ %.29.i, %if.else6.i ]
  %35 = ptrtoint ptr %beacon_color_state7.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink26.i, ptr %beacon_color_state7.i, align 8
  %36 = and i16 %gpio_data.0, -193
  %or5298 = or i16 %.sink.i, %36
  %37 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pio_address, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool55.not = icmp eq i32 %38, 0
  br i1 %tobool55.not, label %if.else65, label %do.body57

do.body57:                                        ; preds = %qla2x00_flip_colors.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %39 = tail call i16 @llvm.bswap.i16(i16 %or5298)
  %40 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pio_address, align 8
  %add61 = add i32 %41, 204
  %and62 = and i32 %add61, 1048575
  %add63 = or i32 %and62, -18874368
  %42 = inttoptr i32 %add63 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %42, i16 %39) #8, !srcloc !170
  br label %if.end69

if.else65:                                        ; preds = %qla2x00_flip_colors.exit
  call void @__sanitizer_cov_trace_pc() #10
  %gpiod66 = getelementptr inbounds %struct.device_reg_2xxx, ptr %3, i32 0, i32 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %43 = tail call i16 @llvm.bswap.i16(i16 %or5298) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %gpiod66, i16 %43) #8, !srcloc !170
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %gpiod66) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end69

if.end69:                                         ; preds = %if.else65, %do.body57
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_beacon_on(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %fw_options = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 155
  %arrayidx = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 155, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %6 = and i16 %5, -321
  %7 = or i16 %6, 64
  store i16 %7, ptr %arrayidx, align 2
  %call = tail call i32 @qla2x00_set_fw_options(ptr noundef %vha, ptr noundef %fw_options) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %do.body8, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28827, ptr noundef nonnull @.str.6) #8
  br label %cleanup

do.body8:                                         ; preds = %entry
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 6
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #8
  %pio_address = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pio_address, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %9, 206
  %and17 = and i32 %add, 1048575
  %add18 = or i32 %and17, -18874368
  %10 = inttoptr i32 %add18 to ptr
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %10) #8, !srcloc !171
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  %13 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pio_address, align 8
  %add24 = add i32 %14, 204
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %15 = inttoptr i32 %add26 to ptr
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %15) #8, !srcloc !171
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  br label %if.end32

if.else:                                          ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %gpioe = getelementptr inbounds %struct.device_reg_2xxx, ptr %3, i32 0, i32 22
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %gpioe) #8, !srcloc !171
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %gpiod = getelementptr inbounds %struct.device_reg_2xxx, ptr %3, i32 0, i32 21
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %gpiod) #8, !srcloc !171
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then15
  %gpio_data.0 = phi i16 [ %17, %if.then15 ], [ %21, %if.else ]
  %gpio_enable.0 = phi i16 [ %12, %if.then15 ], [ %19, %if.else ]
  %22 = or i16 %gpio_enable.0, 192
  %23 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pio_address, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool37.not = icmp eq i32 %24, 0
  br i1 %tobool37.not, label %if.else47, label %do.body39

do.body39:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @arm_heavy_mb() #8
  %25 = tail call i16 @llvm.bswap.i16(i16 %22)
  %26 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pio_address, align 8
  %add43 = add i32 %27, 206
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %28 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 %25) #8, !srcloc !170
  br label %if.end51

if.else47:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %gpioe48 = getelementptr inbounds %struct.device_reg_2xxx, ptr %3, i32 0, i32 22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %29 = tail call i16 @llvm.bswap.i16(i16 %22) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %gpioe48, i16 %29) #8, !srcloc !170
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %gpioe48) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end51

if.end51:                                         ; preds = %if.else47, %do.body39
  %31 = and i16 %gpio_data.0, -193
  %32 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pio_address, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool56.not = icmp eq i32 %33, 0
  br i1 %tobool56.not, label %if.else66, label %do.body58

do.body58:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  %34 = tail call i16 @llvm.bswap.i16(i16 %31)
  %35 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pio_address, align 8
  %add62 = add i32 %36, 204
  %and63 = and i32 %add62, 1048575
  %add64 = or i32 %and63, -18874368
  %37 = inttoptr i32 %add64 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %37, i16 %34) #8, !srcloc !170
  br label %if.end70

if.else66:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %gpiod67 = getelementptr inbounds %struct.device_reg_2xxx, ptr %3, i32 0, i32 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %38 = tail call i16 @llvm.bswap.i16(i16 %31) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %gpiod67, i16 %38) #8, !srcloc !170
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %gpiod67) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end70

if.end70:                                         ; preds = %if.else66, %do.body58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call12) #8
  %beacon_blink_led = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 222
  %40 = ptrtoint ptr %beacon_blink_led to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %beacon_blink_led, align 2
  %beacon_color_state = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 223
  %41 = ptrtoint ptr %beacon_color_state to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %beacon_color_state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then
  %retval.0 = phi i32 [ 258, %if.then ], [ 0, %if.end70 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_set_fw_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_beacon_off(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %beacon_blink_led = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 222
  %2 = ptrtoint ptr %beacon_blink_led to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %beacon_blink_led, align 2
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %3 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %isp_type, align 8
  %and1 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %spec.select = select i1 %tobool.not, i8 1, i8 7
  %5 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 223
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %spec.select, ptr %5, align 8
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %7 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isp_ops, align 4
  %beacon_blink = getelementptr inbounds %struct.isp_operations, ptr %8, i32 0, i32 28
  %9 = ptrtoint ptr %beacon_blink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %beacon_blink, align 4
  tail call void %10(ptr noundef %vha) #8
  %fw_options = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 155
  %arrayidx = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 155, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 2
  %13 = and i16 %12, -321
  store i16 %13, ptr %arrayidx, align 2
  %call = tail call i32 @qla2x00_set_fw_options(ptr noundef %vha, ptr noundef %fw_options) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end13_crit_edge, label %if.then12

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28828, ptr noundef nonnull @.str.7) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %entry.if.end13_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla24xx_beacon_blink(ptr nocapture noundef readonly %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #8
  %gpiod = getelementptr inbounds %struct.device_reg_24xx, ptr %3, i32 0, i32 17
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gpiod) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  %5 = or i32 %4, 7168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gpiod, i32 %5) #8, !srcloc !166
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gpiod) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  %beacon_color_state.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 223
  %7 = ptrtoint ptr %beacon_color_state.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %beacon_color_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %8)
  %cmp.i = icmp eq i8 %8, 7
  %..i = select i1 %cmp.i, i8 0, i8 7
  %9 = ptrtoint ptr %beacon_color_state.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %..i, ptr %beacon_color_state.i, align 8
  %10 = and i32 %6, -469762049
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %conv9 = select i1 %cmp.i, i32 0, i32 20
  %or10 = or i32 %conv9, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %or10) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gpiod, i32 %12) #8, !srcloc !166
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gpiod) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla83xx_beacon_blink(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  %led_cfg = alloca [6 x i16], align 2
  %orig_led_cfg = alloca [6 x i16], align 2
  %led_10_value = alloca i32, align 4
  %led_43_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %led_cfg) #8
  %2 = getelementptr inbounds [6 x i16], ptr %led_cfg, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i16], ptr %led_cfg, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i16], ptr %led_cfg, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i16], ptr %led_cfg, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i16], ptr %led_cfg, i32 0, i32 5
  %7 = call ptr @memset(ptr %led_cfg, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %orig_led_cfg) #8
  %8 = call ptr @memset(ptr %orig_led_cfg, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %led_10_value) #8
  %9 = ptrtoint ptr %led_10_value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %led_10_value, align 4, !annotation !181
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %led_43_value) #8
  %10 = ptrtoint ptr %led_43_value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %led_43_value, align 4, !annotation !181
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %11 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %isp_type, align 8
  %and1 = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %and4 = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %and8 = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %13 = and i32 %12, 45719552
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %beacon_blink_led = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 222
  %15 = ptrtoint ptr %beacon_blink_led to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %beacon_blink_led, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool35.not = icmp eq i16 %16, 0
  br i1 %tobool35.not, label %if.end.cleanup_crit_edge, label %if.end37

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37:                                         ; preds = %if.end
  %17 = and i32 %12, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %if.else, label %if.then62

if.then62:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @qla2x00_write_ram_word(ptr noundef %vha, i32 noundef 4099, i32 noundef 1073742384) #8
  %call63 = tail call i32 @qla2x00_write_ram_word(ptr noundef %vha, i32 noundef 4100, i32 noundef 1073742384) #8
  br label %cleanup

if.else:                                          ; preds = %if.end37
  br i1 %tobool.not, label %if.else72, label %if.then68

if.then68:                                        ; preds = %if.else
  %19 = and i32 %12, 45711360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %if.then68.qla83xx_select_led_port.exit_crit_edge, label %if.end.i

if.then68.qla83xx_select_led_port.exit_crit_edge: ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla83xx_select_led_port.exit

if.end.i:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %port_no.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 38
  %21 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %port_no.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.i = icmp eq i8 %22, 0
  %..i = select i1 %cmp.i, i32 2102048, i32 2102056
  br label %qla83xx_select_led_port.exit

qla83xx_select_led_port.exit:                     ; preds = %if.end.i, %if.then68.qla83xx_select_led_port.exit_crit_edge
  %led_select_value.0.i = phi i32 [ 0, %if.then68.qla83xx_select_led_port.exit_crit_edge ], [ %..i, %if.end.i ]
  %call70 = tail call i32 @qla83xx_wr_reg(ptr noundef %vha, i32 noundef %led_select_value.0.i, i32 noundef 1073742384) #8
  %add = or i32 %led_select_value.0.i, 4
  %call71 = tail call i32 @qla83xx_wr_reg(ptr noundef %vha, i32 noundef %add, i32 noundef 1073742384) #8
  br label %cleanup

if.else72:                                        ; preds = %if.else
  br i1 %tobool5.not, label %if.else87, label %if.then77

if.then77:                                        ; preds = %if.else72
  %23 = and i32 %12, 45711360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %if.then77.qla83xx_select_led_port.exit207_crit_edge, label %if.end.i205

if.then77.qla83xx_select_led_port.exit207_crit_edge: ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla83xx_select_led_port.exit207

if.end.i205:                                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  %port_no.i202 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 38
  %25 = ptrtoint ptr %port_no.i202 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %port_no.i202, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp.i203 = icmp eq i8 %26, 0
  %..i204 = select i1 %cmp.i203, i32 2102048, i32 2102056
  br label %qla83xx_select_led_port.exit207

qla83xx_select_led_port.exit207:                  ; preds = %if.end.i205, %if.then77.qla83xx_select_led_port.exit207_crit_edge
  %led_select_value.0.i206 = phi i32 [ 0, %if.then77.qla83xx_select_led_port.exit207_crit_edge ], [ %..i204, %if.end.i205 ]
  %call79 = call i32 @qla83xx_rd_reg(ptr noundef %vha, i32 noundef %led_select_value.0.i206, ptr noundef nonnull %led_10_value) #8
  %add80 = or i32 %led_select_value.0.i206, 16
  %call81 = call i32 @qla83xx_rd_reg(ptr noundef %vha, i32 noundef %add80, ptr noundef nonnull %led_43_value) #8
  %call82 = call i32 @qla83xx_wr_reg(ptr noundef %vha, i32 noundef %led_select_value.0.i206, i32 noundef 32784384) #8
  call void @msleep(i32 noundef 500) #8
  %call83 = call i32 @qla83xx_wr_reg(ptr noundef %vha, i32 noundef %led_select_value.0.i206, i32 noundef 1073742324) #8
  call void @msleep(i32 noundef 1000) #8
  %27 = ptrtoint ptr %led_10_value to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %led_10_value, align 4
  %call84 = call i32 @qla83xx_wr_reg(ptr noundef %vha, i32 noundef %led_select_value.0.i206, i32 noundef %28) #8
  %29 = ptrtoint ptr %led_43_value to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %led_43_value, align 4
  %call86 = call i32 @qla83xx_wr_reg(ptr noundef %vha, i32 noundef %add80, i32 noundef %30) #8
  br label %cleanup

if.else87:                                        ; preds = %if.else72
  br i1 %tobool9.not, label %if.else87.cleanup_crit_edge, label %if.then92

if.else87.cleanup_crit_edge:                      ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then92:                                        ; preds = %if.else87
  %call93 = call i32 @qla81xx_get_led_config(ptr noundef %vha, ptr noundef nonnull %orig_led_cfg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp = icmp eq i32 %call93, 0
  br i1 %cmp, label %if.then94, label %if.then92.if.end133_crit_edge

if.then92.if.end133_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

if.then94:                                        ; preds = %if.then92
  %31 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %isp_type, align 8
  %and97 = and i32 %32, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  %. = select i1 %tobool98.not, i16 16384, i16 8192
  %33 = trunc i32 %and97 to i16
  %34 = shl nuw nsw i16 %33, 1
  %35 = xor i16 %34, 16384
  %36 = xor i16 %33, 8192
  %37 = ptrtoint ptr %led_cfg to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 16384, ptr %led_cfg, align 2
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %., ptr %2, align 2
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %35, ptr %3, align 2
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %36, ptr %4, align 2
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %5, align 2
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %36, ptr %6, align 2
  %call114 = call i32 @qla81xx_set_led_config(ptr noundef %vha, ptr noundef nonnull %led_cfg) #8
  call void @msleep(i32 noundef 1000) #8
  %43 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %isp_type, align 8
  %and117 = and i32 %44, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  %45 = ptrtoint ptr %led_cfg to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 16384, ptr %led_cfg, align 2
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 8192, ptr %2, align 2
  br i1 %tobool118.not, label %if.else123, label %if.then119

if.then119:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %3, align 2
  br label %if.end130

if.else123:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 16384, ptr %3, align 2
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 16384, ptr %4, align 2
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %5, align 2
  %51 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 8192, ptr %6, align 2
  br label %if.end130

if.end130:                                        ; preds = %if.else123, %if.then119
  %call132 = call i32 @qla81xx_set_led_config(ptr noundef %vha, ptr noundef nonnull %led_cfg) #8
  br label %if.end133

if.end133:                                        ; preds = %if.end130, %if.then92.if.end133_crit_edge
  %call135 = call i32 @qla81xx_set_led_config(ptr noundef %vha, ptr noundef nonnull %orig_led_cfg) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end133, %if.else87.cleanup_crit_edge, %qla83xx_select_led_port.exit207, %qla83xx_select_led_port.exit, %if.then62, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %led_43_value) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %led_10_value) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %orig_led_cfg) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %led_cfg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_write_ram_word(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla83xx_wr_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla83xx_rd_reg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla81xx_get_led_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla81xx_set_led_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_beacon_on(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isp_type, align 8
  %6 = and i32 %5, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = and i32 %5, 73728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.end16, label %if.end.skip_gpio_crit_edge

if.end.skip_gpio_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_gpio

if.end16:                                         ; preds = %if.end
  %beacon_blink_led = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 222
  %10 = ptrtoint ptr %beacon_blink_led to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %beacon_blink_led, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp = icmp eq i16 %11, 0
  br i1 %cmp, label %if.then18, label %if.end16.if.end77_crit_edge

if.end16.if.end77_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then18:                                        ; preds = %if.end16
  %fw_options = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 155
  %arrayidx = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 155, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  %14 = or i16 %13, 64
  store i16 %14, ptr %arrayidx, align 2
  %call = tail call i32 @qla2x00_set_fw_options(ptr noundef %vha, ptr noundef %fw_options) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp22.not = icmp eq i32 %call, 0
  br i1 %cmp22.not, label %if.end25, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.then18
  %call28 = tail call i32 @qla2x00_get_fw_options(ptr noundef %vha, ptr noundef %fw_options) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 0
  br i1 %cmp29.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28681, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end25
  %15 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %isp_type, align 8
  %17 = and i32 %16, 45645824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %do.body64, label %if.end32.skip_gpio_crit_edge

if.end32.skip_gpio_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_gpio

do.body64:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 6
  %call68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #8
  %gpiod = getelementptr inbounds %struct.device_reg_24xx, ptr %3, i32 0, i32 17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gpiod) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  %20 = or i32 %19, 7168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gpiod, i32 %20) #8, !srcloc !166
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gpiod) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call68) #8
  br label %if.end77

if.end77:                                         ; preds = %do.body64, %if.end16.if.end77_crit_edge
  %beacon_color_state = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 223
  %22 = ptrtoint ptr %beacon_color_state to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %beacon_color_state, align 8
  br label %skip_gpio

skip_gpio:                                        ; preds = %if.end77, %if.end32.skip_gpio_crit_edge, %if.end.skip_gpio_crit_edge
  %beacon_blink_led78 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 222
  %23 = ptrtoint ptr %beacon_blink_led78 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %beacon_blink_led78, align 2
  br label %cleanup

cleanup:                                          ; preds = %skip_gpio, %if.then31, %if.then18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %skip_gpio ], [ 258, %if.then31 ], [ 0, %entry.cleanup_crit_edge ], [ 258, %if.then18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_get_fw_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_beacon_off(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isp_type, align 8
  %6 = and i32 %5, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags6 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %8 = getelementptr inbounds i32, ptr %flags6, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load volatile i32, ptr %8, align 4
  %10 = and i32 %bf.load, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %beacon_blink_led = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 222
  %11 = ptrtoint ptr %beacon_blink_led to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %beacon_blink_led, align 2
  %12 = and i32 %5, 45645824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %if.end40, label %if.end9.set_fw_options_crit_edge

if.end9.set_fw_options_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_fw_options

if.end40:                                         ; preds = %if.end9
  %14 = and i32 %5, 73728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %if.end51, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %beacon_color_state = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 223
  %16 = ptrtoint ptr %beacon_color_state to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 7, ptr %beacon_color_state, align 8
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %17 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %isp_ops, align 4
  %beacon_blink = getelementptr inbounds %struct.isp_operations, ptr %18, i32 0, i32 28
  %19 = ptrtoint ptr %beacon_blink to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %beacon_blink, align 4
  tail call void %20(ptr noundef %vha) #8
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 6
  %call53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #8
  %gpiod = getelementptr inbounds %struct.device_reg_24xx, ptr %3, i32 0, i32 17
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gpiod) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  %22 = and i32 %21, -7169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gpiod, i32 %22) #8, !srcloc !166
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gpiod) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call53) #8
  br label %set_fw_options

set_fw_options:                                   ; preds = %if.end51, %if.end9.set_fw_options_crit_edge
  %fw_options = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 155
  %arrayidx = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 155, i32 1
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx, align 2
  %26 = and i16 %25, -65
  store i16 %26, ptr %arrayidx, align 2
  %call66 = tail call i32 @qla2x00_set_fw_options(ptr noundef %vha, ptr noundef %fw_options) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67.not = icmp eq i32 %call66, 0
  br i1 %cmp67.not, label %if.end70, label %set_fw_options.cleanup.sink.split_crit_edge

set_fw_options.cleanup.sink.split_crit_edge:      ; preds = %set_fw_options
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end70:                                         ; preds = %set_fw_options
  %call73 = tail call i32 @qla2x00_get_fw_options(ptr noundef %vha, ptr noundef %fw_options) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74.not = icmp eq i32 %call73, 0
  br i1 %cmp74.not, label %if.end70.cleanup_crit_edge, label %if.end70.cleanup.sink.split_crit_edge

if.end70.cleanup.sink.split_crit_edge:            ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end70.cleanup.sink.split_crit_edge, %set_fw_options.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 28749, %set_fw_options.cleanup.sink.split_crit_edge ], [ 28750, %if.end70.cleanup.sink.split_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef %.sink, ptr noundef nonnull @.str.6) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end70.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ], [ 0, %if.end70.cleanup_crit_edge ], [ 258, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qla2x00_read_optrom_data(ptr noundef %vha, ptr noundef returned writeonly %buf, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  tail call fastcc void @qla2x00_suspend_hba(ptr noundef %vha)
  %optrom_size = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 199
  %4 = ptrtoint ptr %optrom_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %optrom_size, align 8
  %div21 = lshr i32 %5, 1
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase, align 4
  %ctrl_status.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %7, i32 0, i32 3
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %9 = or i16 %8, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctrl_status.i, i16 %9) #8, !srcloc !170
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %nvram = getelementptr inbounds %struct.device_reg_2xxx, ptr %3, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram, i16 0) #8, !srcloc !170
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @__sanitizer_cov_trace_cmp4(i32 %offset, i32 %length)
  %cmp24 = icmp ult i32 %offset, %length
  br i1 %cmp24, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %data.026 = phi ptr [ %incdec.ptr, %if.end.for.body_crit_edge ], [ %buf, %entry.for.body_crit_edge ]
  %addr.025 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ %offset, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %addr.025, i32 %div21)
  %cmp2 = icmp eq i32 %addr.025, %div21
  br i1 %cmp2, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram, i16 512) #8, !srcloc !170
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %call6 = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %addr.025)
  %13 = ptrtoint ptr %data.026 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call6, ptr %data.026, align 1
  %inc = add i32 %addr.025, 1
  %incdec.ptr = getelementptr i8, ptr %data.026, i32 1
  %exitcond.not = icmp eq i32 %inc, %length
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase, align 4
  %ctrl_status.i23 = getelementptr inbounds %struct.device_reg_2xxx, ptr %15, i32 0, i32 3
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status.i23) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %17 = and i16 %16, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctrl_status.i23, i16 %17) #8, !srcloc !170
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status.i23) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %mbx_cmd_flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %20, i32 0, i32 124
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %mbx_cmd_flags.i) #8
  %dpc_flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags.i) #8
  tail call void @qla2xxx_wake_dpc(ptr noundef %vha) #8
  %call.i = tail call i32 @qla2x00_wait_for_chip_reset(ptr noundef %vha) #8
  %host.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %21 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host.i, align 8
  tail call void @scsi_unblock_requests(ptr noundef %22) #8
  ret ptr %buf
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla2x00_suspend_hba(ptr nocapture noundef readonly %vha) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 8
  tail call void @scsi_block_requests(ptr noundef %5) #8
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %6 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %isp_ops, align 4
  %disable_intrs = getelementptr inbounds %struct.isp_operations, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %disable_intrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disable_intrs, align 4
  tail call void %9(ptr noundef %1) #8
  %mbx_cmd_flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 124
  tail call void @_set_bit(i32 noundef 3, ptr noundef %mbx_cmd_flags) #8
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #8
  %hccr = getelementptr inbounds %struct.device_reg_2xxx, ptr %3, i32 0, i32 19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %hccr, i16 32) #8, !srcloc !170
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %hccr) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %11 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %isp_type, align 8
  %13 = and i32 %12, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %if.else, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %cnt.041 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %hccr) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %16 = and i16 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp23.not = icmp eq i16 %16, 0
  br i1 %cmp23.not, label %if.end, label %for.body.if.end26_crit_edge

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 21474800) #8
  %inc = add nuw nsw i32 %cnt.041, 1
  %exitcond.not = icmp eq i32 %inc, 30000
  br i1 %exitcond.not, label %if.end.if.end26_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end.if.end26_crit_edge, %for.body.if.end26_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @qla2x00_read_flash_byte(ptr nocapture noundef readonly %ha, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  %first.i = alloca i16, align 2
  %second.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 9
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %ctrl_status = getelementptr inbounds %struct.device_reg_2xxx, ptr %1, i32 0, i32 3
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status) #8, !srcloc !171
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 54
  %4 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isp_type, align 8
  %6 = and i32 %5, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = and i16 %3, -249
  %shr = lshr i32 %addr, 12
  %9 = trunc i32 %shr to i16
  %10 = and i16 %9, 240
  %conv10 = or i16 %10, %8
  %11 = or i16 %conv10, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctrl_status, i16 %12) #8, !srcloc !170
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %conv17 = trunc i32 %addr to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv17) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %14) #8, !srcloc !170
  %flash_data = getelementptr inbounds %struct.device_reg_2xxx, ptr %1, i32 0, i32 1
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %flash_data) #8, !srcloc !171
  %16 = lshr i16 %15, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %extract.t133 = trunc i16 %16 to i8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and20 = and i32 %addr, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp ne i32 %and20, 0
  %17 = and i16 %3, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp = icmp eq i16 %17, 0
  %or.cond127 = select i1 %tobool21.not, i1 %cmp, i1 false
  br i1 %or.cond127, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or27 = or i16 %3, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %18 = tail call i16 @llvm.bswap.i16(i16 %or27) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctrl_status, i16 %18) #8, !srcloc !170
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end47

if.else:                                          ; preds = %if.end
  %or.cond128 = select i1 %tobool21.not, i1 true, i1 %cmp
  br i1 %or.cond128, label %if.else.if.end47_crit_edge, label %if.then39

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %and41 = and i16 %3, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %20 = tail call i16 @llvm.bswap.i16(i16 %and41) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctrl_status, i16 %20) #8, !srcloc !170
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %if.else.if.end47_crit_edge, %if.then25
  %pio_address = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 10
  %22 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pio_address, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool48.not = icmp eq i32 %23, 0
  br i1 %tobool48.not, label %if.else85, label %if.then49

if.then49:                                        ; preds = %if.end47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @arm_heavy_mb() #8
  %conv50 = trunc i32 %addr to i16
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv50)
  %25 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pio_address, align 8
  %and52 = and i32 %26, 1048575
  %add53 = or i32 %and52, -18874368
  %27 = inttoptr i32 %add53 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %27, i16 %24) #8, !srcloc !170
  br label %do.body55

do.body55:                                        ; preds = %do.body55.do.body55_crit_edge, %if.then49
  %28 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pio_address, align 8
  %add57 = add i32 %29, 2
  %and58 = and i32 %add57, 1048575
  %add59 = or i32 %and58, -18874368
  %30 = inttoptr i32 %add59 to ptr
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %30) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !186
  %32 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pio_address, align 8
  %add73 = add i32 %33, 2
  %and74 = and i32 %add73, 1048575
  %add75 = or i32 %and74, -18874368
  %34 = inttoptr i32 %add75 to ptr
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %34) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  %cmp82.not = icmp eq i16 %31, %35
  br i1 %cmp82.not, label %do.end84, label %do.body55.do.body55_crit_edge

do.body55.do.body55_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

do.end84:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  %36 = lshr i16 %31, 8
  %extract.t = trunc i16 %36 to i8
  br label %cleanup

if.else85:                                        ; preds = %if.end47
  %conv87 = trunc i32 %addr to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %37 = tail call i16 @llvm.bswap.i16(i16 %conv87) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %37) #8, !srcloc !170
  %flash_data88 = getelementptr inbounds %struct.device_reg_2xxx, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %first.i)
  %38 = ptrtoint ptr %first.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store volatile i16 -1, ptr %first.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %second.i)
  %39 = ptrtoint ptr %second.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store volatile i16 -1, ptr %second.i, align 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.else85
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %flash_data88) #8, !srcloc !171
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %42 = ptrtoint ptr %first.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store volatile i16 %41, ptr %first.i, align 2
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !190
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %flash_data88) #8, !srcloc !171
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %45 = ptrtoint ptr %second.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store volatile i16 %44, ptr %second.i, align 2
  %46 = ptrtoint ptr %first.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %first.i.0.first.i.0.first.0.first.0.first.0..i = load volatile i16, ptr %first.i, align 2
  %second.i.0.second.i.0.second.0.second.0.second.0..i = load volatile i16, ptr %second.i, align 2
  %cmp.not.i = icmp eq i16 %first.i.0.first.i.0.first.0.first.0.first.0..i, %second.i.0.second.i.0.second.0.second.0.second.0..i
  br i1 %cmp.not.i, label %qla2x00_debounce_register.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

qla2x00_debounce_register.exit:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %first.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %first.i.0.first.i.0.first.0.first.0.first.0.13.i = load volatile i16, ptr %first.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %second.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %first.i)
  %extract.t132 = trunc i16 %first.i.0.first.i.0.first.0.first.0.first.0.13.i to i8
  br label %cleanup

cleanup:                                          ; preds = %qla2x00_debounce_register.exit, %do.end84, %if.then
  %.sink.off0 = phi i8 [ %extract.t, %do.end84 ], [ %extract.t132, %qla2x00_debounce_register.exit ], [ %extract.t133, %if.then ]
  ret i8 %.sink.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_write_optrom_data(ptr noundef %vha, ptr nocapture noundef readonly %buf, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %wd = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wd) #8
  %0 = ptrtoint ptr %wd to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %wd, align 2, !annotation !181
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobase, align 4
  tail call fastcc void @qla2x00_suspend_hba(ptr noundef %vha)
  %ctrl_status = getelementptr inbounds %struct.device_reg_2xxx, ptr %4, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctrl_status, i16 256) #8, !srcloc !170
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 128
  %call = call i32 @pci_read_config_word(ptr noundef %6, i32 noundef 4, ptr noundef nonnull %wd) #8
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase, align 4
  %ctrl_status.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %8, i32 0, i32 3
  %9 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status.i) #8, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %10 = or i16 %9, 512
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctrl_status.i, i16 %10) #8, !srcloc !170
  %11 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status.i) #8, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 55
  %12 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device_type, align 4
  %and = and i32 %13, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.update_flash_crit_edge

entry.update_flash_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash

if.end:                                           ; preds = %entry
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef 21845, i8 noundef zeroext -86) #8
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef 10922, i8 noundef zeroext 85) #8
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef 21845, i8 noundef zeroext -112) #8
  %call.i = call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %2, i32 noundef 0) #8
  %call1.i = call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %2, i32 noundef 1) #8
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef 21845, i8 noundef zeroext -86) #8
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef 10922, i8 noundef zeroext 85) #8
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef 21845, i8 noundef zeroext -16) #8
  %14 = zext i8 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %call.i, label %if.end.sw.default_crit_edge [
    i8 32, label %sw.bb
    i8 64, label %if.end.update_flash_crit_edge
    i8 -65, label %sw.bb9
    i8 -38, label %sw.bb10
    i8 -62, label %sw.bb11
    i8 31, label %sw.bb21
    i8 1, label %sw.bb27
  ]

if.end.update_flash_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash

if.end.sw.default_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

sw.bb:                                            ; preds = %if.end
  %15 = zext i8 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %call1.i, label %if.end7 [
    i8 -46, label %sw.bb.update_flash_crit_edge
    i8 -29, label %sw.bb.update_flash_crit_edge373
  ]

sw.bb.update_flash_crit_edge373:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash

sw.bb.update_flash_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash

if.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash

sw.bb11:                                          ; preds = %if.end
  %16 = zext i8 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %call1.i, label %sw.bb11.sw.default_crit_edge [
    i8 56, label %sw.bb11.update_flash_crit_edge
    i8 79, label %sw.bb11.update_flash_crit_edge374
    i8 19, label %sw.bb11.update_flash.fold.split_crit_edge
    i8 64, label %sw.bb11.update_flash.fold.split343_crit_edge
    i8 62, label %sw.bb11.update_flash.fold.split343_crit_edge375
    i8 32, label %sw.bb11.if.then52_crit_edge
    i8 110, label %sw.bb11.if.then52_crit_edge376
    i8 109, label %sw.bb11.if.then57_crit_edge
  ]

sw.bb11.if.then57_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

sw.bb11.if.then52_crit_edge376:                   ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

sw.bb11.if.then52_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

sw.bb11.update_flash.fold.split343_crit_edge375:  ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash.fold.split343

sw.bb11.update_flash.fold.split343_crit_edge:     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash.fold.split343

sw.bb11.update_flash.fold.split_crit_edge:        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash.fold.split

sw.bb11.update_flash_crit_edge374:                ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash

sw.bb11.update_flash_crit_edge:                   ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash

sw.bb11.sw.default_crit_edge:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

sw.bb21:                                          ; preds = %if.end
  %17 = zext i8 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %call1.i, label %sw.bb21.sw.default_crit_edge [
    i8 19, label %sw.bb21.update_flash.fold.split_crit_edge
    i8 56, label %sw.bb21.update_flash_crit_edge
    i8 64, label %sw.bb21.update_flash_crit_edge377
    i8 79, label %sw.bb21.update_flash_crit_edge378
    i8 62, label %sw.bb21.update_flash_crit_edge379
    i8 32, label %sw.bb21.if.then52_crit_edge
    i8 110, label %sw.bb21.if.then52_crit_edge380
    i8 109, label %sw.bb21.if.then57_crit_edge
  ]

sw.bb21.if.then57_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

sw.bb21.if.then52_crit_edge380:                   ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

sw.bb21.if.then52_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

sw.bb21.update_flash_crit_edge379:                ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash

sw.bb21.update_flash_crit_edge378:                ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash

sw.bb21.update_flash_crit_edge377:                ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash

sw.bb21.update_flash_crit_edge:                   ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash

sw.bb21.update_flash.fold.split_crit_edge:        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash.fold.split

sw.bb21.sw.default_crit_edge:                     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

sw.bb27:                                          ; preds = %if.end
  %18 = zext i8 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %call1.i, label %sw.bb27.sw.default_crit_edge [
    i8 56, label %sw.bb27.update_flash.fold.split343_crit_edge
    i8 64, label %sw.bb27.update_flash.fold.split343_crit_edge381
    i8 79, label %sw.bb27.update_flash.fold.split343_crit_edge382
    i8 62, label %sw.bb27.update_flash.fold.split343_crit_edge383
    i8 32, label %sw.bb27.if.then52_crit_edge
    i8 110, label %sw.bb27.if.then52_crit_edge384
    i8 109, label %sw.bb27.if.then57_crit_edge
  ]

sw.bb27.if.then57_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

sw.bb27.if.then52_crit_edge384:                   ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

sw.bb27.if.then52_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

sw.bb27.update_flash.fold.split343_crit_edge383:  ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash.fold.split343

sw.bb27.update_flash.fold.split343_crit_edge382:  ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash.fold.split343

sw.bb27.update_flash.fold.split343_crit_edge381:  ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash.fold.split343

sw.bb27.update_flash.fold.split343_crit_edge:     ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_flash.fold.split343

sw.bb27.sw.default_crit_edge:                     ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

if.then52:                                        ; preds = %sw.bb27.if.then52_crit_edge, %sw.bb27.if.then52_crit_edge384, %sw.bb21.if.then52_crit_edge, %sw.bb21.if.then52_crit_edge380, %sw.bb11.if.then52_crit_edge, %sw.bb11.if.then52_crit_edge376
  br label %update_flash

if.then57:                                        ; preds = %sw.bb27.if.then57_crit_edge, %sw.bb21.if.then57_crit_edge, %sw.bb11.if.then57_crit_edge
  br label %update_flash

sw.default:                                       ; preds = %sw.bb27.sw.default_crit_edge, %sw.bb21.sw.default_crit_edge, %sw.bb11.sw.default_crit_edge, %if.end.sw.default_crit_edge
  br label %update_flash

update_flash.fold.split:                          ; preds = %sw.bb21.update_flash.fold.split_crit_edge, %sw.bb11.update_flash.fold.split_crit_edge
  br label %update_flash

update_flash.fold.split343:                       ; preds = %sw.bb27.update_flash.fold.split343_crit_edge, %sw.bb27.update_flash.fold.split343_crit_edge381, %sw.bb27.update_flash.fold.split343_crit_edge382, %sw.bb27.update_flash.fold.split343_crit_edge383, %sw.bb11.update_flash.fold.split343_crit_edge, %sw.bb11.update_flash.fold.split343_crit_edge375
  br label %update_flash

update_flash:                                     ; preds = %update_flash.fold.split343, %update_flash.fold.split, %sw.default, %if.then57, %if.then52, %sw.bb21.update_flash_crit_edge, %sw.bb21.update_flash_crit_edge377, %sw.bb21.update_flash_crit_edge378, %sw.bb21.update_flash_crit_edge379, %sw.bb11.update_flash_crit_edge, %sw.bb11.update_flash_crit_edge374, %sw.bb10, %sw.bb9, %if.end7, %sw.bb.update_flash_crit_edge, %sw.bb.update_flash_crit_edge373, %if.end.update_flash_crit_edge, %entry.update_flash_crit_edge
  %man_id.0 = phi i8 [ %call.i, %sw.default ], [ %call.i, %if.then57 ], [ %call.i, %if.then52 ], [ -62, %sw.bb11.update_flash_crit_edge ], [ -62, %sw.bb11.update_flash_crit_edge374 ], [ %call.i, %sw.bb10 ], [ %call.i, %sw.bb9 ], [ %call.i, %if.end.update_flash_crit_edge ], [ 32, %if.end7 ], [ 32, %sw.bb.update_flash_crit_edge ], [ 32, %sw.bb.update_flash_crit_edge373 ], [ 0, %entry.update_flash_crit_edge ], [ %call.i, %update_flash.fold.split ], [ 31, %sw.bb21.update_flash_crit_edge ], [ 31, %sw.bb21.update_flash_crit_edge377 ], [ 31, %sw.bb21.update_flash_crit_edge378 ], [ 31, %sw.bb21.update_flash_crit_edge379 ], [ %call.i, %update_flash.fold.split343 ]
  %flash_id.0 = phi i8 [ %call1.i, %sw.default ], [ 109, %if.then57 ], [ %call1.i, %if.then52 ], [ %call1.i, %sw.bb11.update_flash_crit_edge ], [ %call1.i, %sw.bb11.update_flash_crit_edge374 ], [ %call1.i, %sw.bb10 ], [ %call1.i, %sw.bb9 ], [ %call1.i, %if.end.update_flash_crit_edge ], [ %call1.i, %if.end7 ], [ %call1.i, %sw.bb.update_flash_crit_edge ], [ %call1.i, %sw.bb.update_flash_crit_edge373 ], [ 0, %entry.update_flash_crit_edge ], [ 19, %update_flash.fold.split ], [ %call1.i, %sw.bb21.update_flash_crit_edge ], [ %call1.i, %sw.bb21.update_flash_crit_edge377 ], [ %call1.i, %sw.bb21.update_flash_crit_edge378 ], [ %call1.i, %sw.bb21.update_flash_crit_edge379 ], [ %call1.i, %update_flash.fold.split343 ]
  %sec_mask.0 = phi i32 [ 114688, %sw.default ], [ 122880, %if.then57 ], [ 114688, %if.then52 ], [ 65536, %sw.bb11.update_flash_crit_edge ], [ 65536, %sw.bb11.update_flash_crit_edge374 ], [ 130944, %sw.bb10 ], [ 126976, %sw.bb9 ], [ 130560, %if.end.update_flash_crit_edge ], [ 114688, %if.end7 ], [ 65536, %sw.bb.update_flash_crit_edge ], [ 65536, %sw.bb.update_flash_crit_edge373 ], [ 65536, %entry.update_flash_crit_edge ], [ -2147483648, %update_flash.fold.split ], [ 65536, %sw.bb21.update_flash_crit_edge ], [ 65536, %sw.bb21.update_flash_crit_edge377 ], [ 65536, %sw.bb21.update_flash_crit_edge378 ], [ 65536, %sw.bb21.update_flash_crit_edge379 ], [ 65536, %update_flash.fold.split343 ]
  %rest_addr.0 = phi i32 [ 16383, %sw.default ], [ 8191, %if.then57 ], [ 16383, %if.then52 ], [ 65535, %sw.bb11.update_flash_crit_edge ], [ 65535, %sw.bb11.update_flash_crit_edge374 ], [ 127, %sw.bb10 ], [ 4095, %sw.bb9 ], [ 511, %if.end.update_flash_crit_edge ], [ 16383, %if.end7 ], [ 65535, %sw.bb.update_flash_crit_edge ], [ 65535, %sw.bb.update_flash_crit_edge373 ], [ 65535, %entry.update_flash_crit_edge ], [ 2147483647, %update_flash.fold.split ], [ 65535, %sw.bb21.update_flash_crit_edge ], [ 65535, %sw.bb21.update_flash_crit_edge377 ], [ 65535, %sw.bb21.update_flash_crit_edge378 ], [ 65535, %sw.bb21.update_flash_crit_edge379 ], [ 65535, %update_flash.fold.split343 ]
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 54
  %19 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %isp_type, align 8
  %21 = and i32 %20, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %update_flash.if.end75_crit_edge, label %if.then70

update_flash.if.end75_crit_edge:                  ; preds = %update_flash
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then70:                                        ; preds = %update_flash
  %23 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %device_type, align 4
  %and.i = and i32 %24, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 21845, i32 2730
  %.6.i = select i1 %tobool.not.i, i32 10922, i32 1365
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef %..i, i8 noundef zeroext -86) #8
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef %.6.i, i8 noundef zeroext 85) #8
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef %..i, i8 noundef zeroext -128) #8
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef %..i, i8 noundef zeroext -86) #8
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef %.6.i, i8 noundef zeroext 85) #8
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef %..i, i8 noundef zeroext 16) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 32212200) #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end21.i.i.for.body.i.i_crit_edge, %if.then70
  %cnt.01.i.i = phi i32 [ 3000000, %if.then70 ], [ %dec.i.i, %if.end21.i.i.for.body.i.i_crit_edge ]
  %call.i.i = call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %2, i32 noundef 0) #8
  %conv2.i.i = zext i8 %call.i.i to i32
  %and3.i.i = and i32 %conv2.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %cmp.i.not.i = icmp eq i32 %and3.i.i, 0
  br i1 %cmp.i.not.i, label %if.end.i.i, label %for.body.i.i.if.end75_crit_edge

for.body.i.i.if.end75_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.end.i.i:                                       ; preds = %for.body.i.i
  %26 = zext i8 %man_id.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %man_id.0, label %if.then12.i.i [
    i8 64, label %if.end.i.i.if.end21.i.i_crit_edge
    i8 -38, label %if.end.i.i.if.end21.i.i_crit_edge385
  ]

if.end.i.i.if.end21.i.i_crit_edge385:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i

if.end.i.i.if.end21.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i

if.then12.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and14.i.i = and i32 %conv2.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  %27 = call i32 @llvm.umin.i32(i32 %cnt.01.i.i, i32 2) #8
  %spec.select.i.i = select i1 %tobool15.not.i.i, i32 %cnt.01.i.i, i32 %27
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then12.i.i, %if.end.i.i.if.end21.i.i_crit_edge, %if.end.i.i.if.end21.i.i_crit_edge385
  %cnt.1.i.i = phi i32 [ %cnt.01.i.i, %if.end.i.i.if.end21.i.i_crit_edge ], [ %cnt.01.i.i, %if.end.i.i.if.end21.i.i_crit_edge385 ], [ %spec.select.i.i, %if.then12.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 2147480) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !191
  call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 2154, i32 noundef 0) #8
  %call.i.i.i = call i32 @__cond_resched() #8
  %dec.i.i = add i32 %cnt.1.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %if.end21.i.i.do.end_crit_edge, label %if.end21.i.i.for.body.i.i_crit_edge

if.end21.i.i.for.body.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end21.i.i.do.end_crit_edge:                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end75:                                         ; preds = %for.body.i.i.if.end75_crit_edge, %update_flash.if.end75_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp76349.not = icmp eq i32 %length, 0
  br i1 %cmp76349.not, label %if.end75.do.end_crit_edge, label %for.body.lr.ph

if.end75.do.end_crit_edge:                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph:                                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_const_cmp1(i8 -46, i8 %flash_id.0)
  %cmp110 = icmp eq i8 %flash_id.0, -46
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %flash_id.0)
  %cmp102 = icmp eq i8 %flash_id.0, 62
  %optrom_size = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 199
  %nvram = getelementptr inbounds %struct.device_reg_2xxx, ptr %4, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -38, i8 %flash_id.0)
  %cmp145 = icmp eq i8 %flash_id.0, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 -63, i8 %man_id.0)
  %cmp149 = icmp eq i8 %man_id.0, -63
  %or.cond344 = select i1 %cmp145, i1 %cmp149, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %man_id.0)
  %cmp181 = icmp eq i8 %man_id.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %man_id.0)
  %cmp.i = icmp eq i8 %man_id.0, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %flash_id.0)
  %cmp3.i = icmp eq i8 %flash_id.0, 19
  %or.cond.i = and i1 %cmp.i, %cmp3.i
  %..i262 = select i1 %or.cond.i, i8 16, i8 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 109, i8 %flash_id.0)
  %cmp172 = icmp eq i8 %flash_id.0, 109
  %inc175 = zext i1 %cmp172 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -38, i8 %man_id.0)
  %cmp.i283 = icmp ne i8 %man_id.0, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 -63, i8 %flash_id.0)
  %cmp3.i284 = icmp ne i8 %flash_id.0, -63
  %or.cond.i285.not = or i1 %cmp.i283, %cmp3.i284
  br label %for.body

for.body:                                         ; preds = %if.end209.for.body_crit_edge, %for.body.lr.ph
  %rest_addr.1358 = phi i32 [ %rest_addr.0, %for.body.lr.ph ], [ %rest_addr.4, %if.end209.for.body_crit_edge ]
  %sec_mask.1356 = phi i32 [ %sec_mask.0, %for.body.lr.ph ], [ %sec_mask.4, %if.end209.for.body_crit_edge ]
  %liter.0355 = phi i32 [ 0, %for.body.lr.ph ], [ %inc211, %if.end209.for.body_crit_edge ]
  %addr.0351 = phi i32 [ %offset, %for.body.lr.ph ], [ %inc212, %if.end209.for.body_crit_edge ]
  %sec_number.0350 = phi i8 [ 0, %for.body.lr.ph ], [ %sec_number.2332, %if.end209.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %liter.0355
  %and78 = and i32 %rest_addr.1358, %addr.0351
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %cmp79 = icmp eq i32 %and78, 0
  br i1 %cmp79, label %if.then81, label %for.body.if.end179_crit_edge

for.body.if.end179_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

if.then81:                                        ; preds = %for.body
  %29 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %isp_type, align 8
  %31 = and i32 %30, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %if.else136, label %if.then91

if.then91:                                        ; preds = %if.then81
  %33 = and i32 %addr.0351, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool96.not = icmp eq i32 %33, 0
  br i1 %tobool96.not, label %if.then91.if.end143_crit_edge, label %land.lhs.true

if.then91.if.end143_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

land.lhs.true:                                    ; preds = %if.then91
  %34 = zext i8 %man_id.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %man_id.0, label %land.lhs.true.if.end143_crit_edge [
    i8 1, label %land.lhs.true100
    i8 32, label %land.lhs.true108
  ]

land.lhs.true.if.end143_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

land.lhs.true100:                                 ; preds = %land.lhs.true
  br i1 %cmp102, label %land.lhs.true100.if.then112_crit_edge, label %land.lhs.true100.if.end143_crit_edge

land.lhs.true100.if.end143_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

land.lhs.true100.if.then112_crit_edge:            ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

land.lhs.true108:                                 ; preds = %land.lhs.true
  br i1 %cmp110, label %land.lhs.true108.if.then112_crit_edge, label %land.lhs.true108.if.end143_crit_edge

land.lhs.true108.if.end143_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

land.lhs.true108.if.then112_crit_edge:            ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

if.then112:                                       ; preds = %land.lhs.true108.if.then112_crit_edge, %land.lhs.true100.if.then112_crit_edge
  %inc = add i8 %sec_number.0350, 1
  %35 = zext i8 %sec_number.0350 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %sec_number.0350, label %if.end143.fold.split [
    i8 0, label %if.then112.if.end143_crit_edge
    i8 1, label %if.then112.if.end143.fold.split345_crit_edge
    i8 2, label %if.then112.if.end143.fold.split345_crit_edge386
    i8 3, label %if.then130
  ]

if.then112.if.end143.fold.split345_crit_edge386:  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143.fold.split345

if.then112.if.end143.fold.split345_crit_edge:     ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143.fold.split345

if.then112.if.end143_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.then130:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.else136:                                       ; preds = %if.then81
  %36 = ptrtoint ptr %optrom_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %optrom_size, align 8
  %div253 = lshr i32 %37, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %addr.0351, i32 %div253)
  %cmp137 = icmp eq i32 %addr.0351, %div253
  br i1 %cmp137, label %if.then139, label %if.else136.if.end143_crit_edge

if.else136.if.end143_crit_edge:                   ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.then139:                                       ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram, i16 512) #8, !srcloc !170
  %38 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram) #8, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end143

if.end143.fold.split:                             ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.end143.fold.split345:                          ; preds = %if.then112.if.end143.fold.split345_crit_edge, %if.then112.if.end143.fold.split345_crit_edge386
  br label %if.end143

if.end143:                                        ; preds = %if.end143.fold.split345, %if.end143.fold.split, %if.then139, %if.else136.if.end143_crit_edge, %if.then130, %if.then112.if.end143_crit_edge, %land.lhs.true108.if.end143_crit_edge, %land.lhs.true100.if.end143_crit_edge, %land.lhs.true.if.end143_crit_edge, %if.then91.if.end143_crit_edge
  %sec_number.1 = phi i8 [ 4, %if.then130 ], [ %sec_number.0350, %land.lhs.true108.if.end143_crit_edge ], [ %sec_number.0350, %if.then91.if.end143_crit_edge ], [ %sec_number.0350, %if.then139 ], [ %sec_number.0350, %if.else136.if.end143_crit_edge ], [ 1, %if.then112.if.end143_crit_edge ], [ %inc, %if.end143.fold.split ], [ %sec_number.0350, %land.lhs.true100.if.end143_crit_edge ], [ %sec_number.0350, %land.lhs.true.if.end143_crit_edge ], [ %inc, %if.end143.fold.split345 ]
  %sec_mask.2 = phi i32 [ 114688, %if.then130 ], [ %sec_mask.1356, %land.lhs.true108.if.end143_crit_edge ], [ %sec_mask.1356, %if.then91.if.end143_crit_edge ], [ %sec_mask.1356, %if.then139 ], [ %sec_mask.1356, %if.else136.if.end143_crit_edge ], [ 98304, %if.then112.if.end143_crit_edge ], [ %sec_mask.1356, %if.end143.fold.split ], [ %sec_mask.1356, %land.lhs.true100.if.end143_crit_edge ], [ %sec_mask.1356, %land.lhs.true.if.end143_crit_edge ], [ 122880, %if.end143.fold.split345 ]
  %rest_addr.2 = phi i32 [ 16383, %if.then130 ], [ %rest_addr.1358, %land.lhs.true108.if.end143_crit_edge ], [ %rest_addr.1358, %if.then91.if.end143_crit_edge ], [ %rest_addr.1358, %if.then139 ], [ %rest_addr.1358, %if.else136.if.end143_crit_edge ], [ 32767, %if.then112.if.end143_crit_edge ], [ %rest_addr.1358, %if.end143.fold.split ], [ %rest_addr.1358, %land.lhs.true100.if.end143_crit_edge ], [ %rest_addr.1358, %land.lhs.true.if.end143_crit_edge ], [ 8191, %if.end143.fold.split345 ]
  br i1 %or.cond344, label %if.then151, label %if.else152

if.then151:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef 21845, i8 noundef zeroext -86)
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef 10922, i8 noundef zeroext 85)
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef 21845, i8 noundef zeroext -96)
  br label %if.end205

if.else152:                                       ; preds = %if.end143
  %39 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %isp_type, align 8
  %41 = and i32 %40, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %if.then162, label %if.else152.if.end179_crit_edge

if.else152.if.end179_crit_edge:                   ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

if.then162:                                       ; preds = %if.else152
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef 21845, i8 noundef zeroext -86) #8
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef 10922, i8 noundef zeroext 85) #8
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef 21845, i8 noundef zeroext -128) #8
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef 21845, i8 noundef zeroext -86) #8
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef 10922, i8 noundef zeroext 85) #8
  %and.i261 = and i32 %sec_mask.2, %addr.0351
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef %and.i261, i8 noundef zeroext %..i262) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %43(i32 noundef 32212200) #8
  br label %for.body.i.i268

for.body.i.i268:                                  ; preds = %if.end21.i.i278.for.body.i.i268_crit_edge, %if.then162
  %cnt.01.i.i263 = phi i32 [ 3000000, %if.then162 ], [ %dec.i.i276, %if.end21.i.i278.for.body.i.i268_crit_edge ]
  %call.i.i264 = call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %2, i32 noundef %addr.0351) #8
  %conv2.i.i265 = zext i8 %call.i.i264 to i32
  %and3.i.i266 = and i32 %conv2.i.i265, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i266)
  %cmp.i.not.i267 = icmp eq i32 %and3.i.i266, 0
  br i1 %cmp.i.not.i267, label %if.end.i.i269, label %if.end166

if.end.i.i269:                                    ; preds = %for.body.i.i268
  %44 = zext i8 %man_id.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %man_id.0, label %if.then12.i.i273 [
    i8 64, label %if.end.i.i269.if.end21.i.i278_crit_edge
    i8 -38, label %if.end.i.i269.if.end21.i.i278_crit_edge387
  ]

if.end.i.i269.if.end21.i.i278_crit_edge387:       ; preds = %if.end.i.i269
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i278

if.end.i.i269.if.end21.i.i278_crit_edge:          ; preds = %if.end.i.i269
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i278

if.then12.i.i273:                                 ; preds = %if.end.i.i269
  call void @__sanitizer_cov_trace_pc() #10
  %and14.i.i270 = and i32 %conv2.i.i265, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i270)
  %tobool15.not.i.i271 = icmp eq i32 %and14.i.i270, 0
  %45 = call i32 @llvm.umin.i32(i32 %cnt.01.i.i263, i32 2) #8
  %spec.select.i.i272 = select i1 %tobool15.not.i.i271, i32 %cnt.01.i.i263, i32 %45
  br label %if.end21.i.i278

if.end21.i.i278:                                  ; preds = %if.then12.i.i273, %if.end.i.i269.if.end21.i.i278_crit_edge, %if.end.i.i269.if.end21.i.i278_crit_edge387
  %cnt.1.i.i274 = phi i32 [ %cnt.01.i.i263, %if.end.i.i269.if.end21.i.i278_crit_edge ], [ %cnt.01.i.i263, %if.end.i.i269.if.end21.i.i278_crit_edge387 ], [ %spec.select.i.i272, %if.then12.i.i273 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 2147480) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !191
  call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 2154, i32 noundef 0) #8
  %call.i.i.i275 = call i32 @__cond_resched() #8
  %dec.i.i276 = add i32 %cnt.1.i.i274, -1
  %tobool.not.i.i277 = icmp eq i32 %dec.i.i276, 0
  br i1 %tobool.not.i.i277, label %if.end21.i.i278.do.end_crit_edge, label %if.end21.i.i278.for.body.i.i268_crit_edge

if.end21.i.i278.for.body.i.i268_crit_edge:        ; preds = %if.end21.i.i278
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i268

if.end21.i.i278.do.end_crit_edge:                 ; preds = %if.end21.i.i278
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end166:                                        ; preds = %for.body.i.i268
  br i1 %cmp181, label %if.end179.thread333, label %if.end166.if.end205_crit_edge

if.end166.if.end205_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

if.end179.thread333:                              ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select = add i8 %sec_number.1, %inc175
  br label %land.lhs.true183

if.end179:                                        ; preds = %if.else152.if.end179_crit_edge, %for.body.if.end179_crit_edge
  %sec_number.2 = phi i8 [ %sec_number.1, %if.else152.if.end179_crit_edge ], [ %sec_number.0350, %for.body.if.end179_crit_edge ]
  %sec_mask.3 = phi i32 [ %sec_mask.2, %if.else152.if.end179_crit_edge ], [ %sec_mask.1356, %for.body.if.end179_crit_edge ]
  %rest_addr.3 = phi i32 [ %rest_addr.2, %if.else152.if.end179_crit_edge ], [ %rest_addr.1358, %for.body.if.end179_crit_edge ]
  br i1 %cmp181, label %if.end179.land.lhs.true183_crit_edge, label %if.end179.if.end205_crit_edge

if.end179.if.end205_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

if.end179.land.lhs.true183_crit_edge:             ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true183

land.lhs.true183:                                 ; preds = %if.end179.land.lhs.true183_crit_edge, %if.end179.thread333
  %rest_addr.3340 = phi i32 [ %rest_addr.2, %if.end179.thread333 ], [ %rest_addr.3, %if.end179.land.lhs.true183_crit_edge ]
  %sec_mask.3339 = phi i32 [ %sec_mask.2, %if.end179.thread333 ], [ %sec_mask.3, %if.end179.land.lhs.true183_crit_edge ]
  %sec_number.2338 = phi i8 [ %spec.select, %if.end179.thread333 ], [ %sec_number.2, %if.end179.land.lhs.true183_crit_edge ]
  br i1 %cmp172, label %if.then187, label %land.lhs.true183.if.end205_crit_edge

land.lhs.true183.if.end205_crit_edge:             ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

if.then187:                                       ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %sec_number.2338)
  %cmp189 = icmp eq i8 %sec_number.2338, 1
  %sub = add i32 %rest_addr.3340, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %addr.0351, i32 %sub)
  %cmp192 = icmp eq i32 %addr.0351, %sub
  %or.cond257 = select i1 %cmp189, i1 %cmp192, i1 false
  br i1 %or.cond257, label %if.then187.if.end205_crit_edge, label %if.else195

if.then187.if.end205_crit_edge:                   ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

if.else195:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %sec_number.2338)
  %cmp197 = icmp ne i8 %sec_number.2338, 3
  %and200 = and i32 %addr.0351, 32766
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  %or.cond258 = select i1 %cmp197, i1 true, i1 %tobool201.not
  %spec.select259 = select i1 %or.cond258, i32 %sec_mask.3339, i32 114688
  %spec.select260 = select i1 %or.cond258, i32 %rest_addr.3340, i32 16383
  br label %if.end205

if.end205:                                        ; preds = %if.else195, %if.then187.if.end205_crit_edge, %land.lhs.true183.if.end205_crit_edge, %if.end179.if.end205_crit_edge, %if.end166.if.end205_crit_edge, %if.then151
  %sec_number.2332 = phi i8 [ %sec_number.2338, %land.lhs.true183.if.end205_crit_edge ], [ %sec_number.2, %if.end179.if.end205_crit_edge ], [ 1, %if.then187.if.end205_crit_edge ], [ %sec_number.2338, %if.else195 ], [ %sec_number.1, %if.then151 ], [ %sec_number.1, %if.end166.if.end205_crit_edge ]
  %sec_mask.4 = phi i32 [ %sec_mask.3339, %land.lhs.true183.if.end205_crit_edge ], [ %sec_mask.3, %if.end179.if.end205_crit_edge ], [ 126976, %if.then187.if.end205_crit_edge ], [ %spec.select259, %if.else195 ], [ %sec_mask.2, %if.then151 ], [ %sec_mask.2, %if.end166.if.end205_crit_edge ]
  %rest_addr.4 = phi i32 [ %rest_addr.3340, %land.lhs.true183.if.end205_crit_edge ], [ %rest_addr.3, %if.end179.if.end205_crit_edge ], [ 4095, %if.then187.if.end205_crit_edge ], [ %spec.select260, %if.else195 ], [ %rest_addr.2, %if.then151 ], [ %rest_addr.2, %if.end166.if.end205_crit_edge ]
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr, align 1
  %49 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %device_type, align 4
  %and.i281 = and i32 %50, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i281)
  %tobool.not.i282 = icmp ne i32 %and.i281, 0
  %brmerge = select i1 %tobool.not.i282, i1 true, i1 %or.cond.i285.not
  br i1 %brmerge, label %if.end11.sink.split.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end205
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef %addr.0351, i8 noundef zeroext %48) #8
  %and6.i = and i32 %addr.0351, 126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.then5.i.if.end11.i_crit_edge, label %if.then5.i.if.end209_crit_edge

if.then5.i.if.end209_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

if.then5.i.if.end11.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end11.sink.split.i:                            ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #10
  %.mux360 = select i1 %tobool.not.i282, i32 1365, i32 10922
  %.mux = select i1 %tobool.not.i282, i32 2730, i32 21845
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef %.mux, i8 noundef zeroext -86) #8
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef %.mux360, i8 noundef zeroext 85) #8
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef %.mux, i8 noundef zeroext -96) #8
  call fastcc void @qla2x00_write_flash_byte(ptr noundef %2, i32 noundef %addr.0351, i8 noundef zeroext %48) #8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end11.sink.split.i, %if.then5.i.if.end11.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 32212200) #8
  %52 = and i8 %48, -128
  %conv4.i.i = zext i8 %52 to i32
  br label %for.body.i.i290

for.body.i.i290:                                  ; preds = %if.end21.i.i300.for.body.i.i290_crit_edge, %if.end11.i
  %cnt.01.i.i286 = phi i32 [ 3000000, %if.end11.i ], [ %dec.i.i298, %if.end21.i.i300.for.body.i.i290_crit_edge ]
  %call.i.i287 = call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %2, i32 noundef %addr.0351) #8
  %conv2.i.i288 = zext i8 %call.i.i287 to i32
  %and3.i.i289 = and i32 %conv2.i.i288, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i.i289, i32 %conv4.i.i)
  %cmp.i.i = icmp eq i32 %and3.i.i289, %conv4.i.i
  br i1 %cmp.i.i, label %for.body.i.i290.if.end209_crit_edge, label %if.end.i.i291

for.body.i.i290.if.end209_crit_edge:              ; preds = %for.body.i.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

if.end.i.i291:                                    ; preds = %for.body.i.i290
  %53 = zext i8 %man_id.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %man_id.0, label %if.then12.i.i295 [
    i8 64, label %if.end.i.i291.if.end21.i.i300_crit_edge
    i8 -38, label %if.end.i.i291.if.end21.i.i300_crit_edge388
  ]

if.end.i.i291.if.end21.i.i300_crit_edge388:       ; preds = %if.end.i.i291
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i300

if.end.i.i291.if.end21.i.i300_crit_edge:          ; preds = %if.end.i.i291
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i300

if.then12.i.i295:                                 ; preds = %if.end.i.i291
  call void @__sanitizer_cov_trace_pc() #10
  %and14.i.i292 = and i32 %conv2.i.i288, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i292)
  %tobool15.not.i.i293 = icmp eq i32 %and14.i.i292, 0
  %54 = call i32 @llvm.umin.i32(i32 %cnt.01.i.i286, i32 2) #8
  %spec.select.i.i294 = select i1 %tobool15.not.i.i293, i32 %cnt.01.i.i286, i32 %54
  br label %if.end21.i.i300

if.end21.i.i300:                                  ; preds = %if.then12.i.i295, %if.end.i.i291.if.end21.i.i300_crit_edge, %if.end.i.i291.if.end21.i.i300_crit_edge388
  %cnt.1.i.i296 = phi i32 [ %cnt.01.i.i286, %if.end.i.i291.if.end21.i.i300_crit_edge ], [ %cnt.01.i.i286, %if.end.i.i291.if.end21.i.i300_crit_edge388 ], [ %spec.select.i.i294, %if.then12.i.i295 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %55(i32 noundef 2147480) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !191
  call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 2154, i32 noundef 0) #8
  %call.i.i.i297 = call i32 @__cond_resched() #8
  %dec.i.i298 = add i32 %cnt.1.i.i296, -1
  %tobool.not.i.i299 = icmp eq i32 %dec.i.i298, 0
  br i1 %tobool.not.i.i299, label %if.end21.i.i300.do.end_crit_edge, label %if.end21.i.i300.for.body.i.i290_crit_edge

if.end21.i.i300.for.body.i.i290_crit_edge:        ; preds = %if.end21.i.i300
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i290

if.end21.i.i300.do.end_crit_edge:                 ; preds = %if.end21.i.i300
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end209:                                        ; preds = %for.body.i.i290.if.end209_crit_edge, %if.then5.i.if.end209_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 2592, i32 noundef 0) #8
  %call.i301 = call i32 @__cond_resched() #8
  %inc211 = add nuw i32 %liter.0355, 1
  %inc212 = add i32 %addr.0351, 1
  %exitcond.not = icmp eq i32 %inc211, %length
  br i1 %exitcond.not, label %if.end209.do.end_crit_edge, label %if.end209.for.body_crit_edge

if.end209.for.body_crit_edge:                     ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end209.do.end_crit_edge:                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end209.do.end_crit_edge, %if.end21.i.i300.do.end_crit_edge, %if.end21.i.i278.do.end_crit_edge, %if.end75.do.end_crit_edge, %if.end21.i.i.do.end_crit_edge
  %rval.0 = phi i32 [ 0, %if.end75.do.end_crit_edge ], [ 258, %if.end21.i.i300.do.end_crit_edge ], [ 258, %if.end21.i.i278.do.end_crit_edge ], [ 0, %if.end209.do.end_crit_edge ], [ 258, %if.end21.i.i.do.end_crit_edge ]
  %56 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iobase, align 4
  %ctrl_status.i303 = getelementptr inbounds %struct.device_reg_2xxx, ptr %57, i32 0, i32 3
  %58 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status.i303) #8, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %59 = and i16 %58, -513
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctrl_status.i303, i16 %59) #8, !srcloc !170
  %60 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status.i303) #8, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %61 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw, align 4
  %mbx_cmd_flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %62, i32 0, i32 124
  call void @_clear_bit(i32 noundef 3, ptr noundef %mbx_cmd_flags.i) #8
  %dpc_flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags.i) #8
  call void @qla2xxx_wake_dpc(ptr noundef %vha) #8
  %call.i304 = call i32 @qla2x00_wait_for_chip_reset(ptr noundef %vha) #8
  %host.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %63 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %host.i, align 8
  call void @scsi_unblock_requests(ptr noundef %64) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wd) #8
  ret i32 %rval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla2x00_write_flash_byte(ptr nocapture noundef readonly %ha, i32 noundef %addr, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 9
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %ctrl_status = getelementptr inbounds %struct.device_reg_2xxx, ptr %1, i32 0, i32 3
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status) #8, !srcloc !171
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 54
  %4 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isp_type, align 8
  %6 = and i32 %5, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = and i16 %3, -249
  %shr = lshr i32 %addr, 12
  %9 = trunc i32 %shr to i16
  %10 = and i16 %9, 240
  %conv10 = or i16 %10, %8
  %11 = or i16 %conv10, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctrl_status, i16 %12) #8, !srcloc !170
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %conv17 = trunc i32 %addr to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv17) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %14) #8, !srcloc !170
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %flash_data = getelementptr inbounds %struct.device_reg_2xxx, ptr %1, i32 0, i32 1
  %conv20 = zext i8 %data to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %16 = shl nuw i16 %conv20, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %flash_data, i16 %16) #8, !srcloc !170
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %cleanup

if.end:                                           ; preds = %entry
  %and23 = and i32 %addr, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp ne i32 %and23, 0
  %18 = and i16 %3, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp = icmp eq i16 %18, 0
  %or.cond113 = select i1 %tobool24.not, i1 %cmp, i1 false
  br i1 %or.cond113, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or30 = or i16 %3, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %19 = tail call i16 @llvm.bswap.i16(i16 %or30) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctrl_status, i16 %19) #8, !srcloc !170
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end50

if.else:                                          ; preds = %if.end
  %or.cond114 = select i1 %tobool24.not, i1 true, i1 %cmp
  br i1 %or.cond114, label %if.else.if.end50_crit_edge, label %if.then42

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %and44 = and i16 %3, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %21 = tail call i16 @llvm.bswap.i16(i16 %and44) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctrl_status, i16 %21) #8, !srcloc !170
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end50

if.end50:                                         ; preds = %if.then42, %if.else.if.end50_crit_edge, %if.then28
  %pio_address = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 10
  %23 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pio_address, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool51.not = icmp eq i32 %24, 0
  br i1 %tobool51.not, label %if.else67, label %do.body

do.body:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  %conv53 = trunc i32 %addr to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv53)
  %26 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pio_address, align 8
  %and55 = and i32 %27, 1048575
  %add56 = or i32 %and55, -18874368
  %28 = inttoptr i32 %add56 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 %25) #8, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void @arm_heavy_mb() #8
  %conv61 = zext i8 %data to i16
  %29 = shl nuw i16 %conv61, 8
  %30 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pio_address, align 8
  %add63 = add i32 %31, 2
  %and64 = and i32 %add63, 1048575
  %add65 = or i32 %and64, -18874368
  %32 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %32, i16 %29) #8, !srcloc !170
  br label %cleanup

if.else67:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %conv69 = trunc i32 %addr to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv69) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %33) #8, !srcloc !170
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %flash_data72 = getelementptr inbounds %struct.device_reg_2xxx, ptr %1, i32 0, i32 1
  %conv73 = zext i8 %data to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %35 = shl nuw i16 %conv73, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %flash_data72, i16 %35) #8, !srcloc !170
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %cleanup

cleanup:                                          ; preds = %if.else67, %do.body, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qla24xx_read_optrom_data(ptr nocapture noundef readonly %vha, ptr noundef returned %buf, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 8
  tail call void @scsi_block_requests(ptr noundef %3) #8
  %mbx_cmd_flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 124
  tail call void @_set_bit(i32 noundef 3, ptr noundef %mbx_cmd_flags) #8
  %shr1 = lshr i32 %length, 2
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length)
  %cmp11.not.i = icmp ult i32 %length, 4
  br i1 %cmp11.not.i, label %entry.qla24xx_read_flash_data.exit_crit_edge, label %for.body.preheader.i

entry.qla24xx_read_flash_data.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit

for.body.preheader.i:                             ; preds = %entry
  %shr = lshr i32 %offset, 2
  %flash_data_off.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 210
  %6 = ptrtoint ptr %flash_data_off.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flash_data_off.i.i, align 4
  %add.i.i = add i32 %7, %shr
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.014.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %dwptr.addr.013.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ %buf, %for.body.preheader.i ]
  %faddr.addr.012.i = phi i32 [ %inc3.i, %if.end.i.for.body.i_crit_edge ], [ %add.i.i, %for.body.preheader.i ]
  %call1.i = tail call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %5, i32 noundef %faddr.addr.012.i, ptr noundef %dwptr.addr.013.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.qla24xx_read_flash_data.exit_crit_edge

for.body.i.qla24xx_read_flash_data.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit

if.end.i:                                         ; preds = %for.body.i
  %8 = ptrtoint ptr %dwptr.addr.013.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dwptr.addr.013.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %11 = ptrtoint ptr %dwptr.addr.013.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dwptr.addr.013.i, align 4
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %inc3.i = add i32 %faddr.addr.012.i, 1
  %incdec.ptr.i = getelementptr i32, ptr %dwptr.addr.013.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr1
  br i1 %exitcond.not.i, label %if.end.i.qla24xx_read_flash_data.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i.qla24xx_read_flash_data.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit

qla24xx_read_flash_data.exit:                     ; preds = %if.end.i.qla24xx_read_flash_data.exit_crit_edge, %for.body.i.qla24xx_read_flash_data.exit_crit_edge, %entry.qla24xx_read_flash_data.exit_crit_edge
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %mbx_cmd_flags) #8
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 8
  tail call void @scsi_unblock_requests(ptr noundef %13) #8
  ret ptr %buf
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_block_requests(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_unblock_requests(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_write_optrom_data(ptr noundef %vha, ptr nocapture noundef readonly %buf, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %optrom_dma.i22 = alloca i32, align 4
  %optrom_dma.i = alloca i32, align 4
  %sfub_dma.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 8
  tail call void @scsi_block_requests(ptr noundef %3) #8
  %mbx_cmd_flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 124
  tail call void @_set_bit(i32 noundef 3, ptr noundef %mbx_cmd_flags) #8
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isp_type, align 8
  %6 = and i32 %5, 41943040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  %shr7 = lshr i32 %offset, 2
  %shr8 = lshr i32 %length, 2
  br i1 %7, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %optrom_dma.i) #8
  %10 = ptrtoint ptr %optrom_dma.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %optrom_dma.i, align 4, !annotation !181
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sfub_dma.i) #8
  %11 = ptrtoint ptr %sfub_dma.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %sfub_dma.i, align 4, !annotation !181
  %shl.i = and i32 %offset, -4
  %flt1.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %9, i32 0, i32 85
  %12 = ptrtoint ptr %flt1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %flt1.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.then.if.then.i_crit_edge, label %if.end.i.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.i.i:                                       ; preds = %if.then
  %length.i.i = getelementptr inbounds %struct.qla_flt_header, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %length.i.i, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %16)
  %tobool5.not20.i.i = icmp ult i16 %16, 16
  br i1 %tobool5.not20.i.i, label %if.end.i.i.if.then.i_crit_edge, label %for.body.preheader.i.i

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.body.preheader.i.i:                           ; preds = %if.end.i.i
  %17 = lshr i16 %16, 4
  %region2.i.i = getelementptr inbounds %struct.qla_flt_header, ptr %13, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %cnt.022.i.i = phi i16 [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %17, %for.body.preheader.i.i ]
  %flt_reg.021.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %region2.i.i, %for.body.preheader.i.i ]
  %start6.i.i = getelementptr inbounds %struct.qla_flt_region, ptr %flt_reg.021.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %start6.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %start6.i.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %shl.i)
  %cmp.i.i = icmp eq i32 %20, %shl.i
  br i1 %cmp.i.i, label %if.end.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %dec.i.i = add nsw i16 %cnt.022.i.i, -1
  %incdec.ptr.i.i = getelementptr %struct.qla_flt_region, ptr %flt_reg.021.i.i, i32 1
  %tobool5.not.i.i = icmp eq i16 %dec.i.i, 0
  br i1 %tobool5.not.i.i, label %for.inc.i.i.if.then.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.if.then.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.i.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.48, i32 noundef %shl.i) #8
  br label %qla28xx_write_flash_data.exit

if.end.i:                                         ; preds = %for.body.i.i
  %21 = ptrtoint ptr %flt_reg.021.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %region.sroa.0.0.copyload.i = load i16, ptr %flt_reg.021.i.i, align 4
  %region.sroa.7.0.flt_reg.021.i.sroa_idx.i = getelementptr inbounds i8, ptr %flt_reg.021.i.i, i32 2
  %22 = ptrtoint ptr %region.sroa.7.0.flt_reg.021.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %region.sroa.7.0.copyload.i = load i8, ptr %region.sroa.7.0.flt_reg.021.i.sroa_idx.i, align 2
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %9, align 128
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef nonnull %optrom_dma.i, i32 noundef 3264, i32 noundef 0) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28821, ptr noundef nonnull @.str.49, i32 noundef 4096) #8
  br label %qla28xx_write_flash_data.exit

if.end3.i:                                        ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %9, i32 0, i32 2
  %25 = getelementptr inbounds i32, ptr %flags.i, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load.i = load volatile i32, ptr %25, align 4
  %27 = and i32 %bf.load.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool4.not.i = icmp eq i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %region.sroa.7.0.copyload.i)
  %tobool5.not.i = icmp eq i8 %region.sroa.7.0.copyload.i, 0
  %or.cond339.i = select i1 %tobool4.not.i, i1 true, i1 %tobool5.not.i
  br i1 %or.cond339.i, label %if.end3.i.if.end39.i_crit_edge, label %if.then6.i

if.end3.i.if.end39.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

if.then6.i:                                       ; preds = %if.end3.i
  %28 = call i16 @llvm.bswap.i16(i16 %region.sroa.0.0.copyload.i) #8
  %conv7.i = zext i16 %28 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 32769, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.38, i32 noundef %conv7.i) #8
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.91)
  switch i16 %28, label %sw.default.i [
    i16 1, label %if.then6.i.sw.bb.i_crit_edge
    i16 2, label %if.then6.i.sw.bb.i_crit_edge123
    i16 211, label %if.then6.i.sw.bb.i_crit_edge124
    i16 240, label %if.then6.i.sw.bb.i_crit_edge125
    i16 209, label %if.then6.i.sw.bb22.i_crit_edge
    i16 241, label %if.then6.i.sw.bb22.i_crit_edge126
  ]

if.then6.i.sw.bb22.i_crit_edge126:                ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb22.i

if.then6.i.sw.bb22.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb22.i

if.then6.i.sw.bb.i_crit_edge125:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then6.i.sw.bb.i_crit_edge124:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then6.i.sw.bb.i_crit_edge123:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then6.i.sw.bb.i_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then6.i.sw.bb.i_crit_edge, %if.then6.i.sw.bb.i_crit_edge123, %if.then6.i.sw.bb.i_crit_edge124, %if.then6.i.sw.bb.i_crit_edge125
  %arrayidx.i = getelementptr i32, ptr %buf, i32 3
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %buf, i32 9
  %32 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx10.i, align 4
  %add.ptr.i = getelementptr i32, ptr %buf, i32 %31
  %arrayidx11.i = getelementptr i32, ptr %add.ptr.i, i32 3
  %34 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx11.i, align 4
  %add.i = add i32 %35, %31
  %add.ptr12.i = getelementptr i32, ptr %add.ptr.i, i32 %35
  %arrayidx13.i = getelementptr i32, ptr %add.ptr12.i, i32 2
  %36 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx13.i, align 4
  %add14.i = add i32 %add.i, %37
  %and.i = and i32 %33, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %if.then17.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then17.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr15.i = getelementptr i32, ptr %add.ptr12.i, i32 %37
  %arrayidx18.i = getelementptr i32, ptr %add.ptr15.i, i32 2
  %38 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx18.i, align 4
  %add19.i = add i32 %39, %add14.i
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %if.then6.i.sw.bb22.i_crit_edge, %if.then6.i.sw.bb22.i_crit_edge126
  %arrayidx23.i = getelementptr i32, ptr %buf, i32 3
  %40 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx23.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 32769, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.50, i32 noundef %conv7.i) #8
  br label %if.then164.i

sw.epilog.i:                                      ; preds = %sw.bb22.i, %if.then17.i, %sw.bb.i.sw.epilog.i_crit_edge
  %buf_size_without_sfub.0.i = phi i32 [ %41, %sw.bb22.i ], [ %add19.i, %if.then17.i ], [ %add14.i, %sw.bb.i.sw.epilog.i_crit_edge ]
  %42 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %9, align 128
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %call.i307.i = call ptr @dma_alloc_attrs(ptr noundef %dev29.i, i32 noundef 260, ptr noundef nonnull %sfub_dma.i, i32 noundef 3264, i32 noundef 0) #8
  %tobool31.not.i = icmp eq ptr %call.i307.i, null
  br i1 %tobool31.not.i, label %if.then32.i, label %if.end33.i

if.then32.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.51) #8
  br label %if.then164.i

if.end33.i:                                       ; preds = %sw.epilog.i
  %add.ptr.i.i = getelementptr i32, ptr %buf, i32 %buf_size_without_sfub.0.i
  %44 = call ptr @memcpy(ptr %call.i307.i, ptr %add.ptr.i.i, i32 260)
  br label %for.body.i308.i

for.body.i308.i:                                  ; preds = %for.body.i308.i.for.body.i308.i_crit_edge, %if.end33.i
  %i.02.i.i = phi i32 [ 0, %if.end33.i ], [ %inc.i.i, %for.body.i308.i.for.body.i308.i_crit_edge ]
  %check_sum.01.i.i = phi i32 [ 0, %if.end33.i ], [ %add.i.i, %for.body.i308.i.for.body.i308.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 %i.02.i.i
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46) #8
  %add.i.i = add i32 %47, %check_sum.01.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 65
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i308.i.for.body.i308.i_crit_edge

for.body.i308.i.for.body.i308.i_crit_edge:        ; preds = %for.body.i308.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i308.i

for.end.i.i:                                      ; preds = %for.body.i308.i
  %add1.i.i = sub i32 0, %add.i.i
  %arrayidx2.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 65
  %48 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx2.i.i, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %49) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %add1.i.i)
  %cmp3.not.i.i = icmp eq i32 %50, %add1.i.i
  br i1 %cmp3.not.i.i, label %if.end38.i, label %qla28xx_extract_sfub_and_verify.exit.i

qla28xx_extract_sfub_and_verify.exit.i:           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28823, ptr noundef nonnull @.str.71, i32 noundef %add1.i.i, i32 noundef %50) #8
  br label %if.then164.i

if.end38.i:                                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 32769, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.52) #8
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end38.i, %if.end3.i.if.end39.i_crit_edge
  %buf_size_without_sfub.1.i = phi i32 [ %buf_size_without_sfub.0.i, %if.end38.i ], [ 0, %if.end3.i.if.end39.i_crit_edge ]
  %fdt_block_size.i = getelementptr inbounds %struct.qla_hw_data, ptr %9, i32 0, i32 216
  %51 = ptrtoint ptr %fdt_block_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fdt_block_size.i, align 4
  %shr.i = lshr i32 %52, 2
  %sub.i = add nsw i32 %shr.i, -1
  %neg.i = sub nsw i32 0, %shr.i
  %call40.i = call i32 @qla81xx_fac_semaphore_access(ptr noundef %vha, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.not.i = icmp eq i32 %call40.i, 0
  br i1 %cmp41.not.i, label %if.end44.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.53) #8
  br label %if.then164.i

if.end44.i:                                       ; preds = %if.end39.i
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 32769, ptr noundef %vha, i32 noundef 28821, ptr noundef nonnull @.str.54) #8
  %call45.i = call fastcc i32 @qla24xx_unprotect_flash(ptr noundef %vha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %for.cond.preheader.i, label %if.then47.i

for.cond.preheader.i:                             ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length)
  %cmp50343.not.i = icmp ult i32 %length, 4
  br i1 %cmp50343.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.then47.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  %call48.i = call i32 @qla81xx_fac_semaphore_access(ptr noundef %vha, i32 noundef 0) #8
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28822, ptr noundef nonnull @.str.55) #8
  br label %if.then164.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %liter.0346.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %faddr.addr.0344.i = phi i32 [ %inc62.i, %for.inc.i.for.body.i_crit_edge ], [ %shr7, %for.cond.preheader.i.for.body.i_crit_edge ]
  %and54.i = and i32 %faddr.addr.0344.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.then56.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then56.i:                                      ; preds = %for.body.i
  %and52.i = and i32 %faddr.addr.0344.i, %neg.i
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 32769, ptr noundef %vha, i32 noundef 28821, ptr noundef nonnull @.str.56, i32 noundef %faddr.addr.0344.i) #8
  %53 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw, align 4
  %flags.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load.i.i = load volatile i32, ptr %flags.i.i, align 8
  %56 = and i32 %bf.load.i.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i311.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i311.i, label %if.end.i313.i, label %if.then.i312.i

if.then.i312.i:                                   ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i = and i32 %and52.i, 1073741823
  %fdt_block_size.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %54, i32 0, i32 216
  %57 = ptrtoint ptr %fdt_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fdt_block_size.i.i, align 4
  %shr1.i.i = lshr i32 %58, 2
  %flash_data_off.i.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %54, i32 0, i32 210
  %59 = ptrtoint ptr %flash_data_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flash_data_off.i.i.i, align 4
  %add.i.i.i = add i32 %60, %shr.i.i
  %sub.i.i = add nsw i32 %shr1.i.i, -1
  %add.i22.i.i = add i32 %sub.i.i, %add.i.i.i
  %call3.i.i = call i32 @qla81xx_fac_erase_sector(ptr noundef %vha, i32 noundef %add.i.i.i, i32 noundef %add.i22.i.i) #8
  br label %qla24xx_erase_sector.exit.i

if.end.i313.i:                                    ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl53.i = shl i32 %and52.i, 2
  %fdt_erase_cmd.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %54, i32 0, i32 215
  %61 = ptrtoint ptr %fdt_erase_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fdt_erase_cmd.i.i, align 32
  %and.i.i = and i32 %shl53.i, 65280
  %shl.i.i = shl i32 %and52.i, 18
  %and4.i.i = and i32 %shl.i.i, 16515072
  %or.i.i = or i32 %and4.i.i, %and.i.i
  %shr5.i.i = lshr i32 %shl53.i, 16
  %and6.i.i = and i32 %shr5.i.i, 255
  %or7.i.i = or i32 %or.i.i, %and6.i.i
  %call8.i.i = call fastcc i32 @qla24xx_write_flash_dword(ptr noundef %54, i32 noundef %62, i32 noundef %or7.i.i) #8
  br label %qla24xx_erase_sector.exit.i

qla24xx_erase_sector.exit.i:                      ; preds = %if.end.i313.i, %if.then.i312.i
  %retval.0.i314.i = phi i32 [ %call3.i.i, %if.then.i312.i ], [ %call8.i.i, %if.end.i313.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i314.i)
  %tobool58.not.i = icmp eq i32 %retval.0.i314.i, 0
  br i1 %tobool58.not.i, label %qla24xx_erase_sector.exit.i.for.inc.i_crit_edge, label %if.then59.i

qla24xx_erase_sector.exit.i.for.inc.i_crit_edge:  ; preds = %qla24xx_erase_sector.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then59.i:                                      ; preds = %qla24xx_erase_sector.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28679, ptr noundef nonnull @.str.57, i32 noundef %faddr.addr.0344.i) #8
  br label %write_protect.i

for.inc.i:                                        ; preds = %qla24xx_erase_sector.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %liter.0346.i, 1
  %inc62.i = add nuw nsw i32 %faddr.addr.0344.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr8
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %63 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %63)
  %bf.load64.i = load volatile i32, ptr %25, align 4
  %64 = and i32 %bf.load64.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool67.not.i = icmp eq i32 %64, 0
  br i1 %tobool67.not.i, label %for.end.i.if.end113.i_crit_edge, label %if.then68.i

for.end.i.if.end113.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113.i

if.then68.i:                                      ; preds = %for.end.i
  %65 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %65)
  %bf.load70.i = load volatile i32, ptr %25, align 4
  %66 = and i32 %bf.load70.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool73.not.i = icmp eq i32 %66, 0
  br i1 %tobool73.not.i, label %if.then74.i, label %if.then68.i.if.end99.i_crit_edge

if.then68.i.if.end99.i_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99.i

if.then74.i:                                      ; preds = %if.then68.i
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 32769, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.58) #8
  %call75.i = call fastcc i32 @qla24xx_protect_flash(ptr noundef %vha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %cmp76.not.i = icmp eq i32 %call75.i, 0
  br i1 %cmp76.not.i, label %if.end80.i, label %if.then78.i

if.then78.i:                                      ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #10
  %call79.i = call i32 @qla81xx_fac_semaphore_access(ptr noundef %vha, i32 noundef 0) #8
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.59) #8
  br label %if.then164.i

if.end80.i:                                       ; preds = %if.then74.i
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 32769, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.60) #8
  %dpc_flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags.i) #8
  call void @_set_bit(i32 noundef 33, ptr noundef %dpc_flags.i) #8
  call void @qla2xxx_wake_dpc(ptr noundef %vha) #8
  %call82.i = call i32 @qla2x00_wait_for_chip_reset(ptr noundef %vha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %cmp83.not.i = icmp eq i32 %call82.i, 0
  br i1 %cmp83.not.i, label %if.end86.i, label %if.then85.i

if.then85.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.61) #8
  br label %if.then164.i

if.end86.i:                                       ; preds = %if.end80.i
  %67 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %bf.load88.i = load volatile i32, ptr %flags.i, align 8
  %bf.clear89.i = and i32 %bf.load88.i, -65537
  store volatile i32 %bf.clear89.i, ptr %flags.i, align 8
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 32769, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.62) #8
  %call90.i = call i32 @qla2xxx_write_remote_register(ptr noundef %vha, i32 noundef 1052694, i32 noundef 131074) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %cmp91.not.i = icmp eq i32 %call90.i, 0
  br i1 %cmp91.not.i, label %if.end94.i, label %if.then93.i

if.then93.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.53) #8
  br label %if.then164.i

if.end94.i:                                       ; preds = %if.end86.i
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 32769, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.63) #8
  %call95.i = call i32 @qla2x00_write_ram_word(ptr noundef %vha, i32 noundef 2147287297, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %if.end94.i.if.end99.i_crit_edge, label %if.then97.i

if.end94.i.if.end99.i_crit_edge:                  ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99.i

if.then97.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28822, ptr noundef nonnull @.str.55) #8
  br label %if.then164.i

if.end99.i:                                       ; preds = %if.end94.i.if.end99.i_crit_edge, %if.then68.i.if.end99.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_size_without_sfub.1.i)
  %tobool104.not.i = icmp eq i32 %buf_size_without_sfub.1.i, 0
  %or.cond.i = select i1 %tobool5.not.i, i1 true, i1 %tobool104.not.i
  br i1 %or.cond.i, label %if.end99.i.if.end113.i_crit_edge, label %if.then105.i

if.end99.i.if.end113.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113.i

if.then105.i:                                     ; preds = %if.end99.i
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 32769, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.64) #8
  %68 = call i16 @llvm.bswap.i16(i16 %region.sroa.0.0.copyload.i) #8
  %69 = ptrtoint ptr %sfub_dma.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sfub_dma.i, align 4
  %call107.i = call i32 @qla28xx_secure_flash_update(ptr noundef %vha, i16 noundef zeroext 0, i16 noundef zeroext %68, i32 noundef %buf_size_without_sfub.1.i, i32 noundef %70, i32 noundef 65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i)
  %cmp108.not.i = icmp eq i32 %call107.i, 0
  br i1 %cmp108.not.i, label %if.then105.i.if.end113.i_crit_edge, label %if.then110.i

if.then105.i.if.end113.i_crit_edge:               ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113.i

if.then110.i:                                     ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.65, i32 noundef %call107.i) #8
  br label %write_protect.i

if.end113.i:                                      ; preds = %if.then105.i.if.end113.i_crit_edge, %if.end99.i.if.end113.i_crit_edge, %for.end.i.if.end113.i_crit_edge
  %reset_to_rom.1.off0.i = phi i1 [ %tobool73.not.i, %if.then105.i.if.end113.i_crit_edge ], [ %tobool73.not.i, %if.end99.i.if.end113.i_crit_edge ], [ false, %for.end.i.if.end113.i_crit_edge ]
  br i1 %cmp50343.not.i, label %if.end113.i.write_protect.i_crit_edge, label %for.body118.lr.ph.i

if.end113.i.write_protect.i_crit_edge:            ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_protect.i

for.body118.lr.ph.i:                              ; preds = %if.end113.i
  %flash_data_off.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %9, i32 0, i32 210
  br label %for.body118.i

for.body118.i:                                    ; preds = %if.end135.i.for.body118.i_crit_edge, %for.body118.lr.ph.i
  %dburst.0351.i = phi i32 [ 1024, %for.body118.lr.ph.i ], [ %71, %if.end135.i.for.body118.i_crit_edge ]
  %liter.1350.i = phi i32 [ 0, %for.body118.lr.ph.i ], [ %inc143.i, %if.end135.i.for.body118.i_crit_edge ]
  %dwptr.addr.0349.i = phi ptr [ %buf, %for.body118.lr.ph.i ], [ %incdec.ptr.i, %if.end135.i.for.body118.i_crit_edge ]
  %faddr.addr.1348.i = phi i32 [ %shr7, %for.body118.lr.ph.i ], [ %inc144.i, %if.end135.i.for.body118.i_crit_edge ]
  %sub121.i = sub i32 %shr8, %liter.1350.i
  %71 = call i32 @llvm.umin.i32(i32 %sub121.i, i32 %dburst.0351.i) #8
  %shl127.i = shl i32 %71, 2
  %72 = call ptr @memcpy(ptr %call.i.i, ptr %dwptr.addr.0349.i, i32 %shl127.i)
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 32769, ptr noundef %vha, i32 noundef 28821, ptr noundef nonnull @.str.66, i32 noundef %71) #8
  %73 = ptrtoint ptr %optrom_dma.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %optrom_dma.i, align 4
  %75 = ptrtoint ptr %flash_data_off.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flash_data_off.i.i, align 4
  %add.i315.i = add i32 %76, %faddr.addr.1348.i
  %call129.i = call i32 @qla2x00_load_ram(ptr noundef %vha, i32 noundef %74, i32 noundef %add.i315.i, i32 noundef %71) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129.i)
  %cmp130.not.i = icmp eq i32 %call129.i, 0
  br i1 %cmp130.not.i, label %if.end135.i, label %if.then132.i

if.then132.i:                                     ; preds = %for.body118.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %flash_data_off.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flash_data_off.i.i, align 4
  %add.i317.i = add i32 %78, %faddr.addr.1348.i
  %79 = ptrtoint ptr %optrom_dma.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %optrom_dma.i, align 4
  %conv134.i = zext i32 %80 to i64
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28823, ptr noundef nonnull @.str.67, i32 noundef %add.i317.i, ptr noundef nonnull %call.i.i, i64 noundef %conv134.i) #8
  br label %write_protect.i

if.end135.i:                                      ; preds = %for.body118.i
  %inc143.i = add i32 %71, %liter.1350.i
  %inc144.i = add i32 %71, %faddr.addr.1348.i
  %incdec.ptr.i = getelementptr i32, ptr %dwptr.addr.0349.i, i32 %71
  %cmp116.i = icmp ult i32 %inc143.i, %shr8
  br i1 %cmp116.i, label %if.end135.i.for.body118.i_crit_edge, label %if.end135.i.write_protect.i_crit_edge

if.end135.i.write_protect.i_crit_edge:            ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_protect.i

if.end135.i.for.body118.i_crit_edge:              ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body118.i

write_protect.i:                                  ; preds = %if.end135.i.write_protect.i_crit_edge, %if.then132.i, %if.end113.i.write_protect.i_crit_edge, %if.then110.i, %if.then59.i
  %rval.5.i = phi i32 [ %retval.0.i314.i, %if.then59.i ], [ %call107.i, %if.then110.i ], [ %call129.i, %if.then132.i ], [ 0, %if.end113.i.write_protect.i_crit_edge ], [ 0, %if.end135.i.write_protect.i_crit_edge ]
  %reset_to_rom.2.off0.i = phi i1 [ false, %if.then59.i ], [ %tobool73.not.i, %if.then110.i ], [ %reset_to_rom.1.off0.i, %if.then132.i ], [ %reset_to_rom.1.off0.i, %if.end113.i.write_protect.i_crit_edge ], [ %reset_to_rom.1.off0.i, %if.end135.i.write_protect.i_crit_edge ]
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 32769, ptr noundef %vha, i32 noundef 28821, ptr noundef nonnull @.str.68) #8
  %call146.i = call fastcc i32 @qla24xx_protect_flash(ptr noundef %vha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i)
  %tobool147.not.i = icmp eq i32 %call146.i, 0
  br i1 %tobool147.not.i, label %write_protect.i.if.end150.i_crit_edge, label %if.then148.i

write_protect.i.if.end150.i_crit_edge:            ; preds = %write_protect.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150.i

if.then148.i:                                     ; preds = %write_protect.i
  call void @__sanitizer_cov_trace_pc() #10
  %call149.i = call i32 @qla81xx_fac_semaphore_access(ptr noundef %vha, i32 noundef 0) #8
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28825, ptr noundef nonnull @.str.69) #8
  br label %if.end150.i

if.end150.i:                                      ; preds = %if.then148.i, %write_protect.i.if.end150.i_crit_edge
  %rval.6.i = phi i32 [ 5, %if.then148.i ], [ %rval.5.i, %write_protect.i.if.end150.i_crit_edge ]
  br i1 %reset_to_rom.2.off0.i, label %if.then155.i, label %if.end150.i.if.then164.i_crit_edge

if.end150.i.if.then164.i_crit_edge:               ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then164.i

if.then155.i:                                     ; preds = %if.end150.i
  %dpc_flags156.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags156.i) #8
  call void @qla2xxx_wake_dpc(ptr noundef %vha) #8
  %call157.i = call i32 @qla2x00_wait_for_hba_online(ptr noundef %vha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157.i)
  %cmp158.not.i = icmp eq i32 %call157.i, 0
  br i1 %cmp158.not.i, label %if.then155.i.if.then164.i_crit_edge, label %if.then160.i

if.then155.i.if.then164.i_crit_edge:              ; preds = %if.then155.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then164.i

if.then160.i:                                     ; preds = %if.then155.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.70) #8
  br label %if.then164.i

if.then164.i:                                     ; preds = %if.then160.i, %if.then155.i.if.then164.i_crit_edge, %if.end150.i.if.then164.i_crit_edge, %if.then97.i, %if.then93.i, %if.then85.i, %if.then78.i, %if.then47.i, %if.then43.i, %qla28xx_extract_sfub_and_verify.exit.i, %if.then32.i, %sw.default.i
  %rval.7338.i = phi i32 [ 5, %sw.default.i ], [ 5, %if.then32.i ], [ 5, %qla28xx_extract_sfub_and_verify.exit.i ], [ %call40.i, %if.then43.i ], [ %call45.i, %if.then47.i ], [ 5, %if.then160.i ], [ %rval.6.i, %if.then155.i.if.then164.i_crit_edge ], [ %rval.6.i, %if.end150.i.if.then164.i_crit_edge ], [ %call75.i, %if.then78.i ], [ %call82.i, %if.then85.i ], [ %call90.i, %if.then93.i ], [ %call95.i, %if.then97.i ]
  %81 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %9, align 128
  %dev166.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %83 = ptrtoint ptr %optrom_dma.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %optrom_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev166.i, i32 noundef 4096, ptr noundef nonnull %call.i.i, i32 noundef %84, i32 noundef 0) #8
  br label %qla28xx_write_flash_data.exit

qla28xx_write_flash_data.exit:                    ; preds = %if.then164.i, %if.then2.i, %if.then.i
  %rval.7331.i = phi i32 [ %rval.7338.i, %if.then164.i ], [ 5, %if.then2.i ], [ 258, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sfub_dma.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %optrom_dma.i) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %optrom_dma.i22) #8
  %85 = ptrtoint ptr %optrom_dma.i22 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %optrom_dma.i22, align 4, !annotation !181
  %86 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw, align 4
  %isp_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %87, i32 0, i32 54
  %88 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %isp_type.i, align 8
  %90 = and i32 %89, 45721600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %if.else.next.i_crit_edge, label %if.end.i26

if.else.next.i_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %next.i

if.end.i26:                                       ; preds = %if.else
  %92 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %87, align 128
  %dev.i24 = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  %call.i.i25 = call ptr @dma_alloc_attrs(ptr noundef %dev.i24, i32 noundef 4096, ptr noundef nonnull %optrom_dma.i22, i32 noundef 3264, i32 noundef 0) #8
  %tobool40.not.i = icmp eq ptr %call.i.i25, null
  br i1 %tobool40.not.i, label %if.then41.i, label %if.end.i26.next.i_crit_edge

if.end.i26.next.i_crit_edge:                      ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %next.i

if.then41.i:                                      ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28821, ptr noundef nonnull @.str.49, i32 noundef 4096) #8
  br label %next.i

next.i:                                           ; preds = %if.then41.i, %if.end.i26.next.i_crit_edge, %if.else.next.i_crit_edge
  %optrom.0.i = phi ptr [ %call.i.i25, %if.end.i26.next.i_crit_edge ], [ null, %if.then41.i ], [ null, %if.else.next.i_crit_edge ]
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 32769, ptr noundef %vha, i32 noundef 28821, ptr noundef nonnull @.str.54) #8
  %call43.i = call fastcc i32 @qla24xx_unprotect_flash(ptr noundef %vha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %if.then45.i

if.then45.i:                                      ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28822, ptr noundef nonnull @.str.72) #8
  br label %done.i

if.end46.i:                                       ; preds = %next.i
  %fdt_block_size.i27 = getelementptr inbounds %struct.qla_hw_data, ptr %87, i32 0, i32 216
  %94 = ptrtoint ptr %fdt_block_size.i27 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %fdt_block_size.i27, align 4
  %shr.i28 = lshr i32 %95, 2
  %sub.i29 = add nsw i32 %shr.i28, -1
  %neg.i30 = sub nsw i32 0, %shr.i28
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length)
  %cmp212.not.i = icmp ult i32 %length, 4
  br i1 %cmp212.not.i, label %if.end46.i.for.end.i62_crit_edge, label %for.body.lr.ph.i

if.end46.i.for.end.i62_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i62

for.body.lr.ph.i:                                 ; preds = %if.end46.i
  %flash_data_off.i.i31 = getelementptr inbounds %struct.qla_hw_data, ptr %87, i32 0, i32 210
  br label %for.body.i32

for.body.i32:                                     ; preds = %for.inc.i61.for.body.i32_crit_edge, %for.body.lr.ph.i
  %optrom.1218.i = phi ptr [ %optrom.0.i, %for.body.lr.ph.i ], [ %optrom.3.i, %for.inc.i61.for.body.i32_crit_edge ]
  %dburst.0217.i = phi i32 [ 1024, %for.body.lr.ph.i ], [ %dburst.3.i, %for.inc.i61.for.body.i32_crit_edge ]
  %liter.0215.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i59, %for.inc.i61.for.body.i32_crit_edge ]
  %dwptr.addr.0214.i = phi ptr [ %buf, %for.body.lr.ph.i ], [ %incdec.ptr.i60, %for.inc.i61.for.body.i32_crit_edge ]
  %faddr.addr.0213.i = phi i32 [ %shr7, %for.body.lr.ph.i ], [ %inc108.i, %for.inc.i61.for.body.i32_crit_edge ]
  %and48.i = and i32 %faddr.addr.0213.i, %sub.i29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.then50.i, label %for.body.i32.if.end55.i_crit_edge

for.body.i32.if.end55.i_crit_edge:                ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

if.then50.i:                                      ; preds = %for.body.i32
  %and47.i = and i32 %faddr.addr.0213.i, %neg.i30
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 32769, ptr noundef %vha, i32 noundef 28821, ptr noundef nonnull @.str.56, i32 noundef %faddr.addr.0213.i) #8
  %96 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw, align 4
  %flags.i.i33 = getelementptr inbounds %struct.qla_hw_data, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %flags.i.i33 to i32
  call void @__asan_load4_noabort(i32 %98)
  %bf.load.i.i34 = load volatile i32, ptr %flags.i.i33, align 8
  %99 = and i32 %bf.load.i.i34, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i.i35 = icmp eq i32 %99, 0
  br i1 %tobool.not.i.i35, label %if.end.i.i54, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i36 = and i32 %and47.i, 1073741823
  %fdt_block_size.i.i37 = getelementptr inbounds %struct.qla_hw_data, ptr %97, i32 0, i32 216
  %100 = ptrtoint ptr %fdt_block_size.i.i37 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %fdt_block_size.i.i37, align 4
  %shr1.i.i38 = lshr i32 %101, 2
  %flash_data_off.i.i.i39 = getelementptr inbounds %struct.qla_hw_data, ptr %97, i32 0, i32 210
  %102 = ptrtoint ptr %flash_data_off.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flash_data_off.i.i.i39, align 4
  %add.i.i.i40 = add i32 %103, %shr.i.i36
  %sub.i.i41 = add nsw i32 %shr1.i.i38, -1
  %add.i22.i.i42 = add i32 %sub.i.i41, %add.i.i.i40
  %call3.i.i43 = call i32 @qla81xx_fac_erase_sector(ptr noundef %vha, i32 noundef %add.i.i.i40, i32 noundef %add.i22.i.i42) #8
  br label %qla24xx_erase_sector.exit.i55

if.end.i.i54:                                     ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i44 = shl i32 %and47.i, 2
  %fdt_erase_cmd.i.i45 = getelementptr inbounds %struct.qla_hw_data, ptr %97, i32 0, i32 215
  %104 = ptrtoint ptr %fdt_erase_cmd.i.i45 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %fdt_erase_cmd.i.i45, align 32
  %and.i.i46 = and i32 %shl.i44, 65280
  %shl.i.i47 = shl i32 %and47.i, 18
  %and4.i.i48 = and i32 %shl.i.i47, 16515072
  %or.i.i49 = or i32 %and4.i.i48, %and.i.i46
  %shr5.i.i50 = lshr i32 %shl.i44, 16
  %and6.i.i51 = and i32 %shr5.i.i50, 255
  %or7.i.i52 = or i32 %or.i.i49, %and6.i.i51
  %call8.i.i53 = call fastcc i32 @qla24xx_write_flash_dword(ptr noundef %97, i32 noundef %105, i32 noundef %or7.i.i52) #8
  br label %qla24xx_erase_sector.exit.i55

qla24xx_erase_sector.exit.i55:                    ; preds = %if.end.i.i54, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i43, %if.then.i.i ], [ %call8.i.i53, %if.end.i.i54 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool52.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool52.not.i, label %qla24xx_erase_sector.exit.i55.if.end55.i_crit_edge, label %if.then53.i

qla24xx_erase_sector.exit.i55.if.end55.i_crit_edge: ; preds = %qla24xx_erase_sector.exit.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

if.then53.i:                                      ; preds = %qla24xx_erase_sector.exit.i55
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28679, ptr noundef nonnull @.str.73, i32 noundef %faddr.addr.0213.i) #8
  br label %for.end.i62

if.end55.i:                                       ; preds = %qla24xx_erase_sector.exit.i55.if.end55.i_crit_edge, %for.body.i32.if.end55.i_crit_edge
  %tobool56.not.i = icmp eq ptr %optrom.1218.i, null
  br i1 %tobool56.not.i, label %if.end55.i.if.end102.i_crit_edge, label %if.then57.i

if.end55.i.if.end102.i_crit_edge:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i

if.then57.i:                                      ; preds = %if.end55.i
  %sub58.i = sub i32 %shr8, %liter.0215.i
  %106 = call i32 @llvm.umin.i32(i32 %sub58.i, i32 %dburst.0217.i) #8
  %shl63.i = shl i32 %106, 2
  %107 = call ptr @memcpy(ptr %optrom.1218.i, ptr %dwptr.addr.0214.i, i32 %shl63.i)
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 32769, ptr noundef %vha, i32 noundef 28821, ptr noundef nonnull @.str.66, i32 noundef %106) #8
  %108 = ptrtoint ptr %optrom_dma.i22 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %optrom_dma.i22, align 4
  %110 = ptrtoint ptr %flash_data_off.i.i31 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flash_data_off.i.i31, align 4
  %add.i.i56 = add i32 %111, %faddr.addr.0213.i
  %call65.i = call i32 @qla2x00_load_ram(ptr noundef %vha, i32 noundef %109, i32 noundef %add.i.i56, i32 noundef %106) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.then67.i, label %if.end72.i

if.then67.i:                                      ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub68.i = add i32 %106, -1
  %add.i57 = add i32 %sub68.i, %liter.0215.i
  %add70.i = add i32 %sub68.i, %faddr.addr.0213.i
  %add.ptr.i58 = getelementptr i32, ptr %dwptr.addr.0214.i, i32 %sub68.i
  br label %for.inc.i61

if.end72.i:                                       ; preds = %if.then57.i
  %112 = ptrtoint ptr %flash_data_off.i.i31 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flash_data_off.i.i31, align 4
  %add.i203.i = add i32 %113, %faddr.addr.0213.i
  %114 = ptrtoint ptr %optrom_dma.i22 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %optrom_dma.i22, align 4
  %conv.i = zext i32 %115 to i64
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28823, ptr noundef nonnull @.str.74, i32 noundef %add.i203.i, ptr noundef nonnull %optrom.1218.i, i64 noundef %conv.i) #8
  %116 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %87, align 128
  %dev75.i = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  %118 = ptrtoint ptr %optrom_dma.i22 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %optrom_dma.i22, align 4
  call void @dma_free_attrs(ptr noundef %dev75.i, i32 noundef 4096, ptr noundef nonnull %optrom.1218.i, i32 noundef %119, i32 noundef 0) #8
  %120 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %isp_type.i, align 8
  %122 = and i32 %121, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %if.end101.i, label %if.end72.i.for.end.i62_crit_edge

if.end72.i.for.end.i62_crit_edge:                 ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i62

if.end101.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28824, ptr noundef nonnull @.str.75) #8
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.end101.i, %if.end55.i.if.end102.i_crit_edge
  %dburst.2.i = phi i32 [ %106, %if.end101.i ], [ %dburst.0217.i, %if.end55.i.if.end102.i_crit_edge ]
  %124 = ptrtoint ptr %flash_data_off.i.i31 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flash_data_off.i.i31, align 4
  %add.i205.i = add i32 %125, %faddr.addr.0213.i
  %126 = ptrtoint ptr %dwptr.addr.0214.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dwptr.addr.0214.i, align 4
  %128 = call i32 @llvm.bswap.i32(i32 %127) #8
  %call104.i = call fastcc i32 @qla24xx_write_flash_dword(ptr noundef %87, i32 noundef %add.i205.i, i32 noundef %128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i)
  %tobool105.not.i = icmp eq i32 %call104.i, 0
  br i1 %tobool105.not.i, label %if.end102.i.for.inc.i61_crit_edge, label %if.then106.i

if.end102.i.for.inc.i61_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i61

if.then106.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %dwptr.addr.0214.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dwptr.addr.0214.i, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 28678, ptr noundef nonnull @.str.76, i32 noundef %faddr.addr.0213.i, i32 noundef %130) #8
  br label %for.end.i62

for.inc.i61:                                      ; preds = %if.end102.i.for.inc.i61_crit_edge, %if.then67.i
  %faddr.addr.1.i = phi i32 [ %faddr.addr.0213.i, %if.end102.i.for.inc.i61_crit_edge ], [ %add70.i, %if.then67.i ]
  %dwptr.addr.1.i = phi ptr [ %dwptr.addr.0214.i, %if.end102.i.for.inc.i61_crit_edge ], [ %add.ptr.i58, %if.then67.i ]
  %liter.1.i = phi i32 [ %liter.0215.i, %if.end102.i.for.inc.i61_crit_edge ], [ %add.i57, %if.then67.i ]
  %dburst.3.i = phi i32 [ %dburst.2.i, %if.end102.i.for.inc.i61_crit_edge ], [ %106, %if.then67.i ]
  %optrom.3.i = phi ptr [ null, %if.end102.i.for.inc.i61_crit_edge ], [ %optrom.1218.i, %if.then67.i ]
  %inc.i59 = add i32 %liter.1.i, 1
  %inc108.i = add i32 %faddr.addr.1.i, 1
  %incdec.ptr.i60 = getelementptr i32, ptr %dwptr.addr.1.i, i32 1
  %cmp.i = icmp ult i32 %inc.i59, %shr8
  br i1 %cmp.i, label %for.inc.i61.for.body.i32_crit_edge, label %for.inc.i61.for.end.i62_crit_edge

for.inc.i61.for.end.i62_crit_edge:                ; preds = %for.inc.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i62

for.inc.i61.for.body.i32_crit_edge:               ; preds = %for.inc.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i32

for.end.i62:                                      ; preds = %for.inc.i61.for.end.i62_crit_edge, %if.then106.i, %if.end72.i.for.end.i62_crit_edge, %if.then53.i, %if.end46.i.for.end.i62_crit_edge
  %optrom.4.i = phi ptr [ null, %if.then106.i ], [ %optrom.1218.i, %if.then53.i ], [ %optrom.0.i, %if.end46.i.for.end.i62_crit_edge ], [ null, %if.end72.i.for.end.i62_crit_edge ], [ %optrom.3.i, %for.inc.i61.for.end.i62_crit_edge ]
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 32769, ptr noundef %vha, i32 noundef 28821, ptr noundef nonnull @.str.68) #8
  %call109.i = call fastcc i32 @qla24xx_protect_flash(ptr noundef %vha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i)
  %tobool110.not.i = icmp eq i32 %call109.i, 0
  br i1 %tobool110.not.i, label %for.end.i62.done.i_crit_edge, label %if.then111.i

for.end.i62.done.i_crit_edge:                     ; preds = %for.end.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.i

if.then111.i:                                     ; preds = %for.end.i62
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 28825, ptr noundef nonnull @.str.77) #8
  br label %done.i

done.i:                                           ; preds = %if.then111.i, %for.end.i62.done.i_crit_edge, %if.then45.i
  %ret.0.i = phi i32 [ %call43.i, %if.then45.i ], [ %call109.i, %if.then111.i ], [ 0, %for.end.i62.done.i_crit_edge ]
  %optrom.5.i = phi ptr [ %optrom.0.i, %if.then45.i ], [ %optrom.4.i, %if.then111.i ], [ %optrom.4.i, %for.end.i62.done.i_crit_edge ]
  %tobool113.not.i = icmp eq ptr %optrom.5.i, null
  br i1 %tobool113.not.i, label %done.i.qla24xx_write_flash_data.exit_crit_edge, label %if.then114.i

done.i.qla24xx_write_flash_data.exit_crit_edge:   ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_write_flash_data.exit

if.then114.i:                                     ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %87, align 128
  %dev116.i = getelementptr inbounds %struct.pci_dev, ptr %132, i32 0, i32 44
  %133 = ptrtoint ptr %optrom_dma.i22 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %optrom_dma.i22, align 4
  call void @dma_free_attrs(ptr noundef %dev116.i, i32 noundef 4096, ptr noundef nonnull %optrom.5.i, i32 noundef %134, i32 noundef 0) #8
  br label %qla24xx_write_flash_data.exit

qla24xx_write_flash_data.exit:                    ; preds = %if.then114.i, %done.i.qla24xx_write_flash_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %optrom_dma.i22) #8
  br label %if.end

if.end:                                           ; preds = %qla24xx_write_flash_data.exit, %qla28xx_write_flash_data.exit
  %rval.0 = phi i32 [ %rval.7331.i, %qla28xx_write_flash_data.exit ], [ %ret.0.i, %qla24xx_write_flash_data.exit ]
  call void @_clear_bit(i32 noundef 3, ptr noundef %mbx_cmd_flags) #8
  %135 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %host, align 8
  call void @scsi_unblock_requests(ptr noundef %136) #8
  ret i32 %rval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qla25xx_read_optrom_data(ptr noundef %vha, ptr noundef %buf, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %optrom_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %optrom_dma) #8
  %0 = ptrtoint ptr %optrom_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %optrom_dma, align 4, !annotation !181
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 54
  %3 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %isp_type, align 8
  %5 = and i32 %4, 45721600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %if.end, label %try_fast

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %length)
  %cmp = icmp ugt i32 %length, 4095
  %7 = and i32 %offset, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  %9 = and i1 %8, %cmp
  br i1 %9, label %if.end.if.end50_crit_edge, label %if.end.slow_read_crit_edge

if.end.slow_read_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %slow_read

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

try_fast:                                         ; preds = %entry
  %and47.old = and i32 %offset, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.old)
  %tobool48.not.old = icmp eq i32 %and47.old, 0
  br i1 %tobool48.not.old, label %try_fast.if.end50_crit_edge, label %try_fast.slow_read_crit_edge

try_fast.slow_read_crit_edge:                     ; preds = %try_fast
  call void @__sanitizer_cov_trace_pc() #10
  br label %slow_read

try_fast.if.end50_crit_edge:                      ; preds = %try_fast
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.end50:                                         ; preds = %try_fast.if.end50_crit_edge, %if.end.if.end50_crit_edge
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef nonnull %optrom_dma, i32 noundef 3264, i32 noundef 0) #8
  %tobool51.not = icmp eq ptr %call.i, null
  br i1 %tobool51.not, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 204, ptr noundef nonnull @.str.9, i32 noundef 4) #8
  br label %slow_read

if.end53:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length)
  %cmp55.not130 = icmp ult i32 %length, 4
  br i1 %cmp55.not130, label %if.end53.while.end_crit_edge, label %while.body.lr.ph

if.end53.while.end_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end53
  %shr54 = lshr i32 %length, 2
  %shr = lshr i32 %offset, 2
  %flash_data_off.i = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 210
  br label %while.body

while.body:                                       ; preds = %if.end66.while.body_crit_edge, %while.body.lr.ph
  %burst.0134 = phi i32 [ 1024, %while.body.lr.ph ], [ %12, %if.end66.while.body_crit_edge ]
  %left.0133 = phi i32 [ %shr54, %while.body.lr.ph ], [ %sub, %if.end66.while.body_crit_edge ]
  %faddr.0132 = phi i32 [ %shr, %while.body.lr.ph ], [ %add, %if.end66.while.body_crit_edge ]
  %pbuf.0131 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %if.end66.while.body_crit_edge ]
  %12 = call i32 @llvm.umin.i32(i32 %burst.0134, i32 %left.0133)
  %13 = ptrtoint ptr %optrom_dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %optrom_dma, align 4
  %15 = ptrtoint ptr %flash_data_off.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flash_data_off.i, align 4
  %add.i = add i32 %16, %faddr.0132
  %call60 = call i32 @qla2x00_dump_ram(ptr noundef %vha, i32 noundef %14, i32 noundef %add.i, i32 noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end66, label %if.then62

if.then62:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %flash_data_off.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flash_data_off.i, align 4
  %add.i128 = add i32 %18, %faddr.0132
  %19 = ptrtoint ptr %optrom_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %optrom_dma, align 4
  %conv = zext i32 %20 to i64
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 245, ptr noundef nonnull @.str.10, i32 noundef %call60, i32 noundef %add.i128, i64 noundef %conv) #8
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 246, ptr noundef nonnull @.str.11) #8
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 128
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %optrom_dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %optrom_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev65, i32 noundef 4096, ptr noundef nonnull %call.i, i32 noundef %24, i32 noundef 0) #8
  br label %slow_read

if.end66:                                         ; preds = %while.body
  %mul = shl i32 %12, 2
  %25 = call ptr @memcpy(ptr %pbuf.0131, ptr %call.i, i32 %mul)
  %sub = sub i32 %left.0133, %12
  %add = add i32 %12, %faddr.0132
  %add.ptr = getelementptr i8, ptr %pbuf.0131, i32 %mul
  %cmp55.not = icmp eq i32 %sub, 0
  br i1 %cmp55.not, label %if.end66.while.end_crit_edge, label %if.end66.while.body_crit_edge

if.end66.while.body_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end66.while.end_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end66.while.end_crit_edge, %if.end53.while.end_crit_edge
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %2, align 128
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %optrom_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %optrom_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev69, i32 noundef 4096, ptr noundef nonnull %call.i, i32 noundef %29, i32 noundef 0) #8
  br label %cleanup

slow_read:                                        ; preds = %if.then62, %if.then52, %try_fast.slow_read_crit_edge, %if.end.slow_read_crit_edge
  %call70 = call ptr @qla24xx_read_optrom_data(ptr noundef %vha, ptr noundef %buf, i32 noundef %offset, i32 noundef %length)
  br label %cleanup

cleanup:                                          ; preds = %slow_read, %while.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %optrom_dma) #8
  ret ptr %buf
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_dump_ram(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_get_flash_version(ptr noundef %vha, ptr noundef %mbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %pio_address = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %pio_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pio_address, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %tobool1.not = icmp eq ptr %mbuf, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bios_revision = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 204
  %efi_revision = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 205
  %fcode_revision = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 206
  %fw_revision = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 207
  %iobase.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %4 = call ptr @memset(ptr %bios_revision, i32 0, i32 36)
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase.i, align 4
  %ctrl_status.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %6, i32 0, i32 3
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %8 = or i16 %7, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctrl_status.i, i16 %8) #8, !srcloc !170
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %arrayidx69 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 205, i32 1
  %arrayidx53 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 204, i32 1
  br label %do.body

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %if.end
  %pcihdr.0 = phi i32 [ 0, %if.end ], [ %add89, %sw.epilog.do.body_crit_edge ]
  %call = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %pcihdr.0)
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %call)
  %cmp.not = icmp eq i8 %call, 85
  br i1 %cmp.not, label %lor.lhs.false6, label %do.body.if.then11_crit_edge

do.body.if.then11_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

lor.lhs.false6:                                   ; preds = %do.body
  %add = or i32 %pcihdr.0, 1
  %call7 = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %call7)
  %cmp9.not = icmp eq i8 %call7, -86
  br i1 %cmp9.not, label %if.end12, label %lor.lhs.false6.if.then11_crit_edge

lor.lhs.false6.if.then11_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false6.if.then11_crit_edge, %do.body.if.then11_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 80, ptr noundef nonnull @.str.12) #8
  br label %do.end

if.end12:                                         ; preds = %lor.lhs.false6
  %add13 = or i32 %pcihdr.0, 25
  %call14 = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add13)
  %conv15 = zext i8 %call14 to i32
  %shl = shl nuw nsw i32 %conv15, 8
  %add16 = or i32 %pcihdr.0, 24
  %call17 = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add16)
  %conv18 = zext i8 %call17 to i32
  %or = add i32 %pcihdr.0, %conv18
  %add19 = add i32 %or, %shl
  %call20 = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add19)
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %call20)
  %cmp22.not = icmp eq i8 %call20, 80
  br i1 %cmp22.not, label %lor.lhs.false24, label %if.end12.if.then42_crit_edge

if.end12.if.then42_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

lor.lhs.false24:                                  ; preds = %if.end12
  %add25 = add i32 %add19, 1
  %call26 = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add25)
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %call26)
  %cmp28.not = icmp eq i8 %call26, 67
  br i1 %cmp28.not, label %lor.lhs.false30, label %lor.lhs.false24.if.then42_crit_edge

lor.lhs.false24.if.then42_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

lor.lhs.false30:                                  ; preds = %lor.lhs.false24
  %add31 = add i32 %add19, 2
  %call32 = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add31)
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %call32)
  %cmp34.not = icmp eq i8 %call32, 73
  br i1 %cmp34.not, label %lor.lhs.false36, label %lor.lhs.false30.if.then42_crit_edge

lor.lhs.false30.if.then42_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

lor.lhs.false36:                                  ; preds = %lor.lhs.false30
  %add37 = add i32 %add19, 3
  %call38 = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add37)
  call void @__sanitizer_cov_trace_const_cmp1(i8 82, i8 %call38)
  %cmp40.not = icmp eq i8 %call38, 82
  br i1 %cmp40.not, label %if.end43, label %lor.lhs.false36.if.then42_crit_edge

lor.lhs.false36.if.then42_crit_edge:              ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

if.then42:                                        ; preds = %lor.lhs.false36.if.then42_crit_edge, %lor.lhs.false30.if.then42_crit_edge, %lor.lhs.false24.if.then42_crit_edge, %if.end12.if.then42_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 81, ptr noundef nonnull @.str.13, i32 noundef %add19) #8
  br label %do.end

if.end43:                                         ; preds = %lor.lhs.false36
  %add44 = add i32 %add19, 20
  %call45 = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add44)
  %10 = zext i8 %call45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %call45, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb60
    i8 3, label %sw.bb61
  ]

sw.bb:                                            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %add47 = add i32 %add19, 18
  %call48 = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add47)
  %11 = ptrtoint ptr %bios_revision to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call48, ptr %bios_revision, align 4
  %add50 = add i32 %add19, 19
  %call51 = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add50)
  %12 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call51, ptr %arrayidx53, align 1
  %conv56 = zext i8 %call51 to i32
  %13 = ptrtoint ptr %bios_revision to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bios_revision, align 4
  %conv59 = zext i8 %14 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 82, ptr noundef nonnull @.str.14, i32 noundef %conv56, i32 noundef %conv59) #8
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end43
  %15 = call ptr @memset(ptr %fcode_revision, i32 0, i32 16)
  %add.i = add i32 %add19, 11
  %call.i = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add.i) #8
  %conv.i = zext i8 %call.i to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %add1.i = add i32 %add19, 10
  %call2.i = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add1.i) #8
  %conv3.i = zext i8 %call2.i to i32
  %or.i = add i32 %add19, %conv3.i
  %add4.i = add i32 %or.i, %shl.i
  %add5.i = add i32 %add4.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %add4.i)
  %cmp151.i = icmp ult i32 %add4.i, -256
  br i1 %cmp151.i, label %sw.bb60.while.body.i_crit_edge, label %sw.bb60.if.then95.i_crit_edge

sw.bb60.if.then95.i_crit_edge:                    ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then95.i

sw.bb60.while.body.i_crit_edge:                   ; preds = %sw.bb60
  br label %while.body.i

while.body.i:                                     ; preds = %if.end26.i.while.body.i_crit_edge, %sw.bb60.while.body.i_crit_edge
  %iter.0152.i = phi i32 [ %inc.i, %if.end26.i.while.body.i_crit_edge ], [ %add4.i, %sw.bb60.while.body.i_crit_edge ]
  %inc.i = add nuw i32 %iter.0152.i, 1
  %call7.i = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %inc.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %call7.i)
  %cmp9.i = icmp eq i8 %call7.i, 47
  br i1 %cmp9.i, label %if.then.i, label %while.body.i.if.end26.i_crit_edge

while.body.i.if.end26.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then.i:                                        ; preds = %while.body.i
  %add11.i = add i32 %iter.0152.i, 3
  %call12.i = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add11.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %call12.i)
  %cmp14.i = icmp eq i8 %call12.i, 47
  br i1 %cmp14.i, label %while.cond30.preheader.i, label %if.else.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %add18.i = add i32 %iter.0152.i, 4
  %call19.i = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add18.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %call19.i)
  %cmp21.i = icmp eq i8 %call19.i, 47
  %inc24.i = zext i1 %cmp21.i to i8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else.i, %while.body.i.if.end26.i_crit_edge
  %do_next.1.i = phi i8 [ 0, %while.body.i.if.end26.i_crit_edge ], [ %inc24.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %add5.i)
  %cmp.i = icmp ult i32 %inc.i, %add5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %do_next.1.i)
  %tobool.not.i = icmp eq i8 %do_next.1.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %if.end26.i.while.body.i_crit_edge, label %while.end.i

if.end26.i.while.body.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_cmp4(i32 %iter.0152.i, i32 %add4.i)
  %cmp31155.not.i = icmp ult i32 %iter.0152.i, %add4.i
  %or.cond275 = select i1 %tobool.not.i, i1 true, i1 %cmp31155.not.i
  br i1 %or.cond275, label %while.end.i.if.then95.i_crit_edge, label %while.end.i.while.body37.i.preheader_crit_edge

while.end.i.while.body37.i.preheader_crit_edge:   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body37.i.preheader

while.end.i.if.then95.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then95.i

while.cond30.preheader.i:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp4(i32 %iter.0152.i, i32 %add4.i)
  %cmp31155.not.i.old = icmp ult i32 %iter.0152.i, %add4.i
  br i1 %cmp31155.not.i.old, label %while.cond30.preheader.i.if.then95.i_crit_edge, label %while.cond30.preheader.i.while.body37.i.preheader_crit_edge

while.cond30.preheader.i.while.body37.i.preheader_crit_edge: ; preds = %while.cond30.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body37.i.preheader

while.cond30.preheader.i.if.then95.i_crit_edge:   ; preds = %while.cond30.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then95.i

while.body37.i.preheader:                         ; preds = %while.cond30.preheader.i.while.body37.i.preheader_crit_edge, %while.end.i.while.body37.i.preheader_crit_edge
  br label %while.body37.i

while.body37.i:                                   ; preds = %while.body37.i.while.body37.i_crit_edge, %while.body37.i.preheader
  %iter.1156.i = phi i32 [ %dec.i, %while.body37.i.while.body37.i_crit_edge ], [ %inc.i, %while.body37.i.preheader ]
  %dec.i = add i32 %iter.1156.i, -1
  %call38.i = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %dec.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %call38.i)
  %cmp40.i = icmp ne i8 %call38.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i, i32 %add4.i)
  %cmp31.i = icmp ugt i32 %dec.i, %add4.i
  %or.cond144.i = select i1 %cmp31.i, i1 %cmp40.i, i1 false
  br i1 %or.cond144.i, label %while.body37.i.while.body37.i_crit_edge, label %while.end45.i

while.body37.i.while.body37.i_crit_edge:          ; preds = %while.body37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body37.i

while.end45.i:                                    ; preds = %while.body37.i
  br i1 %cmp40.i, label %while.end45.i.if.then95.i_crit_edge, label %if.end48.i

while.end45.i.if.then95.i_crit_edge:              ; preds = %while.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then95.i

if.end48.i:                                       ; preds = %while.end45.i
  %sub.i = add i32 %iter.1156.i, -2
  br i1 %cmp31.i, label %if.end48.i.while.body56.i_crit_edge, label %if.end48.i.if.then95.i_crit_edge

if.end48.i.if.then95.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then95.i

if.end48.i.while.body56.i_crit_edge:              ; preds = %if.end48.i
  br label %while.body56.i

while.body56.i:                                   ; preds = %if.end71.i.while.body56.i_crit_edge, %if.end48.i.while.body56.i_crit_edge
  %iter.2161.i = phi i32 [ %dec57.i, %if.end71.i.while.body56.i_crit_edge ], [ %dec.i, %if.end48.i.while.body56.i_crit_edge ]
  %dec57.i = add i32 %iter.2161.i, -1
  %call58.i = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %dec57.i) #8
  %16 = zext i8 %call58.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %call58.i, label %if.end71.i [
    i8 32, label %while.body56.i.if.end75.i_crit_edge
    i8 13, label %while.body56.i.if.end75.i_crit_edge306
    i8 16, label %while.body56.i.if.end75.i_crit_edge307
  ]

while.body56.i.if.end75.i_crit_edge307:           ; preds = %while.body56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i

while.body56.i.if.end75.i_crit_edge306:           ; preds = %while.body56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i

while.body56.i.if.end75.i_crit_edge:              ; preds = %while.body56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i

if.end71.i:                                       ; preds = %while.body56.i
  %cmp50.i = icmp ugt i32 %dec57.i, %add4.i
  br i1 %cmp50.i, label %if.end71.i.while.body56.i_crit_edge, label %if.end71.i.if.then95.i_crit_edge

if.end71.i.if.then95.i_crit_edge:                 ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then95.i

if.end71.i.while.body56.i_crit_edge:              ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body56.i

if.end75.i:                                       ; preds = %while.body56.i.if.end75.i_crit_edge, %while.body56.i.if.end75.i_crit_edge306, %while.body56.i.if.end75.i_crit_edge307
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %iter.2161.i)
  %tobool78.not.i = icmp ne i32 %sub.i, %iter.2161.i
  %sub77.i = sub i32 %sub.i, %iter.2161.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub77.i)
  %cmp80.i = icmp ult i32 %sub77.i, 16
  %or.cond147.i = and i1 %tobool78.not.i, %cmp80.i
  br i1 %or.cond147.i, label %while.cond85.preheader.i, label %if.end75.i.if.then95.i_crit_edge

if.end75.i.if.then95.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then95.i

while.cond85.preheader.i:                         ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %iter.2161.i)
  %cmp86.not164.i = icmp ult i32 %sub.i, %iter.2161.i
  br i1 %cmp86.not164.i, label %while.cond85.preheader.i.sw.epilog_crit_edge, label %while.cond85.preheader.i.while.body88.i_crit_edge

while.cond85.preheader.i.while.body88.i_crit_edge: ; preds = %while.cond85.preheader.i
  br label %while.body88.i

while.cond85.preheader.i.sw.epilog_crit_edge:     ; preds = %while.cond85.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

while.body88.i:                                   ; preds = %while.body88.i.while.body88.i_crit_edge, %while.cond85.preheader.i.while.body88.i_crit_edge
  %vbyte.0166.i = phi ptr [ %incdec.ptr.i, %while.body88.i.while.body88.i_crit_edge ], [ %fcode_revision, %while.cond85.preheader.i.while.body88.i_crit_edge ]
  %iter.3165.i = phi i32 [ %inc90.i, %while.body88.i.while.body88.i_crit_edge ], [ %iter.2161.i, %while.cond85.preheader.i.while.body88.i_crit_edge ]
  %call89.i = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %iter.3165.i) #8
  %incdec.ptr.i = getelementptr i8, ptr %vbyte.0166.i, i32 1
  %17 = ptrtoint ptr %vbyte.0166.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call89.i, ptr %vbyte.0166.i, align 1
  %inc90.i = add i32 %iter.3165.i, 1
  %cmp86.not.i = icmp ugt i32 %inc90.i, %sub.i
  br i1 %cmp86.not.i, label %while.body88.i.sw.epilog_crit_edge, label %while.body88.i.while.body88.i_crit_edge

while.body88.i.while.body88.i_crit_edge:          ; preds = %while.body88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body88.i

while.body88.i.sw.epilog_crit_edge:               ; preds = %while.body88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then95.i:                                      ; preds = %if.end75.i.if.then95.i_crit_edge, %if.end71.i.if.then95.i_crit_edge, %if.end48.i.if.then95.i_crit_edge, %while.end45.i.if.then95.i_crit_edge, %while.cond30.preheader.i.if.then95.i_crit_edge, %while.end.i.if.then95.i_crit_edge, %sw.bb60.if.then95.i_crit_edge
  %18 = call ptr @memset(ptr %fcode_revision, i32 0, i32 16)
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %add62 = add i32 %add19, 18
  %call63 = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add62)
  %19 = ptrtoint ptr %efi_revision to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call63, ptr %efi_revision, align 2
  %add66 = add i32 %add19, 19
  %call67 = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add66)
  %20 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call67, ptr %arrayidx69, align 1
  %conv72 = zext i8 %call67 to i32
  %21 = ptrtoint ptr %efi_revision to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %efi_revision, align 2
  %conv75 = zext i8 %22 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 83, ptr noundef nonnull @.str.15, i32 noundef %conv72, i32 noundef %conv75) #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %conv46 = zext i8 %call45 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 84, ptr noundef nonnull @.str.16, i32 noundef %conv46, i32 noundef %add19) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb61, %if.then95.i, %while.body88.i.sw.epilog_crit_edge, %while.cond85.preheader.i.sw.epilog_crit_edge, %sw.bb
  %add77 = add i32 %add19, 21
  %call78 = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add77)
  %add81 = add i32 %add19, 17
  %call82 = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add81)
  %conv83 = zext i8 %call82 to i32
  %add85 = add i32 %add19, 16
  %call86 = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %add85)
  %conv87 = zext i8 %call86 to i32
  %23 = shl nuw nsw i32 %conv83, 17
  %24 = shl nuw nsw i32 %conv87, 9
  %mul = add i32 %23, %pcihdr.0
  %add89 = add i32 %mul, %24
  %tobool90.not = icmp sgt i8 %call78, -1
  br i1 %tobool90.not, label %sw.epilog.do.body_crit_edge, label %sw.epilog.do.end_crit_edge

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %sw.epilog.do.end_crit_edge, %if.then42, %if.then11
  %ret.0 = phi i32 [ 258, %if.then11 ], [ 258, %if.then42 ], [ 0, %sw.epilog.do.end_crit_edge ]
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %25 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %isp_type, align 8
  %and92 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %do.end.if.end171_crit_edge, label %if.then94

do.end.if.end171_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then94:                                        ; preds = %do.end
  %27 = call ptr @memset(ptr %fw_revision, i32 0, i32 16)
  %28 = ptrtoint ptr %mbuf to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 0, ptr %mbuf, align 1
  %flt_region_fw = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 220, i32 4
  %29 = ptrtoint ptr %flt_region_fw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flt_region_fw, align 4
  %mul97 = shl i32 %30, 2
  %add98 = add i32 %mul97, 10
  %31 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iobase.i, align 4
  %nvram.i = getelementptr inbounds %struct.device_reg_2xxx, ptr %32, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i, i16 0) #8, !srcloc !170
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %for.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %if.then94
  %tmp_buf.addr.03.i = phi ptr [ %mbuf, %if.then94 ], [ %incdec.ptr.i271, %if.end8.i.for.body.i_crit_edge ]
  %ilength.02.i = phi i32 [ 0, %if.then94 ], [ %inc10.i, %if.end8.i.for.body.i_crit_edge ]
  %saddr.addr.01.i = phi i32 [ %add98, %if.then94 ], [ %inc.i270, %if.end8.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %ilength.02.i)
  %cmp2.i = icmp eq i32 %ilength.02.i, 4
  br i1 %cmp2.i, label %if.then.i268, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i268:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nvram.i, i16 512) #8, !srcloc !170
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram.i) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i268, %for.body.i.if.end.i_crit_edge
  %call6.i = tail call fastcc zeroext i8 @qla2x00_read_flash_byte(ptr noundef %1, i32 noundef %saddr.addr.01.i) #8
  %rem.i = urem i32 %saddr.addr.01.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i269 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i269, label %if.end.i.if.end8.i_crit_edge, label %if.then7.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i.if.end8.i_crit_edge
  %36 = ptrtoint ptr %tmp_buf.addr.03.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call6.i, ptr %tmp_buf.addr.03.i, align 1
  tail call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 2304, i32 noundef 0) #8
  %call.i.i = tail call i32 @__cond_resched() #8
  %inc.i270 = add i32 %saddr.addr.01.i, 1
  %inc10.i = add nuw nsw i32 %ilength.02.i, 1
  %incdec.ptr.i271 = getelementptr i8, ptr %tmp_buf.addr.03.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc10.i, 8
  br i1 %exitcond.not.i, label %qla2x00_read_flash_data.exit, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

qla2x00_read_flash_data.exit:                     ; preds = %if.end8.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073872896, ptr noundef %vha, i32 noundef 266, ptr noundef nonnull @.str.17) #8
  tail call void @ql_dump_buffer(i32 noundef 1073872896, ptr noundef %vha, i32 noundef 267, ptr noundef nonnull %mbuf, i32 noundef 32) #8
  %37 = ptrtoint ptr %mbuf to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %mbuf, align 2
  %39 = zext i16 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.94)
  switch i16 %38, label %qla2x00_read_flash_data.exit.if.else_crit_edge [
    i16 -1, label %land.lhs.true
    i16 0, label %land.lhs.true122
  ]

qla2x00_read_flash_data.exit.if.else_crit_edge:   ; preds = %qla2x00_read_flash_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %qla2x00_read_flash_data.exit
  %arrayidx103 = getelementptr i16, ptr %mbuf, i32 1
  %40 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx103, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %41)
  %cmp105 = icmp eq i16 %41, -1
  br i1 %cmp105, label %land.lhs.true107, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true107:                                 ; preds = %land.lhs.true
  %arrayidx108 = getelementptr i16, ptr %mbuf, i32 2
  %42 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx108, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %43)
  %cmp110 = icmp eq i16 %43, -1
  br i1 %cmp110, label %land.lhs.true112, label %land.lhs.true107.if.else_crit_edge

land.lhs.true107.if.else_crit_edge:               ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true112:                                 ; preds = %land.lhs.true107
  %arrayidx113 = getelementptr i16, ptr %mbuf, i32 3
  %44 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx113, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %45)
  %cmp115 = icmp eq i16 %45, -1
  br i1 %cmp115, label %land.lhs.true112.if.then137_crit_edge, label %land.lhs.true112.if.else_crit_edge

land.lhs.true112.if.else_crit_edge:               ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true112.if.then137_crit_edge:            ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then137

land.lhs.true122:                                 ; preds = %qla2x00_read_flash_data.exit
  %arrayidx123 = getelementptr i16, ptr %mbuf, i32 1
  %46 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx123, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp125 = icmp eq i16 %47, 0
  br i1 %cmp125, label %land.lhs.true127, label %land.lhs.true122.if.else_crit_edge

land.lhs.true122.if.else_crit_edge:               ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true127:                                 ; preds = %land.lhs.true122
  %arrayidx128 = getelementptr i16, ptr %mbuf, i32 2
  %48 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx128, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp130 = icmp eq i16 %49, 0
  br i1 %cmp130, label %land.lhs.true132, label %land.lhs.true127.if.else_crit_edge

land.lhs.true127.if.else_crit_edge:               ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true132:                                 ; preds = %land.lhs.true127
  %arrayidx133 = getelementptr i16, ptr %mbuf, i32 3
  %50 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx133, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp135 = icmp eq i16 %51, 0
  br i1 %cmp135, label %land.lhs.true132.if.then137_crit_edge, label %land.lhs.true132.if.else_crit_edge

land.lhs.true132.if.else_crit_edge:               ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true132.if.then137_crit_edge:            ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then137

if.then137:                                       ; preds = %land.lhs.true132.if.then137_crit_edge, %land.lhs.true112.if.then137_crit_edge
  %52 = ptrtoint ptr %flt_region_fw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flt_region_fw, align 4
  %mul139 = shl i32 %53, 2
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 87, ptr noundef nonnull @.str.18, i32 noundef %mul139) #8
  br label %if.end171

if.else:                                          ; preds = %land.lhs.true132.if.else_crit_edge, %land.lhs.true127.if.else_crit_edge, %land.lhs.true122.if.else_crit_edge, %land.lhs.true112.if.else_crit_edge, %land.lhs.true107.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %qla2x00_read_flash_data.exit.if.else_crit_edge
  %54 = ptrtoint ptr %mbuf to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %mbuf, align 1
  %conv141 = zext i8 %55 to i32
  %shl142 = shl nuw nsw i32 %conv141, 16
  %arrayidx143 = getelementptr i8, ptr %mbuf, i32 1
  %56 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx143, align 1
  %conv144 = zext i8 %57 to i32
  %or145 = or i32 %shl142, %conv144
  %58 = ptrtoint ptr %fw_revision to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or145, ptr %fw_revision, align 8
  %arrayidx148 = getelementptr i8, ptr %mbuf, i32 2
  %59 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %60 to i32
  %shl150 = shl nuw nsw i32 %conv149, 16
  %arrayidx151 = getelementptr i8, ptr %mbuf, i32 3
  %61 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %62 to i32
  %or153 = or i32 %shl150, %conv152
  %arrayidx155 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 207, i32 1
  %63 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or153, ptr %arrayidx155, align 4
  %arrayidx156 = getelementptr i8, ptr %mbuf, i32 4
  %64 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %65 to i32
  %shl158 = shl nuw nsw i32 %conv157, 16
  %arrayidx159 = getelementptr i8, ptr %mbuf, i32 5
  %66 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx159, align 1
  %conv160 = zext i8 %67 to i32
  %or161 = or i32 %shl158, %conv160
  %arrayidx163 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 207, i32 2
  %68 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or161, ptr %arrayidx163, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 88, ptr noundef nonnull @.str.19, i32 noundef %or145, i32 noundef %or153, i32 noundef %or161) #8
  br label %if.end171

if.end171:                                        ; preds = %if.else, %if.then137, %do.end.if.end171_crit_edge
  %69 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %iobase.i, align 4
  %ctrl_status.i273 = getelementptr inbounds %struct.device_reg_2xxx, ptr %70, i32 0, i32 3
  %71 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status.i273) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %72 = and i16 %71, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctrl_status.i273, i16 %72) #8, !srcloc !170
  %73 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status.i273) #8, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %cleanup

cleanup:                                          ; preds = %if.end171, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end171 ], [ 258, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dump_buffer(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla82xx_get_flash_version(ptr noundef %vha, ptr noundef %mbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %tobool.not = icmp eq ptr %mbuf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bios_revision = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 204
  %efi_revision = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 205
  %fcode_revision = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 206
  %fw_revision = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 207
  %flt_region_boot = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 220, i32 2
  %2 = call ptr @memset(ptr %bios_revision, i32 0, i32 36)
  %3 = ptrtoint ptr %flt_region_boot to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flt_region_boot, align 4
  %shl = shl i32 %4, 2
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %arrayidx = getelementptr i8, ptr %mbuf, i32 25
  %arrayidx9 = getelementptr i8, ptr %mbuf, i32 24
  %arrayidx20 = getelementptr i8, ptr %mbuf, i32 20
  %arrayidx48 = getelementptr i8, ptr %mbuf, i32 18
  %arrayidx51 = getelementptr i8, ptr %mbuf, i32 19
  %arrayidx53 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 205, i32 1
  %arrayidx40 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 206, i32 1
  %arrayidx27 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 204, i32 1
  %arrayidx61 = getelementptr i8, ptr %mbuf, i32 21
  %arrayidx64 = getelementptr i8, ptr %mbuf, i32 17
  %arrayidx67 = getelementptr i8, ptr %mbuf, i32 16
  br label %do.body

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %if.end
  %pcihdr.0 = phi i32 [ %shl, %if.end ], [ %add70, %sw.epilog.do.body_crit_edge ]
  %5 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %isp_ops, align 4
  %read_optrom = getelementptr inbounds %struct.isp_operations, ptr %6, i32 0, i32 29
  %7 = ptrtoint ptr %read_optrom to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_optrom, align 4
  %call = tail call ptr %8(ptr noundef %vha, ptr noundef nonnull %mbuf, i32 noundef %pcihdr.0, i32 noundef 128) #8
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %mbuf, ptr noundef nonnull dereferenceable(2) @.str.20, i32 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool5.not = icmp eq i32 %bcmp, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 340, ptr noundef nonnull @.str.12) #8
  br label %do.end

if.end7:                                          ; preds = %do.body
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %shl8 = shl nuw nsw i32 %conv, 8
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %12 to i32
  %or = or i32 %shl8, %conv10
  %add = add i32 %or, %pcihdr.0
  %13 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %isp_ops, align 4
  %read_optrom12 = getelementptr inbounds %struct.isp_operations, ptr %14, i32 0, i32 29
  %15 = ptrtoint ptr %read_optrom12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_optrom12, align 4
  %call13 = tail call ptr %16(ptr noundef %vha, ptr noundef nonnull %mbuf, i32 noundef %add, i32 noundef 128) #8
  %bcmp197 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %mbuf, ptr noundef nonnull dereferenceable(4) @.str.21, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp197)
  %tobool17.not = icmp eq i32 %bcmp197, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 341, ptr noundef nonnull @.str.13, i32 noundef %add) #8
  br label %do.end

if.end19:                                         ; preds = %if.end7
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx20, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %18, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb34
    i8 3, label %sw.bb47
  ]

sw.bb:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx48, align 1
  %22 = ptrtoint ptr %bios_revision to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %bios_revision, align 4
  %23 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx51, align 1
  %25 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx27, align 1
  %conv30 = zext i8 %24 to i32
  %conv33 = zext i8 %21 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 342, ptr noundef nonnull @.str.14, i32 noundef %conv30, i32 noundef %conv33) #8
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx48, align 1
  %28 = ptrtoint ptr %fcode_revision to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %fcode_revision, align 8
  %29 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx51, align 1
  %31 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx40, align 1
  %conv43 = zext i8 %30 to i32
  %conv46 = zext i8 %27 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 343, ptr noundef nonnull @.str.22, i32 noundef %conv43, i32 noundef %conv46) #8
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx48, align 1
  %34 = ptrtoint ptr %efi_revision to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %efi_revision, align 2
  %35 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx51, align 1
  %37 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx53, align 1
  %conv56 = zext i8 %36 to i32
  %conv59 = zext i8 %33 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 344, ptr noundef nonnull @.str.15, i32 noundef %conv56, i32 noundef %conv59) #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %conv21 = zext i8 %18 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 345, ptr noundef nonnull @.str.16, i32 noundef %conv21, i32 noundef %add) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb47, %sw.bb34, %sw.bb
  %38 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx61, align 1
  %40 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %41 to i32
  %42 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %43 to i32
  %44 = shl nuw nsw i32 %conv65, 17
  %45 = shl nuw nsw i32 %conv68, 9
  %mul = or i32 %45, %44
  %add70 = add i32 %mul, %pcihdr.0
  %tobool71.not = icmp sgt i8 %39, -1
  br i1 %tobool71.not, label %sw.epilog.do.body_crit_edge, label %sw.epilog.do.end_crit_edge

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %sw.epilog.do.end_crit_edge, %if.then18, %if.then6
  %ret.0 = phi i32 [ 258, %if.then6 ], [ 258, %if.then18 ], [ 0, %sw.epilog.do.end_crit_edge ]
  %pcihdr.1 = phi i32 [ %pcihdr.0, %if.then6 ], [ %pcihdr.0, %if.then18 ], [ %add70, %sw.epilog.do.end_crit_edge ]
  %46 = call ptr @memset(ptr %fw_revision, i32 0, i32 16)
  %47 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %isp_ops, align 4
  %read_optrom75 = getelementptr inbounds %struct.isp_operations, ptr %48, i32 0, i32 29
  %49 = ptrtoint ptr %read_optrom75 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_optrom75, align 4
  %flt_region_fw = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 220, i32 4
  %51 = ptrtoint ptr %flt_region_fw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flt_region_fw, align 4
  %shl76 = shl i32 %52, 2
  %call77 = tail call ptr %50(ptr noundef %vha, ptr noundef nonnull %mbuf, i32 noundef %shl76, i32 noundef 32) #8
  %rem78 = and i32 %pcihdr.1, 3
  %add.ptr79 = getelementptr i8, ptr %mbuf, i32 %rem78
  %53 = ptrtoint ptr %add.ptr79 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr79, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %54)
  %cmp = icmp eq i8 %54, 3
  br i1 %cmp, label %land.lhs.true, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end
  %arrayidx83 = getelementptr i8, ptr %add.ptr79, i32 1
  %55 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp85 = icmp eq i8 %56, 0
  br i1 %cmp85, label %land.lhs.true87, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true87:                                  ; preds = %land.lhs.true
  %arrayidx88 = getelementptr i8, ptr %add.ptr79, i32 2
  %57 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %58)
  %cmp90 = icmp eq i8 %58, 64
  br i1 %cmp90, label %land.lhs.true92, label %land.lhs.true87.cleanup_crit_edge

land.lhs.true87.cleanup_crit_edge:                ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true92:                                  ; preds = %land.lhs.true87
  %arrayidx93 = getelementptr i8, ptr %add.ptr79, i32 3
  %59 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %60)
  %cmp95 = icmp eq i8 %60, 64
  br i1 %cmp95, label %if.then97, label %land.lhs.true92.cleanup_crit_edge

land.lhs.true92.cleanup_crit_edge:                ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then97:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx98 = getelementptr i8, ptr %add.ptr79, i32 4
  %61 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %62 to i32
  %63 = ptrtoint ptr %fw_revision to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv99, ptr %fw_revision, align 8
  %arrayidx102 = getelementptr i8, ptr %add.ptr79, i32 5
  %64 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx102, align 1
  %conv103 = zext i8 %65 to i32
  %arrayidx105 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 207, i32 1
  %66 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv103, ptr %arrayidx105, align 4
  %arrayidx106 = getelementptr i8, ptr %add.ptr79, i32 6
  %67 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %68 to i32
  %arrayidx109 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 207, i32 2
  %69 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv107, ptr %arrayidx109, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 339, ptr noundef nonnull @.str.23, i32 noundef %conv99, i32 noundef %conv103, i32 noundef %conv107) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then97, %land.lhs.true92.cleanup_crit_edge, %land.lhs.true87.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 258, %entry.cleanup_crit_edge ], [ %ret.0, %if.then97 ], [ %ret.0, %land.lhs.true92.cleanup_crit_edge ], [ %ret.0, %land.lhs.true87.cleanup_crit_edge ], [ %ret.0, %land.lhs.true.cleanup_crit_edge ], [ %ret.0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_get_flash_version(ptr noundef %vha, ptr noundef %mbuf) local_unnamed_addr #0 align 64 {
entry:
  %active_regions = alloca %struct.active_regions, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %active_regions) #8
  %2 = call ptr @memset(ptr %active_regions, i32 0, i32 5)
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %3 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %isp_type, align 8
  %5 = and i32 %4, 278528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool6.not = icmp eq ptr %mbuf, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %bios_revision = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 204
  %efi_revision = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 205
  %fcode_revision = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 206
  %fw_revision = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 207
  %flt_region_boot = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 220, i32 2
  %7 = call ptr @memset(ptr %bios_revision, i32 0, i32 36)
  %8 = ptrtoint ptr %flt_region_boot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flt_region_boot, align 4
  %10 = and i32 %4, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %if.end8.if.end41_crit_edge, label %if.then36

if.end8.if.end41_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then36:                                        ; preds = %if.end8
  call void @qla27xx_get_active_image(ptr noundef %vha, ptr noundef nonnull %active_regions) #8
  %12 = ptrtoint ptr %active_regions to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %active_regions, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp = icmp eq i8 %13, 2
  br i1 %cmp, label %if.then38, label %if.then36.if.end41_crit_edge

if.then36.if.end41_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then38:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %flt_region_boot_sec = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 220, i32 3
  %14 = ptrtoint ptr %flt_region_boot_sec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flt_region_boot_sec, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.then36.if.end41_crit_edge, %if.end8.if.end41_crit_edge
  %pcihdr.0.in = phi i32 [ %15, %if.then38 ], [ %9, %if.then36.if.end41_crit_edge ], [ %9, %if.end8.if.end41_crit_edge ]
  %pcihdr.0 = shl i32 %pcihdr.0.in, 2
  %arrayidx = getelementptr i8, ptr %mbuf, i32 25
  %arrayidx48 = getelementptr i8, ptr %mbuf, i32 24
  %arrayidx58 = getelementptr i8, ptr %mbuf, i32 20
  %arrayidx86 = getelementptr i8, ptr %mbuf, i32 18
  %arrayidx89 = getelementptr i8, ptr %mbuf, i32 19
  %arrayidx91 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 205, i32 1
  %arrayidx78 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 206, i32 1
  %arrayidx65 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 204, i32 1
  %arrayidx99 = getelementptr i8, ptr %mbuf, i32 21
  %arrayidx103 = getelementptr i8, ptr %mbuf, i32 17
  %arrayidx106 = getelementptr i8, ptr %mbuf, i32 16
  br label %do.body

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %if.end41
  %pcihdr.1 = phi i32 [ %pcihdr.0, %if.end41 ], [ %add109, %sw.epilog.do.body_crit_edge ]
  %shr = lshr exact i32 %pcihdr.1, 2
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %flash_data_off.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %17, i32 0, i32 210
  %18 = ptrtoint ptr %flash_data_off.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flash_data_off.i.i, align 4
  %add.i.i = add i32 %19, %shr
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.body
  %i.014.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %do.body ]
  %dwptr.addr.013.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ %mbuf, %do.body ]
  %faddr.addr.012.i = phi i32 [ %inc3.i, %if.end.i.for.body.i_crit_edge ], [ %add.i.i, %do.body ]
  %call1.i = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %17, i32 noundef %faddr.addr.012.i, ptr noundef %dwptr.addr.013.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.qla24xx_read_flash_data.exit_crit_edge

for.body.i.qla24xx_read_flash_data.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit

if.end.i:                                         ; preds = %for.body.i
  %20 = ptrtoint ptr %dwptr.addr.013.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dwptr.addr.013.i, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21) #8
  %23 = ptrtoint ptr %dwptr.addr.013.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dwptr.addr.013.i, align 4
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %inc3.i = add i32 %faddr.addr.012.i, 1
  %incdec.ptr.i = getelementptr i32, ptr %dwptr.addr.013.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %if.end.i.qla24xx_read_flash_data.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i.qla24xx_read_flash_data.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit

qla24xx_read_flash_data.exit:                     ; preds = %if.end.i.qla24xx_read_flash_data.exit_crit_edge, %for.body.i.qla24xx_read_flash_data.exit_crit_edge
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(2) %mbuf, ptr noundef nonnull dereferenceable(2) @.str.20, i32 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool43.not = icmp eq i32 %bcmp, 0
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %qla24xx_read_flash_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 89, ptr noundef nonnull @.str.12) #8
  br label %do.end

if.end45:                                         ; preds = %qla24xx_read_flash_data.exit
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  %conv46 = zext i8 %25 to i32
  %shl47 = shl nuw nsw i32 %conv46, 8
  %26 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %27 to i32
  %or = or i32 %shl47, %conv49
  %add = add i32 %or, %pcihdr.1
  %shr50 = lshr i32 %add, 2
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %flash_data_off.i.i314 = getelementptr inbounds %struct.qla_hw_data, ptr %29, i32 0, i32 210
  %30 = ptrtoint ptr %flash_data_off.i.i314 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flash_data_off.i.i314, align 4
  %add.i.i315 = add i32 %shr50, %31
  br label %for.body.i321

for.body.i321:                                    ; preds = %if.end.i326.for.body.i321_crit_edge, %if.end45
  %i.014.i316 = phi i32 [ %inc.i322, %if.end.i326.for.body.i321_crit_edge ], [ 0, %if.end45 ]
  %dwptr.addr.013.i317 = phi ptr [ %incdec.ptr.i324, %if.end.i326.for.body.i321_crit_edge ], [ %mbuf, %if.end45 ]
  %faddr.addr.012.i318 = phi i32 [ %inc3.i323, %if.end.i326.for.body.i321_crit_edge ], [ %add.i.i315, %if.end45 ]
  %call1.i319 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %29, i32 noundef %faddr.addr.012.i318, ptr noundef %dwptr.addr.013.i317) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i319)
  %cmp2.not.i320 = icmp eq i32 %call1.i319, 0
  br i1 %cmp2.not.i320, label %if.end.i326, label %for.body.i321.qla24xx_read_flash_data.exit328_crit_edge

for.body.i321.qla24xx_read_flash_data.exit328_crit_edge: ; preds = %for.body.i321
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit328

if.end.i326:                                      ; preds = %for.body.i321
  %32 = ptrtoint ptr %dwptr.addr.013.i317 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dwptr.addr.013.i317, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33) #8
  %35 = ptrtoint ptr %dwptr.addr.013.i317 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %dwptr.addr.013.i317, align 4
  %inc.i322 = add nuw nsw i32 %i.014.i316, 1
  %inc3.i323 = add i32 %faddr.addr.012.i318, 1
  %incdec.ptr.i324 = getelementptr i32, ptr %dwptr.addr.013.i317, i32 1
  %exitcond.not.i325 = icmp eq i32 %inc.i322, 32
  br i1 %exitcond.not.i325, label %if.end.i326.qla24xx_read_flash_data.exit328_crit_edge, label %if.end.i326.for.body.i321_crit_edge

if.end.i326.for.body.i321_crit_edge:              ; preds = %if.end.i326
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i321

if.end.i326.qla24xx_read_flash_data.exit328_crit_edge: ; preds = %if.end.i326
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit328

qla24xx_read_flash_data.exit328:                  ; preds = %if.end.i326.qla24xx_read_flash_data.exit328_crit_edge, %for.body.i321.qla24xx_read_flash_data.exit328_crit_edge
  %bcmp304 = call i32 @bcmp(ptr noundef dereferenceable(4) %mbuf, ptr noundef nonnull dereferenceable(4) @.str.21, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp304)
  %tobool55.not = icmp eq i32 %bcmp304, 0
  br i1 %tobool55.not, label %if.end57, label %if.then56

if.then56:                                        ; preds = %qla24xx_read_flash_data.exit328
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 90, ptr noundef nonnull @.str.13, i32 noundef %add) #8
  call void @ql_dump_buffer(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 89, ptr noundef %mbuf, i32 noundef 32) #8
  br label %do.end

if.end57:                                         ; preds = %qla24xx_read_flash_data.exit328
  %36 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx58, align 1
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.96)
  switch i8 %37, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb72
    i8 3, label %sw.bb85
  ]

sw.bb:                                            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx86, align 1
  %41 = ptrtoint ptr %bios_revision to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %bios_revision, align 4
  %42 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx89, align 1
  %44 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx65, align 1
  %conv68 = zext i8 %43 to i32
  %conv71 = zext i8 %40 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 91, ptr noundef nonnull @.str.14, i32 noundef %conv68, i32 noundef %conv71) #8
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx86, align 1
  %47 = ptrtoint ptr %fcode_revision to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %fcode_revision, align 8
  %48 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx89, align 1
  %50 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx78, align 1
  %conv81 = zext i8 %49 to i32
  %conv84 = zext i8 %46 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 92, ptr noundef nonnull @.str.22, i32 noundef %conv81, i32 noundef %conv84) #8
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx86, align 1
  %53 = ptrtoint ptr %efi_revision to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %efi_revision, align 2
  %54 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx89, align 1
  %56 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx91, align 1
  %conv94 = zext i8 %55 to i32
  %conv97 = zext i8 %52 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 93, ptr noundef nonnull @.str.15, i32 noundef %conv94, i32 noundef %conv97) #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %conv59 = zext i8 %37 to i32
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 94, ptr noundef nonnull @.str.16, i32 noundef %conv59, i32 noundef %add) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb85, %sw.bb72, %sw.bb
  %57 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx99, align 1
  %59 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %60 to i32
  %61 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %62 to i32
  %63 = shl nuw nsw i32 %conv104, 17
  %64 = shl nuw nsw i32 %conv107, 9
  %mul = or i32 %64, %63
  %add109 = add i32 %mul, %pcihdr.1
  %tobool110.not = icmp sgt i8 %58, -1
  br i1 %tobool110.not, label %sw.epilog.do.body_crit_edge, label %sw.epilog.do.end_crit_edge

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %sw.epilog.do.end_crit_edge, %if.then56, %if.then44
  %ret.0 = phi i32 [ 258, %if.then44 ], [ 258, %if.then56 ], [ 0, %sw.epilog.do.end_crit_edge ]
  %65 = call ptr @memset(ptr %fw_revision, i32 0, i32 16)
  %flt_region_fw = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 220, i32 4
  %66 = ptrtoint ptr %flt_region_fw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flt_region_fw, align 4
  %68 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %isp_type, align 8
  %70 = and i32 %69, 45613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %do.end.if.end144_crit_edge, label %if.then137

do.end.if.end144_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.then137:                                       ; preds = %do.end
  call void @qla27xx_get_active_image(ptr noundef %vha, ptr noundef nonnull %active_regions) #8
  %72 = ptrtoint ptr %active_regions to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %active_regions, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %73)
  %cmp140 = icmp eq i8 %73, 2
  br i1 %cmp140, label %if.then142, label %if.then137.if.end144_crit_edge

if.then137.if.end144_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.then142:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  %flt_region_fw_sec = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 220, i32 5
  %74 = ptrtoint ptr %flt_region_fw_sec to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flt_region_fw_sec, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %if.then137.if.end144_crit_edge, %do.end.if.end144_crit_edge
  %faddr.0 = phi i32 [ %75, %if.then142 ], [ %67, %if.then137.if.end144_crit_edge ], [ %67, %do.end.if.end144_crit_edge ]
  %76 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw, align 4
  %flash_data_off.i.i330 = getelementptr inbounds %struct.qla_hw_data, ptr %77, i32 0, i32 210
  %78 = ptrtoint ptr %flash_data_off.i.i330 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flash_data_off.i.i330, align 4
  %add.i.i331 = add i32 %79, %faddr.0
  %call1.i335 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %77, i32 noundef %add.i.i331, ptr noundef %mbuf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i335)
  %cmp2.not.i336 = icmp eq i32 %call1.i335, 0
  br i1 %cmp2.not.i336, label %if.end.i342, label %if.end144.qla24xx_read_flash_data.exit344_crit_edge

if.end144.qla24xx_read_flash_data.exit344_crit_edge: ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit344

if.end.i342:                                      ; preds = %if.end144
  %80 = ptrtoint ptr %mbuf to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mbuf, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81) #8
  %83 = ptrtoint ptr %mbuf to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %mbuf, align 4
  %inc3.i339 = add i32 %add.i.i331, 1
  %incdec.ptr.i340 = getelementptr i32, ptr %mbuf, i32 1
  %call1.i335.1 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %77, i32 noundef %inc3.i339, ptr noundef %incdec.ptr.i340) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i335.1)
  %cmp2.not.i336.1 = icmp eq i32 %call1.i335.1, 0
  br i1 %cmp2.not.i336.1, label %if.end.i342.1, label %if.end.i342.qla24xx_read_flash_data.exit344_crit_edge

if.end.i342.qla24xx_read_flash_data.exit344_crit_edge: ; preds = %if.end.i342
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit344

if.end.i342.1:                                    ; preds = %if.end.i342
  %84 = ptrtoint ptr %incdec.ptr.i340 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %incdec.ptr.i340, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %85) #8
  %87 = ptrtoint ptr %incdec.ptr.i340 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %incdec.ptr.i340, align 4
  %inc3.i339.1 = add i32 %add.i.i331, 2
  %incdec.ptr.i340.1 = getelementptr i32, ptr %mbuf, i32 2
  %call1.i335.2 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %77, i32 noundef %inc3.i339.1, ptr noundef %incdec.ptr.i340.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i335.2)
  %cmp2.not.i336.2 = icmp eq i32 %call1.i335.2, 0
  br i1 %cmp2.not.i336.2, label %if.end.i342.2, label %if.end.i342.1.qla24xx_read_flash_data.exit344_crit_edge

if.end.i342.1.qla24xx_read_flash_data.exit344_crit_edge: ; preds = %if.end.i342.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit344

if.end.i342.2:                                    ; preds = %if.end.i342.1
  %88 = ptrtoint ptr %incdec.ptr.i340.1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %incdec.ptr.i340.1, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89) #8
  %91 = ptrtoint ptr %incdec.ptr.i340.1 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %incdec.ptr.i340.1, align 4
  %inc3.i339.2 = add i32 %add.i.i331, 3
  %incdec.ptr.i340.2 = getelementptr i32, ptr %mbuf, i32 3
  %call1.i335.3 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %77, i32 noundef %inc3.i339.2, ptr noundef %incdec.ptr.i340.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i335.3)
  %cmp2.not.i336.3 = icmp eq i32 %call1.i335.3, 0
  br i1 %cmp2.not.i336.3, label %if.end.i342.3, label %if.end.i342.2.qla24xx_read_flash_data.exit344_crit_edge

if.end.i342.2.qla24xx_read_flash_data.exit344_crit_edge: ; preds = %if.end.i342.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit344

if.end.i342.3:                                    ; preds = %if.end.i342.2
  %92 = ptrtoint ptr %incdec.ptr.i340.2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %incdec.ptr.i340.2, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %93) #8
  %95 = ptrtoint ptr %incdec.ptr.i340.2 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %incdec.ptr.i340.2, align 4
  %inc3.i339.3 = add i32 %add.i.i331, 4
  %incdec.ptr.i340.3 = getelementptr i32, ptr %mbuf, i32 4
  %call1.i335.4 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %77, i32 noundef %inc3.i339.3, ptr noundef %incdec.ptr.i340.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i335.4)
  %cmp2.not.i336.4 = icmp eq i32 %call1.i335.4, 0
  br i1 %cmp2.not.i336.4, label %if.end.i342.4, label %if.end.i342.3.qla24xx_read_flash_data.exit344_crit_edge

if.end.i342.3.qla24xx_read_flash_data.exit344_crit_edge: ; preds = %if.end.i342.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit344

if.end.i342.4:                                    ; preds = %if.end.i342.3
  %96 = ptrtoint ptr %incdec.ptr.i340.3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %incdec.ptr.i340.3, align 4
  %98 = call i32 @llvm.bswap.i32(i32 %97) #8
  %99 = ptrtoint ptr %incdec.ptr.i340.3 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %incdec.ptr.i340.3, align 4
  %inc3.i339.4 = add i32 %add.i.i331, 5
  %incdec.ptr.i340.4 = getelementptr i32, ptr %mbuf, i32 5
  %call1.i335.5 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %77, i32 noundef %inc3.i339.4, ptr noundef %incdec.ptr.i340.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i335.5)
  %cmp2.not.i336.5 = icmp eq i32 %call1.i335.5, 0
  br i1 %cmp2.not.i336.5, label %if.end.i342.5, label %if.end.i342.4.qla24xx_read_flash_data.exit344_crit_edge

if.end.i342.4.qla24xx_read_flash_data.exit344_crit_edge: ; preds = %if.end.i342.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit344

if.end.i342.5:                                    ; preds = %if.end.i342.4
  %100 = ptrtoint ptr %incdec.ptr.i340.4 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %incdec.ptr.i340.4, align 4
  %102 = call i32 @llvm.bswap.i32(i32 %101) #8
  %103 = ptrtoint ptr %incdec.ptr.i340.4 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %incdec.ptr.i340.4, align 4
  %inc3.i339.5 = add i32 %add.i.i331, 6
  %incdec.ptr.i340.5 = getelementptr i32, ptr %mbuf, i32 6
  %call1.i335.6 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %77, i32 noundef %inc3.i339.5, ptr noundef %incdec.ptr.i340.5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i335.6)
  %cmp2.not.i336.6 = icmp eq i32 %call1.i335.6, 0
  br i1 %cmp2.not.i336.6, label %if.end.i342.6, label %if.end.i342.5.qla24xx_read_flash_data.exit344_crit_edge

if.end.i342.5.qla24xx_read_flash_data.exit344_crit_edge: ; preds = %if.end.i342.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit344

if.end.i342.6:                                    ; preds = %if.end.i342.5
  %104 = ptrtoint ptr %incdec.ptr.i340.5 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %incdec.ptr.i340.5, align 4
  %106 = call i32 @llvm.bswap.i32(i32 %105) #8
  %107 = ptrtoint ptr %incdec.ptr.i340.5 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %incdec.ptr.i340.5, align 4
  %inc3.i339.6 = add i32 %add.i.i331, 7
  %incdec.ptr.i340.6 = getelementptr i32, ptr %mbuf, i32 7
  %call1.i335.7 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %77, i32 noundef %inc3.i339.6, ptr noundef %incdec.ptr.i340.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i335.7)
  %cmp2.not.i336.7 = icmp eq i32 %call1.i335.7, 0
  br i1 %cmp2.not.i336.7, label %if.end.i342.7, label %if.end.i342.6.qla24xx_read_flash_data.exit344_crit_edge

if.end.i342.6.qla24xx_read_flash_data.exit344_crit_edge: ; preds = %if.end.i342.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit344

if.end.i342.7:                                    ; preds = %if.end.i342.6
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %incdec.ptr.i340.6 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %incdec.ptr.i340.6, align 4
  %110 = call i32 @llvm.bswap.i32(i32 %109) #8
  %111 = ptrtoint ptr %incdec.ptr.i340.6 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %incdec.ptr.i340.6, align 4
  br label %qla24xx_read_flash_data.exit344

qla24xx_read_flash_data.exit344:                  ; preds = %if.end.i342.7, %if.end.i342.6.qla24xx_read_flash_data.exit344_crit_edge, %if.end.i342.5.qla24xx_read_flash_data.exit344_crit_edge, %if.end.i342.4.qla24xx_read_flash_data.exit344_crit_edge, %if.end.i342.3.qla24xx_read_flash_data.exit344_crit_edge, %if.end.i342.2.qla24xx_read_flash_data.exit344_crit_edge, %if.end.i342.1.qla24xx_read_flash_data.exit344_crit_edge, %if.end.i342.qla24xx_read_flash_data.exit344_crit_edge, %if.end144.qla24xx_read_flash_data.exit344_crit_edge
  %call146 = call zeroext i1 @qla24xx_risc_firmware_invalid(ptr noundef %mbuf) #8
  br i1 %call146, label %if.then147, label %for.body.preheader

for.body.preheader:                               ; preds = %qla24xx_read_flash_data.exit344
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx106, align 4
  %114 = ptrtoint ptr %fw_revision to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %fw_revision, align 4
  %115 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx58, align 4
  %arrayidx155.1 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 207, i32 1
  %117 = ptrtoint ptr %arrayidx155.1 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx155.1, align 4
  %118 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx48, align 4
  %arrayidx155.2 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 207, i32 2
  %120 = ptrtoint ptr %arrayidx155.2 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %arrayidx155.2, align 4
  %arrayidx153.3 = getelementptr i32, ptr %mbuf, i32 7
  %121 = ptrtoint ptr %arrayidx153.3 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx153.3, align 4
  %arrayidx155.3 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 207, i32 3
  %123 = ptrtoint ptr %arrayidx155.3 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %arrayidx155.3, align 4
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 96, ptr noundef nonnull @.str.24, i32 noundef %113, i32 noundef %116, i32 noundef %119, i32 noundef %122) #8
  br label %if.end164

if.then147:                                       ; preds = %qla24xx_read_flash_data.exit344
  call void @__sanitizer_cov_trace_pc() #10
  %124 = ptrtoint ptr %flt_region_fw to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flt_region_fw, align 4
  %mul149 = shl i32 %125, 2
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 95, ptr noundef nonnull @.str.18, i32 noundef %mul149) #8
  call void @ql_dump_buffer(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 95, ptr noundef %mbuf, i32 noundef 32) #8
  br label %if.end164

if.end164:                                        ; preds = %if.then147, %for.body.preheader
  %126 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %isp_type, align 8
  %and167 = and i32 %127, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.end164.cleanup_crit_edge, label %if.end170

if.end164.cleanup_crit_edge:                      ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end170:                                        ; preds = %if.end164
  %gold_fw_version = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 208
  %128 = call ptr @memset(ptr %gold_fw_version, i32 0, i32 16)
  %flt_region_gold_fw = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 220, i32 13
  %129 = ptrtoint ptr %flt_region_gold_fw to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %flt_region_gold_fw, align 4
  %131 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hw, align 4
  %flash_data_off.i.i346 = getelementptr inbounds %struct.qla_hw_data, ptr %132, i32 0, i32 210
  %133 = ptrtoint ptr %flash_data_off.i.i346 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %flash_data_off.i.i346, align 4
  %add.i.i347 = add i32 %134, %130
  %call1.i351 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %132, i32 noundef %add.i.i347, ptr noundef %mbuf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i351)
  %cmp2.not.i352 = icmp eq i32 %call1.i351, 0
  br i1 %cmp2.not.i352, label %if.end.i358, label %if.end170.qla24xx_read_flash_data.exit360_crit_edge

if.end170.qla24xx_read_flash_data.exit360_crit_edge: ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit360

if.end.i358:                                      ; preds = %if.end170
  %135 = ptrtoint ptr %mbuf to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %mbuf, align 4
  %137 = call i32 @llvm.bswap.i32(i32 %136) #8
  %138 = ptrtoint ptr %mbuf to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %mbuf, align 4
  %inc3.i355 = add i32 %add.i.i347, 1
  %incdec.ptr.i356 = getelementptr i32, ptr %mbuf, i32 1
  %call1.i351.1 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %132, i32 noundef %inc3.i355, ptr noundef %incdec.ptr.i356) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i351.1)
  %cmp2.not.i352.1 = icmp eq i32 %call1.i351.1, 0
  br i1 %cmp2.not.i352.1, label %if.end.i358.1, label %if.end.i358.qla24xx_read_flash_data.exit360_crit_edge

if.end.i358.qla24xx_read_flash_data.exit360_crit_edge: ; preds = %if.end.i358
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit360

if.end.i358.1:                                    ; preds = %if.end.i358
  %139 = ptrtoint ptr %incdec.ptr.i356 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %incdec.ptr.i356, align 4
  %141 = call i32 @llvm.bswap.i32(i32 %140) #8
  %142 = ptrtoint ptr %incdec.ptr.i356 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %incdec.ptr.i356, align 4
  %inc3.i355.1 = add i32 %add.i.i347, 2
  %incdec.ptr.i356.1 = getelementptr i32, ptr %mbuf, i32 2
  %call1.i351.2 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %132, i32 noundef %inc3.i355.1, ptr noundef %incdec.ptr.i356.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i351.2)
  %cmp2.not.i352.2 = icmp eq i32 %call1.i351.2, 0
  br i1 %cmp2.not.i352.2, label %if.end.i358.2, label %if.end.i358.1.qla24xx_read_flash_data.exit360_crit_edge

if.end.i358.1.qla24xx_read_flash_data.exit360_crit_edge: ; preds = %if.end.i358.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit360

if.end.i358.2:                                    ; preds = %if.end.i358.1
  %143 = ptrtoint ptr %incdec.ptr.i356.1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %incdec.ptr.i356.1, align 4
  %145 = call i32 @llvm.bswap.i32(i32 %144) #8
  %146 = ptrtoint ptr %incdec.ptr.i356.1 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %incdec.ptr.i356.1, align 4
  %inc3.i355.2 = add i32 %add.i.i347, 3
  %incdec.ptr.i356.2 = getelementptr i32, ptr %mbuf, i32 3
  %call1.i351.3 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %132, i32 noundef %inc3.i355.2, ptr noundef %incdec.ptr.i356.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i351.3)
  %cmp2.not.i352.3 = icmp eq i32 %call1.i351.3, 0
  br i1 %cmp2.not.i352.3, label %if.end.i358.3, label %if.end.i358.2.qla24xx_read_flash_data.exit360_crit_edge

if.end.i358.2.qla24xx_read_flash_data.exit360_crit_edge: ; preds = %if.end.i358.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit360

if.end.i358.3:                                    ; preds = %if.end.i358.2
  %147 = ptrtoint ptr %incdec.ptr.i356.2 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %incdec.ptr.i356.2, align 4
  %149 = call i32 @llvm.bswap.i32(i32 %148) #8
  %150 = ptrtoint ptr %incdec.ptr.i356.2 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %incdec.ptr.i356.2, align 4
  %inc3.i355.3 = add i32 %add.i.i347, 4
  %incdec.ptr.i356.3 = getelementptr i32, ptr %mbuf, i32 4
  %call1.i351.4 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %132, i32 noundef %inc3.i355.3, ptr noundef %incdec.ptr.i356.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i351.4)
  %cmp2.not.i352.4 = icmp eq i32 %call1.i351.4, 0
  br i1 %cmp2.not.i352.4, label %if.end.i358.4, label %if.end.i358.3.qla24xx_read_flash_data.exit360_crit_edge

if.end.i358.3.qla24xx_read_flash_data.exit360_crit_edge: ; preds = %if.end.i358.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit360

if.end.i358.4:                                    ; preds = %if.end.i358.3
  %151 = ptrtoint ptr %incdec.ptr.i356.3 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %incdec.ptr.i356.3, align 4
  %153 = call i32 @llvm.bswap.i32(i32 %152) #8
  %154 = ptrtoint ptr %incdec.ptr.i356.3 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %incdec.ptr.i356.3, align 4
  %inc3.i355.4 = add i32 %add.i.i347, 5
  %incdec.ptr.i356.4 = getelementptr i32, ptr %mbuf, i32 5
  %call1.i351.5 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %132, i32 noundef %inc3.i355.4, ptr noundef %incdec.ptr.i356.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i351.5)
  %cmp2.not.i352.5 = icmp eq i32 %call1.i351.5, 0
  br i1 %cmp2.not.i352.5, label %if.end.i358.5, label %if.end.i358.4.qla24xx_read_flash_data.exit360_crit_edge

if.end.i358.4.qla24xx_read_flash_data.exit360_crit_edge: ; preds = %if.end.i358.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit360

if.end.i358.5:                                    ; preds = %if.end.i358.4
  %155 = ptrtoint ptr %incdec.ptr.i356.4 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %incdec.ptr.i356.4, align 4
  %157 = call i32 @llvm.bswap.i32(i32 %156) #8
  %158 = ptrtoint ptr %incdec.ptr.i356.4 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %incdec.ptr.i356.4, align 4
  %inc3.i355.5 = add i32 %add.i.i347, 6
  %incdec.ptr.i356.5 = getelementptr i32, ptr %mbuf, i32 6
  %call1.i351.6 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %132, i32 noundef %inc3.i355.5, ptr noundef %incdec.ptr.i356.5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i351.6)
  %cmp2.not.i352.6 = icmp eq i32 %call1.i351.6, 0
  br i1 %cmp2.not.i352.6, label %if.end.i358.6, label %if.end.i358.5.qla24xx_read_flash_data.exit360_crit_edge

if.end.i358.5.qla24xx_read_flash_data.exit360_crit_edge: ; preds = %if.end.i358.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit360

if.end.i358.6:                                    ; preds = %if.end.i358.5
  %159 = ptrtoint ptr %incdec.ptr.i356.5 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %incdec.ptr.i356.5, align 4
  %161 = call i32 @llvm.bswap.i32(i32 %160) #8
  %162 = ptrtoint ptr %incdec.ptr.i356.5 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %incdec.ptr.i356.5, align 4
  %inc3.i355.6 = add i32 %add.i.i347, 7
  %incdec.ptr.i356.6 = getelementptr i32, ptr %mbuf, i32 7
  %call1.i351.7 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %132, i32 noundef %inc3.i355.6, ptr noundef %incdec.ptr.i356.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i351.7)
  %cmp2.not.i352.7 = icmp eq i32 %call1.i351.7, 0
  br i1 %cmp2.not.i352.7, label %if.end.i358.7, label %if.end.i358.6.qla24xx_read_flash_data.exit360_crit_edge

if.end.i358.6.qla24xx_read_flash_data.exit360_crit_edge: ; preds = %if.end.i358.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla24xx_read_flash_data.exit360

if.end.i358.7:                                    ; preds = %if.end.i358.6
  call void @__sanitizer_cov_trace_pc() #10
  %163 = ptrtoint ptr %incdec.ptr.i356.6 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %incdec.ptr.i356.6, align 4
  %165 = call i32 @llvm.bswap.i32(i32 %164) #8
  %166 = ptrtoint ptr %incdec.ptr.i356.6 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %incdec.ptr.i356.6, align 4
  br label %qla24xx_read_flash_data.exit360

qla24xx_read_flash_data.exit360:                  ; preds = %if.end.i358.7, %if.end.i358.6.qla24xx_read_flash_data.exit360_crit_edge, %if.end.i358.5.qla24xx_read_flash_data.exit360_crit_edge, %if.end.i358.4.qla24xx_read_flash_data.exit360_crit_edge, %if.end.i358.3.qla24xx_read_flash_data.exit360_crit_edge, %if.end.i358.2.qla24xx_read_flash_data.exit360_crit_edge, %if.end.i358.1.qla24xx_read_flash_data.exit360_crit_edge, %if.end.i358.qla24xx_read_flash_data.exit360_crit_edge, %if.end170.qla24xx_read_flash_data.exit360_crit_edge
  %call174 = call zeroext i1 @qla24xx_risc_firmware_invalid(ptr noundef %mbuf) #8
  br i1 %call174, label %if.then175, label %for.body180.preheader

for.body180.preheader:                            ; preds = %qla24xx_read_flash_data.exit360
  call void @__sanitizer_cov_trace_pc() #10
  %167 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx106, align 4
  %169 = ptrtoint ptr %gold_fw_version to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %gold_fw_version, align 4
  %170 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx58, align 4
  %arrayidx184.1 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 208, i32 1
  %172 = ptrtoint ptr %arrayidx184.1 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %arrayidx184.1, align 4
  %173 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx48, align 4
  %arrayidx184.2 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 208, i32 2
  %175 = ptrtoint ptr %arrayidx184.2 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %arrayidx184.2, align 4
  %arrayidx182.3 = getelementptr i32, ptr %mbuf, i32 7
  %176 = ptrtoint ptr %arrayidx182.3 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx182.3, align 4
  %arrayidx184.3 = getelementptr %struct.qla_hw_data, ptr %1, i32 0, i32 208, i32 3
  %178 = ptrtoint ptr %arrayidx184.3 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %arrayidx184.3, align 4
  br label %cleanup

if.then175:                                       ; preds = %qla24xx_read_flash_data.exit360
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 86, ptr noundef nonnull @.str.25, i32 noundef %130) #8
  call void @ql_dump_buffer(i32 noundef 1073741824, ptr noundef %vha, i32 noundef 86, ptr noundef %mbuf, i32 noundef 32) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then175, %for.body180.preheader, %if.end164.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.then175 ], [ 0, %entry.cleanup_crit_edge ], [ 258, %if.end.cleanup_crit_edge ], [ %ret.0, %if.end164.cleanup_crit_edge ], [ %ret.0, %for.body180.preheader ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %active_regions) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla27xx_get_active_image(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qla24xx_risc_firmware_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2xxx_get_vpd_field(ptr nocapture noundef readonly %vha, ptr nocapture noundef readonly %key, ptr noundef %str, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %vpd = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %vpd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vpd, align 32
  %vpd_size = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 62
  %4 = ptrtoint ptr %vpd_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vpd_size, align 4
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %device_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 55
  %6 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device_type, align 4
  %and = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %cmp.not.i = icmp ult ptr %3, %add.ptr
  %or.cond = select i1 %tobool.not, i1 %cmp.not.i, i1 false
  br i1 %or.cond, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %9)
  %cmp1.not.i = icmp eq i8 %9, -126
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %arrayidx.i = getelementptr i8, ptr %3, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv3.i = zext i8 %11 to i32
  %add.i = add nuw nsw i32 %conv3.i, 3
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add.i
  %cmp4.not.i = icmp ult ptr %add.ptr.i, %add.ptr
  br i1 %cmp4.not.i, label %lor.lhs.false6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false6.i:                                 ; preds = %if.end.i
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %13)
  %cmp8.not.i = icmp eq i8 %13, -112
  br i1 %cmp8.not.i, label %if.end11.i, label %lor.lhs.false6.i.cleanup_crit_edge

lor.lhs.false6.i.cleanup_crit_edge:               ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11.i:                                       ; preds = %lor.lhs.false6.i
  %arrayidx12.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %14 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %15 to i32
  %add14.i = add nuw nsw i32 %conv13.i, 3
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i, i32 %add14.i
  %cmp16.not.i = icmp ult ptr %add.ptr15.i, %add.ptr
  br i1 %cmp16.not.i, label %qla2xxx_is_vpd_valid.exit, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

qla2xxx_is_vpd_valid.exit:                        ; preds = %if.end11.i
  %16 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 120, i8 %17)
  %cmp20.not.i.not = icmp eq i8 %17, 120
  br i1 %cmp20.not.i.not, label %qla2xxx_is_vpd_valid.exit.land.rhs_crit_edge, label %qla2xxx_is_vpd_valid.exit.cleanup_crit_edge

qla2xxx_is_vpd_valid.exit.cleanup_crit_edge:      ; preds = %qla2xxx_is_vpd_valid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

qla2xxx_is_vpd_valid.exit.land.rhs_crit_edge:     ; preds = %qla2xxx_is_vpd_valid.exit
  br label %land.rhs

land.rhs:                                         ; preds = %if.end16.land.rhs_crit_edge, %qla2xxx_is_vpd_valid.exit.land.rhs_crit_edge
  %len.072 = phi i32 [ %cond.le, %if.end16.land.rhs_crit_edge ], [ 0, %qla2xxx_is_vpd_valid.exit.land.rhs_crit_edge ]
  %pos.071 = phi ptr [ %add.ptr26, %if.end16.land.rhs_crit_edge ], [ %3, %qla2xxx_is_vpd_valid.exit.land.rhs_crit_edge ]
  %18 = ptrtoint ptr %pos.071 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pos.071, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %19, label %cond.false [
    i8 120, label %land.rhs.while.end_crit_edge
    i8 -126, label %land.rhs.cond.end_crit_edge
  ]

land.rhs.cond.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cond.false:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.rhs.cond.end_crit_edge
  %.sink = phi i32 [ 2, %cond.false ], [ 1, %land.rhs.cond.end_crit_edge ]
  %arrayidx10 = getelementptr i8, ptr %pos.071, i32 %.sink
  %21 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %21)
  %cond.in = load i8, ptr %arrayidx10, align 1
  %call12 = tail call i32 @strlen(ptr noundef %key) #13
  %call13 = tail call i32 @strncmp(ptr noundef %pos.071, ptr noundef %key, i32 noundef %call12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %cond.le = zext i8 %cond.in to i32
  br i1 %tobool14.not, label %while.end.loopexit.split.loop.exit94, label %if.end16

if.end16:                                         ; preds = %cond.end
  %22 = and i8 %19, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %22)
  %switch = icmp eq i8 %22, -112
  %spec.select.idx = select i1 %switch, i32 0, i32 %cond.le
  %spec.select = getelementptr i8, ptr %pos.071, i32 3
  %add.ptr26 = getelementptr i8, ptr %spec.select, i32 %spec.select.idx
  %cmp = icmp ult ptr %add.ptr26, %add.ptr
  br i1 %cmp, label %if.end16.land.rhs_crit_edge, label %while.end.loopexit.split.loop.exit

if.end16.land.rhs_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.end.loopexit.split.loop.exit:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %cond.le85 = zext i8 %cond.in to i32
  br label %while.end

while.end.loopexit.split.loop.exit94:             ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %cond.le.le = zext i8 %cond.in to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit.split.loop.exit94, %while.end.loopexit.split.loop.exit, %land.rhs.while.end_crit_edge
  %pos.0.lcssa = phi ptr [ %add.ptr26, %while.end.loopexit.split.loop.exit ], [ %pos.071, %land.rhs.while.end_crit_edge ], [ %pos.071, %while.end.loopexit.split.loop.exit94 ]
  %len.1 = phi i32 [ %cond.le85, %while.end.loopexit.split.loop.exit ], [ %cond.le.le, %while.end.loopexit.split.loop.exit94 ], [ %len.072, %land.rhs.while.end_crit_edge ]
  %idx.neg = sub nsw i32 0, %len.1
  %add.ptr27 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %cmp28 = icmp ult ptr %pos.0.lcssa, %add.ptr27
  br i1 %cmp28, label %land.lhs.true30, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true30:                                  ; preds = %while.end
  %23 = ptrtoint ptr %pos.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pos.0.lcssa, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 120, i8 %24)
  %cmp32.not = icmp eq i8 %24, 120
  br i1 %cmp32.not, label %land.lhs.true30.cleanup_crit_edge, label %if.then34

land.lhs.true30.cleanup_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then34:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr35 = getelementptr i8, ptr %pos.0.lcssa, i32 3
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.26, i32 noundef %len.1, ptr noundef %add.ptr35) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %land.lhs.true30.cleanup_crit_edge, %while.end.cleanup_crit_edge, %qla2xxx_is_vpd_valid.exit.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %lor.lhs.false6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %if.then34 ], [ 0, %qla2xxx_is_vpd_valid.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true30.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %lor.lhs.false6.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla24xx_read_fcp_prio_cfg(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %fcp_prio_cfg = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 238
  %2 = ptrtoint ptr %fcp_prio_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcp_prio_cfg, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call noalias ptr @vmalloc(i32 noundef 32768) #12
  %4 = ptrtoint ptr %fcp_prio_cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %fcp_prio_cfg, align 4
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 213, ptr noundef nonnull @.str.27, i32 noundef 32768) #8
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %5 = ptrtoint ptr %fcp_prio_cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fcp_prio_cfg, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 32768)
  %flt_region_fcp_prio = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 220, i32 14
  %8 = ptrtoint ptr %flt_region_fcp_prio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flt_region_fcp_prio, align 4
  %isp_ops = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 234
  %10 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %isp_ops, align 4
  %read_optrom = getelementptr inbounds %struct.isp_operations, ptr %11, i32 0, i32 29
  %12 = ptrtoint ptr %read_optrom to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_optrom, align 4
  %14 = load ptr, ptr %fcp_prio_cfg, align 4
  %shl = shl i32 %9, 2
  %call8 = tail call ptr %13(ptr noundef %vha, ptr noundef %14, i32 noundef %shl, i32 noundef 16) #8
  %15 = ptrtoint ptr %fcp_prio_cfg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fcp_prio_cfg, align 4
  %call10 = tail call i32 @qla24xx_fcp_prio_cfg_valid(ptr noundef %vha, ptr noundef %16, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end5.fail_crit_edge, label %if.end13

if.end5.fail_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end13:                                         ; preds = %if.end5
  %17 = ptrtoint ptr %fcp_prio_cfg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fcp_prio_cfg, align 4
  %num_entries = getelementptr inbounds %struct.qla_fcp_prio_cfg, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %num_entries to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_entries, align 2
  %21 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %isp_ops, align 4
  %read_optrom16 = getelementptr inbounds %struct.isp_operations, ptr %22, i32 0, i32 29
  %23 = ptrtoint ptr %read_optrom16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_optrom16, align 4
  %entry18 = getelementptr inbounds %struct.qla_fcp_prio_cfg, ptr %18, i32 0, i32 8
  %shl19 = add i32 %shl, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %20)
  %cmp = icmp ult i16 %20, 1024
  %conv = zext i16 %20 to i32
  %mul = shl nuw nsw i32 %conv, 5
  %cond = select i1 %cmp, i32 %mul, i32 32752
  %call21 = tail call ptr %24(ptr noundef %vha, ptr noundef %entry18, i32 noundef %shl19, i32 noundef %cond) #8
  %25 = ptrtoint ptr %fcp_prio_cfg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fcp_prio_cfg, align 4
  %call23 = tail call i32 @qla24xx_fcp_prio_cfg_valid(ptr noundef %vha, ptr noundef %26, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end13.fail_crit_edge, label %if.end26

if.end13.fail_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end26:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load = load volatile i32, ptr %flags, align 8
  %bf.set = or i32 %bf.load, 2048
  store volatile i32 %bf.set, ptr %flags, align 8
  br label %cleanup

fail:                                             ; preds = %if.end13.fail_crit_edge, %if.end5.fail_crit_edge
  %28 = ptrtoint ptr %fcp_prio_cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fcp_prio_cfg, align 4
  tail call void @vfree(ptr noundef %29) #8
  %30 = ptrtoint ptr %fcp_prio_cfg to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %fcp_prio_cfg, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end26, %if.then4
  %retval.0 = phi i32 [ 0, %if.end26 ], [ 258, %fail ], [ 258, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_fcp_prio_cfg_valid(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_wake_dpc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_wait_for_chip_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla81xx_fac_semaphore_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla24xx_unprotect_flash(ptr noundef %vha) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load volatile i32, ptr %flags, align 8
  %5 = and i32 %bf.load, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @qla81xx_fac_do_write_enable(ptr noundef %vha, i32 noundef 1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl_status = getelementptr inbounds %struct.device_reg_24xx, ptr %3, i32 0, i32 2
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  %7 = or i32 %6, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_status, i32 %7) #8, !srcloc !166
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  %fdt_wrt_disable = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 213
  %9 = ptrtoint ptr %fdt_wrt_disable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fdt_wrt_disable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %flash_conf_off.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 209
  %11 = ptrtoint ptr %flash_conf_off.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flash_conf_off.i, align 8
  %add.i = add i32 %12, 257
  %call9 = tail call fastcc i32 @qla24xx_write_flash_dword(ptr noundef %1, i32 noundef %add.i, i32 noundef 0)
  %13 = ptrtoint ptr %flash_conf_off.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flash_conf_off.i, align 8
  %add.i23 = add i32 %14, 257
  %call11 = tail call fastcc i32 @qla24xx_write_flash_dword(ptr noundef %1, i32 noundef %add.i23, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla24xx_protect_flash(ptr noundef %vha) unnamed_addr #0 align 64 {
entry:
  %dword = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dword) #8
  %4 = ptrtoint ptr %dword to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %dword, align 4, !annotation !181
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load volatile i32, ptr %flags, align 8
  %6 = and i32 %bf.load, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @qla81xx_fac_do_write_enable(ptr noundef %vha, i32 noundef 0) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fdt_wrt_disable = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 213
  %7 = ptrtoint ptr %fdt_wrt_disable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fdt_wrt_disable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not = icmp eq i32 %8, 0
  br i1 %tobool1.not, label %if.end.skip_wrt_protect_crit_edge, label %if.end3

if.end.skip_wrt_protect_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_wrt_protect

if.end3:                                          ; preds = %if.end
  %flash_conf_off.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 209
  %9 = ptrtoint ptr %flash_conf_off.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flash_conf_off.i, align 8
  %add.i = add i32 %10, 257
  %call6 = tail call fastcc i32 @qla24xx_write_flash_dword(ptr noundef %1, i32 noundef %add.i, i32 noundef %8)
  %11 = ptrtoint ptr %flash_conf_off.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flash_conf_off.i, align 8
  %add.i34 = add i32 %12, 5
  br label %while.body

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %if.end3
  %dec35 = phi i32 [ 299, %if.end3 ], [ %dec, %if.end15.while.body_crit_edge ]
  %call9 = call fastcc i32 @qla24xx_read_flash_dword(ptr noundef %1, i32 noundef %add.i34, ptr noundef nonnull %dword)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %while.body.if.end15_crit_edge

while.body.if.end15_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %while.body
  %13 = ptrtoint ptr %dword to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dword, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then11.skip_wrt_protect_crit_edge, label %if.then11.if.end15_crit_edge

if.then11.if.end15_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11.skip_wrt_protect_crit_edge:             ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_wrt_protect

if.end15:                                         ; preds = %if.then11.if.end15_crit_edge, %while.body.if.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #8
  %dec = add nsw i32 %dec35, -1
  %tobool8.not = icmp eq i32 %dec35, 0
  br i1 %tobool8.not, label %if.end15.skip_wrt_protect_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end15.skip_wrt_protect_crit_edge:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_wrt_protect

skip_wrt_protect:                                 ; preds = %if.end15.skip_wrt_protect_crit_edge, %if.then11.skip_wrt_protect_crit_edge, %if.end.skip_wrt_protect_crit_edge
  %ctrl_status = getelementptr inbounds %struct.device_reg_24xx, ptr %3, i32 0, i32 2
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  %17 = and i32 %16, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_status, i32 %17) #8, !srcloc !166
  br label %cleanup

cleanup:                                          ; preds = %skip_wrt_protect, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %skip_wrt_protect ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dword) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2xxx_write_remote_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla28xx_secure_flash_update(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_load_ram(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_wait_for_hba_online(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla81xx_fac_do_write_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla81xx_fac_erase_sector(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 1122, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 1132, i32 7}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 1144, i32 7}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 1174, i32 7}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 1183, i32 9}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 1484, i32 8}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 1639, i32 7}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 1704, i32 7}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2592, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3024, i32 7}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3041, i32 8}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3045, i32 8}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3189, i32 8}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3206, i32 8}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3221, i32 8}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3236, i32 8}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3241, i32 8}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3263, i32 7}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3273, i32 8}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3281, i32 8}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3317, i32 21}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3332, i32 21}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3356, i32 8}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3393, i32 7}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3521, i32 7}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3537, i32 7}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3590, i32 31}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 3606, i32 8}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 470, i32 6}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 549, i32 36}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 549, i32 43}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 610, i32 24}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 619, i32 7}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 631, i32 6}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 639, i32 37}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 693, i32 7}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 704, i32 7}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 715, i32 7}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 721, i32 8}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 935, i32 6}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 949, i32 36}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 949, i32 43}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 962, i32 23}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 969, i32 7}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 1034, i32 6}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 1065, i32 6}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 355, i32 9}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 512, i32 6}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2703, i32 7}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2713, i32 7}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2778, i32 16}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2789, i32 8}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2801, i32 7}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2811, i32 7}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2816, i32 6}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2820, i32 36}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2830, i32 8}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2834, i32 9}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2848, i32 8}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2854, i32 9}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2859, i32 8}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2866, i32 9}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2873, i32 8}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2884, i32 8}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2896, i32 8}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2903, i32 9}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2925, i32 7}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2930, i32 8}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2943, i32 6}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2948, i32 7}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2960, i32 8}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 2644, i32 7}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 1298, i32 7}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 1315, i32 9}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 1341, i32 8}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 1351, i32 8}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 1359, i32 8}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/qla2xxx/qla_sup.c", i32 1369, i32 7}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{i64 2156276300}
!166 = !{i64 5217574}
!167 = !{i64 5217992}
!168 = !{i64 2156273856}
!169 = !{i64 2156275764}
!170 = !{i64 5216954}
!171 = !{i64 5217154}
!172 = !{i64 2156273253}
!173 = !{i64 2156926449}
!174 = !{i64 2156927719}
!175 = !{i64 2156928371}
!176 = !{i64 2156929332}
!177 = !{i64 2156931358}
!178 = !{i64 2156932628}
!179 = !{i64 2156933280}
!180 = !{i64 2156934241}
!181 = !{!"auto-init"}
!182 = !{i64 2156944153}
!183 = !{i64 2156945790}
!184 = !{i64 2156945874}
!185 = !{i64 2156946103}
!186 = !{i64 2156945945}
!187 = !{i64 2156947413}
!188 = !{i64 2156851394}
!189 = !{i64 2156851623}
!190 = !{i64 2156851465}
!191 = !{i64 2156950370}
!192 = !{i64 2156948402}
!193 = !{i64 2156949405}
