; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla2xxx/qla_nx2.c_pt.bc'
source_filename = "../drivers/scsi/qla2xxx/qla_nx2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.qla_hw_data = type { ptr, ptr, %struct.anon.79, i16, i16, [108 x i8], %struct.spinlock, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i16, i8, ptr, ptr, ptr, [8 x i32], [8 x i32], [8 x i32], i8, i8, i8, i8, ptr, ptr, i16, i16, i8, i8, i8, %struct.atomic_t, i8, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i16, i16, ptr, i16, i16, ptr, i16, i8, i8, i16, i32, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i8, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i64, i8, i8, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, %struct.fc_els_flogi, ptr, [32 x i16], [32 x i32], [8 x i32], ptr, ptr, i32, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i32, i32, %struct.mutex, i16, i16, i16, i16, i16, [2 x i16], i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, [16 x i16], [4 x i8], [4 x i16], [3 x i8], [3 x i8], i32, [3 x i8], [3 x i8], [2 x %struct.fwdt], ptr, i32, i32, i8, i32, i32, ptr, i32, i8, i32, i32, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, [8 x i16], i64, i64, %struct.mutex, i32, i16, [4 x i16], [17 x i8], [80 x i8], [17 x i8], ptr, i32, i32, i32, i32, %struct.mutex, [2 x i8], [2 x i8], [16 x i8], [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.161, i8, i16, i8, i16, i16, ptr, %struct.list_head, [8 x i32], i16, i16, i16, i32, ptr, ptr, ptr, %struct.work_struct, %struct.qlfc_fw, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rwlock_t, i16, i32, ptr, %struct.qla82xx_legacy_intr_set, i16, i16, %struct.list_head, i8, i32, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mr_data_fx00, i32, [36 x i8], %struct.qlt_hw_data, i32, i32, i16, i16, ptr, %struct.anon.168, i64, i64, i64, i64, i64, %struct.atomic_t, i16, i8, %struct.atomic_t, i16, %struct.qla_hw_data_stat, i32, ptr, %struct.btree_head32, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.els_reject, i8 }
%struct.anon.79 = type { i56 }
%struct.fc_els_flogi = type <{ i8, [3 x i8], %struct.fc_els_csp, i64, i64, [4 x %struct.fc_els_cssp], [16 x i8] }>
%struct.fc_els_csp = type { i8, i8, i16, i16, i16, %union.anon.157, i32 }
%union.anon.157 = type { %struct.anon.159 }
%struct.anon.159 = type { i32 }
%struct.fc_els_cssp = type { i16, i16, i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fwdt = type { ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.161 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlfc_fw = type { ptr, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.qla82xx_legacy_intr_set = type { i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mr_data_fx00 = type { [64 x i8], [32 x i8], [16 x i8], [16 x i8], [16 x i8], [32 x i8], %struct.fc_port, i8, i8, i8, i32, i16, i8, i16, i32, i32, i8, i8, i8 }
%struct.fc_port = type { %struct.list_head, ptr, [3 x i8], i8, [8 x i8], [8 x i8], %union.port_id_t, i16, i16, %struct.completion, i32, i32, ptr, i8, i32, ptr, %struct.list_head, %struct.spinlock, %struct.kref, ptr, i32, %struct.list_head, %struct.work_struct, %struct.work_struct, i64, i32, [2 x ptr], i16, i16, i16, i8, [8 x i8], i16, i32, %struct.atomic_t, i32, i32, ptr, ptr, i32, i8, i8, i8, i32, i32, i16, ptr, i32, ptr, %struct.ct_sns_desc, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.work_struct, [64 x i8], i8, i8, i16, i16, ptr, i64, i64, i64, %struct.anon.133 }
%union.port_id_t = type { i24 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ct_sns_desc = type { ptr, i32 }
%struct.anon.133 = type { i16, i32, i32, i64, i64, i8, i8, i16, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.qlt_hw_data = type { i8, i32, ptr, ptr, i16, i16, ptr, ptr, ptr, ptr, i32, i16, i32, i32, i32, [2 x i8], [2 x i8], [8 x i8], ptr, ptr, ptr, %struct.list_head, i32, i32, i32, %struct.spinlock, i32, %struct.spinlock, i32, [60 x i8], %struct.spinlock, [84 x i8] }
%struct.anon.168 = type { %struct.anon.169, %struct.anon.170 }
%struct.anon.169 = type { %struct.list_head, i32 }
%struct.anon.170 = type { %struct.list_head, i32 }
%struct.atomic_t = type { i32 }
%struct.qla_hw_data_stat = type { i32, i32 }
%struct.btree_head32 = type { %struct.btree_head }
%struct.btree_head = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.els_reject = type { ptr, i32, i16 }
%struct.scsi_qla_host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.work_struct, ptr, i32, [16 x i8], %struct.anon.134, %struct.atomic_t, i32, i32, i32, i32, i16, i16, %struct.fc_port, %union.port_id_t, i8, i16, i8, %struct.atomic_t, i8, i32, %struct.timer_list, [8 x i8], [8 x i8], [8 x i8], [8 x i8], ptr, %struct.completion, i16, i16, [6 x i8], %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i16, ptr, i32, %struct.atomic_t, i16, i16, ptr, %struct.scsi_qlt_host, ptr, i32, i32, %struct.fc_host_statistics, %struct.qla_statistics, %struct.bidi_statistics, %struct.atomic_t, %struct.qla8044_reset_template, i16, i16, i16, i16, i16, i16, ptr, %struct.purex_list, %struct.purex_item, %struct.name_list_extended, i32, %struct.wait_queue_head, %struct.wait_queue_head, i8, [8 x i8], [8 x i8], i16, [4 x i16], %struct.list_head, %struct.fab_scan, i8, i32, i64, i64, i64, i64, i64, i64, %struct.edif_dbell, %struct.pur_core }
%struct.anon.134 = type { i16, [2 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.scsi_qlt_host = type { ptr, %struct.mutex, %struct.mutex, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qla_statistics = type { i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, %struct.qla_dif_statistics }
%struct.qla_dif_statistics = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.bidi_statistics = type { i64, i64 }
%struct.qla8044_reset_template = type { i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.purex_list = type { %struct.list_head, %struct.spinlock }
%struct.purex_item = type { %struct.list_head, ptr, ptr, %struct.atomic_t, i16, %struct.anon.135 }
%struct.anon.135 = type { [64 x i8] }
%struct.name_list_extended = type { ptr, i32, %struct.list_head, i32, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fab_scan = type { ptr, i32, i16, i32, %struct.delayed_work }
%struct.edif_dbell = type { i32, %struct.spinlock, %struct.list_head, %struct.completion }
%struct.pur_core = type { i32, %struct.spinlock, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.78 = type { ptr }
%struct.qla8044_reset_template_hdr = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.isp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.req_que = type { i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i32, i16, i32, i32, ptr, i16, [64 x i8] }
%struct.qla8044_minidump_template_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [8 x i32], [16 x i32] }
%struct.qla8044_minidump_entry_hdr = type { i32, i32, i32, %struct.anon.171 }
%struct.anon.171 = type { i8, i8, i8, i8 }
%struct.qla8044_minidump_entry_cache = type { %struct.qla8044_minidump_entry_hdr, i32, %struct.anon.175, i32, i32, i32, %struct.anon.176, i32, %struct.anon.177 }
%struct.anon.175 = type { i16, i16 }
%struct.anon.176 = type { i16, i8, i8 }
%struct.anon.177 = type { i8, i8, i16 }
%struct.qla8044_minidump_entry_crb = type { %struct.qla8044_minidump_entry_hdr, i32, %struct.anon.172, i32, i32, %struct.anon.173, i32, i32, i32 }
%struct.anon.172 = type { i8, i8, i16 }
%struct.anon.173 = type { i8, i8, i8, i8 }
%struct.qla8044_pex_dma_descriptor = type { %struct.anon.174, i64, i64, [24 x i8] }
%struct.anon.174 = type { i32, [2 x i8], i16 }
%struct.qla8044_minidump_entry_rdmem_pex_dma = type { %struct.qla8044_minidump_entry_hdr, i32, i16, [2 x i8], i32, [12 x i8], i32, i32 }
%struct.qla8044_minidump_entry_rdmem = type { %struct.qla8044_minidump_entry_hdr, [6 x i32], i32, i32 }
%struct.qla8044_minidump_entry_rdrom = type { %struct.qla8044_minidump_entry_hdr, [6 x i32], i32, i32 }
%struct.qla8044_minidump_entry_rdocm = type { %struct.qla8044_minidump_entry_hdr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qla8044_minidump_entry_mux = type { %struct.qla8044_minidump_entry_hdr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qla8044_minidump_entry_queue = type { %struct.qla8044_minidump_entry_hdr, i32, %struct.anon.178, i32, i32, i32, i32, i32, %struct.anon.179 }
%struct.anon.178 = type { i16, i16 }
%struct.anon.179 = type { i8, i8, i16 }
%struct.qla8044_minidump_entry_pollrd = type { %struct.qla8044_minidump_entry_hdr, i32, i32, i32, i16, i16, i32, i32, i32, i32 }
%struct.qla8044_minidump_entry_rdmux2 = type { %struct.qla8044_minidump_entry_hdr, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] }
%struct.qla8044_minidump_entry_pollrdmwr = type { %struct.qla8044_minidump_entry_hdr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qla8044_minidump_entry_rddfe = type { %struct.qla8044_minidump_entry_hdr, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32 }
%struct.qla8044_minidump_entry_rdmdio = type { %struct.qla8044_minidump_entry_hdr, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32 }
%struct.qla8044_minidump_entry_pollwr = type { %struct.qla8044_minidump_entry_hdr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rsp_que = type { i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, i16, [64 x i8] }
%struct.device_reg_82xx = type { [64 x i32], [64 x i32], [64 x i32], [32 x i16], [32 x i16], i32, [62 x i16], [32 x i16], [48 x i32], i32, i32 }
%struct.qla8044_reset_entry_hdr = type { i16, i16, i16, i16 }
%struct.qla8044_entry = type { i32, i32 }
%struct.qla8044_quad_entry = type { i32, i32, i32, i32 }

@qla8044_reg_tbl = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 13480, i32 13484, i32 13488, i32 14216, i32 14212, i32 14220, i32 13640, i32 14304, i32 14208, i32 13648, i32 13652, i32 13656, i32 13904, i32 14260], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(%ld): qsnt_state: 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.qla8044_clear_qsnt_ready = private unnamed_addr constant [25 x i8] c"qla8044_clear_qsnt_ready\00", align 1
@.str.1 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"%s: Lock by func %d failed after 2s, lock held by func %d, lock count %d, first_owner %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.qla8044_idc_lock = private unnamed_addr constant [17 x i8] c"qla8044_idc_lock\00", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: %d: IDC lock failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:IDC lock Recovery by %dsuccessful...\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: IDC lock Recovery by %d failed, Retrying timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: IDC Unlock by %d failed, lock owner is %d!\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.qla8044_idc_unlock = private unnamed_addr constant [19 x i8] c"qla8044_idc_unlock\00", align 1
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Failed to read from flash\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.qla8044_read_optrom_data = private unnamed_addr constant [25 x i8] c"qla8044_read_optrom_data\00", align 1
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(%ld): drv_active: 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.qla8044_clear_drv_active = private unnamed_addr constant [25 x i8] c"qla8044_clear_drv_active\00", align 1
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Failed to allocate reset template resources\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.qla8044_read_reset_template = private unnamed_addr constant [28 x i8] c"qla8044_read_reset_template\00", align 1
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Read template hdr size %d from Flash\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Failed to read reset template\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: Template Header size invalid %d tmplt_hdr_def_size %d!!!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Read rest of the template size %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s: Reset Seq checksum passed! Get stop, start and init seq offsets\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: idc_ctrl = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.qla8044_set_idc_dontreset = private unnamed_addr constant [26 x i8] c"qla8044_set_idc_dontreset\00", align 1
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Device state is 0x%x = %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Device Init Failed 0x%x = %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qla2xxx\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HW State: QUIESCENT\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"scsi%ld: %s: Device in frozen state, QLA82XX_PEG_ALIVE_COUNTER is 0xffffffff\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.qla8044_check_fw_alive = private unnamed_addr constant [23 x i8] c"qla8044_check_fw_alive\00", align 1
@.str.22 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"scsi(%ld): %s, ISP8044 Dumping hw/fw registers:\0A PEG_HALT_STATUS1: 0x%x, PEG_HALT_STATUS2: 0x%x,\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Firmware hung.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: HW State: NEED RESET!\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.qla8044_watchdog = private unnamed_addr constant [17 x i8] c"qla8044_watchdog\00", align 1
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: HW State: NEED QUIES detected!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: Firmware error detected device is being reset\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: FW CONTEXT Reset needed!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: detect abort needed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(%ld) No buffer to dump\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.qla8044_collect_md_data = private unnamed_addr constant [24 x i8] c"qla8044_collect_md_data\00", align 1
@.str.30 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Firmware has been previously dumped (%p) -- ignoring request.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Memory not allocated for minidump capture\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Forced reset from application, ignore minidump capture\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Template checksum validation error\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Capture Mask obtained: 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Minimum required capture mask[0x%x] level not set\0A\00", [45 x i8] zeroinitializer }, align 32
@ql2xmdcapmask = external dso_local local_unnamed_addr global i32, align 4
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%s]: starting data ptr: %p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s]: no of entry headers in Template: 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%s]: Total_data_size 0x%x, %d obtained\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Data collected: [0x%x], Total Dump size: [0x%x]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Data collected: [0x%x], Dump size left:[0x%x]\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Dump data mismatch: Data collected: [0x%x], total_data_size:[0x%x]\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Firmware dump saved to temp buffer (%ld/%p %ld/%p).\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Leaving fn: %s Last entry: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Unable to collect minidump\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.qla8044_get_minidump = private unnamed_addr constant [21 x i8] c"qla8044_get_minidump\00", align 1
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Done erase of sector=0x%x.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to erase the sector having address: 0x%x.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Got write for addr = 0x%x length=0x%x.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Failed to write flash in buffer mode, Reverting to slow-write.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Done writing.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): NULL response queue pointer\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.qla8044_intr_handler = private unnamed_addr constant [21 x i8] c"qla8044_intr_handler\00", align 1
@.str.51 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: Legacy Interrupt Bit 31 not set, spurious interrupt!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%s: Incorrect function ID 0x%x in legacy interrupt register, ha->pf_bit = 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unrecognized interrupt type (%d).\0A\00", [61 x i8] zeroinitializer }, align 32
@ql2xdontresethba = external dso_local local_unnamed_addr global i32, align 4
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Reset recovery disabled\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HW State: NEED RESET\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d: IDC Lock recovery initiated\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.qla8044_lock_recovery = private unnamed_addr constant [22 x i8] c"qla8044_lock_recovery\00", align 1
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Illegal addr = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.qla8044_read_flash_data = private unnamed_addr constant [24 x i8] c"qla8044_read_flash_data\00", align 1
@.str.58 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: failed to write addr 0x%x to FLASH_DIRECT_WINDOW\0A! \00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: failed to read addr 0x%x!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: failed wrt to addr 0x%x, data 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.qla8044_wr_reg_indirect = private unnamed_addr constant [24 x i8] c"qla8044_wr_reg_indirect\00", align 1
@.str.61 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: Failed to set register window : addr written 0x%x, read 0x%x!\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.qla8044_set_win_base = private unnamed_addr constant [21 x i8] c"qla8044_set_win_base\00", align 1
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: failed read of addr 0x%x!\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.qla8044_rd_reg_indirect = private unnamed_addr constant [24 x i8] c"qla8044_rd_reg_indirect\00", align 1
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Error Invalid reset_seq_template\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.qla8044_dump_reset_seq_hdr = private unnamed_addr constant [27 x i8] c"qla8044_dump_reset_seq_hdr\00", align 1
@.str.65 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"Reset Template :\0A\090x%X 0x%X 0x%X 0x%X0x%X 0x%X 0x%X 0x%X 0x%X 0x%X\0A\090x%X 0x%X 0x%X 0x%X 0x%X 0x%X\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.qla8044_set_drv_active = private unnamed_addr constant [23 x i8] c"qla8044_set_drv_active\00", align 1
@__func__.qla8044_clear_idc_dontreset = private unnamed_addr constant [28 x i8] c"qla8044_clear_idc_dontreset\00", align 1
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: IDC version updated to %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.qla8044_set_idc_ver = private unnamed_addr constant [20 x i8] c"qla8044_set_idc_ver\00", align 1
@.str.67 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"%s: qla4xxx driver IDC version %d is not compatible with IDC version %d of other drivers!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: HW State: INITIALIZING\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.qla8044_device_bootstrap = private unnamed_addr constant [25 x i8] c"qla8044_device_bootstrap\00", align 1
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: HW State: FAILED\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: HW State: READY\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Resetting flash_lock\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Restart Error!!!, Need Reset!!!\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.qla8044_start_firmware = private unnamed_addr constant [23 x i8] c"qla8044_start_firmware\00", align 1
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Restart done!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Peg not initialized!\0A\00", [38 x i8] zeroinitializer }, align 32
@ql2xmdenable = external dso_local local_unnamed_addr global i32, align 4
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Minidump disabled.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Copy bootloader, firmware restart failed!\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.qla8044_restart = private unnamed_addr constant [16 x i8] c"qla8044_restart\00", align 1
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Abrupt STOP Sub-Sequence end.\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.qla8044_process_stop_seq = private unnamed_addr constant [25 x i8] c"qla8044_process_stop_seq\00", align 1
@.str.78 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Unknown command ==> 0x%04x on entry = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.qla8044_process_reset_template = private unnamed_addr constant [31 x i8] c"qla8044_process_reset_template\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.79 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Poll Failed: 0x%08x 0x%08x 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.qla8044_poll_reg = private unnamed_addr constant [17 x i8] c"qla8044_poll_reg\00", align 1
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Timeout Error: poll list, \00", [33 x i8] zeroinitializer }, align 32
@__func__.qla8044_poll_write_list = private unnamed_addr constant [24 x i8] c"qla8044_poll_write_list\00", align 1
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"item_num %d, entry_num %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Reset sequence completed SUCCESSFULLY.\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.qla8044_template_end = private unnamed_addr constant [21 x i8] c"qla8044_template_end\00", align 1
@.str.83 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: Reset sequence completed with some timeout errors.\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.qla8044_poll_read_list = private unnamed_addr constant [23 x i8] c"qla8044_poll_read_list\00", align 1
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Item_num %d, entry_num %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Abrupt INIT Sub-Sequence end.\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.qla8044_process_init_seq = private unnamed_addr constant [25 x i8] c"qla8044_process_init_seq\00", align 1
@.str.86 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Failed to allocate memory for boot loader cache\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.qla8044_copy_bootloader = private unnamed_addr constant [24 x i8] c"qla8044_copy_bootloader\00", align 1
@.str.87 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Error reading F/W from flash!!!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Read F/W from flash!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Error writing F/W to MS !!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Wrote F/W (size %d) to MS !!!\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.qla8044_lockless_flash_read_u32 = private unnamed_addr constant [32 x i8] c"qla8044_lockless_flash_read_u32\00", align 1
@.str.91 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: failed to write addr 0x%x to FLASH_DIRECT_WINDOW!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: write to AGT_ADDR_HI failed!\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.qla8044_ms_mem_write_128b = private unnamed_addr constant [26 x i8] c"qla8044_ms_mem_write_128b\00", align 1
@.str.93 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: write to AGT_WRDATA failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: write to AGT_CTRL failed!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: failed to read MD_MIU_TEST_AGT_CTRL!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: MS memory write failed!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Abrupt START Sub-Sequence end.\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.qla8044_process_start_seq = private unnamed_addr constant [26 x i8] c"qla8044_process_start_seq\00", align 1
@.str.98 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Command Peg initialization complete! state=0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.qla8044_check_cmd_peg_status = private unnamed_addr constant [29 x i8] c"qla8044_check_cmd_peg_status\00", align 1
@.str.99 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Performing ISP error recovery\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.qla8044_need_reset_handler = private unnamed_addr constant [27 x i8] c"qla8044_need_reset_handler\00", align 1
@.str.100 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s(%ld): drv_state = 0x%x, drv_active = 0x%x dev_state = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s: Function %d: Reset Ack Timeout!, drv_state: 0x%08x, drv_active: 0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s(%ld): Function %d turning off drv_active of non-acking function 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(%ld): drv_state: 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.qla8044_set_rst_ready = private unnamed_addr constant [22 x i8] c"qla8044_set_rst_ready\00", align 1
@.str.104 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Timeout waiting for quiescent ack!!!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: HW State: QUIESCENT\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.qla8044_need_qsnt_handler = private unnamed_addr constant [26 x i8] c"qla8044_need_qsnt_handler\00", align 1
@__func__.qla8044_set_qsnt_ready = private unnamed_addr constant [23 x i8] c"qla8044_set_qsnt_ready\00", align 1
@.str.106 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"Device temperature %d degrees C exceeds maximum allowed. Hardware has been shut down\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Device temperature %d degrees C exceeds operating range. Immediate action needed.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"scsi(%ld): Skipping entry[%d]: ETYPE[0x%x]-ELEVEL[0x%x]\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Entering fn: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.qla8044_minidump_process_control = private unnamed_addr constant [33 x i8] c"qla8044_minidump_process_control\00", align 1
@__func__.qla8044_minidump_process_rdcrb = private unnamed_addr constant [31 x i8] c"qla8044_minidump_process_rdcrb\00", align 1
@.str.110 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"DMA engine not available. Fallback to rdmem-read.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to allocate rdmem dma buffer\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Error writing rdmem-dma-init to MS !!!\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.qla8044_minidump_pex_dma_read = private unnamed_addr constant [30 x i8] c"qla8044_minidump_pex_dma_read\00", align 1
@.str.113 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: Dma-descriptor: Instruct for rdmem dma (chunk_size 0x%x).\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.qla8044_minidump_process_rdmem = private unnamed_addr constant [31 x i8] c"qla8044_minidump_process_rdmem\00", align 1
@.str.114 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s]: Read addr: 0x%x, read_data_size: 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%s]: Read addr 0x%x not 16 bytes aligned\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s]: Read data[0x%x] not multiple of 16 bytes\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%s]: rdmem_addr: 0x%x, read_data_size: 0x%x, loop_cnt: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@MD_MIU_TEST_AGT_RDDATA = external dso_local local_unnamed_addr constant [4 x i32], align 4
@.str.118 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Leaving fn: %s datacount: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s]: fl_addr: 0x%x, count: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.qla8044_minidump_process_rdrom = private unnamed_addr constant [31 x i8] c"qla8044_minidump_process_rdrom\00", align 1
@.str.120 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Flash Read Error,Count=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.qla8044_minidump_process_l2tag = private unnamed_addr constant [31 x i8] c"qla8044_minidump_process_l2tag\00", align 1
@__func__.qla8044_minidump_process_rdocm = private unnamed_addr constant [31 x i8] c"qla8044_minidump_process_rdocm\00", align 1
@.str.121 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[%s]: r_addr: 0x%x, r_stride: 0x%x, loop_cnt: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Leaving fn: %s datacount: 0x%lx\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.qla8044_minidump_process_rdmux = private unnamed_addr constant [31 x i8] c"qla8044_minidump_process_rdmux\00", align 1
@__func__.qla8044_minidump_process_queue = private unnamed_addr constant [31 x i8] c"qla8044_minidump_process_queue\00", align 1
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: TIMEOUT\0A\00", [19 x i8] zeroinitializer }, align 32
@__func__.qla8044_minidump_process_pollrd = private unnamed_addr constant [32 x i8] c"qla8044_minidump_process_pollrd\00", align 1
@__func__.qla8044_minidump_process_pollrdmwr = private unnamed_addr constant [35 x i8] c"qla8044_minidump_process_pollrdmwr\00", align 1
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: TIMEOUT2\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.qla8044_minidump_process_rddfe = private unnamed_addr constant [31 x i8] c"qla8044_minidump_process_rddfe\00", align 1
@.str.125 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error in processing mdiobus idle\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error in processing rdmdio entry\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.qla8044_minidump_process_pollwr = private unnamed_addr constant [32 x i8] c"qla8044_minidump_process_pollwr\00", align 1
@.str.127 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"%s: Simultaneous flash access by following ports, active port = %d: accessing port = %d\00", [40 x i8] zeroinitializer }, align 32
@__func__.qla8044_flash_lock = private unnamed_addr constant [19 x i8] c"qla8044_flash_lock\00", align 1
@.str.128 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Write flash status failed.\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.qla8044_unprotect_flash = private unnamed_addr constant [24 x i8] c"qla8044_unprotect_flash\00", align 1
@.str.129 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Failed to write to FLASH_ADDR.\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.qla8044_write_flash_status_reg = private unnamed_addr constant [31 x i8] c"qla8044_write_flash_status_reg\00", align 1
@.str.130 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Failed to write to FLASH_WRDATA.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Failed to write to FLASH_CONTROL.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Error polling flash status reg.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Failed to read FLASH_STATUS reg.\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.qla8044_poll_flash_status_reg = private unnamed_addr constant [30 x i8] c"qla8044_poll_flash_status_reg\00", align 1
@.str.134 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Poll flash status after erase failed..\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.qla8044_erase_flash_sector = private unnamed_addr constant [27 x i8] c"qla8044_erase_flash_sector\00", align 1
@.str.135 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Failed write to FLASH_CONTROL.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Poll flash status failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: Failed.\0A\00", [19 x i8] zeroinitializer }, align 32
@__func__.qla8044_write_flash_buffer_mode = private unnamed_addr constant [32 x i8] c"qla8044_write_flash_buffer_mode\00", align 1
@.str.139 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: flash address=%x data=%x.\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.qla8044_write_flash_dword_mode = private unnamed_addr constant [31 x i8] c"qla8044_write_flash_dword_mode\00", align 1
@.str.140 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Failed write to FLASH_ADDR.\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.qla8044_flash_write_u32 = private unnamed_addr constant [24 x i8] c"qla8044_flash_write_u32\00", align 1
@.str.141 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Failed write to FLASH_WRDATA.\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.qla8044_protect_flash = private unnamed_addr constant [22 x i8] c"qla8044_protect_flash\00", align 1
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drv_state: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.145 = internal global [25 x i64] [i64 23, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 8, i64 9, i64 11, i64 12, i64 21, i64 22, i64 23, i64 24, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 71, i64 72, i64 98, i64 255]
@__sancov_gen_cov_switch_values.146 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 16, i64 17, i64 18, i64 19]
@__sancov_gen_cov_switch_values.147 = internal global [12 x i64] [i64 10, i64 16, i64 0, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@___asan_gen_.148 = private unnamed_addr constant [16 x i8] c"qla8044_reg_tbl\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 15, i32 23 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 277, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 385, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 395, i32 9 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 405, i32 10 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 414, i32 12 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 435, i32 7 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 569, i32 7 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1373, i32 6 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1523, i32 7 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1535, i32 6 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1541, i32 7 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1553, i32 7 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1565, i32 6 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1583, i32 6 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1616, i32 6 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1940, i32 6 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1942, i32 30 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1953, i32 9 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1954, i32 9 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1998, i32 8 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2089, i32 7 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2106, i32 8 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2136, i32 8 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2147, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2154, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2166, i32 18 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2187, i32 11 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2191, i32 19 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3231, i32 7 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3238, i32 7 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3247, i32 7 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3255, i32 7 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3267, i32 7 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3277, i32 6 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3284, i32 7 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3290, i32 6 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3293, i32 5 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3296, i32 6 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3313, i32 8 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3327, i32 7 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3454, i32 7 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3462, i32 6 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3469, i32 6 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3485, i32 7 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3823, i32 7 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3827, i32 8 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3834, i32 6 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3845, i32 8 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3855, i32 6 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3895, i32 7 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3909, i32 7 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3918, i32 7 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3965, i32 9 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 4031, i32 8 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 4037, i32 7 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 330, i32 34 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 520, i32 7 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 529, i32 8 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 541, i32 8 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 114, i32 7 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 80, i32 7 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 99, i32 7 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1462, i32 7 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1468, i32 6 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1800, i32 7 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1808, i32 8 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1420, i32 6 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1430, i32 8 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1448, i32 6 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 492, i32 36 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1344, i32 7 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1350, i32 7 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1355, i32 7 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1284, i32 7 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1290, i32 7 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1016, i32 7 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 986, i32 8 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 695, i32 7 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 795, i32 9 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 798, i32 9 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 867, i32 7 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 870, i32 7 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 913, i32 9 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1005, i32 7 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1236, i32 7 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1246, i32 7 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1249, i32 34 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1257, i32 7 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1261, i32 6 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1053, i32 7 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1140, i32 7 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1167, i32 8 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1179, i32 8 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1188, i32 9 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1199, i32 8 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1025, i32 7 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1326, i32 8 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1652, i32 6 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1670, i32 6 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1681, i32 8 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1702, i32 7 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1633, i32 6 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1895, i32 8 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1916, i32 7 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2048, i32 7 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2055, i32 7 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2456, i32 6 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2217, i32 34 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2914, i32 7 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2924, i32 7 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2963, i32 8 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2968, i32 7 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2358, i32 6 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2363, i32 7 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2370, i32 7 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2376, i32 6 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2412, i32 6 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2432, i32 34 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2440, i32 7 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2570, i32 6 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2578, i32 34 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2674, i32 10 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2785, i32 9 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 199, i32 8 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 152, i32 5 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 464, i32 8 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3572, i32 7 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3532, i32 7 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3539, i32 7 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3547, i32 7 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3554, i32 7 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3503, i32 8 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3605, i32 7 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3628, i32 7 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3633, i32 7 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3716, i32 7 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3780, i32 8 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3661, i32 7 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 3667, i32 7 }
@___asan_gen_.568 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.569 = private constant [34 x i8] c"../drivers/scsi/qla2xxx/qla_nx2.c\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 4003, i32 6 }
@llvm.compiler.used = appending global [141 x ptr] [ptr @qla8044_reg_tbl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142], section "llvm.metadata"
@0 = internal global [141 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla8044_reg_tbl to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla8044_rd_reg(ptr nocapture noundef readonly %ha, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nx_pcibase = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 242
  %0 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nx_pcibase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %addr
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !423
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla8044_wr_reg(ptr nocapture noundef readonly %ha, i32 noundef %addr, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %nx_pcibase = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 242
  %1 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nx_pcibase, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %addr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !426
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla8044_rd_direct(ptr nocapture noundef readonly %vha, i32 noundef %crb_reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %crb_reg)
  %cmp = icmp ult i32 %crb_reg, 14
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %arrayidx = getelementptr [14 x i32], ptr @qla8044_reg_tbl, i32 0, i32 %crb_reg
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %4 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !423
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then ], [ 258, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla8044_wr_direct(ptr nocapture noundef readonly %vha, i32 noundef %crb_reg, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %crb_reg)
  %cmp = icmp ult i32 %crb_reg, 14
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %arrayidx = getelementptr [14 x i32], ptr @qla8044_reg_tbl, i32 0, i32 %crb_reg
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %value) #5
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %5 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #5, !srcloc !426
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla8044_clear_qsnt_ready(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %2 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 14220
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !423
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %portnum = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 254
  %6 = ptrtoint ptr %portnum to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %portnum, align 4
  %conv = zext i16 %7 to i32
  %shl = shl nuw i32 1, %conv
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %nx_pcibase.i.i8 = getelementptr inbounds %struct.qla_hw_data, ptr %9, i32 0, i32 242
  %11 = ptrtoint ptr %nx_pcibase.i.i8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nx_pcibase.i.i8, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %12, i32 14220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9, i32 %10) #5, !srcloc !426
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 6
  %13 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %host_no, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45199, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.qla8044_clear_qsnt_ready, i32 noundef %14, i32 noundef %and) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_log(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla8044_idc_lock(ptr nocapture noundef readonly %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 242
  %4 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %5, i32 14440
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not67 = icmp eq i32 %6, 0
  br i1 %tobool.not67, label %if.end.lr.ph, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %portnum13 = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 254
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 52
  br label %if.end

if.then:                                          ; preds = %if.end31.if.then_crit_edge, %entry.if.then_crit_edge
  %7 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %8, i32 13572
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #5, !srcloc !423
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %add = add i32 %10, 256
  %and = and i32 %add, -256
  %portnum = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 254
  %11 = ptrtoint ptr %portnum to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %portnum, align 4
  %conv = zext i16 %12 to i32
  %or = or i32 %and, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %14 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %15, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %13) #5, !srcloc !426
  ret i32 0

if.end:                                           ; preds = %if.end31.if.end_crit_edge, %if.end.lr.ph
  %first_owner.069 = phi i32 [ 0, %if.end.lr.ph ], [ %first_owner.163, %if.end31.if.end_crit_edge ]
  %timeout.068 = phi i32 [ 0, %if.end.lr.ph ], [ %timeout.1, %if.end31.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.068)
  %cmp3 = icmp eq i32 %timeout.068, 0
  br i1 %cmp3, label %if.end7.thread, label %if.end7

if.end7.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %17, i32 13572
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #5, !srcloc !423
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %if.end31

if.end7:                                          ; preds = %if.end
  %inc = add i32 %timeout.068, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc)
  %cmp8 = icmp ugt i32 %inc, 9
  br i1 %cmp8, label %if.then10, label %if.end7.if.end31_crit_edge

if.end7.if.end31_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then10:                                        ; preds = %if.end7
  %20 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %21, i32 13572
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #5, !srcloc !423
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and12 = and i32 %23, 255
  %shr = lshr i32 %23, 8
  %24 = ptrtoint ptr %portnum13 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %portnum13, align 4
  %conv14 = zext i16 %25 to i32
  %and15 = and i32 %first_owner.069, 255
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %3, i32 noundef 45332, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.qla8044_idc_lock, i32 noundef %conv14, i32 noundef %and12, i32 noundef %shr, i32 noundef %and15) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %first_owner.069, i32 %23)
  %cmp16.not = icmp eq i32 %first_owner.069, %23
  br i1 %cmp16.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %portnum13 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %portnum13, align 4
  %conv20 = zext i16 %27 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %3, i32 noundef 45333, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.qla8044_idc_lock, i32 noundef %conv20) #5
  br label %if.end31

if.else:                                          ; preds = %if.then10
  %28 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw.i, align 4
  %nx_pcibase.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %29, i32 0, i32 242
  %30 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 14236
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %33 = and i32 %32, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not.i = icmp eq i32 %33, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.end.i:                                         ; preds = %if.else
  %portnum.i = getelementptr inbounds %struct.qla_hw_data, ptr %29, i32 0, i32 254
  %34 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %portnum.i, align 4
  %conv.i = zext i16 %35 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 2
  %or.i = or i32 %shl.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %37 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %38, i32 14236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 %36) #5, !srcloc !426
  tail call void @msleep(i32 noundef 200) #5
  %39 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %40, i32 14236
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i) #5, !srcloc !423
  %42 = lshr i32 %41, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and2.i = and i32 %42, 60
  %43 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %portnum.i, align 4
  %conv4.i = zext i16 %44 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.i, i32 %shl5.i)
  %cmp6.not.i = icmp eq i32 %and2.i, %shl5.i
  br i1 %cmp6.not.i, label %if.end9.i, label %if.end.i.if.end27_crit_edge

if.end.i.if.end27_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.end9.i:                                        ; preds = %if.end.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %3, i32 noundef 45195, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.qla8044_lock_recovery, i32 noundef %conv4.i) #5
  %45 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %portnum.i, align 4
  %conv13.i = zext i16 %46 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 2
  %or15.i = or i32 %shl14.i, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %47 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #5
  %48 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %49, i32 14236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i, i32 %47) #5, !srcloc !426
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %51, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i, i32 -16777216) #5, !srcloc !426
  %52 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %53, i32 14444
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %55 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %56, i32 14236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 0) #5, !srcloc !426
  %57 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %58, i32 14440
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i, label %if.end9.i.if.end27_crit_edge, label %if.then24

if.end9.i.if.end27_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then24:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %61, i32 13572
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #5, !srcloc !423
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %add.i = add i32 %63, 256
  %and20.i = and i32 %add.i, -256
  %64 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %portnum.i, align 4
  %conv22.i = zext i16 %65 to i32
  %or23.i = or i32 %and20.i, %conv22.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %66 = tail call i32 @llvm.bswap.i32(i32 %or23.i) #5
  %67 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %68, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %66) #5, !srcloc !426
  %69 = ptrtoint ptr %portnum13 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %portnum13, align 4
  %conv26 = zext i16 %70 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %3, i32 noundef 45334, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.qla8044_idc_lock, i32 noundef %conv26) #5
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end9.i.if.end27_crit_edge, %if.end.i.if.end27_crit_edge, %if.else.if.end27_crit_edge
  %71 = ptrtoint ptr %portnum13 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %portnum13, align 4
  %conv29 = zext i16 %72 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %3, i32 noundef 45194, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.qla8044_idc_lock, i32 noundef %conv29) #5
  br label %if.end31

if.end31:                                         ; preds = %if.end27, %if.then18, %if.end7.if.end31_crit_edge, %if.end7.thread
  %first_owner.163 = phi i32 [ %first_owner.069, %if.then18 ], [ %first_owner.069, %if.end27 ], [ %first_owner.069, %if.end7.if.end31_crit_edge ], [ %19, %if.end7.thread ]
  %timeout.1 = phi i32 [ 0, %if.then18 ], [ 0, %if.end27 ], [ %inc, %if.end7.if.end31_crit_edge ], [ 1, %if.end7.thread ]
  tail call void @msleep(i32 noundef 200) #5
  %73 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %74, i32 14440
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %tobool.not = icmp eq i32 %75, 0
  br i1 %tobool.not, label %if.end31.if.end_crit_edge, label %if.end31.if.then_crit_edge

if.end31.if.then_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end31.if.end_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dbg(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla8044_idc_unlock(ptr nocapture noundef readonly %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 242
  %4 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 13572
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !423
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and = and i32 %7, 255
  %portnum = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 254
  %8 = ptrtoint ptr %portnum to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %portnum, align 4
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp.not = icmp eq i32 %and, %conv
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %3, i32 noundef 45336, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla8044_idc_unlock, i32 noundef %conv, i32 noundef %and) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %7, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %11 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %12, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %10) #5, !srcloc !426
  %13 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %14, i32 14444
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qla8044_read_optrom_data(ptr noundef %vha, ptr noundef returned writeonly %buf, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 8
  tail call void @scsi_block_requests(ptr noundef %1) #5
  %div6 = lshr i32 %length, 2
  %call = tail call fastcc i32 @qla8044_read_flash_data(ptr noundef %vha, ptr noundef %buf, i32 noundef %offset, i32 noundef %div6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45197, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.qla8044_read_optrom_data) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 8
  tail call void @scsi_unblock_requests(ptr noundef %3) #5
  ret ptr %buf
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_block_requests(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_read_flash_data(ptr noundef %vha, ptr nocapture noundef writeonly %p_data, i32 noundef %flash_addr, i32 noundef %u32_word_count) unnamed_addr #0 align 64 {
entry:
  %u32_word = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u32_word) #5
  %0 = ptrtoint ptr %u32_word to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %u32_word, align 4, !annotation !427
  %call = tail call fastcc i32 @qla8044_flash_lock(ptr noundef %vha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.exit_lock_error_crit_edge

entry.exit_lock_error_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_lock_error

if.end:                                           ; preds = %entry
  %and = and i32 %flash_addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then1

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u32_word_count)
  %cmp331 = icmp sgt i32 %u32_word_count, 0
  br i1 %cmp331, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.exit_flash_read_crit_edge

for.cond.preheader.exit_flash_read_crit_edge:     ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_flash_read

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45335, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.qla8044_read_flash_data, i32 noundef %flash_addr) #5
  br label %exit_flash_read

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %if.end13.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %p_data.addr.033 = phi ptr [ %add.ptr, %if.end13.for.body_crit_edge ], [ %p_data, %for.cond.preheader.for.body_crit_edge ]
  %flash_addr.addr.032 = phi i32 [ %add, %if.end13.for.body_crit_edge ], [ %flash_addr, %for.cond.preheader.for.body_crit_edge ]
  %and4 = and i32 %flash_addr.addr.032, -65536
  %call5 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410416, i32 noundef %and4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45337, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.qla8044_read_flash_data, i32 noundef %flash_addr.addr.032) #5
  br label %exit_flash_read

if.end8:                                          ; preds = %for.body
  %and9 = and i32 %flash_addr.addr.032, 65535
  %or = or i32 %and9, 1108672512
  %call10 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %or, ptr noundef nonnull %u32_word)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45196, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.qla8044_read_flash_data, i32 noundef %flash_addr.addr.032) #5
  br label %exit_flash_read

if.end13:                                         ; preds = %if.end8
  %1 = ptrtoint ptr %u32_word to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %u32_word, align 4
  %3 = ptrtoint ptr %p_data.addr.033 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %p_data.addr.033, align 4
  %add.ptr = getelementptr i8, ptr %p_data.addr.033, i32 4
  %add = add i32 %flash_addr.addr.032, 4
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %u32_word_count
  br i1 %exitcond.not, label %if.end13.exit_flash_read_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end13.exit_flash_read_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_flash_read

exit_flash_read:                                  ; preds = %if.end13.exit_flash_read_crit_edge, %if.then12, %if.then7, %if.then1, %for.cond.preheader.exit_flash_read_crit_edge
  %ret_val.1 = phi i32 [ 258, %if.then1 ], [ 258, %if.then7 ], [ %call10, %if.then12 ], [ 0, %for.cond.preheader.exit_flash_read_crit_edge ], [ 0, %if.end13.exit_flash_read_crit_edge ]
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %4 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %nx_pcibase.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 242
  %6 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 13568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -16777216) #5, !srcloc !426
  %8 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %9, i32 14420
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %exit_lock_error

exit_lock_error:                                  ; preds = %exit_flash_read, %entry.exit_lock_error_crit_edge
  %ret_val.2 = phi i32 [ %ret_val.1, %exit_flash_read ], [ 258, %entry.exit_lock_error_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u32_word) #5
  ret i32 %ret_val.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_unblock_requests(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla8044_clear_drv_active(ptr nocapture noundef readonly %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw.i, align 4
  %nx_pcibase.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 242
  %6 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 14216
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !423
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %portnum = getelementptr inbounds %struct.qla_hw_data, ptr %ha, i32 0, i32 254
  %10 = ptrtoint ptr %portnum to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %portnum, align 4
  %conv = zext i16 %11 to i32
  %shl = shl nuw i32 1, %conv
  %neg = xor i32 %shl, -1
  %and = and i32 %9, %neg
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %host_no, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %3, i32 noundef 45233, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.qla8044_clear_drv_active, i32 noundef %13, i32 noundef %and) #5
  %14 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %nx_pcibase.i.i9 = getelementptr inbounds %struct.qla_hw_data, ptr %15, i32 0, i32 242
  %17 = ptrtoint ptr %nx_pcibase.i.i9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nx_pcibase.i.i9, align 4
  %add.ptr.i.i10 = getelementptr i8, ptr %18, i32 14216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10, i32 %16) #5, !srcloc !426
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla8044_read_reset_template(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %seq_error = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 1
  %0 = ptrtoint ptr %seq_error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %seq_error, align 4
  %call = tail call noalias ptr @vmalloc(i32 noundef 8192) #8
  %buff = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 4
  %1 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %buff, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45240, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.qla8044_read_reset_template) #5
  br label %exit_read_reset_template

if.end:                                           ; preds = %entry
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45241, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.qla8044_read_reset_template, i32 noundef 4) #5
  %call6 = tail call fastcc i32 @qla8044_read_flash_data(ptr noundef %vha, ptr noundef nonnull %call, i32 noundef 5177344, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45242, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.qla8044_read_reset_template) #5
  br label %exit_read_template_error

if.end8:                                          ; preds = %if.end
  %2 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buff, align 4
  %hdr = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 8
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %hdr, align 4
  %hdr_size = getelementptr inbounds %struct.qla8044_reset_template_hdr, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %hdr_size to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %hdr_size, align 1
  %conv = zext i16 %6 to i32
  %div119 = lshr i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div119)
  %cmp14.not = icmp eq i32 %div119, 4
  br i1 %cmp14.not, label %lor.lhs.false, label %if.end8.if.then21_crit_edge

if.end8.if.then21_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.end8
  %signature = getelementptr inbounds %struct.qla8044_reset_template_hdr, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %signature to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %signature, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13570, i16 %8)
  %cmp19.not = icmp eq i16 %8, -13570
  br i1 %cmp19.not, label %if.end22, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.end8.if.then21_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45243, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.qla8044_read_reset_template, i32 noundef %div119, i32 noundef 4) #5
  br label %exit_read_template_error

if.end22:                                         ; preds = %lor.lhs.false
  %add = or i32 %conv, 5177344
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %size = getelementptr inbounds %struct.qla8044_reset_template_hdr, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %size, align 1
  %conv35 = zext i16 %10 to i32
  %sub = sub nsw i32 %conv35, %conv
  %div40120 = lshr i32 %sub, 2
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45244, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.qla8044_read_reset_template, i32 noundef %conv35) #5
  %call45 = tail call fastcc i32 @qla8044_read_flash_data(ptr noundef %vha, ptr noundef %add.ptr, i32 noundef %add, i32 noundef %div40120)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45245, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.qla8044_read_reset_template) #5
  br label %exit_read_template_error

if.end48:                                         ; preds = %if.end22
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdr, align 4
  %size.i = getelementptr inbounds %struct.qla8044_reset_template_hdr, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %14)
  %cmp19.not.i = icmp ult i16 %14, 2
  br i1 %cmp19.not.i, label %if.end48.if.end52_crit_edge, label %while.body.preheader.i

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

while.body.preheader.i:                           ; preds = %if.end48
  %15 = lshr i16 %14, 1
  %div.i = zext i16 %15 to i32
  %16 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buff, align 4
  br label %while.body.i

while.cond5.preheader.i:                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i)
  %tobool.not23.i = icmp ult i32 %add.i, 65536
  br i1 %tobool.not23.i, label %while.cond5.preheader.i.if.end52_crit_edge, label %while.cond5.preheader.i.while.body6.i_crit_edge

while.cond5.preheader.i.while.body6.i_crit_edge:  ; preds = %while.cond5.preheader.i
  br label %while.body6.i

while.cond5.preheader.i.if.end52_crit_edge:       ; preds = %while.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %u16_count.022.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %div.i, %while.body.preheader.i ]
  %buff.021.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %17, %while.body.preheader.i ]
  %sum.020.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %dec.i = add nsw i32 %u16_count.022.i, -1
  %incdec.ptr.i = getelementptr i16, ptr %buff.021.i, i32 1
  %18 = ptrtoint ptr %buff.021.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %buff.021.i, align 2
  %conv4.i = zext i16 %19 to i32
  %add.i = add i32 %sum.020.i, %conv4.i
  %cmp.i = icmp ugt i32 %u16_count.022.i, 1
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.cond5.preheader.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body6.i:                                    ; preds = %while.body6.i.while.body6.i_crit_edge, %while.cond5.preheader.i.while.body6.i_crit_edge
  %sum.124.i = phi i32 [ %add8.i, %while.body6.i.while.body6.i_crit_edge ], [ %add.i, %while.cond5.preheader.i.while.body6.i_crit_edge ]
  %shr.i = lshr i32 %sum.124.i, 16
  %and.i = and i32 %sum.124.i, 65535
  %add8.i = add nuw nsw i32 %and.i, %shr.i
  %tobool.not.i = icmp ult i32 %add8.i, 65536
  br i1 %tobool.not.i, label %while.body6.i.if.end52_crit_edge, label %while.body6.i.while.body6.i_crit_edge

while.body6.i.while.body6.i_crit_edge:            ; preds = %while.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body6.i

while.body6.i.if.end52_crit_edge:                 ; preds = %while.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.end52:                                         ; preds = %while.body6.i.if.end52_crit_edge, %while.cond5.preheader.i.if.end52_crit_edge, %if.end48.if.end52_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45247, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.qla8044_read_reset_template) #5
  %20 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buff, align 4
  %22 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hdr, align 4
  %init_seq_offset = getelementptr inbounds %struct.qla8044_reset_template_hdr, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %init_seq_offset to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %init_seq_offset, align 1
  %conv57 = zext i16 %25 to i32
  %add.ptr58 = getelementptr i8, ptr %21, i32 %conv57
  %init_offset = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 7
  %26 = ptrtoint ptr %init_offset to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr58, ptr %init_offset, align 4
  %start_seq_offset = getelementptr inbounds %struct.qla8044_reset_template_hdr, ptr %23, i32 0, i32 7
  %27 = ptrtoint ptr %start_seq_offset to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %start_seq_offset, align 1
  %conv64 = zext i16 %28 to i32
  %add.ptr65 = getelementptr i8, ptr %21, i32 %conv64
  %start_offset = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 6
  %29 = ptrtoint ptr %start_offset to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr65, ptr %start_offset, align 4
  %hdr_size71 = getelementptr inbounds %struct.qla8044_reset_template_hdr, ptr %23, i32 0, i32 4
  %30 = ptrtoint ptr %hdr_size71 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %hdr_size71, align 1
  %conv72 = zext i16 %31 to i32
  %add.ptr73 = getelementptr i8, ptr %21, i32 %conv72
  %stop_offset = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 5
  %32 = ptrtoint ptr %stop_offset to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr73, ptr %stop_offset, align 4
  tail call fastcc void @qla8044_dump_reset_seq_hdr(ptr noundef %vha)
  br label %exit_read_reset_template

exit_read_template_error:                         ; preds = %if.then47, %if.then21, %if.then7
  %33 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buff, align 4
  tail call void @vfree(ptr noundef %34) #5
  br label %exit_read_reset_template

exit_read_reset_template:                         ; preds = %exit_read_template_error, %if.end52, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla8044_dump_reset_seq_hdr(ptr noundef %vha) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %buff = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 4
  %0 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buff, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45237, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.qla8044_dump_reset_seq_hdr) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr, align 1
  %conv3 = zext i8 %5 to i32
  %add.ptr4 = getelementptr i8, ptr %1, i32 2
  %6 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr4, align 1
  %conv5 = zext i8 %7 to i32
  %add.ptr6 = getelementptr i8, ptr %1, i32 3
  %8 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr6, align 1
  %conv7 = zext i8 %9 to i32
  %add.ptr8 = getelementptr i8, ptr %1, i32 4
  %10 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr8, align 1
  %conv9 = zext i8 %11 to i32
  %add.ptr10 = getelementptr i8, ptr %1, i32 5
  %12 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr10, align 1
  %conv11 = zext i8 %13 to i32
  %add.ptr12 = getelementptr i8, ptr %1, i32 6
  %14 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr12, align 1
  %conv13 = zext i8 %15 to i32
  %add.ptr14 = getelementptr i8, ptr %1, i32 7
  %16 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr14, align 1
  %conv15 = zext i8 %17 to i32
  %add.ptr16 = getelementptr i8, ptr %1, i32 8
  %18 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr16, align 1
  %conv17 = zext i8 %19 to i32
  %add.ptr18 = getelementptr i8, ptr %1, i32 9
  %20 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr18, align 1
  %conv19 = zext i8 %21 to i32
  %add.ptr20 = getelementptr i8, ptr %1, i32 10
  %22 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr20, align 1
  %conv21 = zext i8 %23 to i32
  %add.ptr22 = getelementptr i8, ptr %1, i32 11
  %24 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr22, align 1
  %conv23 = zext i8 %25 to i32
  %add.ptr24 = getelementptr i8, ptr %1, i32 12
  %26 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr24, align 1
  %conv25 = zext i8 %27 to i32
  %add.ptr26 = getelementptr i8, ptr %1, i32 13
  %28 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr26, align 1
  %conv27 = zext i8 %29 to i32
  %add.ptr28 = getelementptr i8, ptr %1, i32 14
  %30 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr28, align 1
  %conv29 = zext i8 %31 to i32
  %add.ptr30 = getelementptr i8, ptr %1, i32 15
  %32 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr30, align 1
  %conv31 = zext i8 %33 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45238, ptr noundef nonnull @.str.65, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %conv7, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %conv13, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %conv23, i32 noundef %conv25, i32 noundef %conv27, i32 noundef %conv29, i32 noundef %conv31) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla8044_set_idc_dontreset(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %2 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 14224
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %5 = or i32 %4, 16777216
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45248, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.qla8044_set_idc_dontreset, i32 noundef %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %8, i32 14224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %5) #5, !srcloc !426
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla8044_device_state_handler(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 8
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load volatile i32, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @qla8044_idc_lock(ptr noundef %1) #5
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 242
  %5 = ptrtoint ptr %nx_pcibase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nx_pcibase.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %6, i32 14216
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #5, !srcloc !423
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %portnum.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 254
  %9 = ptrtoint ptr %portnum.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %portnum.i.i, align 4
  %conv.i.i = zext i16 %10 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %or.i.i = or i32 %shl.i.i, %8
  %host_no.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 6
  %11 = ptrtoint ptr %host_no.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %host_no.i.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45256, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.qla8044_set_drv_active, i32 noundef %12, i32 noundef %or.i.i) #5
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %nx_pcibase.i.i8.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 242
  %16 = ptrtoint ptr %nx_pcibase.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nx_pcibase.i.i8.i.i, align 4
  %add.ptr.i.i9.i.i = getelementptr i8, ptr %17, i32 14216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9.i.i, i32 %15) #5, !srcloc !426
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %19, i32 0, i32 242
  %20 = ptrtoint ptr %nx_pcibase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nx_pcibase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 14216
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !423
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %portnum.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 254
  %24 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %portnum.i, align 4
  %conv.i = zext i16 %25 to i32
  %shl.i = shl nuw i32 1, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %shl.i)
  %cmp.i = icmp eq i32 %23, %shl.i
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xdontresethba to i32))
  %26 = load i32, ptr @ql2xdontresethba, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool3.not.i = icmp eq i32 %26, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %land.lhs.true.i.if.end5.i_crit_edge

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i22.i = getelementptr inbounds %struct.qla_hw_data, ptr %28, i32 0, i32 242
  %29 = ptrtoint ptr %nx_pcibase.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nx_pcibase.i.i22.i, align 4
  %add.ptr.i.i23.i = getelementptr i8, ptr %30, i32 14224
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %32 = and i32 %31, -16777217
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45257, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.qla8044_clear_idc_dontreset, i32 noundef %33) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %nx_pcibase.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nx_pcibase.i.i22.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %35, i32 14224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %32) #5, !srcloc !426
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i.i25.i = getelementptr inbounds %struct.qla_hw_data, ptr %37, i32 0, i32 242
  %38 = ptrtoint ptr %nx_pcibase.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nx_pcibase.i.i.i25.i, align 4
  %add.ptr.i.i.i26.i = getelementptr i8, ptr %39, i32 14216
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i26.i) #5, !srcloc !423
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %portnum.i27.i = getelementptr inbounds %struct.qla_hw_data, ptr %37, i32 0, i32 254
  %42 = ptrtoint ptr %portnum.i27.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %portnum.i27.i, align 4
  %conv.i28.i = zext i16 %43 to i32
  %shl.i29.i = shl nuw i32 1, %conv.i28.i
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %shl.i29.i)
  %cmp.i.i = icmp eq i32 %41, %shl.i29.i
  %44 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i39.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %45, i32 0, i32 242
  %46 = ptrtoint ptr %nx_pcibase.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nx_pcibase.i.i39.i.i, align 4
  %add.ptr.i.i40.i.i = getelementptr i8, ptr %47, i32 14208
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40.i.i) #5
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %49 = and i32 %48, 16777215
  %50 = or i32 %49, 16777216
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #5
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %nx_pcibase.i.i42.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %53, i32 0, i32 242
  %54 = ptrtoint ptr %nx_pcibase.i.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nx_pcibase.i.i42.i.i, align 4
  %add.ptr.i.i43.i.i = getelementptr i8, ptr %55, i32 14208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i43.i.i, i32 %50) #5, !srcloc !426
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45258, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.qla8044_set_idc_ver, i32 noundef %51) #5
  br label %qla8044_set_idc_ver.exit.i

if.else.i.i:                                      ; preds = %if.end5.i
  %56 = lshr i32 %48, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp5.not.i.i = icmp eq i32 %56, 1
  br i1 %cmp5.not.i.i, label %if.else.i.i.qla8044_set_idc_ver.exit.i_crit_edge, label %if.then9.i

if.else.i.i.qla8044_set_idc_ver.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_set_idc_ver.exit.i

qla8044_set_idc_ver.exit.i:                       ; preds = %if.else.i.i.qla8044_set_idc_ver.exit.i_crit_edge, %if.then.i.i
  %57 = ptrtoint ptr %nx_pcibase.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %nx_pcibase.i.i.i25.i, align 4
  %add.ptr.i.i30.i = getelementptr i8, ptr %58, i32 14232
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30.i) #5, !srcloc !423
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %61 = ptrtoint ptr %portnum.i27.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %portnum.i27.i, align 4
  %conv11.i.i = zext i16 %62 to i32
  %mul.i.i = shl nuw nsw i32 %conv11.i.i, 1
  %shl12.i.i = shl i32 3, %mul.i.i
  %neg.i.i = xor i32 %shl12.i.i, -1
  %and13.i.i = and i32 %60, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %63 = tail call i32 @llvm.bswap.i32(i32 %and13.i.i) #5
  %64 = ptrtoint ptr %nx_pcibase.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %nx_pcibase.i.i.i25.i, align 4
  %add.ptr.i48.i.i = getelementptr i8, ptr %65, i32 14232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i.i, i32 %63) #5, !srcloc !426
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45259, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.qla8044_set_idc_ver, i32 noundef 1, i32 noundef %56) #5
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44, i32 8
  %68 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %hw.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %69, i32 0, i32 52
  %70 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw.i.i.i, align 4
  %nx_pcibase.i.i.i31.i = getelementptr inbounds %struct.qla_hw_data, ptr %71, i32 0, i32 242
  %72 = ptrtoint ptr %nx_pcibase.i.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %nx_pcibase.i.i.i31.i, align 4
  %add.ptr.i.i.i32.i = getelementptr i8, ptr %73, i32 14216
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i32.i) #5, !srcloc !423
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %76 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %portnum.i, align 4
  %conv.i34.i = zext i16 %77 to i32
  %shl.i35.i = shl nuw i32 1, %conv.i34.i
  %neg.i36.i = xor i32 %shl.i35.i, -1
  %and.i.i = and i32 %75, %neg.i36.i
  %host_no.i37.i = getelementptr inbounds %struct.scsi_qla_host, ptr %69, i32 0, i32 6
  %78 = ptrtoint ptr %host_no.i37.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %host_no.i37.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %69, i32 noundef 45233, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.qla8044_clear_drv_active, i32 noundef %79, i32 noundef %and.i.i) #5
  %80 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %82 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  %nx_pcibase.i.i9.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %81, i32 0, i32 242
  %83 = ptrtoint ptr %nx_pcibase.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %nx_pcibase.i.i9.i.i, align 4
  %add.ptr.i.i10.i.i = getelementptr i8, ptr %84, i32 14216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i.i, i32 %82) #5, !srcloc !426
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %qla8044_set_idc_ver.exit.i
  %cmp = phi i1 [ true, %if.then9.i ], [ false, %qla8044_set_idc_ver.exit.i ]
  %rval.0.i48.i = phi i32 [ 258, %if.then9.i ], [ 0, %qla8044_set_idc_ver.exit.i ]
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 128
  %driver_data.i.i.i38.i = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44, i32 8
  %87 = ptrtoint ptr %driver_data.i.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %driver_data.i.i.i38.i, align 4
  %nx_pcibase.i.i39.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %89 = ptrtoint ptr %nx_pcibase.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %nx_pcibase.i.i39.i, align 4
  %add.ptr.i.i40.i = getelementptr i8, ptr %90, i32 13572
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40.i) #5, !srcloc !423
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and.i41.i = and i32 %92, 255
  %93 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %portnum.i, align 4
  %conv.i43.i = zext i16 %94 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i41.i, i32 %conv.i43.i)
  %cmp.not.i.i = icmp eq i32 %and.i41.i, %conv.i43.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i44.i

if.then.i44.i:                                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %88, i32 noundef 45336, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla8044_idc_unlock, i32 noundef %conv.i43.i, i32 noundef %and.i41.i) #5
  br label %qla8044_update_idc_reg.exit

if.end.i.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i45.i = or i32 %92, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %95 = tail call i32 @llvm.bswap.i32(i32 %or.i45.i) #5
  %96 = ptrtoint ptr %nx_pcibase.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %nx_pcibase.i.i39.i, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %97, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i, i32 %95) #5, !srcloc !426
  %98 = ptrtoint ptr %nx_pcibase.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %nx_pcibase.i.i39.i, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %99, i32 14444
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %qla8044_update_idc_reg.exit

qla8044_update_idc_reg.exit:                      ; preds = %if.end.i.i, %if.then.i44.i
  br i1 %cmp, label %qla8044_update_idc_reg.exit.exit_error_crit_edge, label %qla8044_update_idc_reg.exit.if.end_crit_edge

qla8044_update_idc_reg.exit.if.end_crit_edge:     ; preds = %qla8044_update_idc_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

qla8044_update_idc_reg.exit.exit_error_crit_edge: ; preds = %qla8044_update_idc_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_error

if.end:                                           ; preds = %qla8044_update_idc_reg.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %rval.0.i217 = phi i32 [ %rval.0.i48.i, %qla8044_update_idc_reg.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %101 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %102, i32 0, i32 242
  %103 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %104, i32 14212
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !423
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %106)
  %cmp2 = icmp ult i32 %106, 8
  br i1 %cmp2, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call ptr @qdev_state(i32 noundef %106) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %call3, %cond.true ], [ @.str.17, %if.end.cond.end_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45262, ptr noundef nonnull @.str.16, i32 noundef %106, ptr noundef %cond) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %107 = load volatile i32, ptr @jiffies, align 128
  %fcoe_dev_init_timeout = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 251
  %108 = ptrtoint ptr %fcoe_dev_init_timeout to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %fcoe_dev_init_timeout, align 64
  %mul = mul i32 %109, 100
  %add = add i32 %mul, %107
  %call4 = tail call i32 @qla8044_idc_lock(ptr noundef %1)
  %nx_pcibase.i.i164 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %portnum.i167 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 254
  %fcoe_reset_timeout35 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 252
  %host_no.i.i145 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 6
  %dpc_flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %req.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 54
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %cond.end
  %dev_state.0 = phi i32 [ %106, %cond.end ], [ %128, %while.cond.backedge ]
  %rval.0 = phi i32 [ %rval.0.i217, %cond.end ], [ %rval.0.be, %while.cond.backedge ]
  %dev_init_timeout.0 = phi i32 [ %add, %cond.end ], [ %dev_init_timeout.0.be, %while.cond.backedge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %110 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %110, %dev_init_timeout.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp5 = icmp sgt i32 %sub, -1
  br i1 %cmp5, label %if.then6, label %while.cond.if.end17_crit_edge

while.cond.if.end17_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then6:                                         ; preds = %while.cond
  %111 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i.i85 = getelementptr inbounds %struct.qla_hw_data, ptr %112, i32 0, i32 242
  %113 = ptrtoint ptr %nx_pcibase.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %nx_pcibase.i.i.i85, align 4
  %add.ptr.i.i.i86 = getelementptr i8, ptr %114, i32 14216
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i86) #5, !srcloc !423
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %portnum.i87 = getelementptr inbounds %struct.qla_hw_data, ptr %112, i32 0, i32 254
  %117 = ptrtoint ptr %portnum.i87 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %portnum.i87, align 4
  %conv.i88 = zext i16 %118 to i32
  %shl.i89 = shl nuw i32 1, %conv.i88
  %and.i = and i32 %shl.i89, %116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i90.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i90.not, label %if.then6.if.end17_crit_edge, label %if.then9

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %dev_state.0)
  %cmp10 = icmp ult i32 %dev_state.0, 8
  br i1 %cmp10, label %cond.true11, label %if.then9.cond.end14_crit_edge

if.then9.cond.end14_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end14

cond.true11:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call ptr @qdev_state(i32 noundef %dev_state.0) #5
  br label %cond.end14

cond.end14:                                       ; preds = %cond.true11, %if.then9.cond.end14_crit_edge
  %cond15 = phi ptr [ %call12, %cond.true11 ], [ @.str.17, %if.then9.cond.end14_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45263, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %dev_state.0, ptr noundef %cond15) #5
  %119 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %nx_pcibase.i.i92 = getelementptr inbounds %struct.qla_hw_data, ptr %120, i32 0, i32 242
  %121 = ptrtoint ptr %nx_pcibase.i.i92 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %nx_pcibase.i.i92, align 4
  %add.ptr.i.i93 = getelementptr i8, ptr %122, i32 14212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i93, i32 100663296) #5, !srcloc !426
  br label %if.end17

if.end17:                                         ; preds = %cond.end14, %if.then6.if.end17_crit_edge, %while.cond.if.end17_crit_edge
  %123 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i96 = getelementptr inbounds %struct.qla_hw_data, ptr %124, i32 0, i32 242
  %125 = ptrtoint ptr %nx_pcibase.i.i96 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %nx_pcibase.i.i96, align 4
  %add.ptr.i.i97 = getelementptr i8, ptr %126, i32 14212
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i97) #5, !srcloc !423
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %128)
  %cmp19 = icmp ult i32 %128, 8
  br i1 %cmp19, label %cond.true20, label %if.end17.cond.end23_crit_edge

if.end17.cond.end23_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end23

cond.true20:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call ptr @qdev_state(i32 noundef %128) #5
  br label %cond.end23

cond.end23:                                       ; preds = %cond.true20, %if.end17.cond.end23_crit_edge
  %cond24 = phi ptr [ %call21, %cond.true20 ], [ @.str.17, %if.end17.cond.end23_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45264, ptr noundef nonnull @.str.16, i32 noundef %128, ptr noundef %cond24) #5
  %129 = zext i32 %128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values)
  switch i32 %128, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb25
    i32 2, label %sw.bb27
    i32 4, label %sw.bb29
    i32 5, label %sw.bb30
    i32 7, label %sw.bb33
    i32 6, label %sw.bb38
  ]

sw.bb:                                            ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %130 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %130)
  %bf.load = load volatile i32, ptr %flags, align 8
  %bf.clear = and i32 %bf.load, -65
  store volatile i32 %bf.clear, ptr %flags, align 8
  br label %exit

sw.bb25:                                          ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = tail call fastcc i32 @qla8044_device_bootstrap(ptr noundef %vha)
  br label %while.cond.backedge

sw.bb27:                                          ; preds = %cond.end23
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %1, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %132, i32 0, i32 44, i32 8
  %133 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %driver_data.i.i.i, align 4
  %135 = ptrtoint ptr %nx_pcibase.i.i164 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %nx_pcibase.i.i164, align 4
  %add.ptr.i.i99 = getelementptr i8, ptr %136, i32 13572
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i99) #5, !srcloc !423
  %138 = tail call i32 @llvm.bswap.i32(i32 %137) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and.i100 = and i32 %138, 255
  %139 = ptrtoint ptr %portnum.i167 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %portnum.i167, align 4
  %conv.i102 = zext i16 %140 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i100, i32 %conv.i102)
  %cmp.not.i = icmp eq i32 %and.i100, %conv.i102
  br i1 %cmp.not.i, label %if.end.i103, label %if.then.i

if.then.i:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %134, i32 noundef 45336, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla8044_idc_unlock, i32 noundef %conv.i102, i32 noundef %and.i100) #5
  br label %qla8044_idc_unlock.exit

if.end.i103:                                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %138, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %141 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %142 = ptrtoint ptr %nx_pcibase.i.i164 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %nx_pcibase.i.i164, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %143, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %141) #5, !srcloc !426
  %144 = ptrtoint ptr %nx_pcibase.i.i164 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %nx_pcibase.i.i164, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %145, i32 14444
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %qla8044_idc_unlock.exit

qla8044_idc_unlock.exit:                          ; preds = %if.end.i103, %if.then.i
  tail call void @msleep(i32 noundef 1000) #5
  %call28 = tail call i32 @qla8044_idc_lock(ptr noundef %1)
  br label %while.cond.backedge

sw.bb29:                                          ; preds = %cond.end23
  %147 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hw, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45250, ptr noundef nonnull @.str.99, ptr noundef nonnull @__func__.qla8044_need_reset_handler) #5
  %149 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %bf.load.i106 = load volatile i32, ptr %flags.i, align 8
  %150 = and i32 %bf.load.i106, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not.i107 = icmp eq i32 %150, 0
  br i1 %tobool.not.i107, label %sw.bb29.if.end.i127_crit_edge, label %if.then.i115

sw.bb29.if.end.i127_crit_edge:                    ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i127

if.then.i115:                                     ; preds = %sw.bb29
  %151 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %148, align 128
  %driver_data.i.i.i.i108 = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 44, i32 8
  %153 = ptrtoint ptr %driver_data.i.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %driver_data.i.i.i.i108, align 4
  %nx_pcibase.i.i.i109 = getelementptr inbounds %struct.qla_hw_data, ptr %148, i32 0, i32 242
  %155 = ptrtoint ptr %nx_pcibase.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %nx_pcibase.i.i.i109, align 4
  %add.ptr.i.i.i110 = getelementptr i8, ptr %156, i32 13572
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i110) #5, !srcloc !423
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and.i.i111 = and i32 %158, 255
  %portnum.i.i112 = getelementptr inbounds %struct.qla_hw_data, ptr %148, i32 0, i32 254
  %159 = ptrtoint ptr %portnum.i.i112 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %portnum.i.i112, align 4
  %conv.i.i113 = zext i16 %160 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i111, i32 %conv.i.i113)
  %cmp.not.i.i114 = icmp eq i32 %and.i.i111, %conv.i.i113
  br i1 %cmp.not.i.i114, label %if.end.i.i120, label %if.then.i.i116

if.then.i.i116:                                   ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %154, i32 noundef 45336, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla8044_idc_unlock, i32 noundef %conv.i.i113, i32 noundef %and.i.i111) #5
  br label %qla8044_idc_unlock.exit.i

if.end.i.i120:                                    ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #7
  %or.i.i117 = or i32 %158, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %161 = tail call i32 @llvm.bswap.i32(i32 %or.i.i117) #5
  %162 = ptrtoint ptr %nx_pcibase.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %nx_pcibase.i.i.i109, align 4
  %add.ptr.i16.i.i118 = getelementptr i8, ptr %163, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i118, i32 %161) #5, !srcloc !426
  %164 = ptrtoint ptr %nx_pcibase.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %nx_pcibase.i.i.i109, align 4
  %add.ptr.i18.i.i119 = getelementptr i8, ptr %165, i32 14444
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i.i119) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %qla8044_idc_unlock.exit.i

qla8044_idc_unlock.exit.i:                        ; preds = %if.end.i.i120, %if.then.i.i116
  tail call void @qla2x00_abort_isp_cleanup(ptr noundef %vha) #5
  %isp_ops.i = getelementptr inbounds %struct.qla_hw_data, ptr %148, i32 0, i32 234
  %167 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %isp_ops.i, align 4
  %get_flash_version.i = getelementptr inbounds %struct.isp_operations, ptr %168, i32 0, i32 31
  %169 = ptrtoint ptr %get_flash_version.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %get_flash_version.i, align 4
  %171 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %req.i, align 8
  %ring.i = getelementptr inbounds %struct.req_que, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ring.i, align 4
  %call.i121 = tail call i32 %170(ptr noundef %vha, ptr noundef %174) #5
  %175 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %isp_ops.i, align 4
  %nvram_config.i = getelementptr inbounds %struct.isp_operations, ptr %176, i32 0, i32 5
  %177 = ptrtoint ptr %nvram_config.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %nvram_config.i, align 4
  %call2.i = tail call i32 %178(ptr noundef %vha) #5
  %call3.i = tail call i32 @qla8044_idc_lock(ptr noundef %148) #5
  br label %if.end.i127

if.end.i127:                                      ; preds = %qla8044_idc_unlock.exit.i, %sw.bb29.if.end.i127_crit_edge
  %179 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i121.i = getelementptr inbounds %struct.qla_hw_data, ptr %180, i32 0, i32 242
  %181 = ptrtoint ptr %nx_pcibase.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %nx_pcibase.i.i121.i, align 4
  %add.ptr.i.i122.i = getelementptr i8, ptr %182, i32 14212
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i122.i) #5, !srcloc !423
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %185 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i125.i = getelementptr inbounds %struct.qla_hw_data, ptr %186, i32 0, i32 242
  %187 = ptrtoint ptr %nx_pcibase.i.i125.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %nx_pcibase.i.i125.i, align 4
  %add.ptr.i.i126.i = getelementptr i8, ptr %188, i32 14220
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i126.i) #5, !srcloc !423
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %191 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i129.i = getelementptr inbounds %struct.qla_hw_data, ptr %192, i32 0, i32 242
  %193 = ptrtoint ptr %nx_pcibase.i.i129.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %nx_pcibase.i.i129.i, align 4
  %add.ptr.i.i130.i = getelementptr i8, ptr %194, i32 14216
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i130.i) #5, !srcloc !423
  %196 = tail call i32 @llvm.bswap.i32(i32 %195) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %197 = ptrtoint ptr %host_no.i.i145 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %host_no.i.i145, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45253, ptr noundef nonnull @.str.100, ptr noundef nonnull @__func__.qla8044_need_reset_handler, i32 noundef %198, i32 noundef %190, i32 noundef %196, i32 noundef %184) #5
  %199 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i.i.i122 = getelementptr inbounds %struct.qla_hw_data, ptr %200, i32 0, i32 242
  %201 = ptrtoint ptr %nx_pcibase.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %nx_pcibase.i.i.i.i122, align 4
  %add.ptr.i.i.i.i123 = getelementptr i8, ptr %202, i32 14220
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i123) #5, !srcloc !423
  %204 = tail call i32 @llvm.bswap.i32(i32 %203) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %portnum.i133.i = getelementptr inbounds %struct.qla_hw_data, ptr %200, i32 0, i32 254
  %205 = ptrtoint ptr %portnum.i133.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %portnum.i133.i, align 4
  %conv.i134.i = zext i16 %206 to i32
  %shl.i.i124 = shl nuw i32 1, %conv.i134.i
  %or.i135.i = or i32 %shl.i.i124, %204
  %207 = ptrtoint ptr %host_no.i.i145 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %host_no.i.i145, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45249, ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__.qla8044_set_rst_ready, i32 noundef %208, i32 noundef %or.i135.i) #5
  %209 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %211 = tail call i32 @llvm.bswap.i32(i32 %or.i135.i) #5
  %nx_pcibase.i.i8.i.i125 = getelementptr inbounds %struct.qla_hw_data, ptr %210, i32 0, i32 242
  %212 = ptrtoint ptr %nx_pcibase.i.i8.i.i125 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %nx_pcibase.i.i8.i.i125, align 4
  %add.ptr.i.i9.i.i126 = getelementptr i8, ptr %213, i32 14220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9.i.i126, i32 %211) #5, !srcloc !426
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %214 = load volatile i32, ptr @jiffies, align 128
  %fcoe_reset_timeout.i = getelementptr inbounds %struct.qla_hw_data, ptr %148, i32 0, i32 252
  %215 = ptrtoint ptr %fcoe_reset_timeout.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %fcoe_reset_timeout.i, align 4
  %mul.neg.i = mul i32 %216, -100
  %add.neg.i = sub i32 %mul.neg.i, %214
  %217 = load volatile i32, ptr @jiffies, align 128
  %sub172.i = add i32 %add.neg.i, %217
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub172.i)
  %cmp173.i = icmp sgt i32 %sub172.i, -1
  br i1 %cmp173.i, label %if.end.i127.if.then7.i_crit_edge, label %if.end8.lr.ph.i

if.end.i127.if.then7.i_crit_edge:                 ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.end8.lr.ph.i:                                  ; preds = %if.end.i127
  %nx_pcibase.i.i137.i = getelementptr inbounds %struct.qla_hw_data, ptr %148, i32 0, i32 242
  %portnum.i140.i = getelementptr inbounds %struct.qla_hw_data, ptr %148, i32 0, i32 254
  br label %if.end8.i

do.body.i:                                        ; preds = %qla8044_idc_unlock.exit148.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %218 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %218, %add.neg.i
  %cmp.i128 = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i128, label %do.body.i.if.then7.i_crit_edge, label %do.body.i.if.end8.i_crit_edge

do.body.i.if.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

do.body.i.if.then7.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.then7.i:                                       ; preds = %do.body.i.if.then7.i_crit_edge, %if.end.i127.if.then7.i_crit_edge
  %dev_state.0.lcssa.i = phi i32 [ %184, %if.end.i127.if.then7.i_crit_edge ], [ 4, %do.body.i.if.then7.i_crit_edge ]
  %drv_state.0.lcssa.i = phi i32 [ %190, %if.end.i127.if.then7.i_crit_edge ], [ %247, %do.body.i.if.then7.i_crit_edge ]
  %drv_active.0.lcssa.i = phi i32 [ %196, %if.end.i127.if.then7.i_crit_edge ], [ %253, %do.body.i.if.then7.i_crit_edge ]
  %portnum.i129 = getelementptr inbounds %struct.qla_hw_data, ptr %148, i32 0, i32 254
  %219 = ptrtoint ptr %portnum.i129 to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %portnum.i129, align 4
  %conv.i130 = zext i16 %220 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45252, ptr noundef nonnull @.str.101, ptr noundef nonnull @__func__.qla8044_need_reset_handler, i32 noundef %conv.i130, i32 noundef %drv_state.0.lcssa.i, i32 noundef %drv_active.0.lcssa.i) #5
  br label %do.end.i

if.end8.i:                                        ; preds = %do.body.i.if.end8.i_crit_edge, %if.end8.lr.ph.i
  %221 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %148, align 128
  %driver_data.i.i.i136.i = getelementptr inbounds %struct.pci_dev, ptr %222, i32 0, i32 44, i32 8
  %223 = ptrtoint ptr %driver_data.i.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %driver_data.i.i.i136.i, align 4
  %225 = ptrtoint ptr %nx_pcibase.i.i137.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %nx_pcibase.i.i137.i, align 4
  %add.ptr.i.i138.i = getelementptr i8, ptr %226, i32 13572
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i138.i) #5, !srcloc !423
  %228 = tail call i32 @llvm.bswap.i32(i32 %227) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and.i139.i = and i32 %228, 255
  %229 = ptrtoint ptr %portnum.i140.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %portnum.i140.i, align 4
  %conv.i141.i = zext i16 %230 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i139.i, i32 %conv.i141.i)
  %cmp.not.i142.i = icmp eq i32 %and.i139.i, %conv.i141.i
  br i1 %cmp.not.i142.i, label %if.end.i147.i, label %if.then.i143.i

if.then.i143.i:                                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %224, i32 noundef 45336, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla8044_idc_unlock, i32 noundef %conv.i141.i, i32 noundef %and.i139.i) #5
  br label %qla8044_idc_unlock.exit148.i

if.end.i147.i:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i144.i = or i32 %228, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %231 = tail call i32 @llvm.bswap.i32(i32 %or.i144.i) #5
  %232 = ptrtoint ptr %nx_pcibase.i.i137.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %nx_pcibase.i.i137.i, align 4
  %add.ptr.i16.i145.i = getelementptr i8, ptr %233, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i145.i, i32 %231) #5, !srcloc !426
  %234 = ptrtoint ptr %nx_pcibase.i.i137.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %nx_pcibase.i.i137.i, align 4
  %add.ptr.i18.i146.i = getelementptr i8, ptr %235, i32 14444
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i146.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %qla8044_idc_unlock.exit148.i

qla8044_idc_unlock.exit148.i:                     ; preds = %if.end.i147.i, %if.then.i143.i
  tail call void @msleep(i32 noundef 1000) #5
  %call9.i = tail call i32 @qla8044_idc_lock(ptr noundef %148) #5
  %237 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i150.i = getelementptr inbounds %struct.qla_hw_data, ptr %238, i32 0, i32 242
  %239 = ptrtoint ptr %nx_pcibase.i.i150.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %nx_pcibase.i.i150.i, align 4
  %add.ptr.i.i151.i = getelementptr i8, ptr %240, i32 14212
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i151.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %242 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i154.i = getelementptr inbounds %struct.qla_hw_data, ptr %243, i32 0, i32 242
  %244 = ptrtoint ptr %nx_pcibase.i.i154.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %nx_pcibase.i.i154.i, align 4
  %add.ptr.i.i155.i = getelementptr i8, ptr %245, i32 14220
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i155.i) #5, !srcloc !423
  %247 = tail call i32 @llvm.bswap.i32(i32 %246) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %248 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i158.i = getelementptr inbounds %struct.qla_hw_data, ptr %249, i32 0, i32 242
  %250 = ptrtoint ptr %nx_pcibase.i.i158.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %nx_pcibase.i.i158.i, align 4
  %add.ptr.i.i159.i = getelementptr i8, ptr %251, i32 14216
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i159.i) #5, !srcloc !423
  %253 = tail call i32 @llvm.bswap.i32(i32 %252) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and.i131 = and i32 %253, %247
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i131, i32 %253)
  %cmp13.not.i = icmp ne i32 %and.i131, %253
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %241)
  %cmp15.i = icmp eq i32 %241, 67108864
  %or.cond.i = select i1 %cmp13.not.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i, label %do.body.i, label %do.end.loopexit.i

do.end.loopexit.i:                                ; preds = %qla8044_idc_unlock.exit148.i
  call void @__sanitizer_cov_trace_pc() #7
  %254 = tail call i32 @llvm.bswap.i32(i32 %241) #5
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.loopexit.i, %if.then7.i
  %dev_state.1.i = phi i32 [ %dev_state.0.lcssa.i, %if.then7.i ], [ %254, %do.end.loopexit.i ]
  %drv_state.1.i = phi i32 [ %drv_state.0.lcssa.i, %if.then7.i ], [ %247, %do.end.loopexit.i ]
  %drv_active.1.i = phi i32 [ %drv_active.0.lcssa.i, %if.then7.i ], [ %253, %do.end.loopexit.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %drv_state.1.i, i32 %drv_active.1.i)
  %cmp17.not.i = icmp eq i32 %drv_state.1.i, %drv_active.1.i
  br i1 %cmp17.not.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %255 = ptrtoint ptr %host_no.i.i145 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %host_no.i.i145, align 4
  %portnum21.i = getelementptr inbounds %struct.qla_hw_data, ptr %148, i32 0, i32 254
  %257 = ptrtoint ptr %portnum21.i to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %portnum21.i, align 4
  %conv22.i = zext i16 %258 to i32
  %xor.i = xor i32 %drv_active.1.i, %drv_state.1.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45255, ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.qla8044_need_reset_handler, i32 noundef %256, i32 noundef %conv22.i, i32 noundef %xor.i) #5
  %and23.i = and i32 %drv_active.1.i, %drv_state.1.i
  %259 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %261 = tail call i32 @llvm.bswap.i32(i32 %and23.i) #5
  %nx_pcibase.i.i162.i = getelementptr inbounds %struct.qla_hw_data, ptr %260, i32 0, i32 242
  %262 = ptrtoint ptr %nx_pcibase.i.i162.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %nx_pcibase.i.i162.i, align 4
  %add.ptr.i.i163.i = getelementptr i8, ptr %263, i32 14216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i163.i, i32 %261) #5, !srcloc !426
  br label %if.end37.i

if.else.i:                                        ; preds = %do.end.i
  %flags24.i = getelementptr inbounds %struct.qla_hw_data, ptr %148, i32 0, i32 2
  %264 = ptrtoint ptr %flags24.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %bf.load25.i = load volatile i32, ptr %flags24.i, align 8
  %265 = and i32 %bf.load25.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool28.not.i = icmp ne i32 %265, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dev_state.1.i)
  %cmp29.i = icmp eq i32 %dev_state.1.i, 4
  %or.cond119.i = select i1 %tobool28.not.i, i1 %cmp29.i, i1 false
  br i1 %or.cond119.i, label %if.then31.i, label %if.else.i.if.end37.i_crit_edge

if.else.i.if.end37.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i

if.then31.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %266 = ptrtoint ptr %flags24.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %bf.load33.i = load volatile i32, ptr %flags24.i, align 8
  %bf.clear34.i = and i32 %bf.load33.i, -65
  store volatile i32 %bf.clear34.i, ptr %flags24.i, align 8
  %call35.i = tail call fastcc i32 @qla8044_device_bootstrap(ptr noundef %vha) #5
  br label %while.cond.backedge

if.end37.i:                                       ; preds = %if.else.i.if.end37.i_crit_edge, %if.then19.i
  %drv_active.2.i = phi i32 [ %and23.i, %if.then19.i ], [ %drv_state.1.i, %if.else.i.if.end37.i_crit_edge ]
  %portnum38.i = getelementptr inbounds %struct.qla_hw_data, ptr %148, i32 0, i32 254
  %267 = ptrtoint ptr %portnum38.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %portnum38.i, align 4
  %conv39.i = zext i16 %268 to i32
  %shl.i132 = shl nuw i32 1, %conv39.i
  %and40.i = and i32 %shl.i132, %drv_active.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  %flags43.i = getelementptr inbounds %struct.qla_hw_data, ptr %148, i32 0, i32 2
  %269 = ptrtoint ptr %flags43.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %bf.load44.i = load volatile i32, ptr %flags43.i, align 8
  br i1 %tobool41.not.i, label %if.then42.i, label %if.end47.i

if.then42.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear45.i = and i32 %bf.load44.i, -65
  %270 = ptrtoint ptr %flags43.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store volatile i32 %bf.clear45.i, ptr %flags43.i, align 8
  br label %while.cond.backedge

if.end47.i:                                       ; preds = %if.end37.i
  %271 = and i32 %bf.load44.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool52.not.i = icmp ne i32 %271, 0
  %and53.i = and i32 %drv_active.2.i, %drv_state.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and53.i)
  %cmp54.i = icmp eq i32 %and53.i, 128
  %or.cond120.i = select i1 %tobool52.not.i, i1 true, i1 %cmp54.i
  br i1 %or.cond120.i, label %if.then56.i, label %if.end47.i.while.cond.backedge_crit_edge

if.end47.i.while.cond.backedge_crit_edge:         ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.then56.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  %272 = ptrtoint ptr %flags43.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %bf.load58.i = load volatile i32, ptr %flags43.i, align 8
  %bf.clear59.i = and i32 %bf.load58.i, -65
  store volatile i32 %bf.clear59.i, ptr %flags43.i, align 8
  %call61.i = tail call fastcc i32 @qla8044_device_bootstrap(ptr noundef %vha) #5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %qla8044_idc_unlock.exit175, %qla8044_need_qsnt_handler.exit, %if.then56.i, %if.end47.i.while.cond.backedge_crit_edge, %if.then42.i, %if.then31.i, %qla8044_idc_unlock.exit, %sw.bb25
  %rval.0.be = phi i32 [ %rval.0, %if.then56.i ], [ %rval.0, %if.end47.i.while.cond.backedge_crit_edge ], [ %rval.0, %if.then42.i ], [ %rval.0, %if.then31.i ], [ %rval.0, %qla8044_idc_unlock.exit175 ], [ %rval.0, %qla8044_need_qsnt_handler.exit ], [ %rval.0, %qla8044_idc_unlock.exit ], [ %call26, %sw.bb25 ]
  %dev_init_timeout.0.be = phi i32 [ %dev_init_timeout.0, %if.then56.i ], [ %dev_init_timeout.0, %if.end47.i.while.cond.backedge_crit_edge ], [ %dev_init_timeout.0, %if.then42.i ], [ %dev_init_timeout.0, %if.then31.i ], [ %add37, %qla8044_idc_unlock.exit175 ], [ %add32, %qla8044_need_qsnt_handler.exit ], [ %dev_init_timeout.0, %qla8044_idc_unlock.exit ], [ %dev_init_timeout.0, %sw.bb25 ]
  br label %while.cond

sw.bb30:                                          ; preds = %cond.end23
  %273 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %hw, align 4
  %275 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %bf.load.i135 = load volatile i32, ptr %flags.i, align 8
  %276 = and i32 %bf.load.i135, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %tobool.not.i136 = icmp eq i32 %276, 0
  br i1 %tobool.not.i136, label %sw.bb30.qla8044_need_qsnt_handler.exit_crit_edge, label %if.then.i148

sw.bb30.qla8044_need_qsnt_handler.exit_crit_edge: ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_need_qsnt_handler.exit

if.then.i148:                                     ; preds = %sw.bb30
  tail call void @qla2x00_quiesce_io(ptr noundef %vha) #5
  %277 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i.i.i137 = getelementptr inbounds %struct.qla_hw_data, ptr %278, i32 0, i32 242
  %279 = ptrtoint ptr %nx_pcibase.i.i.i.i137 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %nx_pcibase.i.i.i.i137, align 4
  %add.ptr.i.i.i.i138 = getelementptr i8, ptr %280, i32 14220
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i138) #5, !srcloc !423
  %282 = tail call i32 @llvm.bswap.i32(i32 %281) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %portnum.i.i139 = getelementptr inbounds %struct.qla_hw_data, ptr %278, i32 0, i32 254
  %283 = ptrtoint ptr %portnum.i.i139 to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %portnum.i.i139, align 4
  %conv.i.i140 = zext i16 %284 to i32
  %shl.i.i141 = shl nuw i32 1, %conv.i.i140
  %or.i.i142 = or i32 %shl.i.i141, %282
  %285 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %287 = tail call i32 @llvm.bswap.i32(i32 %or.i.i142) #5
  %nx_pcibase.i.i8.i.i143 = getelementptr inbounds %struct.qla_hw_data, ptr %286, i32 0, i32 242
  %288 = ptrtoint ptr %nx_pcibase.i.i8.i.i143 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %nx_pcibase.i.i8.i.i143, align 4
  %add.ptr.i.i9.i.i144 = getelementptr i8, ptr %289, i32 14220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9.i.i144, i32 %287) #5, !srcloc !426
  %290 = ptrtoint ptr %host_no.i.i145 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %host_no.i.i145, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45198, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.qla8044_set_qsnt_ready, i32 noundef %291, i32 noundef %or.i.i142) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %292 = load volatile i32, ptr @jiffies, align 128
  %293 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i.i146 = getelementptr inbounds %struct.qla_hw_data, ptr %294, i32 0, i32 242
  %295 = ptrtoint ptr %nx_pcibase.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %nx_pcibase.i.i.i146, align 4
  %add.ptr.i.i.i147 = getelementptr i8, ptr %296, i32 14220
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i147) #5, !srcloc !423
  %298 = tail call i32 @llvm.bswap.i32(i32 %297) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %299 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i36.i = getelementptr inbounds %struct.qla_hw_data, ptr %300, i32 0, i32 242
  %301 = ptrtoint ptr %nx_pcibase.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %nx_pcibase.i.i36.i, align 4
  %add.ptr.i.i37.i = getelementptr i8, ptr %302, i32 14216
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i37.i) #5, !srcloc !423
  %304 = tail call i32 @llvm.bswap.i32(i32 %303) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %drv_active.073.i = shl i32 %304, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %298, i32 %drv_active.073.i)
  %cmp.not74.i = icmp eq i32 %298, %drv_active.073.i
  br i1 %cmp.not74.i, label %if.then.i148.while.end.i_crit_edge, label %while.body.lr.ph.i

if.then.i148.while.end.i_crit_edge:               ; preds = %if.then.i148
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then.i148
  %add.neg.i149 = sub i32 -3000, %292
  %nx_pcibase.i.i50.i = getelementptr inbounds %struct.qla_hw_data, ptr %274, i32 0, i32 242
  %portnum.i53.i = getelementptr inbounds %struct.qla_hw_data, ptr %274, i32 0, i32 254
  br label %while.body.i

while.body.i:                                     ; preds = %qla8044_idc_unlock.exit.i162.while.body.i_crit_edge, %while.body.lr.ph.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %305 = load volatile i32, ptr @jiffies, align 128
  %sub.i150 = add i32 %add.neg.i149, %305
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i150)
  %cmp2.i = icmp sgt i32 %sub.i150, -1
  br i1 %cmp2.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef 20, ptr noundef %dpc_flags.i) #5
  %306 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %nx_pcibase.i.i39.i151 = getelementptr inbounds %struct.qla_hw_data, ptr %307, i32 0, i32 242
  %308 = ptrtoint ptr %nx_pcibase.i.i39.i151 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %nx_pcibase.i.i39.i151, align 4
  %add.ptr.i.i40.i152 = getelementptr i8, ptr %309, i32 14212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i40.i152, i32 50331648) #5, !srcloc !426
  %310 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i.i42.i = getelementptr inbounds %struct.qla_hw_data, ptr %311, i32 0, i32 242
  %312 = ptrtoint ptr %nx_pcibase.i.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %nx_pcibase.i.i.i42.i, align 4
  %add.ptr.i.i.i43.i = getelementptr i8, ptr %313, i32 14220
  %314 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i43.i) #5, !srcloc !423
  %315 = tail call i32 @llvm.bswap.i32(i32 %314) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %portnum.i44.i = getelementptr inbounds %struct.qla_hw_data, ptr %311, i32 0, i32 254
  %316 = ptrtoint ptr %portnum.i44.i to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %portnum.i44.i, align 4
  %conv.i45.i = zext i16 %317 to i32
  %shl.i46.i = shl nuw i32 1, %conv.i45.i
  %neg.i.i153 = xor i32 %shl.i46.i, -1
  %and.i.i154 = and i32 %315, %neg.i.i153
  %318 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %320 = tail call i32 @llvm.bswap.i32(i32 %and.i.i154) #5
  %nx_pcibase.i.i8.i47.i = getelementptr inbounds %struct.qla_hw_data, ptr %319, i32 0, i32 242
  %321 = ptrtoint ptr %nx_pcibase.i.i8.i47.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %nx_pcibase.i.i8.i47.i, align 4
  %add.ptr.i.i9.i48.i = getelementptr i8, ptr %322, i32 14220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9.i48.i, i32 %320) #5, !srcloc !426
  %323 = ptrtoint ptr %host_no.i.i145 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %host_no.i.i145, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45199, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.qla8044_clear_qsnt_ready, i32 noundef %324, i32 noundef %and.i.i154) #5
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45260, ptr noundef nonnull @.str.104) #5
  br label %qla8044_need_qsnt_handler.exit

if.end4.i:                                        ; preds = %while.body.i
  %325 = ptrtoint ptr %274 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %274, align 128
  %driver_data.i.i.i.i155 = getelementptr inbounds %struct.pci_dev, ptr %326, i32 0, i32 44, i32 8
  %327 = ptrtoint ptr %driver_data.i.i.i.i155 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %driver_data.i.i.i.i155, align 4
  %329 = ptrtoint ptr %nx_pcibase.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %nx_pcibase.i.i50.i, align 4
  %add.ptr.i.i51.i = getelementptr i8, ptr %330, i32 13572
  %331 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51.i) #5, !srcloc !423
  %332 = tail call i32 @llvm.bswap.i32(i32 %331) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and.i52.i = and i32 %332, 255
  %333 = ptrtoint ptr %portnum.i53.i to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %portnum.i53.i, align 4
  %conv.i54.i = zext i16 %334 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i52.i, i32 %conv.i54.i)
  %cmp.not.i.i156 = icmp eq i32 %and.i52.i, %conv.i54.i
  br i1 %cmp.not.i.i156, label %if.end.i.i160, label %if.then.i.i157

if.then.i.i157:                                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %328, i32 noundef 45336, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla8044_idc_unlock, i32 noundef %conv.i54.i, i32 noundef %and.i52.i) #5
  br label %qla8044_idc_unlock.exit.i162

if.end.i.i160:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i55.i = or i32 %332, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %335 = tail call i32 @llvm.bswap.i32(i32 %or.i55.i) #5
  %336 = ptrtoint ptr %nx_pcibase.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %nx_pcibase.i.i50.i, align 4
  %add.ptr.i16.i.i158 = getelementptr i8, ptr %337, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i158, i32 %335) #5, !srcloc !426
  %338 = ptrtoint ptr %nx_pcibase.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %nx_pcibase.i.i50.i, align 4
  %add.ptr.i18.i.i159 = getelementptr i8, ptr %339, i32 14444
  %340 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i.i159) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %qla8044_idc_unlock.exit.i162

qla8044_idc_unlock.exit.i162:                     ; preds = %if.end.i.i160, %if.then.i.i157
  tail call void @msleep(i32 noundef 1000) #5
  %call5.i = tail call i32 @qla8044_idc_lock(ptr noundef %274) #5
  %341 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i57.i = getelementptr inbounds %struct.qla_hw_data, ptr %342, i32 0, i32 242
  %343 = ptrtoint ptr %nx_pcibase.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %nx_pcibase.i.i57.i, align 4
  %add.ptr.i.i58.i = getelementptr i8, ptr %344, i32 14220
  %345 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i58.i) #5, !srcloc !423
  %346 = tail call i32 @llvm.bswap.i32(i32 %345) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %347 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i61.i = getelementptr inbounds %struct.qla_hw_data, ptr %348, i32 0, i32 242
  %349 = ptrtoint ptr %nx_pcibase.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %nx_pcibase.i.i61.i, align 4
  %add.ptr.i.i62.i = getelementptr i8, ptr %350, i32 14216
  %351 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i62.i) #5, !srcloc !423
  %352 = tail call i32 @llvm.bswap.i32(i32 %351) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %drv_active.0.i = shl i32 %352, 1
  %cmp.not.i161 = icmp eq i32 %346, %drv_active.0.i
  br i1 %cmp.not.i161, label %qla8044_idc_unlock.exit.i162.while.end.i_crit_edge, label %qla8044_idc_unlock.exit.i162.while.body.i_crit_edge

qla8044_idc_unlock.exit.i162.while.body.i_crit_edge: ; preds = %qla8044_idc_unlock.exit.i162
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

qla8044_idc_unlock.exit.i162.while.end.i_crit_edge: ; preds = %qla8044_idc_unlock.exit.i162
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %qla8044_idc_unlock.exit.i162.while.end.i_crit_edge, %if.then.i148.while.end.i_crit_edge
  %353 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i65.i = getelementptr inbounds %struct.qla_hw_data, ptr %354, i32 0, i32 242
  %355 = ptrtoint ptr %nx_pcibase.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %nx_pcibase.i.i65.i, align 4
  %add.ptr.i.i66.i = getelementptr i8, ptr %356, i32 14212
  %357 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i66.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %357)
  %cmp10.i = icmp eq i32 %357, 83886080
  br i1 %cmp10.i, label %if.then11.i, label %while.end.i.qla8044_need_qsnt_handler.exit_crit_edge

while.end.i.qla8044_need_qsnt_handler.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_need_qsnt_handler.exit

if.then11.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %358 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %nx_pcibase.i.i69.i = getelementptr inbounds %struct.qla_hw_data, ptr %359, i32 0, i32 242
  %360 = ptrtoint ptr %nx_pcibase.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %nx_pcibase.i.i69.i, align 4
  %add.ptr.i.i70.i = getelementptr i8, ptr %361, i32 14212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70.i, i32 117440512) #5, !srcloc !426
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45261, ptr noundef nonnull @.str.105, ptr noundef nonnull @__func__.qla8044_need_qsnt_handler) #5
  br label %qla8044_need_qsnt_handler.exit

qla8044_need_qsnt_handler.exit:                   ; preds = %if.then11.i, %while.end.i.qla8044_need_qsnt_handler.exit_crit_edge, %if.then3.i, %sw.bb30.qla8044_need_qsnt_handler.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %362 = load volatile i32, ptr @jiffies, align 128
  %363 = ptrtoint ptr %fcoe_reset_timeout35 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %fcoe_reset_timeout35, align 4
  %mul31 = mul i32 %364, 100
  %add32 = add i32 %mul31, %362
  br label %while.cond.backedge

sw.bb33:                                          ; preds = %cond.end23
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45265, ptr noundef nonnull @.str.20) #5
  %365 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %1, align 128
  %driver_data.i.i.i163 = getelementptr inbounds %struct.pci_dev, ptr %366, i32 0, i32 44, i32 8
  %367 = ptrtoint ptr %driver_data.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %driver_data.i.i.i163, align 4
  %369 = ptrtoint ptr %nx_pcibase.i.i164 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %nx_pcibase.i.i164, align 4
  %add.ptr.i.i165 = getelementptr i8, ptr %370, i32 13572
  %371 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i165) #5, !srcloc !423
  %372 = tail call i32 @llvm.bswap.i32(i32 %371) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and.i166 = and i32 %372, 255
  %373 = ptrtoint ptr %portnum.i167 to i32
  call void @__asan_load2_noabort(i32 %373)
  %374 = load i16, ptr %portnum.i167, align 4
  %conv.i168 = zext i16 %374 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i166, i32 %conv.i168)
  %cmp.not.i169 = icmp eq i32 %and.i166, %conv.i168
  br i1 %cmp.not.i169, label %if.end.i174, label %if.then.i170

if.then.i170:                                     ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %368, i32 noundef 45336, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla8044_idc_unlock, i32 noundef %conv.i168, i32 noundef %and.i166) #5
  br label %qla8044_idc_unlock.exit175

if.end.i174:                                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  %or.i171 = or i32 %372, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %375 = tail call i32 @llvm.bswap.i32(i32 %or.i171) #5
  %376 = ptrtoint ptr %nx_pcibase.i.i164 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %nx_pcibase.i.i164, align 4
  %add.ptr.i16.i172 = getelementptr i8, ptr %377, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i172, i32 %375) #5, !srcloc !426
  %378 = ptrtoint ptr %nx_pcibase.i.i164 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %nx_pcibase.i.i164, align 4
  %add.ptr.i18.i173 = getelementptr i8, ptr %379, i32 14444
  %380 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i173) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %qla8044_idc_unlock.exit175

qla8044_idc_unlock.exit175:                       ; preds = %if.end.i174, %if.then.i170
  tail call void @msleep(i32 noundef 1000) #5
  %call34 = tail call i32 @qla8044_idc_lock(ptr noundef %1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %381 = load volatile i32, ptr @jiffies, align 128
  %382 = ptrtoint ptr %fcoe_reset_timeout35 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %fcoe_reset_timeout35, align 4
  %mul36 = mul i32 %383, 100
  %add37 = add i32 %mul36, %381
  br label %while.cond.backedge

sw.bb38:                                          ; preds = %cond.end23
  %flags39 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %384 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %384)
  %bf.load40 = load volatile i32, ptr %flags39, align 8
  %bf.clear41 = and i32 %bf.load40, -65
  store volatile i32 %bf.clear41, ptr %flags39, align 8
  %385 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %1, align 128
  %driver_data.i.i.i176 = getelementptr inbounds %struct.pci_dev, ptr %386, i32 0, i32 44, i32 8
  %387 = ptrtoint ptr %driver_data.i.i.i176 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %driver_data.i.i.i176, align 4
  %389 = ptrtoint ptr %nx_pcibase.i.i164 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %nx_pcibase.i.i164, align 4
  %add.ptr.i.i178 = getelementptr i8, ptr %390, i32 13572
  %391 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i178) #5, !srcloc !423
  %392 = tail call i32 @llvm.bswap.i32(i32 %391) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and.i179 = and i32 %392, 255
  %393 = ptrtoint ptr %portnum.i167 to i32
  call void @__asan_load2_noabort(i32 %393)
  %394 = load i16, ptr %portnum.i167, align 4
  %conv.i181 = zext i16 %394 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i179, i32 %conv.i181)
  %cmp.not.i182 = icmp eq i32 %and.i179, %conv.i181
  br i1 %cmp.not.i182, label %if.end.i187, label %if.then.i183

if.then.i183:                                     ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %388, i32 noundef 45336, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla8044_idc_unlock, i32 noundef %conv.i181, i32 noundef %and.i179) #5
  br label %qla8044_idc_unlock.exit188

if.end.i187:                                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #7
  %or.i184 = or i32 %392, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %395 = tail call i32 @llvm.bswap.i32(i32 %or.i184) #5
  %396 = ptrtoint ptr %nx_pcibase.i.i164 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %nx_pcibase.i.i164, align 4
  %add.ptr.i16.i185 = getelementptr i8, ptr %397, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i185, i32 %395) #5, !srcloc !426
  %398 = ptrtoint ptr %nx_pcibase.i.i164 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %nx_pcibase.i.i164, align 4
  %add.ptr.i18.i186 = getelementptr i8, ptr %399, i32 14444
  %400 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i186) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %qla8044_idc_unlock.exit188

qla8044_idc_unlock.exit188:                       ; preds = %if.end.i187, %if.then.i183
  tail call void @qla8xxx_dev_failed_handler(ptr noundef %vha) #5
  %call43 = tail call i32 @qla8044_idc_lock(ptr noundef %1)
  br label %exit

sw.default:                                       ; preds = %cond.end23
  %401 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %1, align 128
  %driver_data.i.i.i189 = getelementptr inbounds %struct.pci_dev, ptr %402, i32 0, i32 44, i32 8
  %403 = ptrtoint ptr %driver_data.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %driver_data.i.i.i189, align 4
  %405 = ptrtoint ptr %nx_pcibase.i.i164 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %nx_pcibase.i.i164, align 4
  %add.ptr.i.i191 = getelementptr i8, ptr %406, i32 13572
  %407 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i191) #5, !srcloc !423
  %408 = tail call i32 @llvm.bswap.i32(i32 %407) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and.i192 = and i32 %408, 255
  %409 = ptrtoint ptr %portnum.i167 to i32
  call void @__asan_load2_noabort(i32 %409)
  %410 = load i16, ptr %portnum.i167, align 4
  %conv.i194 = zext i16 %410 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i192, i32 %conv.i194)
  %cmp.not.i195 = icmp eq i32 %and.i192, %conv.i194
  br i1 %cmp.not.i195, label %if.end.i200, label %if.then.i196

if.then.i196:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %404, i32 noundef 45336, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla8044_idc_unlock, i32 noundef %conv.i194, i32 noundef %and.i192) #5
  br label %qla8044_idc_unlock.exit201

if.end.i200:                                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %or.i197 = or i32 %408, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %411 = tail call i32 @llvm.bswap.i32(i32 %or.i197) #5
  %412 = ptrtoint ptr %nx_pcibase.i.i164 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %nx_pcibase.i.i164, align 4
  %add.ptr.i16.i198 = getelementptr i8, ptr %413, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i198, i32 %411) #5, !srcloc !426
  %414 = ptrtoint ptr %nx_pcibase.i.i164 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %nx_pcibase.i.i164, align 4
  %add.ptr.i18.i199 = getelementptr i8, ptr %415, i32 14444
  %416 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i199) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %qla8044_idc_unlock.exit201

qla8044_idc_unlock.exit201:                       ; preds = %if.end.i200, %if.then.i196
  tail call void @qla8xxx_dev_failed_handler(ptr noundef %vha) #5
  %call44 = tail call i32 @qla8044_idc_lock(ptr noundef %1)
  br label %exit

exit:                                             ; preds = %qla8044_idc_unlock.exit201, %qla8044_idc_unlock.exit188, %sw.bb
  %rval.2 = phi i32 [ 258, %qla8044_idc_unlock.exit201 ], [ 258, %qla8044_idc_unlock.exit188 ], [ %rval.0, %sw.bb ]
  %417 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %1, align 128
  %driver_data.i.i.i202 = getelementptr inbounds %struct.pci_dev, ptr %418, i32 0, i32 44, i32 8
  %419 = ptrtoint ptr %driver_data.i.i.i202 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %driver_data.i.i.i202, align 4
  %421 = ptrtoint ptr %nx_pcibase.i.i164 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %nx_pcibase.i.i164, align 4
  %add.ptr.i.i204 = getelementptr i8, ptr %422, i32 13572
  %423 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i204) #5, !srcloc !423
  %424 = tail call i32 @llvm.bswap.i32(i32 %423) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and.i205 = and i32 %424, 255
  %425 = ptrtoint ptr %portnum.i167 to i32
  call void @__asan_load2_noabort(i32 %425)
  %426 = load i16, ptr %portnum.i167, align 4
  %conv.i207 = zext i16 %426 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i205, i32 %conv.i207)
  %cmp.not.i208 = icmp eq i32 %and.i205, %conv.i207
  br i1 %cmp.not.i208, label %if.end.i213, label %if.then.i209

if.then.i209:                                     ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %420, i32 noundef 45336, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla8044_idc_unlock, i32 noundef %conv.i207, i32 noundef %and.i205) #5
  br label %exit_error

if.end.i213:                                      ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #7
  %or.i210 = or i32 %424, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %427 = tail call i32 @llvm.bswap.i32(i32 %or.i210) #5
  %428 = ptrtoint ptr %nx_pcibase.i.i164 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %nx_pcibase.i.i164, align 4
  %add.ptr.i16.i211 = getelementptr i8, ptr %429, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i211, i32 %427) #5, !srcloc !426
  %430 = ptrtoint ptr %nx_pcibase.i.i164 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %nx_pcibase.i.i164, align 4
  %add.ptr.i18.i212 = getelementptr i8, ptr %431, i32 14444
  %432 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i212) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %exit_error

exit_error:                                       ; preds = %if.end.i213, %if.then.i209, %qla8044_update_idc_reg.exit.exit_error_crit_edge
  %rval.3 = phi i32 [ 258, %qla8044_update_idc_reg.exit.exit_error_crit_edge ], [ %rval.2, %if.then.i209 ], [ %rval.2, %if.end.i213 ]
  ret i32 %rval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdev_state(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_device_bootstrap(ptr noundef %vha) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %2 = ptrtoint ptr %nx_pcibase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nx_pcibase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 14216
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i7.i = getelementptr inbounds %struct.qla_hw_data, ptr %6, i32 0, i32 242
  %7 = ptrtoint ptr %nx_pcibase.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nx_pcibase.i.i7.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %8, i32 14220
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8.i) #5, !srcloc !423
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %portnum.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 254
  %11 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %portnum.i, align 4
  %conv.i = zext i16 %12 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, %10
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i = load volatile i32, ptr %flags.i, align 8
  %14 = and i32 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not.i = icmp eq i32 %4, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not100 = icmp eq i32 %and.i, 0
  %tobool.not = select i1 %or.cond.i, i1 %tobool.not100, i1 false
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 242
  %17 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 13488
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  tail call void @msleep(i32 noundef 200) #5
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i49 = getelementptr inbounds %struct.qla_hw_data, ptr %21, i32 0, i32 242
  %22 = ptrtoint ptr %nx_pcibase.i.i49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nx_pcibase.i.i49, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %23, i32 13488
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %19)
  %cmp3.not = icmp eq i32 %24, %19
  br i1 %cmp3.not, label %for.cond, label %if.then.dev_ready_crit_edge

if.then.dev_ready_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_ready

for.cond:                                         ; preds = %if.then
  tail call void @msleep(i32 noundef 200) #5
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i49.1 = getelementptr inbounds %struct.qla_hw_data, ptr %26, i32 0, i32 242
  %27 = ptrtoint ptr %nx_pcibase.i.i49.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nx_pcibase.i.i49.1, align 4
  %add.ptr.i.i50.1 = getelementptr i8, ptr %28, i32 13488
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50.1) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %19)
  %cmp3.not.1 = icmp eq i32 %29, %19
  br i1 %cmp3.not.1, label %for.cond.1, label %for.cond.dev_ready_crit_edge

for.cond.dev_ready_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_ready

for.cond.1:                                       ; preds = %for.cond
  tail call void @msleep(i32 noundef 200) #5
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i49.2 = getelementptr inbounds %struct.qla_hw_data, ptr %31, i32 0, i32 242
  %32 = ptrtoint ptr %nx_pcibase.i.i49.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nx_pcibase.i.i49.2, align 4
  %add.ptr.i.i50.2 = getelementptr i8, ptr %33, i32 13488
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50.2) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %19)
  %cmp3.not.2 = icmp eq i32 %34, %19
  br i1 %cmp3.not.2, label %for.cond.2, label %for.cond.1.dev_ready_crit_edge

for.cond.1.dev_ready_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_ready

for.cond.2:                                       ; preds = %for.cond.1
  tail call void @msleep(i32 noundef 200) #5
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i49.3 = getelementptr inbounds %struct.qla_hw_data, ptr %36, i32 0, i32 242
  %37 = ptrtoint ptr %nx_pcibase.i.i49.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nx_pcibase.i.i49.3, align 4
  %add.ptr.i.i50.3 = getelementptr i8, ptr %38, i32 13488
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50.3) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %19)
  %cmp3.not.3 = icmp eq i32 %39, %19
  br i1 %cmp3.not.3, label %for.cond.3, label %for.cond.2.dev_ready_crit_edge

for.cond.2.dev_ready_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_ready

for.cond.3:                                       ; preds = %for.cond.2
  tail call void @msleep(i32 noundef 200) #5
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i49.4 = getelementptr inbounds %struct.qla_hw_data, ptr %41, i32 0, i32 242
  %42 = ptrtoint ptr %nx_pcibase.i.i49.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nx_pcibase.i.i49.4, align 4
  %add.ptr.i.i50.4 = getelementptr i8, ptr %43, i32 13488
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50.4) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %19)
  %cmp3.not.4 = icmp eq i32 %44, %19
  br i1 %cmp3.not.4, label %for.cond.4, label %for.cond.3.dev_ready_crit_edge

for.cond.3.dev_ready_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_ready

for.cond.4:                                       ; preds = %for.cond.3
  tail call void @msleep(i32 noundef 200) #5
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i49.5 = getelementptr inbounds %struct.qla_hw_data, ptr %46, i32 0, i32 242
  %47 = ptrtoint ptr %nx_pcibase.i.i49.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nx_pcibase.i.i49.5, align 4
  %add.ptr.i.i50.5 = getelementptr i8, ptr %48, i32 13488
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50.5) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %19)
  %cmp3.not.5 = icmp eq i32 %49, %19
  br i1 %cmp3.not.5, label %for.cond.5, label %for.cond.4.dev_ready_crit_edge

for.cond.4.dev_ready_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_ready

for.cond.5:                                       ; preds = %for.cond.4
  tail call void @msleep(i32 noundef 200) #5
  %50 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i49.6 = getelementptr inbounds %struct.qla_hw_data, ptr %51, i32 0, i32 242
  %52 = ptrtoint ptr %nx_pcibase.i.i49.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %nx_pcibase.i.i49.6, align 4
  %add.ptr.i.i50.6 = getelementptr i8, ptr %53, i32 13488
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50.6) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %19)
  %cmp3.not.6 = icmp eq i32 %54, %19
  br i1 %cmp3.not.6, label %for.cond.6, label %for.cond.5.dev_ready_crit_edge

for.cond.5.dev_ready_crit_edge:                   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_ready

for.cond.6:                                       ; preds = %for.cond.5
  tail call void @msleep(i32 noundef 200) #5
  %55 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i49.7 = getelementptr inbounds %struct.qla_hw_data, ptr %56, i32 0, i32 242
  %57 = ptrtoint ptr %nx_pcibase.i.i49.7 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %nx_pcibase.i.i49.7, align 4
  %add.ptr.i.i50.7 = getelementptr i8, ptr %58, i32 13488
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50.7) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %19)
  %cmp3.not.7 = icmp eq i32 %59, %19
  br i1 %cmp3.not.7, label %for.cond.7, label %for.cond.6.dev_ready_crit_edge

for.cond.6.dev_ready_crit_edge:                   ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_ready

for.cond.7:                                       ; preds = %for.cond.6
  tail call void @msleep(i32 noundef 200) #5
  %60 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i49.8 = getelementptr inbounds %struct.qla_hw_data, ptr %61, i32 0, i32 242
  %62 = ptrtoint ptr %nx_pcibase.i.i49.8 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %nx_pcibase.i.i49.8, align 4
  %add.ptr.i.i50.8 = getelementptr i8, ptr %63, i32 13488
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50.8) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %19)
  %cmp3.not.8 = icmp eq i32 %64, %19
  br i1 %cmp3.not.8, label %for.cond.8, label %for.cond.7.dev_ready_crit_edge

for.cond.7.dev_ready_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_ready

for.cond.8:                                       ; preds = %for.cond.7
  tail call void @msleep(i32 noundef 200) #5
  %65 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i49.9 = getelementptr inbounds %struct.qla_hw_data, ptr %66, i32 0, i32 242
  %67 = ptrtoint ptr %nx_pcibase.i.i49.9 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %nx_pcibase.i.i49.9, align 4
  %add.ptr.i.i50.9 = getelementptr i8, ptr %68, i32 13488
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50.9) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %19)
  %cmp3.not.9 = icmp eq i32 %69, %19
  br i1 %cmp3.not.9, label %for.cond.9, label %for.cond.8.dev_ready_crit_edge

for.cond.8.dev_ready_crit_edge:                   ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_ready

for.cond.9:                                       ; preds = %for.cond.8
  %call.i = tail call fastcc i32 @qla8044_flash_lock(ptr noundef %vha) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i51 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i51, label %for.cond.9.qla8044_flash_lock_recovery.exit_crit_edge, label %if.then.i

for.cond.9.qla8044_flash_lock_recovery.exit_crit_edge: ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_flash_lock_recovery.exit

if.then.i:                                        ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45344, ptr noundef nonnull @.str.71) #5
  br label %qla8044_flash_lock_recovery.exit

qla8044_flash_lock_recovery.exit:                 ; preds = %if.then.i, %for.cond.9.qla8044_flash_lock_recovery.exit_crit_edge
  %70 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %nx_pcibase.i.i.i52 = getelementptr inbounds %struct.qla_hw_data, ptr %71, i32 0, i32 242
  %72 = ptrtoint ptr %nx_pcibase.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %nx_pcibase.i.i.i52, align 4
  %add.ptr.i.i.i53 = getelementptr i8, ptr %73, i32 13568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i53, i32 -16777216) #5, !srcloc !426
  %74 = ptrtoint ptr %nx_pcibase.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %nx_pcibase.i.i.i52, align 4
  %add.ptr.i3.i.i = getelementptr i8, ptr %75, i32 14420
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %if.end8

if.else:                                          ; preds = %entry
  %77 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %bf.load = load volatile i32, ptr %flags.i, align 8
  %78 = and i32 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool5.not = icmp eq i32 %78, 0
  br i1 %tobool5.not, label %if.else.if.end8_crit_edge, label %if.then6

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %if.else
  %call.i54 = tail call fastcc i32 @qla8044_flash_lock(ptr noundef %vha) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool.not.i55 = icmp eq i32 %call.i54, 0
  br i1 %tobool.not.i55, label %if.then6.qla8044_flash_lock_recovery.exit61_crit_edge, label %if.then.i56

if.then6.qla8044_flash_lock_recovery.exit61_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_flash_lock_recovery.exit61

if.then.i56:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45344, ptr noundef nonnull @.str.71) #5
  br label %qla8044_flash_lock_recovery.exit61

qla8044_flash_lock_recovery.exit61:               ; preds = %if.then.i56, %if.then6.qla8044_flash_lock_recovery.exit61_crit_edge
  %79 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %nx_pcibase.i.i.i58 = getelementptr inbounds %struct.qla_hw_data, ptr %80, i32 0, i32 242
  %81 = ptrtoint ptr %nx_pcibase.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %nx_pcibase.i.i.i58, align 4
  %add.ptr.i.i.i59 = getelementptr i8, ptr %82, i32 13568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i59, i32 -16777216) #5, !srcloc !426
  %83 = ptrtoint ptr %nx_pcibase.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %nx_pcibase.i.i.i58, align 4
  %add.ptr.i3.i.i60 = getelementptr i8, ptr %84, i32 14420
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i.i60) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %if.end8

if.end8:                                          ; preds = %qla8044_flash_lock_recovery.exit61, %if.else.if.end8_crit_edge, %qla8044_flash_lock_recovery.exit
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45234, ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.qla8044_device_bootstrap) #5
  %86 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %nx_pcibase.i.i63 = getelementptr inbounds %struct.qla_hw_data, ptr %87, i32 0, i32 242
  %88 = ptrtoint ptr %nx_pcibase.i.i63 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %nx_pcibase.i.i63, align 4
  %add.ptr.i.i64 = getelementptr i8, ptr %89, i32 14212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i64, i32 33554432) #5, !srcloc !426
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44, i32 8
  %92 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %driver_data.i.i.i, align 4
  %94 = ptrtoint ptr %nx_pcibase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %nx_pcibase.i.i.i, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %95, i32 13572
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i67) #5, !srcloc !423
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and.i68 = and i32 %97, 255
  %98 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %portnum.i, align 4
  %conv.i70 = zext i16 %99 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i68, i32 %conv.i70)
  %cmp.not.i = icmp eq i32 %and.i68, %conv.i70
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i71

if.then.i71:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %93, i32 noundef 45336, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla8044_idc_unlock, i32 noundef %conv.i70, i32 noundef %and.i68) #5
  br label %qla8044_idc_unlock.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %97, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %100 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %101 = ptrtoint ptr %nx_pcibase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %nx_pcibase.i.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %102, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %100) #5, !srcloc !426
  %103 = ptrtoint ptr %nx_pcibase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %nx_pcibase.i.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %104, i32 14444
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %qla8044_idc_unlock.exit

qla8044_idc_unlock.exit:                          ; preds = %if.end.i, %if.then.i71
  %106 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw, align 4
  %reset_tmplt.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61
  %108 = ptrtoint ptr %reset_tmplt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %reset_tmplt.i.i.i, align 4
  %stop_offset.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 5
  %109 = ptrtoint ptr %stop_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %stop_offset.i.i.i, align 4
  tail call fastcc void @qla8044_process_reset_template(ptr noundef %vha, ptr noundef %110) #5
  %seq_end.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 9
  %111 = ptrtoint ptr %seq_end.i.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %seq_end.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %112)
  %cmp.not.i.i.i = icmp eq i8 %112, 1
  br i1 %cmp.not.i.i.i, label %qla8044_idc_unlock.exit.qla8044_process_stop_seq.exit.i.i_crit_edge, label %if.then.i.i.i

qla8044_idc_unlock.exit.qla8044_process_stop_seq.exit.i.i_crit_edge: ; preds = %qla8044_idc_unlock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_process_stop_seq.exit.i.i

if.then.i.i.i:                                    ; preds = %qla8044_idc_unlock.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45209, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.qla8044_process_stop_seq) #5
  br label %qla8044_process_stop_seq.exit.i.i

qla8044_process_stop_seq.exit.i.i:                ; preds = %if.then.i.i.i, %qla8044_idc_unlock.exit.qla8044_process_stop_seq.exit.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xmdenable to i32))
  %113 = load i32, ptr @ql2xmdenable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i.i = icmp eq i32 %113, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %qla8044_process_stop_seq.exit.i.i
  %114 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hw, align 4
  %call.i.i.i = tail call i32 @qla8044_collect_md_data(ptr noundef %vha) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i11.i.i, label %if.else.i.i.i

if.then.i11.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %fw_dumped.i.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 167
  %116 = ptrtoint ptr %fw_dumped.i.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %fw_dumped.i.i.i, align 4
  br label %qla8044_get_minidump.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45275, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.qla8044_get_minidump) #5
  br label %qla8044_get_minidump.exit.i.i

qla8044_get_minidump.exit.i.i:                    ; preds = %if.else.i.i.i, %if.then.i11.i.i
  %.sink.i.i.i = phi i32 [ 0, %if.then.i11.i.i ], [ 1, %if.else.i.i.i ]
  %117 = getelementptr inbounds %struct.qla_hw_data, ptr %115, i32 0, i32 173
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %.sink.i.i.i, ptr %117, align 4
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %qla8044_process_stop_seq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45388, ptr noundef nonnull @.str.75) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %qla8044_get_minidump.exit.i.i
  %init_offset.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 7
  %119 = ptrtoint ptr %init_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %init_offset.i.i.i, align 4
  tail call fastcc void @qla8044_process_reset_template(ptr noundef %vha, ptr noundef %120) #5
  %121 = ptrtoint ptr %seq_end.i.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %seq_end.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %122)
  %cmp.not.i13.i.i = icmp eq i8 %122, 1
  br i1 %cmp.not.i13.i.i, label %if.end.i.i.qla8044_process_init_seq.exit.i.i_crit_edge, label %if.then.i14.i.i

if.end.i.i.qla8044_process_init_seq.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_process_init_seq.exit.i.i

if.then.i14.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45208, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.qla8044_process_init_seq) #5
  br label %qla8044_process_init_seq.exit.i.i

qla8044_process_init_seq.exit.i.i:                ; preds = %if.then.i14.i.i, %if.end.i.i.qla8044_process_init_seq.exit.i.i_crit_edge
  %123 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %124, i32 0, i32 242
  %125 = ptrtoint ptr %nx_pcibase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %nx_pcibase.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %126, i32 13660
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #5, !srcloc !423
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %conv.i.i.i = zext i32 %128 to i64
  %129 = ptrtoint ptr %nx_pcibase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %nx_pcibase.i.i.i.i, align 4
  %add.ptr.i39.i.i.i = getelementptr i8, ptr %130, i32 13664
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i.i.i) #5, !srcloc !423
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %.biased.i.i.i = add i32 %132, 15
  %size.0.i.i.i = and i32 %.biased.i.i.i, -16
  %div36.i.i.i = lshr i32 %.biased.i.i.i, 4
  %call3.i.i.i = tail call noalias ptr @vmalloc(i32 noundef %size.0.i.i.i) #8
  %cmp.i.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %cmp.i.i.i, label %qla8044_copy_bootloader.exit.thread.i.i, label %if.end6.i.i.i

qla8044_copy_bootloader.exit.thread.i.i:          ; preds = %qla8044_process_init_seq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45222, ptr noundef nonnull @.str.86, ptr noundef nonnull @__func__.qla8044_copy_bootloader) #5
  br label %if.then.i75

if.end6.i.i.i:                                    ; preds = %qla8044_process_init_seq.exit.i.i
  %div737.i.i.i = lshr exact i32 %size.0.i.i.i, 2
  %call8.i.i.i = tail call fastcc i32 @qla8044_lockless_flash_read_u32(ptr noundef %vha, i32 noundef 65536, ptr noundef nonnull %call3.i.i.i, i32 noundef %div737.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 258, i32 %call8.i.i.i)
  %cmp9.i.i.i = icmp eq i32 %call8.i.i.i, 258
  br i1 %cmp9.i.i.i, label %if.then11.i.i.i, label %if.end12.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45223, ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.qla8044_copy_bootloader) #5
  br label %qla8044_copy_bootloader.exit.thread20.i.i

if.end12.i.i.i:                                   ; preds = %if.end6.i.i.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45224, ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.qla8044_copy_bootloader) #5
  %call13.i.i.i = tail call fastcc i32 @qla8044_ms_mem_write_128b(ptr noundef %vha, i64 noundef %conv.i.i.i, ptr noundef nonnull %call3.i.i.i, i32 noundef %div36.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 258, i32 %call13.i.i.i)
  %cmp14.i.i.i = icmp eq i32 %call13.i.i.i, 258
  br i1 %cmp14.i.i.i, label %if.then16.i.i.i, label %qla8044_copy_bootloader.exit.i.i

if.then16.i.i.i:                                  ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45225, ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.qla8044_copy_bootloader) #5
  br label %qla8044_copy_bootloader.exit.thread20.i.i

qla8044_copy_bootloader.exit.thread20.i.i:        ; preds = %if.then16.i.i.i, %if.then11.i.i.i
  tail call void @vfree(ptr noundef nonnull %call3.i.i.i) #5
  br label %if.then.i75

qla8044_copy_bootloader.exit.i.i:                 ; preds = %if.end12.i.i.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45226, ptr noundef nonnull @.str.90, ptr noundef nonnull @__func__.qla8044_copy_bootloader, i32 noundef %size.0.i.i.i) #5
  tail call void @vfree(ptr noundef nonnull %call3.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %call13.i.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %qla8044_copy_bootloader.exit.i.i.if.then.i75_crit_edge

qla8044_copy_bootloader.exit.i.i.if.then.i75_crit_edge: ; preds = %qla8044_copy_bootloader.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i75

if.end3.i.i:                                      ; preds = %qla8044_copy_bootloader.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %nx_pcibase.i.i.i73 = getelementptr inbounds %struct.qla_hw_data, ptr %107, i32 0, i32 242
  %133 = ptrtoint ptr %nx_pcibase.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %nx_pcibase.i.i.i73, align 4
  %add.ptr.i.i.i74 = getelementptr i8, ptr %134, i32 13820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i74, i32 0) #5, !srcloc !426
  %start_offset.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 6
  %135 = ptrtoint ptr %start_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %start_offset.i.i.i, align 4
  tail call fastcc void @qla8044_process_reset_template(ptr noundef %vha, ptr noundef %136) #5
  %template_end.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 10
  %137 = ptrtoint ptr %template_end.i.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %template_end.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %138)
  %cmp.not.i16.i.i = icmp eq i8 %138, 1
  br i1 %cmp.not.i16.i.i, label %if.end3.i.i.if.else.i_crit_edge, label %if.then.i17.i.i

if.end3.i.i.if.else.i_crit_edge:                  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then.i17.i.i:                                  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45210, ptr noundef nonnull @.str.97, ptr noundef nonnull @__func__.qla8044_process_start_seq) #5
  br label %if.else.i

if.then.i75:                                      ; preds = %qla8044_copy_bootloader.exit.i.i.if.then.i75_crit_edge, %qla8044_copy_bootloader.exit.thread20.i.i, %qla8044_copy_bootloader.exit.thread.i.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45227, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.qla8044_restart) #5
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45229, ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.qla8044_start_firmware) #5
  br label %if.then12

if.else.i:                                        ; preds = %if.then.i17.i.i, %if.end3.i.i.if.else.i_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45231, ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.qla8044_start_firmware) #5
  %139 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i11.i = getelementptr inbounds %struct.qla_hw_data, ptr %140, i32 0, i32 242
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i15.i.do.body.i.i_crit_edge, %if.else.i
  %retries.0.i.i = phi i32 [ 60, %if.else.i ], [ %dec.i.i, %if.end.i15.i.do.body.i.i_crit_edge ]
  %141 = ptrtoint ptr %nx_pcibase.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %nx_pcibase.i.i11.i, align 4
  %add.ptr.i.i12.i = getelementptr i8, ptr %142, i32 13904
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 33488896, i32 %143)
  %cmp.i.i = icmp eq i32 %143, 33488896
  br i1 %cmp.i.i, label %if.end13, label %if.end.i15.i

if.end.i15.i:                                     ; preds = %do.body.i.i
  tail call void @msleep(i32 noundef 500) #5
  %dec.i.i = add nsw i32 %retries.0.i.i, -1
  %tobool.not.i14.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i14.i, label %if.then3.i, label %if.end.i15.i.do.body.i.i_crit_edge

if.end.i15.i.do.body.i.i_crit_edge:               ; preds = %if.end.i15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

if.then3.i:                                       ; preds = %if.end.i15.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45232, ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.qla8044_start_firmware) #5
  br label %if.then12

if.then12:                                        ; preds = %if.then3.i, %if.then.i75
  %call1097 = tail call i32 @qla8044_idc_lock(ptr noundef %1)
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45235, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.qla8044_device_bootstrap) #5
  %144 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %1, align 128
  %driver_data.i.i.i76 = getelementptr inbounds %struct.pci_dev, ptr %145, i32 0, i32 44, i32 8
  %146 = ptrtoint ptr %driver_data.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %driver_data.i.i.i76, align 4
  %hw.i.i77 = getelementptr inbounds %struct.scsi_qla_host, ptr %147, i32 0, i32 52
  %148 = ptrtoint ptr %hw.i.i77 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hw.i.i77, align 4
  %nx_pcibase.i.i.i78 = getelementptr inbounds %struct.qla_hw_data, ptr %149, i32 0, i32 242
  %150 = ptrtoint ptr %nx_pcibase.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %nx_pcibase.i.i.i78, align 4
  %add.ptr.i.i.i79 = getelementptr i8, ptr %151, i32 14216
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i79) #5, !srcloc !423
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %154 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %portnum.i, align 4
  %conv.i81 = zext i16 %155 to i32
  %shl.i82 = shl nuw i32 1, %conv.i81
  %neg.i = xor i32 %shl.i82, -1
  %and.i83 = and i32 %153, %neg.i
  %host_no.i = getelementptr inbounds %struct.scsi_qla_host, ptr %147, i32 0, i32 6
  %156 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %host_no.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %147, i32 noundef 45233, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.qla8044_clear_drv_active, i32 noundef %157, i32 noundef %and.i83) #5
  %158 = ptrtoint ptr %hw.i.i77 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hw.i.i77, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %160 = tail call i32 @llvm.bswap.i32(i32 %and.i83) #5
  %nx_pcibase.i.i9.i = getelementptr inbounds %struct.qla_hw_data, ptr %159, i32 0, i32 242
  %161 = ptrtoint ptr %nx_pcibase.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %nx_pcibase.i.i9.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %162, i32 14216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i, i32 %160) #5, !srcloc !426
  %163 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %nx_pcibase.i.i85 = getelementptr inbounds %struct.qla_hw_data, ptr %164, i32 0, i32 242
  %165 = ptrtoint ptr %nx_pcibase.i.i85 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %nx_pcibase.i.i85, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %166, i32 14212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i86, i32 100663296) #5, !srcloc !426
  br label %cleanup

if.end13:                                         ; preds = %do.body.i.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45228, ptr noundef nonnull @.str.98, ptr noundef nonnull @__func__.qla8044_check_cmd_peg_status, i32 noundef 65281) #5
  %call10 = tail call i32 @qla8044_idc_lock(ptr noundef %1)
  %167 = ptrtoint ptr %nx_pcibase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %nx_pcibase.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %168, i32 14224
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !423
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and = and i32 %170, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end13.dev_ready_crit_edge, label %if.then16

if.end13.dev_ready_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_ready

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %and17 = and i32 %170, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %171 = tail call i32 @llvm.bswap.i32(i32 %and17) #5
  %172 = ptrtoint ptr %nx_pcibase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %nx_pcibase.i.i.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %173, i32 14224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %171) #5, !srcloc !426
  %fw_dumped = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 167
  %174 = ptrtoint ptr %fw_dumped to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %fw_dumped, align 4
  br label %dev_ready

dev_ready:                                        ; preds = %if.then16, %if.end13.dev_ready_crit_edge, %for.cond.8.dev_ready_crit_edge, %for.cond.7.dev_ready_crit_edge, %for.cond.6.dev_ready_crit_edge, %for.cond.5.dev_ready_crit_edge, %for.cond.4.dev_ready_crit_edge, %for.cond.3.dev_ready_crit_edge, %for.cond.2.dev_ready_crit_edge, %for.cond.1.dev_ready_crit_edge, %for.cond.dev_ready_crit_edge, %if.then.dev_ready_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45236, ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.qla8044_device_bootstrap) #5
  %175 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %nx_pcibase.i.i92 = getelementptr inbounds %struct.qla_hw_data, ptr %176, i32 0, i32 242
  %177 = ptrtoint ptr %nx_pcibase.i.i92 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %nx_pcibase.i.i92, align 4
  %add.ptr.i.i93 = getelementptr i8, ptr %178, i32 14212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i93, i32 50331648) #5, !srcloc !426
  br label %cleanup

cleanup:                                          ; preds = %dev_ready, %if.then12
  %retval.0 = phi i32 [ 258, %if.then12 ], [ 0, %dev_ready ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla8xxx_dev_failed_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla8044_read_temperature(ptr nocapture noundef readonly %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw.i, align 4
  %nx_pcibase.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %2 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 14260
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !423
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %shr = lshr i32 %5, 16
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla8044_check_fw_alive(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw.i, align 4
  %nx_pcibase.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %2 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 13488
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !423
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 6
  %6 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host_no, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45268, ptr noundef nonnull @.str.21, i32 noundef %7, ptr noundef nonnull @__func__.qla8044_check_fw_alive) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_heartbeat_counter1 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 55
  %8 = ptrtoint ptr %fw_heartbeat_counter1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_heartbeat_counter1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp2 = icmp eq i32 %9, %5
  %seconds_since_last_heartbeat = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 56
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %10 = ptrtoint ptr %seconds_since_last_heartbeat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seconds_since_last_heartbeat, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %seconds_since_last_heartbeat, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp5 = icmp eq i32 %inc, 2
  br i1 %cmp5, label %if.then6, label %if.then3.if.end13_crit_edge

if.then3.if.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %seconds_since_last_heartbeat to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %seconds_since_last_heartbeat, align 8
  %13 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw.i, align 4
  %nx_pcibase.i.i34 = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 242
  %15 = ptrtoint ptr %nx_pcibase.i.i34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nx_pcibase.i.i34, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %16, i32 13480
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #5, !srcloc !423
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %19 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw.i, align 4
  %nx_pcibase.i.i37 = getelementptr inbounds %struct.qla_hw_data, ptr %20, i32 0, i32 242
  %21 = ptrtoint ptr %nx_pcibase.i.i37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nx_pcibase.i.i37, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %22, i32 13484
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i38) #5, !srcloc !423
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %host_no10 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 6
  %25 = ptrtoint ptr %host_no10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %host_no10, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45269, ptr noundef nonnull @.str.22, i32 noundef %26, ptr noundef nonnull @__func__.qla8044_check_fw_alive, i32 noundef %18, i32 noundef %24) #5
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %seconds_since_last_heartbeat to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %seconds_since_last_heartbeat, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then6, %if.then3.if.end13_crit_edge
  %status.0 = phi i32 [ 258, %if.then6 ], [ 0, %if.then3.if.end13_crit_edge ], [ 0, %if.else ]
  %28 = ptrtoint ptr %fw_heartbeat_counter1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %5, ptr %fw_heartbeat_counter1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %status.0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla8044_watchdog(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 11
  %2 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dpc_flags, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end59_crit_edge

entry.if.end59_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %dpc_flags, align 4
  %7 = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.then, label %lor.lhs.false.if.end59_crit_edge

lor.lhs.false.if.end59_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then:                                          ; preds = %lor.lhs.false
  %nx_pcibase.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %8 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 14212
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !423
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %call5 = tail call i32 @qla8044_check_fw_alive(ptr noundef %vha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load = load volatile i32, ptr %flags, align 8
  %bf.set = or i32 %bf.load, 1024
  store volatile i32 %bf.set, ptr %flags, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45322, ptr noundef nonnull @.str.23) #5
  tail call void @qla82xx_clear_pending_mbx(ptr noundef %vha) #5
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 242
  %15 = ptrtoint ptr %nx_pcibase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nx_pcibase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 14260
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !423
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %shr.i96 = lshr i32 %18, 16
  %trunc.i = trunc i32 %18 to i16
  %19 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.143)
  switch i16 %trunc.i, label %if.end.if.else_crit_edge [
    i16 3, label %if.then10
    i16 2, label %if.then2.i
  ]

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45267, ptr noundef nonnull @.str.107, i32 noundef %shr.i96) #5
  br label %if.else

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45266, ptr noundef nonnull @.str.106, i32 noundef %shr.i96) #5
  tail call void @_set_bit(i32 noundef 17, ptr noundef %dpc_flags) #5
  %flags12 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load13 = load volatile i32, ptr %flags12, align 8
  %bf.set15 = or i32 %bf.load13, 1024
  store volatile i32 %bf.set15, ptr %flags12, align 8
  br label %if.end59.sink.split

if.else:                                          ; preds = %if.then2.i, %if.end.if.else_crit_edge
  %21 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %11, label %if.else.if.else29_crit_edge [
    i32 4, label %land.lhs.true
    i32 5, label %land.lhs.true23
  ]

if.else.if.else29_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else29

land.lhs.true:                                    ; preds = %if.else
  %22 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %dpc_flags, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool18.not = icmp eq i32 %24, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true.if.else29_crit_edge

land.lhs.true.if.else29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else29

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45270, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.qla8044_watchdog) #5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags) #5
  br label %if.end59.sink.split

land.lhs.true23:                                  ; preds = %if.else
  %25 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %dpc_flags, align 4
  %27 = and i32 %26, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool26.not = icmp eq i32 %27, 0
  br i1 %tobool26.not, label %if.then27, label %land.lhs.true23.if.else29_crit_edge

land.lhs.true23.if.else29_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else29

if.then27:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45271, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.qla8044_watchdog) #5
  tail call void @_set_bit(i32 noundef 20, ptr noundef %dpc_flags) #5
  br label %if.end59.sink.split

if.else29:                                        ; preds = %land.lhs.true23.if.else29_crit_edge, %land.lhs.true.if.else29_crit_edge, %if.else.if.else29_crit_edge
  %flags30 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load31 = load volatile i32, ptr %flags30, align 8
  %29 = and i32 %bf.load31, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool33.not = icmp eq i32 %29, 0
  br i1 %tobool33.not, label %if.else29.if.end59_crit_edge, label %if.then34

if.else29.if.end59_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then34:                                        ; preds = %if.else29
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i98 = getelementptr inbounds %struct.qla_hw_data, ptr %31, i32 0, i32 242
  %32 = ptrtoint ptr %nx_pcibase.i.i98 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nx_pcibase.i.i98, align 4
  %add.ptr.i.i99 = getelementptr i8, ptr %33, i32 13480
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i99) #5, !srcloc !423
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and = and i32 %35, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.else38, label %if.then37

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45272, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.qla8044_watchdog) #5
  br label %if.else47

if.else38:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %tobool40.not = icmp sgt i32 %35, -1
  br i1 %tobool40.not, label %if.else38.if.else47_crit_edge, label %if.then45

if.else38.if.else47_crit_edge:                    ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else47

if.then45:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 17, ptr noundef %dpc_flags) #5
  br label %if.end59.sink.split

if.else47:                                        ; preds = %if.else38.if.else47_crit_edge, %if.then37
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %10)
  %cmp48 = icmp eq i32 %10, 117440512
  br i1 %cmp48, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 18, ptr noundef %dpc_flags) #5
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45273, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.qla8044_watchdog) #5
  br label %if.end59.sink.split

if.else51:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45274, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.qla8044_watchdog) #5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dpc_flags) #5
  br label %if.end59.sink.split

if.end59.sink.split:                              ; preds = %if.else51, %if.then49, %if.then45, %if.then27, %if.then19, %if.then10
  tail call void @qla2xxx_wake_dpc(ptr noundef %vha) #5
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %if.else29.if.end59_crit_edge, %lor.lhs.false.if.end59_crit_edge, %entry.if.end59_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla82xx_clear_pending_mbx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2xxx_wake_dpc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla8044_collect_md_data(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  %r_value.i302 = alloca i32, align 4
  %r_value.i = alloca i32, align 4
  %c_value_r.i = alloca i32, align 4
  %data_ptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_ptr) #5
  %0 = ptrtoint ptr %data_ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %data_ptr, align 4, !annotation !427
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %md_dump = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 266
  %3 = ptrtoint ptr %md_dump to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %md_dump, align 16
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 6
  %5 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host_no, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45313, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.qla8044_collect_md_data, i32 noundef %6) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_dumped = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 167
  %7 = ptrtoint ptr %fw_dumped to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fw_dumped, align 4, !range !428
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %fw_dump = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 164
  %9 = ptrtoint ptr %fw_dump to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw_dump, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45325, ptr noundef nonnull @.str.30, ptr noundef %10) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %11 = ptrtoint ptr %fw_dumped to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %fw_dumped, align 4
  %md_tmplt_hdr = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 264
  %12 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %md_tmplt_hdr, align 8
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45326, ptr noundef nonnull @.str.31) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %call = tail call i32 @qla8044_idc_lock(ptr noundef %2)
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 242
  %14 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 14224
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !423
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end9
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45330, ptr noundef nonnull @.str.32) #5
  %and13 = and i32 %17, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %and13) #5
  %19 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i284 = getelementptr i8, ptr %20, i32 14224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i284, i32 %18) #5, !srcloc !426
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44, i32 8
  %23 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i.i, align 4
  %25 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 13572
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !423
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and.i = and i32 %28, 255
  %portnum.i = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 254
  %29 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %portnum.i, align 4
  %conv.i = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %and.i, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %24, i32 noundef 45336, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla8044_idc_unlock, i32 noundef %conv.i, i32 noundef %and.i) #5
  br label %cleanup

if.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %28, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %32 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %33, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %31) #5, !srcloc !426
  %34 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %35, i32 14444
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 128
  %driver_data.i.i.i285 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44, i32 8
  %39 = ptrtoint ptr %driver_data.i.i.i285 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_data.i.i.i285, align 4
  %41 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i.i287 = getelementptr i8, ptr %42, i32 13572
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i287) #5, !srcloc !423
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and.i288 = and i32 %44, 255
  %portnum.i289 = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 254
  %45 = ptrtoint ptr %portnum.i289 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %portnum.i289, align 4
  %conv.i290 = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i288, i32 %conv.i290)
  %cmp.not.i291 = icmp eq i32 %and.i288, %conv.i290
  br i1 %cmp.not.i291, label %if.end.i296, label %if.then.i292

if.then.i292:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %40, i32 noundef 45336, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla8044_idc_unlock, i32 noundef %conv.i290, i32 noundef %and.i288) #5
  br label %qla8044_idc_unlock.exit297

if.end.i296:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %or.i293 = or i32 %44, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %47 = tail call i32 @llvm.bswap.i32(i32 %or.i293) #5
  %48 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i16.i294 = getelementptr i8, ptr %49, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i294, i32 %47) #5, !srcloc !426
  %50 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i18.i295 = getelementptr i8, ptr %51, i32 14444
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i295) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %qla8044_idc_unlock.exit297

qla8044_idc_unlock.exit297:                       ; preds = %if.end.i296, %if.then.i292
  %call15 = tail call i32 @qla82xx_validate_template_chksum(ptr noundef %vha) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %qla8044_idc_unlock.exit297
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45321, ptr noundef nonnull @.str.33) #5
  br label %cleanup

if.end18:                                         ; preds = %qla8044_idc_unlock.exit297
  %53 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %md_tmplt_hdr, align 8
  %55 = ptrtoint ptr %md_dump to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %md_dump, align 16
  %57 = ptrtoint ptr %data_ptr to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %data_ptr, align 4
  %num_of_entries = getelementptr inbounds %struct.qla8044_minidump_template_hdr, ptr %54, i32 0, i32 4
  %58 = ptrtoint ptr %num_of_entries to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_of_entries, align 4
  %capture_debug_level = getelementptr inbounds %struct.qla8044_minidump_template_hdr, ptr %54, i32 0, i32 3
  %60 = ptrtoint ptr %capture_debug_level to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %capture_debug_level, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45338, ptr noundef nonnull @.str.34, i32 noundef %61) #5
  %62 = ptrtoint ptr %capture_debug_level to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %capture_debug_level, align 4
  %and23 = and i32 %63, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and23)
  %cmp.not = icmp eq i32 %and23, 3
  br i1 %cmp.not, label %if.end18.if.end25_crit_edge, label %if.then24

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %and22 = and i32 %63, 255
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45327, ptr noundef nonnull @.str.35, i32 noundef %and22) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end18.if.end25_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xmdcapmask to i32))
  %64 = load i32, ptr @ql2xmdcapmask, align 4
  %driver_capture_mask = getelementptr inbounds %struct.qla8044_minidump_template_hdr, ptr %54, i32 0, i32 8
  %65 = ptrtoint ptr %driver_capture_mask to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %driver_capture_mask, align 4
  %66 = ptrtoint ptr %data_ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data_ptr, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45314, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.qla8044_collect_md_data, ptr noundef %67) #5
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45323, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.qla8044_collect_md_data, i32 noundef %59) #5
  %md_dump_size = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 267
  %68 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %md_dump_size, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45324, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.qla8044_collect_md_data, i32 noundef %69, i32 noundef %69) #5
  %call27 = tail call i64 @get_jiffies_64() #5
  %conv = trunc i64 %call27 to i32
  %call28 = tail call i32 @jiffies_to_msecs(i32 noundef %conv) #5
  %div = udiv i32 %call28, 1000
  %driver_timestamp = getelementptr inbounds %struct.qla8044_minidump_template_hdr, ptr %54, i32 0, i32 6
  %70 = ptrtoint ptr %driver_timestamp to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div, ptr %driver_timestamp, align 4
  %71 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %md_tmplt_hdr, align 8
  %first_entry_offset = getelementptr inbounds %struct.qla8044_minidump_template_hdr, ptr %54, i32 0, i32 1
  %73 = ptrtoint ptr %first_entry_offset to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %first_entry_offset, align 4
  %75 = ptrtoint ptr %portnum.i289 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %portnum.i289, align 4
  %idxprom = zext i16 %76 to i32
  %arrayidx = getelementptr %struct.qla8044_minidump_template_hdr, ptr %54, i32 0, i32 14, i32 %idxprom
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx, align 4
  %arrayidx30 = getelementptr %struct.qla8044_minidump_template_hdr, ptr %54, i32 0, i32 12, i32 3
  %79 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp31346 = icmp sgt i32 %59, 0
  br i1 %cmp31346, label %for.body.preheader, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %if.end25
  %add.ptr = getelementptr i8, ptr %72, i32 %74
  br label %for.body

for.body:                                         ; preds = %skip_nxt_entry.for.body_crit_edge, %for.body.preheader
  %rval.0357 = phi i32 [ %rval.2, %skip_nxt_entry.for.body_crit_edge ], [ 258, %for.body.preheader ]
  %i.0353 = phi i32 [ %inc, %skip_nxt_entry.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %data_collected.0352 = phi i32 [ %data_collected.1, %skip_nxt_entry.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %entry_hdr.0347 = phi ptr [ %add.ptr115, %skip_nxt_entry.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %80 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %md_dump_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %data_collected.0352)
  %cmp34 = icmp ult i32 %81, %data_collected.0352
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45315, ptr noundef nonnull @.str.39, i32 noundef %data_collected.0352, i32 noundef %81) #5
  br label %cleanup

if.end38:                                         ; preds = %for.body
  %d_ctrl = getelementptr inbounds %struct.qla8044_minidump_entry_hdr, ptr %entry_hdr.0347, i32 0, i32 3
  %82 = ptrtoint ptr %d_ctrl to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %d_ctrl, align 1
  %conv39 = zext i8 %83 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xmdcapmask to i32))
  %84 = load i32, ptr @ql2xmdcapmask, align 4
  %and40 = and i32 %84, %conv39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %driver_flags = getelementptr inbounds %struct.qla8044_minidump_entry_hdr, ptr %entry_hdr.0347, i32 0, i32 3, i32 3
  %85 = ptrtoint ptr %driver_flags to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %driver_flags, align 1
  %87 = or i8 %86, -128
  store i8 %87, ptr %driver_flags, align 1
  br label %skip_nxt_entry

if.end46:                                         ; preds = %if.end38
  %sub = sub i32 %81, %data_collected.0352
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45316, ptr noundef nonnull @.str.40, i32 noundef %data_collected.0352, i32 noundef %sub) #5
  %88 = ptrtoint ptr %entry_hdr.0347 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %entry_hdr.0347, align 1
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %89, label %sw.default [
    i32 255, label %sw.bb
    i32 98, label %sw.bb48
    i32 1, label %sw.bb54
    i32 72, label %sw.bb55
    i32 4, label %if.end46.sw.bb66_crit_edge
    i32 71, label %if.end46.sw.bb66_crit_edge460
    i32 21, label %if.end46.sw.bb72_crit_edge
    i32 22, label %if.end46.sw.bb72_crit_edge461
    i32 23, label %if.end46.sw.bb72_crit_edge462
    i32 24, label %if.end46.sw.bb72_crit_edge463
    i32 8, label %if.end46.sw.bb78_crit_edge
    i32 9, label %if.end46.sw.bb78_crit_edge464
    i32 11, label %if.end46.sw.bb78_crit_edge465
    i32 12, label %if.end46.sw.bb78_crit_edge466
    i32 6, label %sw.bb79
    i32 2, label %sw.bb80
    i32 3, label %sw.bb81
    i32 35, label %sw.bb82
    i32 36, label %sw.bb88
    i32 37, label %sw.bb89
    i32 38, label %sw.bb95
    i32 39, label %sw.bb101
    i32 40, label %sw.bb107
  ]

if.end46.sw.bb78_crit_edge466:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb78

if.end46.sw.bb78_crit_edge465:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb78

if.end46.sw.bb78_crit_edge464:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb78

if.end46.sw.bb78_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb78

if.end46.sw.bb72_crit_edge463:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb72

if.end46.sw.bb72_crit_edge462:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb72

if.end46.sw.bb72_crit_edge461:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb72

if.end46.sw.bb72_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb72

if.end46.sw.bb66_crit_edge460:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb66

if.end46.sw.bb66_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb66

sw.bb:                                            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @qla8044_mark_entry_skipped(ptr noundef %vha, ptr noundef %entry_hdr.0347, i32 noundef %i.0353)
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end46
  %call49 = tail call fastcc i32 @qla8044_minidump_process_control(ptr noundef %vha, ptr noundef %entry_hdr.0347)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50.not = icmp eq i32 %call49, 0
  br i1 %cmp50.not, label %sw.bb48.sw.epilog_crit_edge, label %if.then52

sw.bb48.sw.epilog_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then52:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @qla8044_mark_entry_skipped(ptr noundef %vha, ptr noundef %entry_hdr.0347, i32 noundef %i.0353)
  br label %cleanup

sw.bb54:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @qla8044_minidump_process_rdcrb(ptr noundef %vha, ptr noundef %entry_hdr.0347, ptr noundef nonnull %data_ptr)
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end46
  %call56 = call fastcc i32 @qla8044_minidump_pex_dma_read(ptr noundef %vha, ptr noundef %entry_hdr.0347, ptr noundef nonnull %data_ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57.not = icmp eq i32 %call56, 0
  br i1 %cmp57.not, label %sw.bb55.sw.epilog_crit_edge, label %if.then59

sw.bb55.sw.epilog_crit_edge:                      ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then59:                                        ; preds = %sw.bb55
  %call60 = call fastcc i32 @qla8044_minidump_process_rdmem(ptr noundef %vha, ptr noundef %entry_hdr.0347, ptr noundef nonnull %data_ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61.not = icmp eq i32 %call60, 0
  br i1 %cmp61.not, label %if.then59.sw.epilog_crit_edge, label %if.then63

if.then59.sw.epilog_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then63:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @qla8044_mark_entry_skipped(ptr noundef %vha, ptr noundef %entry_hdr.0347, i32 noundef %i.0353)
  br label %cleanup

sw.bb66:                                          ; preds = %if.end46.sw.bb66_crit_edge, %if.end46.sw.bb66_crit_edge460
  %call67 = call fastcc i32 @qla8044_minidump_process_rdrom(ptr noundef %vha, ptr noundef %entry_hdr.0347, ptr noundef nonnull %data_ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68.not = icmp eq i32 %call67, 0
  br i1 %cmp68.not, label %sw.bb66.sw.epilog_crit_edge, label %if.then70

sw.bb66.sw.epilog_crit_edge:                      ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then70:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @qla8044_mark_entry_skipped(ptr noundef %vha, ptr noundef %entry_hdr.0347, i32 noundef %i.0353)
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end46.sw.bb72_crit_edge, %if.end46.sw.bb72_crit_edge461, %if.end46.sw.bb72_crit_edge462, %if.end46.sw.bb72_crit_edge463
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value.i) #5
  %91 = ptrtoint ptr %r_value.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %r_value.i, align 4, !annotation !427
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c_value_r.i) #5
  %92 = ptrtoint ptr %c_value_r.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %c_value_r.i, align 4, !annotation !427
  %93 = ptrtoint ptr %data_ptr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data_ptr, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45304, ptr noundef nonnull @.str.109, ptr noundef nonnull @__func__.qla8044_minidump_process_l2tag) #5
  %op_count.i = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 4
  %95 = ptrtoint ptr %op_count.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %op_count.i, align 1
  %read_addr.i = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 7
  %97 = ptrtoint ptr %read_addr.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %read_addr.i, align 1
  %control_addr.i = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 5
  %99 = ptrtoint ptr %control_addr.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %control_addr.i, align 1
  %cache_ctrl.i = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 6
  %101 = ptrtoint ptr %cache_ctrl.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %cache_ctrl.i, align 1
  %conv.i298 = zext i16 %102 to i32
  %tag_reg_addr.i = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 1
  %103 = ptrtoint ptr %tag_reg_addr.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %tag_reg_addr.i, align 1
  %addr_ctrl.i = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 2
  %read_ctrl.i = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 8
  %read_addr_cnt.i = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 8, i32 1
  %105 = ptrtoint ptr %read_addr_cnt.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %read_addr_cnt.i, align 1
  %conv2.i = zext i8 %106 to i32
  %poll_mask.i = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 6, i32 1
  %107 = ptrtoint ptr %poll_mask.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %poll_mask.i, align 1
  %conv6.i = zext i8 %108 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp80.not.i = icmp eq i32 %96, 0
  br i1 %cmp80.not.i, label %sw.bb72.qla8044_minidump_process_l2tag.exit.thread_crit_edge, label %for.body.lr.ph.i

sw.bb72.qla8044_minidump_process_l2tag.exit.thread_crit_edge: ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_minidump_process_l2tag.exit.thread

for.body.lr.ph.i:                                 ; preds = %sw.bb72
  %poll_wait.i = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 6, i32 2
  %109 = ptrtoint ptr %poll_wait.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %poll_wait.i, align 1
  %conv4.i = zext i8 %110 to i32
  %init_tag_value.i = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 2, i32 1
  %111 = ptrtoint ptr %init_tag_value.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %init_tag_value.i, align 1
  %conv1.i = zext i16 %112 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool.not.i = icmp eq i16 %102, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool9.not.i = icmp eq i8 %108, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp2276.not.i = icmp eq i8 %106, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %data_ptr.083.i = phi ptr [ %94, %for.body.lr.ph.i ], [ %data_ptr.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  %t_value.082.i = phi i32 [ %conv1.i, %for.body.lr.ph.i ], [ %add31.i, %for.end.i.for.body.i_crit_edge ]
  %i.081.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc33.i, %for.end.i.for.body.i_crit_edge ]
  %call.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %104, i32 noundef %t_value.082.i) #5
  br i1 %tobool.not.i, label %for.body.i.if.end.i300_crit_edge, label %if.then.i299

for.body.i.if.end.i300_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i300

if.then.i299:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %100, i32 noundef %conv.i298) #5
  br label %if.end.i300

if.end.i300:                                      ; preds = %if.then.i299, %for.body.i.if.end.i300_crit_edge
  br i1 %tobool9.not.i, label %if.end.i300.if.end20.i_crit_edge, label %if.then10.i

if.end.i300.if.end20.i_crit_edge:                 ; preds = %if.end.i300
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.then10.i:                                      ; preds = %if.end.i300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %113 = load volatile i32, ptr @jiffies, align 128
  %114 = add i32 %113, %conv4.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i.do.body.i_crit_edge, %if.then10.i
  %call11.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %100, ptr noundef nonnull %c_value_r.i) #5
  %115 = ptrtoint ptr %c_value_r.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %c_value_r.i, align 4
  %and.i301 = and i32 %116, %conv6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i301)
  %cmp12.i = icmp eq i32 %and.i301, 0
  br i1 %cmp12.i, label %do.body.i.if.end20.i_crit_edge, label %if.else.i

do.body.i.if.end20.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.else.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %117 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %117, %114
  %cmp15.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp15.i, label %if.then76, label %if.else.i.do.body.i_crit_edge

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.end20.i:                                       ; preds = %do.body.i.if.end20.i_crit_edge, %if.end.i300.if.end20.i_crit_edge
  br i1 %cmp2276.not.i, label %if.end20.i.for.end.i_crit_edge, label %if.end20.i.for.body24.i_crit_edge

if.end20.i.for.body24.i_crit_edge:                ; preds = %if.end20.i
  br label %for.body24.i

if.end20.i.for.end.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body24.i:                                     ; preds = %for.body24.i.for.body24.i_crit_edge, %if.end20.i.for.body24.i_crit_edge
  %data_ptr.179.i = phi ptr [ %incdec.ptr.i, %for.body24.i.for.body24.i_crit_edge ], [ %data_ptr.083.i, %if.end20.i.for.body24.i_crit_edge ]
  %k.078.i = phi i32 [ %inc.i, %for.body24.i.for.body24.i_crit_edge ], [ 0, %if.end20.i.for.body24.i_crit_edge ]
  %addr.077.i = phi i32 [ %add28.i, %for.body24.i.for.body24.i_crit_edge ], [ %98, %if.end20.i.for.body24.i_crit_edge ]
  %call25.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %addr.077.i, ptr noundef nonnull %r_value.i) #5
  %118 = ptrtoint ptr %r_value.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %r_value.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %data_ptr.179.i, i32 1
  %120 = ptrtoint ptr %data_ptr.179.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %data_ptr.179.i, align 4
  %121 = ptrtoint ptr %read_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %read_ctrl.i, align 1
  %conv27.i = zext i8 %122 to i32
  %add28.i = add i32 %addr.077.i, %conv27.i
  %inc.i = add nuw nsw i32 %k.078.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv2.i
  br i1 %exitcond.not.i, label %for.body24.i.for.end.i_crit_edge, label %for.body24.i.for.body24.i_crit_edge

for.body24.i.for.body24.i_crit_edge:              ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body24.i

for.body24.i.for.end.i_crit_edge:                 ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.body24.i.for.end.i_crit_edge, %if.end20.i.for.end.i_crit_edge
  %data_ptr.1.lcssa.i = phi ptr [ %data_ptr.083.i, %if.end20.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.body24.i.for.end.i_crit_edge ]
  %123 = ptrtoint ptr %addr_ctrl.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 2)
  %124 = load i16, ptr %addr_ctrl.i, align 1
  %conv30.i = zext i16 %124 to i32
  %add31.i = add i32 %t_value.082.i, %conv30.i
  %inc33.i = add nuw i32 %i.081.i, 1
  %exitcond85.not.i = icmp eq i32 %inc33.i, %96
  br i1 %exitcond85.not.i, label %for.end.i.qla8044_minidump_process_l2tag.exit.thread_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i.qla8044_minidump_process_l2tag.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_minidump_process_l2tag.exit.thread

qla8044_minidump_process_l2tag.exit.thread:       ; preds = %for.end.i.qla8044_minidump_process_l2tag.exit.thread_crit_edge, %sw.bb72.qla8044_minidump_process_l2tag.exit.thread_crit_edge
  %data_ptr.0.lcssa.i = phi ptr [ %94, %sw.bb72.qla8044_minidump_process_l2tag.exit.thread_crit_edge ], [ %data_ptr.1.lcssa.i, %for.end.i.qla8044_minidump_process_l2tag.exit.thread_crit_edge ]
  %125 = ptrtoint ptr %data_ptr to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %data_ptr.0.lcssa.i, ptr %data_ptr, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c_value_r.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value.i) #5
  br label %sw.epilog

if.then76:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c_value_r.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value.i) #5
  tail call fastcc void @qla8044_mark_entry_skipped(ptr noundef %vha, ptr noundef %entry_hdr.0347, i32 noundef %i.0353)
  br label %cleanup

sw.bb78:                                          ; preds = %if.end46.sw.bb78_crit_edge, %if.end46.sw.bb78_crit_edge464, %if.end46.sw.bb78_crit_edge465, %if.end46.sw.bb78_crit_edge466
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value.i302) #5
  %126 = ptrtoint ptr %r_value.i302 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %r_value.i302, align 4, !annotation !427
  %127 = ptrtoint ptr %data_ptr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data_ptr, align 4
  %op_count.i303 = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 4
  %129 = ptrtoint ptr %op_count.i303 to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %op_count.i303, align 1
  %read_addr.i304 = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 7
  %131 = ptrtoint ptr %read_addr.i304 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %read_addr.i304, align 1
  %control_addr.i305 = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 5
  %133 = ptrtoint ptr %control_addr.i305 to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %control_addr.i305, align 1
  %cache_ctrl.i306 = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 6
  %135 = ptrtoint ptr %cache_ctrl.i306 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 2)
  %136 = load i16, ptr %cache_ctrl.i306, align 1
  %conv.i307 = zext i16 %136 to i32
  %tag_reg_addr.i308 = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 1
  %137 = ptrtoint ptr %tag_reg_addr.i308 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %tag_reg_addr.i308, align 1
  %addr_ctrl.i309 = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 2
  %read_ctrl.i310 = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 8
  %read_addr_cnt.i311 = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 8, i32 1
  %139 = ptrtoint ptr %read_addr_cnt.i311 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %read_addr_cnt.i311, align 1
  %conv2.i312 = zext i8 %140 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp38.not.i = icmp eq i32 %130, 0
  br i1 %cmp38.not.i, label %sw.bb78.qla8044_minidump_process_l1cache.exit_crit_edge, label %for.body.lr.ph.i315

sw.bb78.qla8044_minidump_process_l1cache.exit_crit_edge: ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_minidump_process_l1cache.exit

for.body.lr.ph.i315:                              ; preds = %sw.bb78
  %init_tag_value.i313 = getelementptr inbounds %struct.qla8044_minidump_entry_cache, ptr %entry_hdr.0347, i32 0, i32 2, i32 1
  %141 = ptrtoint ptr %init_tag_value.i313 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 2)
  %142 = load i16, ptr %init_tag_value.i313, align 1
  %conv1.i314 = zext i16 %142 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %cmp634.not.i = icmp eq i8 %140, 0
  br label %for.body.i317

for.body.i317:                                    ; preds = %for.end.i322.for.body.i317_crit_edge, %for.body.lr.ph.i315
  %data_ptr.041.i = phi ptr [ %128, %for.body.lr.ph.i315 ], [ %data_ptr.1.lcssa.i321, %for.end.i322.for.body.i317_crit_edge ]
  %t_value.040.i = phi i32 [ %conv1.i314, %for.body.lr.ph.i315 ], [ %add14.i, %for.end.i322.for.body.i317_crit_edge ]
  %i.039.i = phi i32 [ 0, %for.body.lr.ph.i315 ], [ %inc16.i, %for.end.i322.for.body.i317_crit_edge ]
  %call.i316 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %138, i32 noundef %t_value.040.i) #5
  %call4.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %134, i32 noundef %conv.i307) #5
  br i1 %cmp634.not.i, label %for.body.i317.for.end.i322_crit_edge, label %for.body.i317.for.body8.i_crit_edge

for.body.i317.for.body8.i_crit_edge:              ; preds = %for.body.i317
  br label %for.body8.i

for.body.i317.for.end.i322_crit_edge:             ; preds = %for.body.i317
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i322

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.body.i317.for.body8.i_crit_edge
  %data_ptr.137.i = phi ptr [ %incdec.ptr.i318, %for.body8.i.for.body8.i_crit_edge ], [ %data_ptr.041.i, %for.body.i317.for.body8.i_crit_edge ]
  %k.036.i = phi i32 [ %inc.i319, %for.body8.i.for.body8.i_crit_edge ], [ 0, %for.body.i317.for.body8.i_crit_edge ]
  %addr.035.i = phi i32 [ %add.i, %for.body8.i.for.body8.i_crit_edge ], [ %132, %for.body.i317.for.body8.i_crit_edge ]
  %call9.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %addr.035.i, ptr noundef nonnull %r_value.i302) #5
  %143 = ptrtoint ptr %r_value.i302 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %r_value.i302, align 4
  %incdec.ptr.i318 = getelementptr i32, ptr %data_ptr.137.i, i32 1
  %145 = ptrtoint ptr %data_ptr.137.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %data_ptr.137.i, align 4
  %146 = ptrtoint ptr %read_ctrl.i310 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %read_ctrl.i310, align 1
  %conv11.i = zext i8 %147 to i32
  %add.i = add i32 %addr.035.i, %conv11.i
  %inc.i319 = add nuw nsw i32 %k.036.i, 1
  %exitcond.not.i320 = icmp eq i32 %inc.i319, %conv2.i312
  br i1 %exitcond.not.i320, label %for.body8.i.for.end.i322_crit_edge, label %for.body8.i.for.body8.i_crit_edge

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8.i

for.body8.i.for.end.i322_crit_edge:               ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i322

for.end.i322:                                     ; preds = %for.body8.i.for.end.i322_crit_edge, %for.body.i317.for.end.i322_crit_edge
  %data_ptr.1.lcssa.i321 = phi ptr [ %data_ptr.041.i, %for.body.i317.for.end.i322_crit_edge ], [ %incdec.ptr.i318, %for.body8.i.for.end.i322_crit_edge ]
  %148 = ptrtoint ptr %addr_ctrl.i309 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 2)
  %149 = load i16, ptr %addr_ctrl.i309, align 1
  %conv13.i = zext i16 %149 to i32
  %add14.i = add i32 %t_value.040.i, %conv13.i
  %inc16.i = add nuw i32 %i.039.i, 1
  %exitcond43.not.i = icmp eq i32 %inc16.i, %130
  br i1 %exitcond43.not.i, label %for.end.i322.qla8044_minidump_process_l1cache.exit_crit_edge, label %for.end.i322.for.body.i317_crit_edge

for.end.i322.for.body.i317_crit_edge:             ; preds = %for.end.i322
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i317

for.end.i322.qla8044_minidump_process_l1cache.exit_crit_edge: ; preds = %for.end.i322
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_minidump_process_l1cache.exit

qla8044_minidump_process_l1cache.exit:            ; preds = %for.end.i322.qla8044_minidump_process_l1cache.exit_crit_edge, %sw.bb78.qla8044_minidump_process_l1cache.exit_crit_edge
  %data_ptr.0.lcssa.i323 = phi ptr [ %128, %sw.bb78.qla8044_minidump_process_l1cache.exit_crit_edge ], [ %data_ptr.1.lcssa.i321, %for.end.i322.qla8044_minidump_process_l1cache.exit_crit_edge ]
  %150 = ptrtoint ptr %data_ptr to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %data_ptr.0.lcssa.i323, ptr %data_ptr, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value.i302) #5
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @qla8044_minidump_process_rdocm(ptr noundef %vha, ptr noundef %entry_hdr.0347, ptr noundef nonnull %data_ptr)
  br label %sw.epilog

sw.bb80:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @qla8044_minidump_process_rdmux(ptr noundef %vha, ptr noundef %entry_hdr.0347, ptr noundef nonnull %data_ptr)
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @qla8044_minidump_process_queue(ptr noundef %vha, ptr noundef %entry_hdr.0347, ptr noundef nonnull %data_ptr)
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end46
  %call83 = call fastcc i32 @qla8044_minidump_process_pollrd(ptr noundef %vha, ptr noundef %entry_hdr.0347, ptr noundef nonnull %data_ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84.not = icmp eq i32 %call83, 0
  br i1 %cmp84.not, label %sw.bb82.sw.epilog_crit_edge, label %if.then86

sw.bb82.sw.epilog_crit_edge:                      ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then86:                                        ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @qla8044_mark_entry_skipped(ptr noundef %vha, ptr noundef %entry_hdr.0347, i32 noundef %i.0353)
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @qla8044_minidump_process_rdmux2(ptr noundef %vha, ptr noundef %entry_hdr.0347, ptr noundef nonnull %data_ptr)
  br label %sw.epilog

sw.bb89:                                          ; preds = %if.end46
  %call90 = call fastcc i32 @qla8044_minidump_process_pollrdmwr(ptr noundef %vha, ptr noundef %entry_hdr.0347, ptr noundef nonnull %data_ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91.not = icmp eq i32 %call90, 0
  br i1 %cmp91.not, label %sw.bb89.sw.epilog_crit_edge, label %if.then93

sw.bb89.sw.epilog_crit_edge:                      ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then93:                                        ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @qla8044_mark_entry_skipped(ptr noundef %vha, ptr noundef %entry_hdr.0347, i32 noundef %i.0353)
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.end46
  %call96 = call fastcc i32 @qla8044_minidump_process_rddfe(ptr noundef %vha, ptr noundef %entry_hdr.0347, ptr noundef nonnull %data_ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97.not = icmp eq i32 %call96, 0
  br i1 %cmp97.not, label %sw.bb95.sw.epilog_crit_edge, label %if.then99

sw.bb95.sw.epilog_crit_edge:                      ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then99:                                        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @qla8044_mark_entry_skipped(ptr noundef %vha, ptr noundef %entry_hdr.0347, i32 noundef %i.0353)
  br label %sw.epilog

sw.bb101:                                         ; preds = %if.end46
  %call102 = call fastcc i32 @qla8044_minidump_process_rdmdio(ptr noundef %vha, ptr noundef %entry_hdr.0347, ptr noundef nonnull %data_ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103.not = icmp eq i32 %call102, 0
  br i1 %cmp103.not, label %sw.bb101.sw.epilog_crit_edge, label %if.then105

sw.bb101.sw.epilog_crit_edge:                     ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then105:                                       ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @qla8044_mark_entry_skipped(ptr noundef %vha, ptr noundef %entry_hdr.0347, i32 noundef %i.0353)
  br label %sw.epilog

sw.bb107:                                         ; preds = %if.end46
  %call108 = tail call fastcc i32 @qla8044_minidump_process_pollwr(ptr noundef %vha, ptr noundef %entry_hdr.0347)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109.not = icmp eq i32 %call108, 0
  br i1 %cmp109.not, label %sw.bb107.sw.epilog_crit_edge, label %if.then111

sw.bb107.sw.epilog_crit_edge:                     ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then111:                                       ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @qla8044_mark_entry_skipped(ptr noundef %vha, ptr noundef %entry_hdr.0347, i32 noundef %i.0353)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @qla8044_mark_entry_skipped(ptr noundef %vha, ptr noundef %entry_hdr.0347, i32 noundef %i.0353)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then111, %sw.bb107.sw.epilog_crit_edge, %if.then105, %sw.bb101.sw.epilog_crit_edge, %if.then99, %sw.bb95.sw.epilog_crit_edge, %if.then93, %sw.bb89.sw.epilog_crit_edge, %sw.bb88, %if.then86, %sw.bb82.sw.epilog_crit_edge, %sw.bb81, %sw.bb80, %sw.bb79, %qla8044_minidump_process_l1cache.exit, %qla8044_minidump_process_l2tag.exit.thread, %if.then70, %sw.bb66.sw.epilog_crit_edge, %if.then59.sw.epilog_crit_edge, %sw.bb55.sw.epilog_crit_edge, %sw.bb54, %sw.bb48.sw.epilog_crit_edge, %sw.bb
  %rval.1 = phi i32 [ %rval.0357, %sw.default ], [ %call108, %if.then111 ], [ 0, %sw.bb107.sw.epilog_crit_edge ], [ %call102, %if.then105 ], [ 0, %sw.bb101.sw.epilog_crit_edge ], [ %call96, %if.then99 ], [ 0, %sw.bb95.sw.epilog_crit_edge ], [ %call90, %if.then93 ], [ 0, %sw.bb89.sw.epilog_crit_edge ], [ %rval.0357, %sw.bb88 ], [ %call83, %if.then86 ], [ 0, %sw.bb82.sw.epilog_crit_edge ], [ %rval.0357, %sw.bb81 ], [ %rval.0357, %sw.bb80 ], [ %rval.0357, %sw.bb79 ], [ %rval.0357, %qla8044_minidump_process_l1cache.exit ], [ %call67, %if.then70 ], [ 0, %sw.bb66.sw.epilog_crit_edge ], [ 0, %if.then59.sw.epilog_crit_edge ], [ 0, %sw.bb55.sw.epilog_crit_edge ], [ %rval.0357, %sw.bb54 ], [ 0, %sw.bb48.sw.epilog_crit_edge ], [ %rval.0357, %sw.bb ], [ 0, %qla8044_minidump_process_l2tag.exit.thread ]
  %151 = ptrtoint ptr %data_ptr to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %data_ptr, align 4
  %153 = ptrtoint ptr %md_dump to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %md_dump, align 16
  %sub.ptr.lhs.cast = ptrtoint ptr %152 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %154 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %skip_nxt_entry

skip_nxt_entry:                                   ; preds = %sw.epilog, %if.then42
  %data_collected.1 = phi i32 [ %sub.ptr.sub, %sw.epilog ], [ %data_collected.0352, %if.then42 ]
  %rval.2 = phi i32 [ %rval.1, %sw.epilog ], [ %rval.0357, %if.then42 ]
  %entry_size = getelementptr inbounds %struct.qla8044_minidump_entry_hdr, ptr %entry_hdr.0347, i32 0, i32 1
  %155 = ptrtoint ptr %entry_size to i32
  call void @__asan_loadN_noabort(i32 %155, i32 4)
  %156 = load i32, ptr %entry_size, align 1
  %add.ptr115 = getelementptr i8, ptr %entry_hdr.0347, i32 %156
  %inc = add nuw nsw i32 %i.0353, 1
  %exitcond.not = icmp eq i32 %inc, %59
  br i1 %exitcond.not, label %skip_nxt_entry.for.end_crit_edge, label %skip_nxt_entry.for.body_crit_edge

skip_nxt_entry.for.body_crit_edge:                ; preds = %skip_nxt_entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

skip_nxt_entry.for.end_crit_edge:                 ; preds = %skip_nxt_entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %skip_nxt_entry.for.end_crit_edge, %if.end25.for.end_crit_edge
  %data_collected.0.lcssa = phi i32 [ 0, %if.end25.for.end_crit_edge ], [ %data_collected.1, %skip_nxt_entry.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %if.end25.for.end_crit_edge ], [ %59, %skip_nxt_entry.for.end_crit_edge ]
  %rval.0.lcssa = phi i32 [ 258, %if.end25.for.end_crit_edge ], [ %rval.2, %skip_nxt_entry.for.end_crit_edge ]
  %157 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %md_dump_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %data_collected.0.lcssa, i32 %158)
  %cmp117.not = icmp eq i32 %data_collected.0.lcssa, %158
  br i1 %cmp117.not, label %if.end121, label %if.then119

if.then119:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45317, ptr noundef nonnull @.str.41, i32 noundef %data_collected.0.lcssa, i32 noundef %158) #5
  br label %cleanup

if.end121:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %host_no122 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 6
  %159 = ptrtoint ptr %host_no122 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %host_no122, align 4
  %161 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %md_tmplt_hdr, align 8
  %163 = ptrtoint ptr %md_dump to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %md_dump, align 16
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45328, ptr noundef nonnull @.str.42, i32 noundef %160, ptr noundef %162, i32 noundef %160, ptr noundef %164) #5
  %165 = ptrtoint ptr %fw_dumped to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 1, ptr %fw_dumped, align 4
  %call127 = tail call i32 @qla2x00_post_uevent_work(ptr noundef %vha, i32 noundef 0) #5
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45318, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.qla8044_collect_md_data, i32 noundef %i.0.lcssa) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end121, %if.then119, %if.then76, %if.then63, %if.then52, %if.then36, %if.then17, %if.end.i, %if.then.i, %if.then8, %if.then2, %if.then
  %retval.0 = phi i32 [ %rval.0357, %if.then36 ], [ 258, %if.then ], [ 258, %if.then2 ], [ 258, %if.then17 ], [ 258, %if.then76 ], [ %call60, %if.then63 ], [ %call49, %if.then52 ], [ 258, %if.then119 ], [ %rval.0.lcssa, %if.end121 ], [ 258, %if.then8 ], [ 258, %if.then.i ], [ 258, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_ptr) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla82xx_validate_template_chksum(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla8044_mark_entry_skipped(ptr noundef %vha, ptr nocapture noundef %entry_hdr, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_ctrl = getelementptr inbounds %struct.qla8044_minidump_entry_hdr, ptr %entry_hdr, i32 0, i32 3
  %driver_flags = getelementptr inbounds %struct.qla8044_minidump_entry_hdr, ptr %entry_hdr, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %driver_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %driver_flags, align 1
  %2 = or i8 %1, -128
  store i8 %2, ptr %driver_flags, align 1
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 6
  %3 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %host_no, align 4
  %5 = ptrtoint ptr %entry_hdr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %entry_hdr, align 1
  %7 = ptrtoint ptr %d_ctrl to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %d_ctrl, align 1
  %conv3 = zext i8 %8 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef %vha, i32 noundef 45303, ptr noundef nonnull @.str.108, i32 noundef %4, i32 noundef %index, i32 noundef %6, i32 noundef %conv3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_minidump_process_control(ptr noundef %vha, ptr noundef readonly %entry_hdr) unnamed_addr #0 align 64 {
entry:
  %read_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value) #5
  %0 = ptrtoint ptr %read_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %read_value, align 4, !annotation !427
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45277, ptr noundef nonnull @.str.109, ptr noundef nonnull @__func__.qla8044_minidump_process_control) #5
  %md_tmplt_hdr = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 264
  %3 = ptrtoint ptr %md_tmplt_hdr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %md_tmplt_hdr, align 8
  %op_count = getelementptr inbounds %struct.qla8044_minidump_entry_crb, ptr %entry_hdr, i32 0, i32 4
  %5 = ptrtoint ptr %op_count to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %op_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp198.not = icmp eq i32 %6, 0
  br i1 %cmp198.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %addr1 = getelementptr inbounds %struct.qla8044_minidump_entry_crb, ptr %entry_hdr, i32 0, i32 1
  %7 = ptrtoint ptr %addr1 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %addr1, align 1
  %crb_ctrl = getelementptr inbounds %struct.qla8044_minidump_entry_crb, ptr %entry_hdr, i32 0, i32 5
  %value_1 = getelementptr inbounds %struct.qla8044_minidump_entry_crb, ptr %entry_hdr, i32 0, i32 6
  %value_2 = getelementptr inbounds %struct.qla8044_minidump_entry_crb, ptr %entry_hdr, i32 0, i32 7
  %value_3 = getelementptr inbounds %struct.qla8044_minidump_entry_crb, ptr %entry_hdr, i32 0, i32 8
  %poll_timeout = getelementptr inbounds %struct.qla8044_minidump_entry_crb, ptr %entry_hdr, i32 0, i32 2, i32 2
  %state_index_a = getelementptr inbounds %struct.qla8044_minidump_entry_crb, ptr %entry_hdr, i32 0, i32 2, i32 1
  %state_index_v = getelementptr inbounds %struct.qla8044_minidump_entry_crb, ptr %entry_hdr, i32 0, i32 5, i32 1
  %shl = getelementptr inbounds %struct.qla8044_minidump_entry_crb, ptr %entry_hdr, i32 0, i32 5, i32 2
  %shr = getelementptr inbounds %struct.qla8044_minidump_entry_crb, ptr %entry_hdr, i32 0, i32 5, i32 3
  %crb_strd120 = getelementptr inbounds %struct.qla8044_minidump_entry_crb, ptr %entry_hdr, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end119.for.body_crit_edge, %for.body.lr.ph
  %i.0202 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end119.for.body_crit_edge ]
  %rval.0201 = phi i32 [ 0, %for.body.lr.ph ], [ %rval.1, %if.end119.for.body_crit_edge ]
  %crb_addr.0199 = phi i32 [ %8, %for.body.lr.ph ], [ %add122, %if.end119.for.body_crit_edge ]
  %9 = ptrtoint ptr %crb_ctrl to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %crb_ctrl, align 1
  %conv = zext i8 %10 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %value_1 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %value_1, align 1
  %call = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %crb_addr.0199, i32 noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %and3 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %crb_addr.0199, ptr noundef nonnull %read_value)
  %13 = ptrtoint ptr %read_value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %read_value, align 4
  %call7 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %crb_addr.0199, i32 noundef %14)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %and9 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end20_crit_edge, label %if.then11

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then11:                                        ; preds = %if.end8
  %call12 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %crb_addr.0199, ptr noundef nonnull %read_value)
  %15 = ptrtoint ptr %value_2 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %value_2, align 1
  %17 = ptrtoint ptr %read_value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %read_value, align 4
  %and13 = and i32 %18, %16
  store i32 %and13, ptr %read_value, align 4
  %and14 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then11.if.end18_crit_edge, label %if.then16

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %value_3 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %value_3, align 1
  %or = or i32 %20, %and13
  %21 = ptrtoint ptr %read_value to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or, ptr %read_value, align 4
  %and17 = and i32 %conv, 247
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then11.if.end18_crit_edge
  %opcode.0 = phi i32 [ %and17, %if.then16 ], [ %conv, %if.then11.if.end18_crit_edge ]
  %22 = ptrtoint ptr %read_value to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %read_value, align 4
  %call19 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %crb_addr.0199, i32 noundef %23)
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.end8.if.end20_crit_edge
  %opcode.1 = phi i32 [ %opcode.0, %if.end18 ], [ %conv, %if.end8.if.end20_crit_edge ]
  %and21 = and i32 %opcode.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end28_crit_edge, label %if.then23

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %crb_addr.0199, ptr noundef nonnull %read_value)
  %24 = ptrtoint ptr %value_3 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %value_3, align 1
  %26 = ptrtoint ptr %read_value to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %read_value, align 4
  %or26 = or i32 %27, %25
  store i32 %or26, ptr %read_value, align 4
  %call27 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %crb_addr.0199, i32 noundef %or26)
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end20.if.end28_crit_edge
  %and29 = and i32 %opcode.1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end47_crit_edge, label %if.then31

if.end28.if.end47_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then31:                                        ; preds = %if.end28
  %28 = ptrtoint ptr %poll_timeout to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %poll_timeout, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %call33 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %crb_addr.0199, ptr noundef nonnull %read_value)
  %31 = ptrtoint ptr %read_value to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %read_value, align 4
  %33 = ptrtoint ptr %value_2 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %value_2, align 1
  %and35195 = and i32 %34, %32
  %35 = ptrtoint ptr %value_1 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %value_1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and35195, i32 %36)
  %cmp37196 = icmp eq i32 %and35195, %36
  br i1 %cmp37196, label %if.then31.if.end47_crit_edge, label %if.else.lr.ph

if.then31.if.end47_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.else.lr.ph:                                    ; preds = %if.then31
  %conv32 = zext i16 %29 to i32
  %37 = add i32 %30, %conv32
  br label %if.else

if.else:                                          ; preds = %if.else43.if.else_crit_edge, %if.else.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %38, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp40 = icmp sgt i32 %sub, -1
  br i1 %cmp40, label %if.else.if.end47_crit_edge, label %if.else43

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.else43:                                        ; preds = %if.else
  %call44 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %crb_addr.0199, ptr noundef nonnull %read_value)
  %39 = ptrtoint ptr %read_value to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %read_value, align 4
  %41 = ptrtoint ptr %value_2 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %value_2, align 1
  %and35 = and i32 %42, %40
  %43 = ptrtoint ptr %value_1 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %value_1, align 1
  %cmp37 = icmp eq i32 %and35, %44
  br i1 %cmp37, label %if.else43.if.end47_crit_edge, label %if.else43.if.else_crit_edge

if.else43.if.else_crit_edge:                      ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.else43.if.end47_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end47:                                         ; preds = %if.else43.if.end47_crit_edge, %if.else.if.end47_crit_edge, %if.then31.if.end47_crit_edge, %if.end28.if.end47_crit_edge
  %rval.1 = phi i32 [ %rval.0201, %if.end28.if.end47_crit_edge ], [ %rval.0201, %if.then31.if.end47_crit_edge ], [ %rval.0201, %if.else43.if.end47_crit_edge ], [ 258, %if.else.if.end47_crit_edge ]
  %and48 = and i32 %opcode.1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end64_crit_edge, label %if.then50

if.end47.if.end64_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then50:                                        ; preds = %if.end47
  %45 = ptrtoint ptr %state_index_a to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %state_index_a, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool52.not = icmp eq i8 %46, 0
  br i1 %tobool52.not, label %if.then50.if.end58_crit_edge, label %if.then53

if.then50.if.end58_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then53:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  %conv56 = zext i8 %46 to i32
  %arrayidx = getelementptr %struct.qla8044_minidump_template_hdr, ptr %4, i32 0, i32 12, i32 %conv56
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %if.then50.if.end58_crit_edge
  %addr.0 = phi i32 [ %48, %if.then53 ], [ %crb_addr.0199, %if.then50.if.end58_crit_edge ]
  %call59 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %addr.0, ptr noundef nonnull %read_value)
  %49 = ptrtoint ptr %state_index_v to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %state_index_v, align 1
  %conv61 = zext i8 %50 to i32
  %51 = ptrtoint ptr %read_value to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %read_value, align 4
  %arrayidx63 = getelementptr %struct.qla8044_minidump_template_hdr, ptr %4, i32 0, i32 12, i32 %conv61
  %53 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx63, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end58, %if.end47.if.end64_crit_edge
  %and65 = and i32 %opcode.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.if.end92_crit_edge, label %if.then67

if.end64.if.end92_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

if.then67:                                        ; preds = %if.end64
  %54 = ptrtoint ptr %state_index_a to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %state_index_a, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool70.not = icmp eq i8 %55, 0
  br i1 %tobool70.not, label %if.then67.if.end78_crit_edge, label %if.then71

if.then67.if.end78_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.then71:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  %conv74 = zext i8 %55 to i32
  %arrayidx76 = getelementptr %struct.qla8044_minidump_template_hdr, ptr %4, i32 0, i32 12, i32 %conv74
  %56 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx76, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then71, %if.then67.if.end78_crit_edge
  %addr.1 = phi i32 [ %57, %if.then71 ], [ %crb_addr.0199, %if.then67.if.end78_crit_edge ]
  %58 = ptrtoint ptr %state_index_v to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %state_index_v, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool81.not = icmp eq i8 %59, 0
  %conv85 = zext i8 %59 to i32
  %arrayidx87 = getelementptr %struct.qla8044_minidump_template_hdr, ptr %4, i32 0, i32 12, i32 %conv85
  %storemerge.in = select i1 %tobool81.not, ptr %value_1, ptr %arrayidx87
  %60 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %storemerge = load i32, ptr %storemerge.in, align 1
  %61 = ptrtoint ptr %read_value to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %storemerge, ptr %read_value, align 4
  %call91 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %addr.1, i32 noundef %storemerge)
  br label %if.end92

if.end92:                                         ; preds = %if.end78, %if.end64.if.end92_crit_edge
  %and93 = and i32 %opcode.1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end92.if.end119_crit_edge, label %if.then95

if.end92.if.end119_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119

if.then95:                                        ; preds = %if.end92
  %62 = ptrtoint ptr %state_index_v to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %state_index_v, align 1
  %conv98 = zext i8 %63 to i32
  %arrayidx100 = getelementptr %struct.qla8044_minidump_template_hdr, ptr %4, i32 0, i32 12, i32 %conv98
  %64 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx100, align 4
  %66 = ptrtoint ptr %shl to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %shl, align 1
  %conv102 = zext i8 %67 to i32
  %shl103 = shl i32 %65, %conv102
  %68 = ptrtoint ptr %shr to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %shr, align 1
  %conv105 = zext i8 %69 to i32
  %shr106 = lshr i32 %shl103, %conv105
  %70 = ptrtoint ptr %read_value to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %shr106, ptr %read_value, align 4
  %71 = ptrtoint ptr %value_2 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %value_2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool108.not = icmp eq i32 %72, 0
  br i1 %tobool108.not, label %if.then95.if.end112_crit_edge, label %if.then109

if.then95.if.end112_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

if.then109:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #7
  %and111 = and i32 %shr106, %72
  %73 = ptrtoint ptr %read_value to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and111, ptr %read_value, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.then95.if.end112_crit_edge
  %74 = ptrtoint ptr %value_3 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %value_3, align 1
  %76 = ptrtoint ptr %read_value to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %read_value, align 4
  %or114 = or i32 %77, %75
  %78 = ptrtoint ptr %value_1 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %value_1, align 1
  %add116 = add i32 %79, %or114
  store i32 %add116, ptr %read_value, align 4
  %80 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add116, ptr %arrayidx100, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.end112, %if.end92.if.end119_crit_edge
  %81 = ptrtoint ptr %crb_strd120 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %crb_strd120, align 1
  %conv121 = zext i8 %82 to i32
  %add122 = add i32 %crb_addr.0199, %conv121
  %inc = add nuw i32 %i.0202, 1
  %83 = ptrtoint ptr %op_count to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %op_count, align 1
  %cmp = icmp ult i32 %inc, %84
  br i1 %cmp, label %if.end119.for.body_crit_edge, label %if.end119.for.end_crit_edge

if.end119.for.end_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end119.for.body_crit_edge:                     ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end119.for.end_crit_edge, %entry.for.end_crit_edge
  %rval.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %rval.1, %if.end119.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value) #5
  ret i32 %rval.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla8044_minidump_process_rdcrb(ptr noundef %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #0 align 64 {
entry:
  %r_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value) #5
  %0 = ptrtoint ptr %r_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %r_value, align 4, !annotation !427
  %1 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_ptr, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45278, ptr noundef nonnull @.str.109, ptr noundef nonnull @__func__.qla8044_minidump_process_rdcrb) #5
  %crb_strd = getelementptr inbounds %struct.qla8044_minidump_entry_crb, ptr %entry_hdr, i32 0, i32 2
  %3 = ptrtoint ptr %crb_strd to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %crb_strd, align 1
  %conv = zext i8 %4 to i32
  %op_count = getelementptr inbounds %struct.qla8044_minidump_entry_crb, ptr %entry_hdr, i32 0, i32 4
  %5 = ptrtoint ptr %op_count to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %op_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp12.not = icmp eq i32 %6, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %addr = getelementptr inbounds %struct.qla8044_minidump_entry_crb, ptr %entry_hdr, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %addr, align 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %data_ptr.015 = phi ptr [ %incdec.ptr2, %for.body.for.body_crit_edge ], [ %2, %for.body.preheader ]
  %r_addr.014 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %8, %for.body.preheader ]
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %r_addr.014, ptr noundef nonnull %r_value)
  %incdec.ptr = getelementptr i32, ptr %data_ptr.015, i32 1
  %9 = ptrtoint ptr %data_ptr.015 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %r_addr.014, ptr %data_ptr.015, align 4
  %10 = ptrtoint ptr %r_value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r_value, align 4
  %incdec.ptr2 = getelementptr i32, ptr %data_ptr.015, i32 2
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %incdec.ptr, align 4
  %add = add i32 %r_addr.014, %conv
  %inc = add nuw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %data_ptr.0.lcssa = phi ptr [ %2, %entry.for.end_crit_edge ], [ %incdec.ptr2, %for.body.for.end_crit_edge ]
  %13 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data_ptr.0.lcssa, ptr %d_ptr, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_minidump_pex_dma_read(ptr noundef %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #0 align 64 {
entry:
  %cmd_sts_and_cntrl.i84 = alloca i32, align 4
  %cmd_sts_and_cntrl.i = alloca i32, align 4
  %rdmem_dma = alloca i32, align 4
  %dma_desc = alloca %struct.qla8044_pex_dma_descriptor, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdmem_dma) #5
  %4 = ptrtoint ptr %rdmem_dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rdmem_dma, align 4, !annotation !427
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_desc) #5
  %5 = getelementptr inbounds i8, ptr %dma_desc, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_sts_and_cntrl.i) #5
  %7 = ptrtoint ptr %cmd_sts_and_cntrl.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cmd_sts_and_cntrl.i, align 4
  %md_tmplt_hdr.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 264
  %8 = ptrtoint ptr %md_tmplt_hdr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %md_tmplt_hdr.i, align 8
  %arrayidx.i = getelementptr %struct.qla8044_minidump_template_hdr, ptr %9, i32 0, i32 12, i32 8
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %mul.i = shl i32 %11, 16
  %12 = add i32 %mul.i, 1999765512
  %call.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %12, ptr noundef nonnull %cmd_sts_and_cntrl.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end.i:                                         ; preds = %entry
  %13 = ptrtoint ptr %cmd_sts_and_cntrl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmd_sts_and_cntrl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not.inv.i = icmp slt i32 %14, 0
  br i1 %tobool3.not.inv.i, label %if.end, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_sts_and_cntrl.i) #5
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45383, ptr noundef nonnull @.str.110) #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_sts_and_cntrl.i) #5
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %call.i83 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 16384, ptr noundef nonnull %rdmem_dma, i32 noundef 3264, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call.i83, null
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45384, ptr noundef nonnull @.str.111) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dma_desc_cmd = getelementptr inbounds %struct.qla8044_minidump_entry_rdmem_pex_dma, ptr %entry_hdr, i32 0, i32 2
  %17 = ptrtoint ptr %dma_desc_cmd to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %dma_desc_cmd, align 1
  %19 = and i16 %18, -241
  %dma_desc_cmd5 = getelementptr inbounds %struct.anon.174, ptr %dma_desc, i32 0, i32 2
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 128
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %devfn, align 4
  %.tr = trunc i32 %23 to i16
  %24 = shl i16 %.tr, 4
  %25 = and i16 %24, 112
  %conv12 = or i16 %25, %19
  %26 = ptrtoint ptr %dma_desc_cmd5 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv12, ptr %dma_desc_cmd5, align 2
  %27 = ptrtoint ptr %rdmem_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rdmem_dma, align 4
  %conv13 = zext i32 %28 to i64
  %dma_bus_addr = getelementptr inbounds %struct.qla8044_pex_dma_descriptor, ptr %dma_desc, i32 0, i32 2
  %29 = ptrtoint ptr %dma_bus_addr to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %conv13, ptr %dma_bus_addr, align 4
  %30 = ptrtoint ptr %dma_desc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16384, ptr %dma_desc, align 4
  %read_data_size15 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmem_pex_dma, ptr %entry_hdr, i32 0, i32 7
  %31 = ptrtoint ptr %read_data_size15 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %read_data_size15, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp16104.not = icmp eq i32 %32, 0
  br i1 %cmp16104.not, label %if.end3.while.end_crit_edge, label %while.body.lr.ph

if.end3.while.end_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end3
  %read_addr = getelementptr inbounds %struct.qla8044_minidump_entry_rdmem_pex_dma, ptr %entry_hdr, i32 0, i32 6
  %src_addr = getelementptr inbounds %struct.qla8044_pex_dma_descriptor, ptr %dma_desc, i32 0, i32 1
  %desc_card_addr = getelementptr inbounds %struct.qla8044_minidump_entry_rdmem_pex_dma, ptr %entry_hdr, i32 0, i32 1
  %start_dma_cmd.i = getelementptr inbounds %struct.qla8044_minidump_entry_rdmem_pex_dma, ptr %entry_hdr, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end36.while.body_crit_edge, %while.body.lr.ph
  %33 = phi i32 [ %32, %while.body.lr.ph ], [ %57, %if.end36.while.body_crit_edge ]
  %data_ptr.0107 = phi ptr [ %3, %while.body.lr.ph ], [ %add.ptr, %if.end36.while.body_crit_edge ]
  %read_size.0106 = phi i32 [ 0, %while.body.lr.ph ], [ %add37, %if.end36.while.body_crit_edge ]
  %chunk_size.0105 = phi i32 [ 16384, %while.body.lr.ph ], [ %chunk_size.1, %if.end36.while.body_crit_edge ]
  %sub = sub i32 %33, %read_size.0106
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %sub)
  %cmp19 = icmp ult i32 %sub, 16384
  br i1 %cmp19, label %if.then21, label %while.body.if.end26_crit_edge

while.body.if.end26_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then21:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %dma_desc to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub, ptr %dma_desc, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %while.body.if.end26_crit_edge
  %chunk_size.1 = phi i32 [ %sub, %if.then21 ], [ %chunk_size.0105, %while.body.if.end26_crit_edge ]
  %35 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %read_addr, align 1
  %add = add i32 %36, %read_size.0106
  %conv27 = zext i32 %add to i64
  %37 = ptrtoint ptr %src_addr to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %conv27, ptr %src_addr, align 4
  %38 = ptrtoint ptr %desc_card_addr to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %desc_card_addr, align 1
  %conv28 = zext i32 %39 to i64
  %call29 = call fastcc i32 @qla8044_ms_mem_write_128b(ptr noundef %vha, i64 noundef %conv28, ptr noundef nonnull %dma_desc, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45386, ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.qla8044_minidump_pex_dma_read) #5
  br label %if.then39

if.end32:                                         ; preds = %if.end26
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45387, ptr noundef nonnull @.str.113, ptr noundef nonnull @__func__.qla8044_minidump_pex_dma_read, i32 noundef %chunk_size.1) #5
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_sts_and_cntrl.i84) #5
  %42 = ptrtoint ptr %cmd_sts_and_cntrl.i84 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %cmd_sts_and_cntrl.i84, align 4
  %md_tmplt_hdr.i86 = getelementptr inbounds %struct.qla_hw_data, ptr %41, i32 0, i32 264
  %43 = ptrtoint ptr %md_tmplt_hdr.i86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %md_tmplt_hdr.i86, align 8
  %arrayidx.i87 = getelementptr %struct.qla8044_minidump_template_hdr, ptr %44, i32 0, i32 12, i32 8
  %45 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i87, align 4
  %mul.i88 = shl i32 %46, 16
  %add.i = add i32 %mul.i88, 1999765504
  %47 = ptrtoint ptr %desc_card_addr to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %desc_card_addr, align 1
  %call.i89 = call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %add.i, i32 noundef %48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool.not.i90 = icmp eq i32 %call.i89, 0
  br i1 %tobool.not.i90, label %if.end.i91, label %if.end32.qla8044_start_pex_dma.exit.thread_crit_edge

if.end32.qla8044_start_pex_dma.exit.thread_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_start_pex_dma.exit.thread

if.end.i91:                                       ; preds = %if.end32
  %add3.i = or i32 %add.i, 4
  %call5.i = call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %add3.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i91.qla8044_start_pex_dma.exit.thread_crit_edge

if.end.i91.qla8044_start_pex_dma.exit.thread_crit_edge: ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_start_pex_dma.exit.thread

if.end8.i:                                        ; preds = %if.end.i91
  %49 = or i32 %add.i, 8
  %50 = ptrtoint ptr %start_dma_cmd.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %start_dma_cmd.i, align 1
  %call11.i = call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %49, i32 noundef %51) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end8.i.for.body.i_crit_edge, label %if.end8.i.qla8044_start_pex_dma.exit.thread_crit_edge

if.end8.i.qla8044_start_pex_dma.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_start_pex_dma.exit.thread

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end25.i.for.body.i_crit_edge, %if.end8.i.for.body.i_crit_edge
  %wait.045.i = phi i32 [ %inc.i, %if.end25.i.for.body.i_crit_edge ], [ 0, %if.end8.i.for.body.i_crit_edge ]
  %call18.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %49, ptr noundef nonnull %cmd_sts_and_cntrl.i84) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %for.body.i.qla8044_start_pex_dma.exit.thread_crit_edge

for.body.i.qla8044_start_pex_dma.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_start_pex_dma.exit.thread

if.end21.i:                                       ; preds = %for.body.i
  %52 = ptrtoint ptr %cmd_sts_and_cntrl.i84 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cmd_sts_and_cntrl.i84, align 4
  %and.i = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp22.i = icmp eq i32 %and.i, 0
  br i1 %cmp22.i, label %for.end.i, label %if.end25.i

if.end25.i:                                       ; preds = %if.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 2147480) #5
  %inc.i = add nuw nsw i32 %wait.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10000
  br i1 %exitcond.not.i, label %if.end25.i.qla8044_start_pex_dma.exit.thread_crit_edge, label %if.end25.i.for.body.i_crit_edge

if.end25.i.for.body.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end25.i.qla8044_start_pex_dma.exit.thread_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_start_pex_dma.exit.thread

for.end.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %wait.045.i)
  %cmp26.i = icmp ugt i32 %wait.045.i, 9999
  br i1 %cmp26.i, label %for.end.i.qla8044_start_pex_dma.exit.thread_crit_edge, label %if.end36

for.end.i.qla8044_start_pex_dma.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_start_pex_dma.exit.thread

qla8044_start_pex_dma.exit.thread:                ; preds = %for.end.i.qla8044_start_pex_dma.exit.thread_crit_edge, %if.end25.i.qla8044_start_pex_dma.exit.thread_crit_edge, %for.body.i.qla8044_start_pex_dma.exit.thread_crit_edge, %if.end8.i.qla8044_start_pex_dma.exit.thread_crit_edge, %if.end.i91.qla8044_start_pex_dma.exit.thread_crit_edge, %if.end32.qla8044_start_pex_dma.exit.thread_crit_edge
  %rval.2.i.ph = phi i32 [ 258, %if.end25.i.qla8044_start_pex_dma.exit.thread_crit_edge ], [ %call18.i, %for.body.i.qla8044_start_pex_dma.exit.thread_crit_edge ], [ 258, %for.end.i.qla8044_start_pex_dma.exit.thread_crit_edge ], [ %call.i89, %if.end32.qla8044_start_pex_dma.exit.thread_crit_edge ], [ %call5.i, %if.end.i91.qla8044_start_pex_dma.exit.thread_crit_edge ], [ %call11.i, %if.end8.i.qla8044_start_pex_dma.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_sts_and_cntrl.i84) #5
  br label %if.then39

if.end36:                                         ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_sts_and_cntrl.i84) #5
  %55 = call ptr @memcpy(ptr %data_ptr.0107, ptr %call.i83, i32 %chunk_size.1)
  %add.ptr = getelementptr i8, ptr %data_ptr.0107, i32 %chunk_size.1
  %add37 = add i32 %chunk_size.1, %read_size.0106
  %56 = ptrtoint ptr %read_data_size15 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %read_data_size15, align 1
  %cmp16 = icmp ugt i32 %57, %add37
  br i1 %cmp16, label %if.end36.while.body_crit_edge, label %if.end36.while.end_crit_edge

if.end36.while.end_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end36.while.body_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %if.end36.while.end_crit_edge, %if.end3.while.end_crit_edge
  %data_ptr.0.lcssa = phi ptr [ %3, %if.end3.while.end_crit_edge ], [ %add.ptr, %if.end36.while.end_crit_edge ]
  %58 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %data_ptr.0.lcssa, ptr %d_ptr, align 4
  br label %if.then39

if.then39:                                        ; preds = %while.end, %qla8044_start_pex_dma.exit.thread, %if.then31
  %rval.1 = phi i32 [ %call29, %if.then31 ], [ 0, %while.end ], [ %rval.2.i.ph, %qla8044_start_pex_dma.exit.thread ]
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 128
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %61 = ptrtoint ptr %rdmem_dma to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rdmem_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev41, i32 noundef 16384, ptr noundef nonnull %call.i83, i32 noundef %62, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.then2, %if.then
  %retval.0 = phi i32 [ 258, %if.then ], [ %rval.1, %if.then39 ], [ 258, %if.then2 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_desc) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdmem_dma) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_minidump_process_rdmem(ptr noundef %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #0 align 64 {
entry:
  %r_value = alloca i32, align 4
  %r_data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_data) #5
  %0 = ptrtoint ptr %r_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %r_data, align 4, !annotation !427
  %1 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_ptr, align 4
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45279, ptr noundef nonnull @.str.109, ptr noundef nonnull @__func__.qla8044_minidump_process_rdmem) #5
  %read_addr = getelementptr inbounds %struct.qla8044_minidump_entry_rdmem, ptr %entry_hdr, i32 0, i32 2
  %5 = ptrtoint ptr %read_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %read_addr, align 4
  %read_data_size = getelementptr inbounds %struct.qla8044_minidump_entry_rdmem, ptr %entry_hdr, i32 0, i32 3
  %7 = ptrtoint ptr %read_data_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %read_data_size, align 4
  %div101 = lshr i32 %8, 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45296, ptr noundef nonnull @.str.114, ptr noundef nonnull @__func__.qla8044_minidump_process_rdmem, i32 noundef %6, i32 noundef %8) #5
  %and = and i32 %6, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45297, ptr noundef nonnull @.str.115, ptr noundef nonnull @__func__.qla8044_minidump_process_rdmem, i32 noundef %6) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %read_data_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %read_data_size, align 4
  %rem = and i32 %10, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool3.not = icmp eq i32 %rem, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45298, ptr noundef nonnull @.str.116, ptr noundef nonnull @__func__.qla8044_minidump_process_rdmem, i32 noundef %10) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45299, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.qla8044_minidump_process_rdmem, i32 noundef %6, i32 noundef %10, i32 noundef %div101) #5
  %hw_lock = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 253
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef %hw_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp8107.not = icmp ult i32 %8, 16
  br i1 %cmp8107.not, label %if.end6.do.body48_crit_edge, label %for.body.preheader

if.end6.do.body48_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body48

for.body.preheader:                               ; preds = %if.end6
  %umax = call i32 @llvm.umax.i32(i32 %div101, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body40.preheader.for.body_crit_edge, %for.body.preheader
  %r_addr.0110 = phi i32 [ %add, %for.body40.preheader.for.body_crit_edge ], [ %6, %for.body.preheader ]
  %i.0109 = phi i32 [ %inc46, %for.body40.preheader.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %data_ptr.0108 = phi ptr [ %incdec.ptr.3, %for.body40.preheader.for.body_crit_edge ], [ %2, %for.body.preheader ]
  %call10 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1090519188, i32 noundef %r_addr.0110)
  %call11 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1090519192, i32 noundef 0)
  %call12 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1090519184, i32 noundef 2)
  %11 = ptrtoint ptr %r_value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %r_value, align 4
  %call13 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1090519184, i32 noundef 3)
  br label %for.body17

for.cond14:                                       ; preds = %for.body17
  %inc = add nuw nsw i32 %j.0104, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.body27, label %for.cond14.for.body17_crit_edge

for.cond14.for.body17_crit_edge:                  ; preds = %for.cond14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17

for.body17:                                       ; preds = %for.cond14.for.body17_crit_edge, %for.body
  %j.0104 = phi i32 [ 0, %for.body ], [ %inc, %for.cond14.for.body17_crit_edge ]
  %call18 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef 1090519184, ptr noundef nonnull %r_value)
  %12 = ptrtoint ptr %r_value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %r_value, align 4
  %and19 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20 = icmp eq i32 %and19, 0
  br i1 %cmp20, label %for.body40.preheader, label %for.cond14

for.body40.preheader:                             ; preds = %for.body17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @MD_MIU_TEST_AGT_RDDATA to i32))
  %14 = load i32, ptr @MD_MIU_TEST_AGT_RDDATA, align 4
  %call41 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %14, ptr noundef nonnull %r_data)
  %15 = ptrtoint ptr %r_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %r_data, align 4
  %incdec.ptr = getelementptr i32, ptr %data_ptr.0108, i32 1
  %17 = ptrtoint ptr %data_ptr.0108 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %data_ptr.0108, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @MD_MIU_TEST_AGT_RDDATA, i32 0, i32 1) to i32))
  %18 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @MD_MIU_TEST_AGT_RDDATA, i32 0, i32 1), align 4
  %call41.1 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %18, ptr noundef nonnull %r_data)
  %19 = ptrtoint ptr %r_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %r_data, align 4
  %incdec.ptr.1 = getelementptr i32, ptr %data_ptr.0108, i32 2
  %21 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %incdec.ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @MD_MIU_TEST_AGT_RDDATA, i32 0, i32 2) to i32))
  %22 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @MD_MIU_TEST_AGT_RDDATA, i32 0, i32 2), align 4
  %call41.2 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %22, ptr noundef nonnull %r_data)
  %23 = ptrtoint ptr %r_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %r_data, align 4
  %incdec.ptr.2 = getelementptr i32, ptr %data_ptr.0108, i32 3
  %25 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %incdec.ptr.1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @MD_MIU_TEST_AGT_RDDATA, i32 0, i32 3) to i32))
  %26 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @MD_MIU_TEST_AGT_RDDATA, i32 0, i32 3), align 4
  %call41.3 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %26, ptr noundef nonnull %r_data)
  %27 = ptrtoint ptr %r_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %r_data, align 4
  %incdec.ptr.3 = getelementptr i32, ptr %data_ptr.0108, i32 4
  %29 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %incdec.ptr.2, align 4
  %add = add i32 %r_addr.0110, 16
  %inc46 = add nuw nsw i32 %i.0109, 1
  %exitcond112.not = icmp eq i32 %inc46, %umax
  br i1 %exitcond112.not, label %for.body40.preheader.do.body48_crit_edge, label %for.body40.preheader.for.body_crit_edge

for.body40.preheader.for.body_crit_edge:          ; preds = %for.body40.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body40.preheader.do.body48_crit_edge:         ; preds = %for.body40.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body48

do.body27:                                        ; preds = %for.cond14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call) #5
  br label %cleanup

do.body48:                                        ; preds = %for.body40.preheader.do.body48_crit_edge, %if.end6.do.body48_crit_edge
  %data_ptr.0.lcssa = phi ptr [ %2, %if.end6.do.body48_crit_edge ], [ %incdec.ptr.3, %for.body40.preheader.do.body48_crit_edge ]
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call) #5
  %mul = and i32 %8, -16
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45300, ptr noundef nonnull @.str.118, ptr noundef nonnull @__func__.qla8044_minidump_process_rdmem, i32 noundef %mul) #5
  %30 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %data_ptr.0.lcssa, ptr %d_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body48, %do.body27, %if.then4, %if.then
  %retval.0 = phi i32 [ 258, %if.then ], [ 258, %if.then4 ], [ 0, %do.body27 ], [ 0, %do.body48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_data) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_minidump_process_rdrom(ptr noundef %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_ptr, align 4
  %read_addr = getelementptr inbounds %struct.qla8044_minidump_entry_rdrom, ptr %entry_hdr, i32 0, i32 2
  %2 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %read_addr, align 1
  %read_data_size = getelementptr inbounds %struct.qla8044_minidump_entry_rdrom, ptr %entry_hdr, i32 0, i32 3
  %4 = ptrtoint ptr %read_data_size to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %read_data_size, align 1
  %div15 = lshr i32 %5, 2
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45301, ptr noundef nonnull @.str.119, ptr noundef nonnull @__func__.qla8044_minidump_process_rdrom, i32 noundef %3, i32 noundef %div15) #5
  %call = tail call fastcc i32 @qla8044_lockless_flash_read_u32(ptr noundef %vha, i32 noundef %3, ptr noundef %1, i32 noundef %div15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45302, ptr noundef nonnull @.str.120, ptr noundef nonnull @__func__.qla8044_minidump_process_rdrom, i32 noundef %div15) #5
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i32, ptr %1, i32 %div15
  %6 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %d_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 258, %if.then ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla8044_minidump_process_rdocm(ptr noundef %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_ptr, align 4
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45305, ptr noundef nonnull @.str.109, ptr noundef nonnull @__func__.qla8044_minidump_process_rdocm) #5
  %read_addr = getelementptr inbounds %struct.qla8044_minidump_entry_rdocm, ptr %entry_hdr, i32 0, i32 7
  %4 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %read_addr, align 1
  %read_addr_stride = getelementptr inbounds %struct.qla8044_minidump_entry_rdocm, ptr %entry_hdr, i32 0, i32 8
  %6 = ptrtoint ptr %read_addr_stride to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %read_addr_stride, align 1
  %op_count = getelementptr inbounds %struct.qla8044_minidump_entry_rdocm, ptr %entry_hdr, i32 0, i32 4
  %8 = ptrtoint ptr %op_count to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %op_count, align 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45306, ptr noundef nonnull @.str.121, ptr noundef nonnull @__func__.qla8044_minidump_process_rdocm, i32 noundef %5, i32 noundef %7, i32 noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp15.not = icmp eq i32 %9, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %nx_pcibase = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 242
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %r_addr.018 = phi i32 [ %5, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %data_ptr.016 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nx_pcibase, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %r_addr.018
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !423
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !429
  %incdec.ptr = getelementptr i32, ptr %data_ptr.016, i32 1
  %14 = ptrtoint ptr %data_ptr.016 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %data_ptr.016, align 4
  %add = add i32 %r_addr.018, %7
  %inc = add nuw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %data_ptr.0.lcssa = phi ptr [ %1, %entry.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %mul = shl i32 %9, 2
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45307, ptr noundef nonnull @.str.122, ptr noundef nonnull @__func__.qla8044_minidump_process_rdocm, i32 noundef %mul) #5
  %15 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %data_ptr.0.lcssa, ptr %d_ptr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla8044_minidump_process_rdmux(ptr noundef %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #0 align 64 {
entry:
  %r_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value) #5
  %0 = ptrtoint ptr %r_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %r_value, align 4
  %1 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_ptr, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45308, ptr noundef nonnull @.str.109, ptr noundef nonnull @__func__.qla8044_minidump_process_rdmux) #5
  %read_addr = getelementptr inbounds %struct.qla8044_minidump_entry_mux, ptr %entry_hdr, i32 0, i32 7
  %3 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %read_addr, align 1
  %select_addr = getelementptr inbounds %struct.qla8044_minidump_entry_mux, ptr %entry_hdr, i32 0, i32 1
  %5 = ptrtoint ptr %select_addr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %select_addr, align 1
  %select_value_stride = getelementptr inbounds %struct.qla8044_minidump_entry_mux, ptr %entry_hdr, i32 0, i32 6
  %7 = ptrtoint ptr %select_value_stride to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %select_value_stride, align 1
  %op_count = getelementptr inbounds %struct.qla8044_minidump_entry_mux, ptr %entry_hdr, i32 0, i32 4
  %9 = ptrtoint ptr %op_count to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %op_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp15.not = icmp eq i32 %10, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %select_value = getelementptr inbounds %struct.qla8044_minidump_entry_mux, ptr %entry_hdr, i32 0, i32 5
  %11 = ptrtoint ptr %select_value to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %select_value, align 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %data_ptr.018 = phi ptr [ %incdec.ptr2, %for.body.for.body_crit_edge ], [ %2, %for.body.preheader ]
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %s_value.016 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %12, %for.body.preheader ]
  %call = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %6, i32 noundef %s_value.016)
  %call1 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %4, ptr noundef nonnull %r_value)
  %incdec.ptr = getelementptr i32, ptr %data_ptr.018, i32 1
  %13 = ptrtoint ptr %data_ptr.018 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %s_value.016, ptr %data_ptr.018, align 4
  %14 = ptrtoint ptr %r_value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %r_value, align 4
  %incdec.ptr2 = getelementptr i32, ptr %data_ptr.018, i32 2
  %16 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %incdec.ptr, align 4
  %add = add i32 %s_value.016, %8
  %inc = add nuw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %data_ptr.0.lcssa = phi ptr [ %2, %entry.for.end_crit_edge ], [ %incdec.ptr2, %for.body.for.end_crit_edge ]
  %17 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %data_ptr.0.lcssa, ptr %d_ptr, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla8044_minidump_process_queue(ptr noundef %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #0 align 64 {
entry:
  %r_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value) #5
  %0 = ptrtoint ptr %r_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %r_value, align 4, !annotation !427
  %1 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_ptr, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45309, ptr noundef nonnull @.str.109, ptr noundef nonnull @__func__.qla8044_minidump_process_queue) #5
  %select_addr = getelementptr inbounds %struct.qla8044_minidump_entry_queue, ptr %entry_hdr, i32 0, i32 1
  %3 = ptrtoint ptr %select_addr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %select_addr, align 1
  %rd_strd = getelementptr inbounds %struct.qla8044_minidump_entry_queue, ptr %entry_hdr, i32 0, i32 8
  %read_addr_cnt = getelementptr inbounds %struct.qla8044_minidump_entry_queue, ptr %entry_hdr, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %read_addr_cnt to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %read_addr_cnt, align 1
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %rd_strd to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rd_strd, align 1
  %conv2 = zext i8 %8 to i32
  %op_count = getelementptr inbounds %struct.qla8044_minidump_entry_queue, ptr %entry_hdr, i32 0, i32 4
  %9 = ptrtoint ptr %op_count to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %op_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp31.not = icmp eq i32 %10, 0
  br i1 %cmp31.not, label %entry.for.end13_crit_edge, label %for.body.lr.ph

entry.for.end13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end13

for.body.lr.ph:                                   ; preds = %entry
  %read_addr = getelementptr inbounds %struct.qla8044_minidump_entry_queue, ptr %entry_hdr, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp527.not = icmp eq i8 %6, 0
  %q_strd = getelementptr inbounds %struct.qla8044_minidump_entry_queue, ptr %entry_hdr, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %data_ptr.034 = phi ptr [ %2, %for.body.lr.ph ], [ %data_ptr.1.lcssa, %for.end.for.body_crit_edge ]
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc12, %for.end.for.body_crit_edge ]
  %qid.032 = phi i32 [ 0, %for.body.lr.ph ], [ %add10, %for.end.for.body_crit_edge ]
  %call = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %4, i32 noundef %qid.032)
  br i1 %cmp527.not, label %for.body.for.end_crit_edge, label %for.body7.preheader

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body7.preheader:                              ; preds = %for.body
  %11 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %read_addr, align 1
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body7.preheader
  %data_ptr.130 = phi ptr [ %incdec.ptr, %for.body7.for.body7_crit_edge ], [ %data_ptr.034, %for.body7.preheader ]
  %k.029 = phi i32 [ %inc, %for.body7.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %r_addr.028 = phi i32 [ %add, %for.body7.for.body7_crit_edge ], [ %12, %for.body7.preheader ]
  %call8 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %r_addr.028, ptr noundef nonnull %r_value)
  %13 = ptrtoint ptr %r_value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %r_value, align 4
  %incdec.ptr = getelementptr i32, ptr %data_ptr.130, i32 1
  %15 = ptrtoint ptr %data_ptr.130 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %data_ptr.130, align 4
  %add = add i32 %r_addr.028, %conv2
  %inc = add nuw nsw i32 %k.029, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body7.for.end_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7

for.body7.for.end_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body7.for.end_crit_edge, %for.body.for.end_crit_edge
  %data_ptr.1.lcssa = phi ptr [ %data_ptr.034, %for.body.for.end_crit_edge ], [ %incdec.ptr, %for.body7.for.end_crit_edge ]
  %16 = ptrtoint ptr %q_strd to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %q_strd, align 1
  %conv9 = zext i16 %17 to i32
  %add10 = add i32 %qid.032, %conv9
  %inc12 = add nuw i32 %i.033, 1
  %exitcond36.not = icmp eq i32 %inc12, %10
  br i1 %exitcond36.not, label %for.end.for.end13_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.for.end13_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end13

for.end13:                                        ; preds = %for.end.for.end13_crit_edge, %entry.for.end13_crit_edge
  %data_ptr.0.lcssa = phi ptr [ %2, %entry.for.end13_crit_edge ], [ %data_ptr.1.lcssa, %for.end.for.end13_crit_edge ]
  %18 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %data_ptr.0.lcssa, ptr %d_ptr, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_minidump_process_pollrd(ptr noundef %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #0 align 64 {
entry:
  %r_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value) #5
  %0 = ptrtoint ptr %r_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %r_value, align 4, !annotation !427
  %1 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_ptr, align 4
  %select_addr = getelementptr inbounds %struct.qla8044_minidump_entry_pollrd, ptr %entry_hdr, i32 0, i32 1
  %3 = ptrtoint ptr %select_addr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %select_addr, align 1
  %read_addr = getelementptr inbounds %struct.qla8044_minidump_entry_pollrd, ptr %entry_hdr, i32 0, i32 2
  %5 = ptrtoint ptr %read_addr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %read_addr, align 1
  %poll_wait1 = getelementptr inbounds %struct.qla8044_minidump_entry_pollrd, ptr %entry_hdr, i32 0, i32 6
  %poll_mask2 = getelementptr inbounds %struct.qla8044_minidump_entry_pollrd, ptr %entry_hdr, i32 0, i32 7
  %7 = ptrtoint ptr %poll_mask2 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %poll_mask2, align 1
  %op_count = getelementptr inbounds %struct.qla8044_minidump_entry_pollrd, ptr %entry_hdr, i32 0, i32 5
  %9 = ptrtoint ptr %op_count to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %op_count, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp43.not = icmp eq i16 %10, 0
  br i1 %cmp43.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %select_value_stride = getelementptr inbounds %struct.qla8044_minidump_entry_pollrd, ptr %entry_hdr, i32 0, i32 4
  %11 = ptrtoint ptr %select_value_stride to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %select_value_stride, align 1
  %select_value = getelementptr inbounds %struct.qla8044_minidump_entry_pollrd, ptr %entry_hdr, i32 0, i32 3
  %13 = ptrtoint ptr %select_value to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %select_value, align 1
  %conv15 = zext i16 %12 to i32
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.lr.ph
  %data_ptr.046 = phi ptr [ %2, %for.body.lr.ph ], [ %incdec.ptr14, %while.end.for.body_crit_edge ]
  %i.045 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %while.end.for.body_crit_edge ]
  %s_value.044 = phi i32 [ %14, %for.body.lr.ph ], [ %add, %while.end.for.body_crit_edge ]
  %call = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %4, i32 noundef %s_value.044)
  %15 = ptrtoint ptr %poll_wait1 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %poll_wait1, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.else.while.cond_crit_edge, %for.body
  %poll_wait.0 = phi i32 [ %16, %for.body ], [ %dec, %if.else.while.cond_crit_edge ]
  %call6 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %4, ptr noundef nonnull %r_value)
  %17 = ptrtoint ptr %r_value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %r_value, align 4
  %and = and i32 %18, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7.not = icmp eq i32 %and, 0
  br i1 %cmp7.not, label %if.else, label %while.end

if.else:                                          ; preds = %while.cond
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #5
  %dec = add i32 %poll_wait.0, -1
  %cmp9 = icmp eq i32 %dec, 0
  br i1 %cmp9, label %if.then11, label %if.else.while.cond_crit_edge

if.else.while.cond_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45310, ptr noundef nonnull @.str.123, ptr noundef nonnull @__func__.qla8044_minidump_process_pollrd) #5
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %call13 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %6, ptr noundef nonnull %r_value)
  %incdec.ptr = getelementptr i32, ptr %data_ptr.046, i32 1
  %19 = ptrtoint ptr %data_ptr.046 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %s_value.044, ptr %data_ptr.046, align 4
  %20 = ptrtoint ptr %r_value to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %r_value, align 4
  %incdec.ptr14 = getelementptr i32, ptr %data_ptr.046, i32 2
  %22 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %incdec.ptr, align 4
  %add = add i32 %s_value.044, %conv15
  %inc = add nuw i16 %i.045, 1
  %23 = ptrtoint ptr %op_count to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %op_count, align 1
  %cmp = icmp ult i16 %inc, %24
  br i1 %cmp, label %while.end.for.body_crit_edge, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %while.end.for.end_crit_edge, %entry.for.end_crit_edge
  %data_ptr.0.lcssa = phi ptr [ %2, %entry.for.end_crit_edge ], [ %incdec.ptr14, %while.end.for.end_crit_edge ]
  %25 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %data_ptr.0.lcssa, ptr %d_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then11
  %retval.0 = phi i32 [ 258, %if.then11 ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla8044_minidump_process_rdmux2(ptr noundef %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !427
  %1 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_ptr, align 4
  %select_addr_1 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmux2, ptr %entry_hdr, i32 0, i32 1
  %3 = ptrtoint ptr %select_addr_1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %select_addr_1, align 1
  %select_addr_2 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmux2, ptr %entry_hdr, i32 0, i32 2
  %5 = ptrtoint ptr %select_addr_2 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %select_addr_2, align 1
  %select_value_mask = getelementptr inbounds %struct.qla8044_minidump_entry_rdmux2, ptr %entry_hdr, i32 0, i32 6
  %7 = ptrtoint ptr %select_value_mask to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %select_value_mask, align 1
  %read_addr1 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmux2, ptr %entry_hdr, i32 0, i32 7
  %9 = ptrtoint ptr %read_addr1 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %read_addr1, align 1
  %op_count = getelementptr inbounds %struct.qla8044_minidump_entry_rdmux2, ptr %entry_hdr, i32 0, i32 5
  %11 = ptrtoint ptr %op_count to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %op_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp44.not = icmp eq i32 %12, 0
  br i1 %cmp44.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %select_value_2 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmux2, ptr %entry_hdr, i32 0, i32 4
  %13 = ptrtoint ptr %select_value_2 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %select_value_2, align 1
  %select_value_1 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmux2, ptr %entry_hdr, i32 0, i32 3
  %15 = ptrtoint ptr %select_value_1 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %select_value_1, align 1
  %select_value_stride = getelementptr inbounds %struct.qla8044_minidump_entry_rdmux2, ptr %entry_hdr, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %data_ptr.048 = phi ptr [ %2, %for.body.lr.ph ], [ %incdec.ptr10, %for.body.for.body_crit_edge ]
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %sel_val2.046 = phi i32 [ %14, %for.body.lr.ph ], [ %add13, %for.body.for.body_crit_edge ]
  %sel_val1.045 = phi i32 [ %16, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %call = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %4, i32 noundef %sel_val1.045)
  %and = and i32 %sel_val1.045, %8
  %incdec.ptr = getelementptr i32, ptr %data_ptr.048, i32 1
  %17 = ptrtoint ptr %data_ptr.048 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and, ptr %data_ptr.048, align 4
  %call2 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %6, i32 noundef %and)
  %call3 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %10, ptr noundef nonnull %data)
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data, align 4
  %incdec.ptr4 = getelementptr i32, ptr %data_ptr.048, i32 2
  %20 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %incdec.ptr, align 4
  %call5 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %4, i32 noundef %sel_val2.046)
  %and6 = and i32 %sel_val2.046, %8
  %incdec.ptr7 = getelementptr i32, ptr %data_ptr.048, i32 3
  %21 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and6, ptr %incdec.ptr4, align 4
  %call8 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %6, i32 noundef %and6)
  %call9 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %10, ptr noundef nonnull %data)
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data, align 4
  %incdec.ptr10 = getelementptr i32, ptr %data_ptr.048, i32 4
  %24 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %incdec.ptr7, align 4
  %25 = ptrtoint ptr %select_value_stride to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %select_value_stride, align 1
  %conv = zext i8 %26 to i32
  %add = add i32 %sel_val1.045, %conv
  %add13 = add i32 %sel_val2.046, %conv
  %inc = add nuw i32 %i.047, 1
  %27 = ptrtoint ptr %op_count to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %op_count, align 1
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %data_ptr.0.lcssa = phi ptr [ %2, %entry.for.end_crit_edge ], [ %incdec.ptr10, %for.body.for.end_crit_edge ]
  %29 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %data_ptr.0.lcssa, ptr %d_ptr, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_minidump_process_pollrdmwr(ptr noundef %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #0 align 64 {
entry:
  %r_value = alloca i32, align 4
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value) #5
  %0 = ptrtoint ptr %r_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %r_value, align 4, !annotation !427
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %data, align 4, !annotation !427
  %2 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_ptr, align 4
  %addr_11 = getelementptr inbounds %struct.qla8044_minidump_entry_pollrdmwr, ptr %entry_hdr, i32 0, i32 1
  %4 = ptrtoint ptr %addr_11 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %addr_11, align 1
  %addr_22 = getelementptr inbounds %struct.qla8044_minidump_entry_pollrdmwr, ptr %entry_hdr, i32 0, i32 2
  %6 = ptrtoint ptr %addr_22 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %addr_22, align 1
  %value_13 = getelementptr inbounds %struct.qla8044_minidump_entry_pollrdmwr, ptr %entry_hdr, i32 0, i32 3
  %8 = ptrtoint ptr %value_13 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %value_13, align 1
  %value_24 = getelementptr inbounds %struct.qla8044_minidump_entry_pollrdmwr, ptr %entry_hdr, i32 0, i32 4
  %10 = ptrtoint ptr %value_24 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %value_24, align 1
  %poll_mask5 = getelementptr inbounds %struct.qla8044_minidump_entry_pollrdmwr, ptr %entry_hdr, i32 0, i32 6
  %12 = ptrtoint ptr %poll_mask5 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %poll_mask5, align 1
  %call = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %5, i32 noundef %9)
  %poll_wait6 = getelementptr inbounds %struct.qla8044_minidump_entry_pollrdmwr, ptr %entry_hdr, i32 0, i32 5
  %14 = ptrtoint ptr %poll_wait6 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %poll_wait6, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.else.while.cond_crit_edge, %entry
  %poll_wait.0 = phi i32 [ %15, %entry ], [ %dec, %if.else.while.cond_crit_edge ]
  %call7 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %5, ptr noundef nonnull %r_value)
  %16 = ptrtoint ptr %r_value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %r_value, align 4
  %and = and i32 %17, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.else, label %while.end

if.else:                                          ; preds = %while.cond
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #5
  %dec = add i32 %poll_wait.0, -1
  %cmp8 = icmp eq i32 %dec, 0
  br i1 %cmp8, label %if.then9, label %if.else.while.cond_crit_edge

if.else.while.cond_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45311, ptr noundef nonnull @.str.123, ptr noundef nonnull @__func__.qla8044_minidump_process_pollrdmwr) #5
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %call11 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %7, ptr noundef nonnull %data)
  %modify_mask = getelementptr inbounds %struct.qla8044_minidump_entry_pollrdmwr, ptr %entry_hdr, i32 0, i32 7
  %18 = ptrtoint ptr %modify_mask to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %modify_mask, align 1
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data, align 4
  %and12 = and i32 %21, %19
  store i32 %and12, ptr %data, align 4
  %call13 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %7, i32 noundef %and12)
  %call14 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %5, i32 noundef %11)
  %22 = ptrtoint ptr %poll_wait6 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %poll_wait6, align 1
  br label %while.cond16

while.cond16:                                     ; preds = %if.else22.while.cond16_crit_edge, %while.end
  %poll_wait.1 = phi i32 [ %23, %while.end ], [ %dec23, %if.else22.while.cond16_crit_edge ]
  %call18 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %5, ptr noundef nonnull %r_value)
  %24 = ptrtoint ptr %r_value to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %r_value, align 4
  %and19 = and i32 %25, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20.not = icmp eq i32 %and19, 0
  br i1 %cmp20.not, label %if.else22, label %while.end28

if.else22:                                        ; preds = %while.cond16
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #5
  %dec23 = add i32 %poll_wait.1, -1
  %cmp24 = icmp eq i32 %dec23, 0
  br i1 %cmp24, label %if.then25, label %if.else22.while.cond16_crit_edge

if.else22.while.cond16_crit_edge:                 ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond16

if.then25:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45312, ptr noundef nonnull @.str.124, ptr noundef nonnull @__func__.qla8044_minidump_process_pollrdmwr) #5
  br label %cleanup

while.end28:                                      ; preds = %while.cond16
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr i32, ptr %3, i32 1
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %7, ptr %3, align 4
  %incdec.ptr29 = getelementptr i32, ptr %3, i32 2
  %27 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and12, ptr %incdec.ptr, align 4
  %28 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %incdec.ptr29, ptr %d_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end28, %if.then25, %if.then9
  %retval.0 = phi i32 [ 0, %while.end28 ], [ 258, %if.then25 ], [ 258, %if.then9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_minidump_process_rddfe(ptr noundef %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !427
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #5
  %1 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %temp, align 4, !annotation !427
  %2 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_ptr, align 4
  %addr_1 = getelementptr inbounds %struct.qla8044_minidump_entry_rddfe, ptr %entry_hdr, i32 0, i32 1
  %4 = ptrtoint ptr %addr_1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %addr_1, align 1
  %value1 = getelementptr inbounds %struct.qla8044_minidump_entry_rddfe, ptr %entry_hdr, i32 0, i32 2
  %6 = ptrtoint ptr %value1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %value1, align 1
  %stride3 = getelementptr inbounds %struct.qla8044_minidump_entry_rddfe, ptr %entry_hdr, i32 0, i32 3
  %8 = ptrtoint ptr %stride3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %stride3, align 1
  %count5 = getelementptr inbounds %struct.qla8044_minidump_entry_rddfe, ptr %entry_hdr, i32 0, i32 5
  %10 = ptrtoint ptr %count5 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %count5, align 1
  %poll6 = getelementptr inbounds %struct.qla8044_minidump_entry_rddfe, ptr %entry_hdr, i32 0, i32 6
  %12 = ptrtoint ptr %poll6 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %poll6, align 1
  %mask7 = getelementptr inbounds %struct.qla8044_minidump_entry_rddfe, ptr %entry_hdr, i32 0, i32 7
  %14 = ptrtoint ptr %mask7 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %mask7, align 1
  %modify_mask8 = getelementptr inbounds %struct.qla8044_minidump_entry_rddfe, ptr %entry_hdr, i32 0, i32 8
  %16 = ptrtoint ptr %modify_mask8 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %modify_mask8, align 1
  %conv = zext i8 %9 to i32
  %add = add i32 %5, %conv
  %conv9 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp146.not = icmp eq i16 %11, 0
  br i1 %cmp146.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %stride24 = getelementptr inbounds %struct.qla8044_minidump_entry_rddfe, ptr %entry_hdr, i32 0, i32 4
  %18 = ptrtoint ptr %stride24 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %stride24, align 1
  %or = or i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp11135.not = icmp eq i32 %13, 0
  %conv44 = zext i8 %19 to i32
  %add45 = add i32 %or, %conv44
  br label %for.body

for.body:                                         ; preds = %if.end62.for.body_crit_edge, %for.body.lr.ph
  %data_ptr.0148 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr64, %if.end62.for.body_crit_edge ]
  %loop_cnt.0147 = phi i32 [ 0, %for.body.lr.ph ], [ %inc66, %if.end62.for.body_crit_edge ]
  %call = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %5, i32 noundef %or)
  br i1 %cmp11135.not, label %for.body.while.end_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %for.body.while.body_crit_edge
  %wait_count.0136 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 0, %for.body.while.body_crit_edge ]
  %call13 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %5, ptr noundef nonnull %temp)
  %20 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %temp, align 4
  %and = and i32 %21, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp14.not = icmp eq i32 %and, 0
  br i1 %cmp14.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end:                                           ; preds = %while.body
  %inc = add nuw i32 %wait_count.0136, 1
  %exitcond.not = icmp eq i32 %inc, %13
  br i1 %exitcond.not, label %if.end.if.then18_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.body.while.end_crit_edge
  %wait_count.0.lcssa = phi i32 [ 0, %for.body.while.end_crit_edge ], [ %wait_count.0136, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %wait_count.0.lcssa, i32 %13)
  %cmp16 = icmp eq i32 %wait_count.0.lcssa, %13
  br i1 %cmp16, label %while.end.if.then18_crit_edge, label %if.else

while.end.if.then18_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.then18:                                        ; preds = %while.end.if.then18_crit_edge, %if.end.if.then18_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45395, ptr noundef nonnull @.str.123, ptr noundef nonnull @__func__.qla8044_minidump_process_rddfe) #5
  br label %cleanup

if.else:                                          ; preds = %while.end
  %call19 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %add, ptr noundef nonnull %temp)
  %22 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %temp, align 4
  %and20 = and i32 %23, %17
  %shl = shl i32 %loop_cnt.0147, 16
  %or21 = or i32 %shl, %loop_cnt.0147
  %or22 = or i32 %or21, %and20
  store i32 %or22, ptr %temp, align 4
  %shl23 = shl i32 %or22, 16
  %or24 = or i32 %shl23, %or22
  %call25 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %add, i32 noundef %or24)
  %call26 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %5, i32 noundef %7)
  br i1 %cmp11135.not, label %if.else.if.then41_crit_edge, label %if.else.while.body30_crit_edge

if.else.while.body30_crit_edge:                   ; preds = %if.else
  br label %while.body30

if.else.if.then41_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

while.body30:                                     ; preds = %if.end36.while.body30_crit_edge, %if.else.while.body30_crit_edge
  %wait_count.1139 = phi i32 [ %inc37, %if.end36.while.body30_crit_edge ], [ 0, %if.else.while.body30_crit_edge ]
  %call31 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %5, ptr noundef nonnull %temp)
  %24 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %temp, align 4
  %and32 = and i32 %25, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %cmp33.not = icmp eq i32 %and32, 0
  br i1 %cmp33.not, label %if.end36, label %while.end38

if.end36:                                         ; preds = %while.body30
  %inc37 = add nuw i32 %wait_count.1139, 1
  %exitcond150.not = icmp eq i32 %inc37, %13
  br i1 %exitcond150.not, label %if.end36.if.then41_crit_edge, label %if.end36.while.body30_crit_edge

if.end36.while.body30_crit_edge:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body30

if.end36.if.then41_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

while.end38:                                      ; preds = %while.body30
  call void @__sanitizer_cov_trace_cmp4(i32 %wait_count.1139, i32 %13)
  %cmp39 = icmp eq i32 %wait_count.1139, %13
  br i1 %cmp39, label %while.end38.if.then41_crit_edge, label %if.end42

while.end38.if.then41_crit_edge:                  ; preds = %while.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

if.then41:                                        ; preds = %while.end38.if.then41_crit_edge, %if.end36.if.then41_crit_edge, %if.else.if.then41_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45396, ptr noundef nonnull @.str.123, ptr noundef nonnull @__func__.qla8044_minidump_process_rddfe) #5
  br label %cleanup

if.end42:                                         ; preds = %while.end38
  %call46 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %5, i32 noundef %add45)
  br i1 %cmp11135.not, label %if.end42.while.end58_crit_edge, label %if.end42.while.body50_crit_edge

if.end42.while.body50_crit_edge:                  ; preds = %if.end42
  br label %while.body50

if.end42.while.end58_crit_edge:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end58

while.body50:                                     ; preds = %if.end56.while.body50_crit_edge, %if.end42.while.body50_crit_edge
  %wait_count.2143 = phi i32 [ %inc57, %if.end56.while.body50_crit_edge ], [ 0, %if.end42.while.body50_crit_edge ]
  %call51 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %5, ptr noundef nonnull %temp)
  %26 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %temp, align 4
  %and52 = and i32 %27, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %cmp53.not = icmp eq i32 %and52, 0
  br i1 %cmp53.not, label %if.end56, label %while.body50.while.end58_crit_edge

while.body50.while.end58_crit_edge:               ; preds = %while.body50
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end58

if.end56:                                         ; preds = %while.body50
  %inc57 = add nuw i32 %wait_count.2143, 1
  %exitcond151.not = icmp eq i32 %inc57, %13
  br i1 %exitcond151.not, label %if.end56.if.then61_crit_edge, label %if.end56.while.body50_crit_edge

if.end56.while.body50_crit_edge:                  ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body50

if.end56.if.then61_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then61

while.end58:                                      ; preds = %while.body50.while.end58_crit_edge, %if.end42.while.end58_crit_edge
  %wait_count.2.lcssa = phi i32 [ 0, %if.end42.while.end58_crit_edge ], [ %wait_count.2143, %while.body50.while.end58_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %wait_count.2.lcssa, i32 %13)
  %cmp59 = icmp eq i32 %wait_count.2.lcssa, %13
  br i1 %cmp59, label %while.end58.if.then61_crit_edge, label %if.end62

while.end58.if.then61_crit_edge:                  ; preds = %while.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then61

if.then61:                                        ; preds = %while.end58.if.then61_crit_edge, %if.end56.if.then61_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45397, ptr noundef nonnull @.str.123, ptr noundef nonnull @__func__.qla8044_minidump_process_rddfe) #5
  br label %cleanup

if.end62:                                         ; preds = %while.end58
  %call63 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %add, ptr noundef nonnull %data)
  %incdec.ptr = getelementptr i32, ptr %data_ptr.0148, i32 1
  %28 = ptrtoint ptr %data_ptr.0148 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or24, ptr %data_ptr.0148, align 4
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data, align 4
  %incdec.ptr64 = getelementptr i32, ptr %data_ptr.0148, i32 2
  %31 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %incdec.ptr, align 4
  %inc66 = add nuw nsw i32 %loop_cnt.0147, 1
  %exitcond152.not = icmp eq i32 %inc66, %conv9
  br i1 %exitcond152.not, label %if.end62.for.end_crit_edge, label %if.end62.for.body_crit_edge

if.end62.for.body_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end62.for.end_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end62.for.end_crit_edge, %entry.for.end_crit_edge
  %data_ptr.0.lcssa = phi ptr [ %3, %entry.for.end_crit_edge ], [ %incdec.ptr64, %if.end62.for.end_crit_edge ]
  %32 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %data_ptr.0.lcssa, ptr %d_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then61, %if.then41, %if.then18
  %retval.0 = phi i32 [ 0, %for.end ], [ -1, %if.then61 ], [ -1, %if.then41 ], [ -1, %if.then18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_minidump_process_rdmdio(ptr noundef %vha, ptr nocapture noundef readonly %entry_hdr, ptr nocapture noundef %d_ptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_1 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmdio, ptr %entry_hdr, i32 0, i32 1
  %0 = ptrtoint ptr %addr_1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %addr_1, align 1
  %addr_2 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmdio, ptr %entry_hdr, i32 0, i32 2
  %2 = ptrtoint ptr %addr_2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %addr_2, align 1
  %stride_1 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmdio, ptr %entry_hdr, i32 0, i32 4
  %4 = ptrtoint ptr %stride_1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stride_1, align 1
  %stride_2 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmdio, ptr %entry_hdr, i32 0, i32 5
  %count1 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmdio, ptr %entry_hdr, i32 0, i32 6
  %6 = ptrtoint ptr %count1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %count1, align 1
  %mask2 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmdio, ptr %entry_hdr, i32 0, i32 8
  %8 = ptrtoint ptr %mask2 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %mask2, align 1
  %value_2 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmdio, ptr %entry_hdr, i32 0, i32 9
  %10 = ptrtoint ptr %value_2 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %value_2, align 1
  %conv = zext i8 %5 to i32
  %add = add i32 %1, %conv
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp132.not = icmp eq i16 %7, 0
  br i1 %cmp132.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %value_1 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmdio, ptr %entry_hdr, i32 0, i32 3
  %12 = ptrtoint ptr %value_1 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %value_1, align 1
  %14 = ptrtoint ptr %d_ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_ptr, align 4
  %sub = sub i32 %3, %conv
  %mul.neg = mul nsw i32 %conv, -2
  %sub15 = add i32 %mul.neg, %3
  %mul22.neg = mul nsw i32 %conv, -3
  %sub23 = add i32 %mul22.neg, %3
  %mul35.neg = mul nsw i32 %conv, -4
  %sub36 = add i32 %mul35.neg, %3
  %shl = shl i32 %11, 18
  br label %for.body

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %for.body.lr.ph
  %data_ptr.0135 = phi ptr [ %15, %for.body.lr.ph ], [ %incdec.ptr45, %if.end41.for.body_crit_edge ]
  %loop_cnt.0134 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %if.end41.for.body_crit_edge ]
  %value1.0133 = phi i32 [ %13, %for.body.lr.ph ], [ %add47, %if.end41.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -10, %16
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %for.body
  %call1.i = tail call fastcc i32 @qla8044_ipmdio_rd_reg(ptr noundef %vha, i32 noundef %1, i32 noundef %add, i32 noundef %9, i32 noundef %3) #5
  %and.i = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %17
  %cmp2.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp2.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %do.body.i
  %call9 = tail call fastcc i32 @qla8044_ipmdio_wr_reg(ptr noundef %vha, i32 noundef %1, i32 noundef %add, i32 noundef %9, i32 noundef %sub, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call16 = tail call fastcc i32 @qla8044_ipmdio_wr_reg(ptr noundef %vha, i32 noundef %1, i32 noundef %add, i32 noundef %9, i32 noundef %sub15, i32 noundef %value1.0133)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16)
  %cmp17 = icmp eq i32 %call16, -1
  br i1 %cmp17, label %if.end13.cleanup_crit_edge, label %if.end20

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %call24 = tail call fastcc i32 @qla8044_ipmdio_wr_reg(ptr noundef %vha, i32 noundef %1, i32 noundef %add, i32 noundef %9, i32 noundef %sub23, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call24)
  %cmp25 = icmp eq i32 %call24, -1
  br i1 %cmp25, label %if.end20.cleanup_crit_edge, label %if.end28

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i116 = sub i32 -10, %18
  br label %do.body.i120

do.body.i120:                                     ; preds = %if.end.i123.do.body.i120_crit_edge, %if.end28
  %call1.i117 = tail call fastcc i32 @qla8044_ipmdio_rd_reg(ptr noundef %vha, i32 noundef %1, i32 noundef %add, i32 noundef %9, i32 noundef %3) #5
  %and.i118 = and i32 %call1.i117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118)
  %cmp.not.not.i119 = icmp eq i32 %and.i118, 0
  br i1 %cmp.not.not.i119, label %if.end33, label %if.end.i123

if.end.i123:                                      ; preds = %do.body.i120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub.i121 = add i32 %add.neg.i116, %19
  %cmp2.i122 = icmp sgt i32 %sub.i121, -1
  br i1 %cmp2.i122, label %if.end.i123.cleanup.sink.split_crit_edge, label %if.end.i123.do.body.i120_crit_edge

if.end.i123.do.body.i120_crit_edge:               ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i120

if.end.i123.cleanup.sink.split_crit_edge:         ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end33:                                         ; preds = %do.body.i120
  %call37 = tail call fastcc i32 @qla8044_ipmdio_rd_reg(ptr noundef %vha, i32 noundef %1, i32 noundef %add, i32 noundef %9, i32 noundef %sub36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call37)
  %cmp38 = icmp eq i32 %call37, -1
  br i1 %cmp38, label %if.end33.cleanup_crit_edge, label %if.end41

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41:                                         ; preds = %if.end33
  %shl42 = shl i32 %value1.0133, 2
  %or = or i32 %shl, %shl42
  %or43 = or i32 %or, 2
  %20 = ptrtoint ptr %stride_2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %stride_2, align 1
  %incdec.ptr = getelementptr i32, ptr %data_ptr.0135, i32 1
  %22 = ptrtoint ptr %data_ptr.0135 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or43, ptr %data_ptr.0135, align 4
  %incdec.ptr45 = getelementptr i32, ptr %data_ptr.0135, i32 2
  %23 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call37, ptr %incdec.ptr, align 4
  %conv46 = zext i8 %21 to i32
  %add47 = add i32 %value1.0133, %conv46
  %24 = ptrtoint ptr %d_ptr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %incdec.ptr45, ptr %d_ptr, align 4
  %inc = add nuw i16 %loop_cnt.0134, 1
  %cmp = icmp ult i16 %inc, %7
  br i1 %cmp, label %if.end41.for.body_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup.sink.split:                               ; preds = %if.end.i123.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45394, ptr noundef nonnull @.str.125) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end41.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %cleanup.sink.split ], [ 0, %if.end41.cleanup_crit_edge ], [ -1, %if.end33.cleanup_crit_edge ], [ -1, %if.end20.cleanup_crit_edge ], [ -1, %if.end13.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_minidump_process_pollwr(ptr noundef %vha, ptr nocapture noundef readonly %entry_hdr) unnamed_addr #0 align 64 {
entry:
  %r_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value) #5
  %0 = ptrtoint ptr %r_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %r_value, align 4, !annotation !427
  %addr_1 = getelementptr inbounds %struct.qla8044_minidump_entry_pollwr, ptr %entry_hdr, i32 0, i32 1
  %1 = ptrtoint ptr %addr_1 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %addr_1, align 1
  %addr_2 = getelementptr inbounds %struct.qla8044_minidump_entry_pollwr, ptr %entry_hdr, i32 0, i32 2
  %3 = ptrtoint ptr %addr_2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %addr_2, align 1
  %value_1 = getelementptr inbounds %struct.qla8044_minidump_entry_pollwr, ptr %entry_hdr, i32 0, i32 3
  %5 = ptrtoint ptr %value_1 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %value_1, align 1
  %value_2 = getelementptr inbounds %struct.qla8044_minidump_entry_pollwr, ptr %entry_hdr, i32 0, i32 4
  %7 = ptrtoint ptr %value_2 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %value_2, align 1
  %poll1 = getelementptr inbounds %struct.qla8044_minidump_entry_pollwr, ptr %entry_hdr, i32 0, i32 5
  %9 = ptrtoint ptr %poll1 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %poll1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1.not = icmp eq i32 %10, 0
  br i1 %cmp1.not, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %wait_count.02 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %call = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %2, ptr noundef nonnull %r_value)
  %11 = ptrtoint ptr %r_value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %r_value, align 4
  %and = and i32 %12, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end:                                           ; preds = %while.body
  %inc = add nuw i32 %wait_count.02, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %if.end.if.then4_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %wait_count.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %wait_count.02, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %wait_count.0.lcssa, i32 %10)
  %cmp3 = icmp eq i32 %wait_count.0.lcssa, %10
  br i1 %cmp3, label %while.end.if.then4_crit_edge, label %if.end5

while.end.if.then4_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %while.end.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45398, ptr noundef nonnull @.str.123, ptr noundef nonnull @__func__.qla8044_minidump_process_pollwr) #5
  br label %cleanup

if.end5:                                          ; preds = %while.end
  %call6 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %4, i32 noundef %8)
  %call7 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %2, i32 noundef %6)
  br i1 %cmp1.not, label %if.end5.cleanup_crit_edge, label %if.end5.while.body10_crit_edge

if.end5.while.body10_crit_edge:                   ; preds = %if.end5
  br label %while.body10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body10:                                     ; preds = %while.body10.while.body10_crit_edge, %if.end5.while.body10_crit_edge
  %wait_count.15 = phi i32 [ %inc16, %while.body10.while.body10_crit_edge ], [ 0, %if.end5.while.body10_crit_edge ]
  %call11 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %2, ptr noundef nonnull %r_value)
  %13 = ptrtoint ptr %r_value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %r_value, align 4
  %and12 = and i32 %14, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13.not = icmp ne i32 %and12, 0
  %inc16 = add nuw i32 %wait_count.15, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc16, i32 %10)
  %exitcond6.not = icmp eq i32 %inc16, %10
  %or.cond = select i1 %cmp13.not, i1 true, i1 %exitcond6.not
  br i1 %or.cond, label %while.body10.cleanup_crit_edge, label %while.body10.while.body10_crit_edge

while.body10.while.body10_crit_edge:              ; preds = %while.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body10

while.body10.cleanup_crit_edge:                   ; preds = %while.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %while.body10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ -1, %if.then4 ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %while.body10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_post_uevent_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla8044_get_minidump(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %call = tail call i32 @qla8044_collect_md_data(ptr noundef %vha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %fw_dumped = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 167
  %2 = ptrtoint ptr %fw_dumped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %fw_dumped, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45275, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.qla8044_get_minidump) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 0, %if.then ], [ 1, %if.else ]
  %3 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 173
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla8044_write_optrom_data(ptr noundef %vha, ptr nocapture noundef readonly %buf, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %flash_status.i.i.i = alloca i32, align 4
  %flash_status.i17.i = alloca i32, align 4
  %flash_status.i1.i = alloca i32, align 4
  %flash_status.i.i69 = alloca i32, align 4
  %spi_val.i = alloca i32, align 4
  %flash_status.i38.i = alloca i32, align 4
  %flash_status.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %length, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memcpy(ptr %call8.i.i, ptr %buf, i32 %length)
  %div165 = lshr i32 %length, 8
  %div266 = lshr i32 %length, 16
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %1 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %host, align 8
  tail call void @scsi_block_requests(ptr noundef %2) #5
  %call3 = tail call fastcc i32 @qla8044_flash_lock(ptr noundef %vha)
  %hw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %3 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw.i, align 4
  %fdt_wrt_enable.i = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 214
  %5 = ptrtoint ptr %fdt_wrt_enable.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fdt_wrt_enable.i, align 4
  %call.i = tail call fastcc i32 @qla8044_write_flash_status_reg(ptr noundef %vha, i32 noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.qla8044_unprotect_flash.exit_crit_edge, label %if.then.i

if.end.qla8044_unprotect_flash.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_unprotect_flash.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45369, ptr noundef nonnull @.str.128, ptr noundef nonnull @__func__.qla8044_unprotect_flash) #5
  br label %qla8044_unprotect_flash.exit

qla8044_unprotect_flash.exit:                     ; preds = %if.then.i, %if.end.qla8044_unprotect_flash.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %length)
  %cmp161.not = icmp ult i32 %length, 65536
  br i1 %cmp161.not, label %qla8044_unprotect_flash.exit.for.end_crit_edge, label %for.body.preheader

qla8044_unprotect_flash.exit.for.end_crit_edge:   ; preds = %qla8044_unprotect_flash.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %qla8044_unprotect_flash.exit
  %7 = shl i32 %offset, 16
  %smax = call i32 @llvm.smax.i32(i32 %div266, i32 1)
  %shl.i = and i32 %7, 16711680
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.body.preheader
  %erase_offset.0163 = phi i32 [ %add, %if.end8.for.body_crit_edge ], [ %offset, %for.body.preheader ]
  %i.0162 = phi i32 [ %inc, %if.end8.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flash_status.i.i) #5
  %8 = ptrtoint ptr %flash_status.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %flash_status.i.i, align 4, !annotation !427
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end3.i.i.while.body.i.i_crit_edge, %for.body
  %dec12.i.i = phi i32 [ 1999, %for.body ], [ %dec.i.i, %if.end3.i.i.while.body.i.i_crit_edge ]
  %call.i.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef 1108344836, ptr noundef nonnull %flash_status.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i, label %while.end.i.thread.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %9 = ptrtoint ptr %flash_status.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flash_status.i.i, align 4
  %and.i.i = and i32 %10, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 6
  br i1 %cmp.i.i, label %while.end.i.i, label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  tail call void @msleep(i32 noundef 1) #5
  %dec.i.i = add nsw i32 %dec12.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec12.i.i, 0
  br i1 %tobool.not.i.i, label %qla8044_poll_flash_status_reg.exit.thread.i, label %if.end3.i.i.while.body.i.i_crit_edge

if.end3.i.i.while.body.i.i_crit_edge:             ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

qla8044_poll_flash_status_reg.exit.thread.i:      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i.i) #5
  br label %if.end.i

while.end.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec12.i.i)
  %tobool4.not.i.i = icmp eq i32 %dec12.i.i, 0
  br i1 %tobool4.not.i.i, label %while.end.i.i.qla8044_poll_flash_status_reg.exit.thread55.i_crit_edge, label %qla8044_poll_flash_status_reg.exit.i

while.end.i.i.qla8044_poll_flash_status_reg.exit.thread55.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_flash_status_reg.exit.thread55.i

while.end.i.thread.i:                             ; preds = %while.body.i.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45372, ptr noundef nonnull @.str.133, ptr noundef nonnull @__func__.qla8044_poll_flash_status_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec12.i.i)
  %tobool4.not.i85.i = icmp eq i32 %dec12.i.i, 0
  br i1 %tobool4.not.i85.i, label %while.end.i.thread.i.qla8044_poll_flash_status_reg.exit.thread55.i_crit_edge, label %qla8044_poll_flash_status_reg.exit.thread86.i

while.end.i.thread.i.qla8044_poll_flash_status_reg.exit.thread55.i_crit_edge: ; preds = %while.end.i.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_flash_status_reg.exit.thread55.i

qla8044_poll_flash_status_reg.exit.thread86.i:    ; preds = %while.end.i.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i.i) #5
  br label %if.then.i67

qla8044_poll_flash_status_reg.exit.thread55.i:    ; preds = %while.end.i.thread.i.qla8044_poll_flash_status_reg.exit.thread55.i_crit_edge, %while.end.i.i.qla8044_poll_flash_status_reg.exit.thread55.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i.i) #5
  br label %if.then.i67

qla8044_poll_flash_status_reg.exit.i:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i.i) #5
  br label %if.end.i

if.then.i67:                                      ; preds = %qla8044_poll_flash_status_reg.exit.thread55.i, %qla8044_poll_flash_status_reg.exit.thread86.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45358, ptr noundef nonnull @.str.134, ptr noundef nonnull @__func__.qla8044_erase_flash_sector) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i67, %qla8044_poll_flash_status_reg.exit.i, %qla8044_poll_flash_status_reg.exit.thread.i
  %and1.i = and i32 %erase_offset.0163, 65280
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = lshr i32 %erase_offset.0163, 16
  %shr.i = and i32 %and2.i, 255
  %or3.i = or i32 %or.i, %shr.i
  %call4.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410380, i32 noundef %or3.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then6.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45359, ptr noundef nonnull @.str.130, ptr noundef nonnull @__func__.qla8044_erase_flash_sector) #5
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %11 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw.i, align 4
  %fdt_erase_cmd.i = getelementptr inbounds %struct.qla_hw_data, ptr %12, i32 0, i32 215
  %13 = ptrtoint ptr %fdt_erase_cmd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fdt_erase_cmd.i, align 32
  %or8.i = or i32 %14, 16581376
  %call9.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410376, i32 noundef %or8.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end7.i.if.end12.i_crit_edge, label %if.then11.i

if.end7.i.if.end12.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45360, ptr noundef nonnull @.str.129, ptr noundef nonnull @__func__.qla8044_erase_flash_sector) #5
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end7.i.if.end12.i_crit_edge
  %call13.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410372, i32 noundef 61) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end16.i_crit_edge, label %if.then15.i

if.end12.i.if.end16.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45361, ptr noundef nonnull @.str.135, ptr noundef nonnull @__func__.qla8044_erase_flash_sector) #5
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end16.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flash_status.i38.i) #5
  %15 = ptrtoint ptr %flash_status.i38.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %flash_status.i38.i, align 4, !annotation !427
  br label %while.body.i42.i

while.body.i42.i:                                 ; preds = %if.end3.i49.i.while.body.i42.i_crit_edge, %if.end16.i
  %dec12.i39.i = phi i32 [ 1999, %if.end16.i ], [ %dec.i47.i, %if.end3.i49.i.while.body.i42.i_crit_edge ]
  %call.i40.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef 1108344836, ptr noundef nonnull %flash_status.i38.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %tobool1.not.i41.i = icmp eq i32 %call.i40.i, 0
  br i1 %tobool1.not.i41.i, label %if.end.i46.i, label %while.end.i52.i

if.end.i46.i:                                     ; preds = %while.body.i42.i
  %16 = ptrtoint ptr %flash_status.i38.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flash_status.i38.i, align 4
  %and.i44.i = and i32 %17, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i44.i)
  %cmp.i45.i = icmp eq i32 %and.i44.i, 6
  br i1 %cmp.i45.i, label %while.end.i52.thread.i, label %if.end3.i49.i

if.end3.i49.i:                                    ; preds = %if.end.i46.i
  tail call void @msleep(i32 noundef 1) #5
  %dec.i47.i = add nsw i32 %dec12.i39.i, -1
  %tobool.not.i48.i = icmp eq i32 %dec12.i39.i, 0
  br i1 %tobool.not.i48.i, label %qla8044_poll_flash_status_reg.exit53.thread.i, label %if.end3.i49.i.while.body.i42.i_crit_edge

if.end3.i49.i.while.body.i42.i_crit_edge:         ; preds = %if.end3.i49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i42.i

qla8044_poll_flash_status_reg.exit53.thread.i:    ; preds = %if.end3.i49.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i38.i) #5
  br label %if.end8

while.end.i52.i:                                  ; preds = %while.body.i42.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45372, ptr noundef nonnull @.str.133, ptr noundef nonnull @__func__.qla8044_poll_flash_status_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec12.i39.i)
  %tobool4.not.i50.i = icmp eq i32 %dec12.i39.i, 0
  br i1 %tobool4.not.i50.i, label %while.end.i52.i.qla8044_poll_flash_status_reg.exit53.thread59.i_crit_edge, label %qla8044_poll_flash_status_reg.exit53.i

while.end.i52.i.qla8044_poll_flash_status_reg.exit53.thread59.i_crit_edge: ; preds = %while.end.i52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_flash_status_reg.exit53.thread59.i

while.end.i52.thread.i:                           ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec12.i39.i)
  %tobool4.not.i5088.i = icmp eq i32 %dec12.i39.i, 0
  br i1 %tobool4.not.i5088.i, label %while.end.i52.thread.i.qla8044_poll_flash_status_reg.exit53.thread59.i_crit_edge, label %qla8044_poll_flash_status_reg.exit53.thread90.i

while.end.i52.thread.i.qla8044_poll_flash_status_reg.exit53.thread59.i_crit_edge: ; preds = %while.end.i52.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_flash_status_reg.exit53.thread59.i

qla8044_poll_flash_status_reg.exit53.thread90.i:  ; preds = %while.end.i52.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i38.i) #5
  br label %if.end8

qla8044_poll_flash_status_reg.exit53.thread59.i:  ; preds = %while.end.i52.thread.i.qla8044_poll_flash_status_reg.exit53.thread59.i_crit_edge, %while.end.i52.i.qla8044_poll_flash_status_reg.exit53.thread59.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i38.i) #5
  br label %if.then7

qla8044_poll_flash_status_reg.exit53.i:           ; preds = %while.end.i52.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i38.i) #5
  br label %if.then7

if.then7:                                         ; preds = %qla8044_poll_flash_status_reg.exit53.i, %qla8044_poll_flash_status_reg.exit53.thread59.i
  %18 = phi i32 [ 258, %qla8044_poll_flash_status_reg.exit53.thread59.i ], [ %call.i40.i, %qla8044_poll_flash_status_reg.exit53.i ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45362, ptr noundef nonnull @.str.136, ptr noundef nonnull @__func__.qla8044_erase_flash_sector) #5
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 45368, ptr noundef nonnull @.str.45, i32 noundef %erase_offset.0163) #5
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45345, ptr noundef nonnull @.str.46, i32 noundef %erase_offset.0163) #5
  br label %out

if.end8:                                          ; preds = %qla8044_poll_flash_status_reg.exit53.thread90.i, %qla8044_poll_flash_status_reg.exit53.thread.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 45368, ptr noundef nonnull @.str.45, i32 noundef %erase_offset.0163) #5
  %add = add i32 %erase_offset.0163, 65536
  %inc = add nuw nsw i32 %i.0162, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end8.for.end_crit_edge, %qla8044_unprotect_flash.exit.for.end_crit_edge
  %rval.0.lcssa = phi i32 [ 258, %qla8044_unprotect_flash.exit.for.end_crit_edge ], [ 0, %if.end8.for.end_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 45375, ptr noundef nonnull @.str.47, i32 noundef %offset, i32 noundef %length) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %length)
  %cmp10165.not = icmp ult i32 %length, 256
  br i1 %cmp10165.not, label %for.end.for.end20_crit_edge, label %for.body11.preheader

for.end.for.end20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end20

for.body11.preheader:                             ; preds = %for.end
  %smax222 = call i32 @llvm.smax.i32(i32 %div165, i32 1)
  br label %for.body11

for.body11:                                       ; preds = %if.end16.for.body11_crit_edge, %for.body11.preheader
  %p_src.0170 = phi ptr [ %add.ptr, %if.end16.for.body11_crit_edge ], [ %call8.i.i, %for.body11.preheader ]
  %i.1169 = phi i32 [ %inc19, %if.end16.for.body11_crit_edge ], [ 0, %for.body11.preheader ]
  %offset.addr.0166 = phi i32 [ %add17, %if.end16.for.body11_crit_edge ], [ %offset, %for.body11.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spi_val.i) #5
  %19 = ptrtoint ptr %spi_val.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %spi_val.i, align 4, !annotation !427
  %call.i70 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef 671670292, ptr noundef nonnull %spi_val.i) #5
  %20 = ptrtoint ptr %spi_val.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %spi_val.i, align 4
  %or.i71 = or i32 %21, 4
  %call2.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 671670292, i32 noundef %or.i71) #5
  %call3.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410376, i32 noundef 8388608) #5
  %22 = ptrtoint ptr %p_src.0170 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p_src.0170, align 4
  %call4.i72 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410380, i32 noundef %23) #5
  %call5.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410372, i32 noundef 67) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flash_status.i.i69) #5
  %24 = ptrtoint ptr %flash_status.i.i69 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %flash_status.i.i69, align 4, !annotation !427
  br label %while.body.i.i76

while.body.i.i76:                                 ; preds = %if.end3.i.i82.while.body.i.i76_crit_edge, %for.body11
  %dec12.i.i73 = phi i32 [ 1999, %for.body11 ], [ %dec.i.i80, %if.end3.i.i82.while.body.i.i76_crit_edge ]
  %call.i.i74 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef 1108344836, ptr noundef nonnull %flash_status.i.i69) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74)
  %tobool1.not.i.i75 = icmp eq i32 %call.i.i74, 0
  br i1 %tobool1.not.i.i75, label %if.end.i.i79, label %while.end.i.i85

if.end.i.i79:                                     ; preds = %while.body.i.i76
  %25 = ptrtoint ptr %flash_status.i.i69 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flash_status.i.i69, align 4
  %and.i.i77 = and i32 %26, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i.i77)
  %cmp.i.i78 = icmp eq i32 %and.i.i77, 6
  br i1 %cmp.i.i78, label %while.end.i.thread.i86, label %if.end3.i.i82

if.end3.i.i82:                                    ; preds = %if.end.i.i79
  tail call void @msleep(i32 noundef 1) #5
  %dec.i.i80 = add nsw i32 %dec12.i.i73, -1
  %tobool.not.i.i81 = icmp eq i32 %dec12.i.i73, 0
  br i1 %tobool.not.i.i81, label %qla8044_poll_flash_status_reg.exit.thread.i83, label %if.end3.i.i82.while.body.i.i76_crit_edge

if.end3.i.i82.while.body.i.i76_crit_edge:         ; preds = %if.end3.i.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i76

qla8044_poll_flash_status_reg.exit.thread.i83:    ; preds = %if.end3.i.i82
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i.i69) #5
  br label %if.end8.i

while.end.i.i85:                                  ; preds = %while.body.i.i76
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45372, ptr noundef nonnull @.str.133, ptr noundef nonnull @__func__.qla8044_poll_flash_status_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec12.i.i73)
  %tobool4.not.i.i84 = icmp eq i32 %dec12.i.i73, 0
  br i1 %tobool4.not.i.i84, label %while.end.i.i85.qla8044_poll_flash_status_reg.exit.thread34.i_crit_edge, label %qla8044_poll_flash_status_reg.exit.i87

while.end.i.i85.qla8044_poll_flash_status_reg.exit.thread34.i_crit_edge: ; preds = %while.end.i.i85
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_flash_status_reg.exit.thread34.i

while.end.i.thread.i86:                           ; preds = %if.end.i.i79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec12.i.i73)
  %tobool4.not.i88.i = icmp eq i32 %dec12.i.i73, 0
  br i1 %tobool4.not.i88.i, label %while.end.i.thread.i86.qla8044_poll_flash_status_reg.exit.thread34.i_crit_edge, label %qla8044_poll_flash_status_reg.exit.thread90.i

while.end.i.thread.i86.qla8044_poll_flash_status_reg.exit.thread34.i_crit_edge: ; preds = %while.end.i.thread.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_flash_status_reg.exit.thread34.i

qla8044_poll_flash_status_reg.exit.thread90.i:    ; preds = %while.end.i.thread.i86
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i.i69) #5
  br label %if.end8.i

qla8044_poll_flash_status_reg.exit.thread34.i:    ; preds = %while.end.i.thread.i86.qla8044_poll_flash_status_reg.exit.thread34.i_crit_edge, %while.end.i.i85.qla8044_poll_flash_status_reg.exit.thread34.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i.i69) #5
  br label %if.then14

qla8044_poll_flash_status_reg.exit.i87:           ; preds = %while.end.i.i85
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i.i69) #5
  br label %if.then14

if.end8.i:                                        ; preds = %qla8044_poll_flash_status_reg.exit.thread90.i, %qla8044_poll_flash_status_reg.exit.thread.i83
  %call9.i88 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410376, i32 noundef 8388609) #5
  %dwptr.addr.065.i = getelementptr i32, ptr %p_src.0170, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end17.i.while.body.i_crit_edge, %if.end8.i
  %dwptr.addr.067.i = phi ptr [ %dwptr.addr.065.i, %if.end8.i ], [ %dwptr.addr.0.i, %if.end17.i.while.body.i_crit_edge ]
  %dwords.addr.066.i = phi i32 [ 63, %if.end8.i ], [ %dec18.i, %if.end17.i.while.body.i_crit_edge ]
  %27 = ptrtoint ptr %dwptr.addr.067.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dwptr.addr.067.i, align 4
  %call12.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410380, i32 noundef %28) #5
  %call13.i89 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410372, i32 noundef 127) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flash_status.i1.i) #5
  %29 = ptrtoint ptr %flash_status.i1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %flash_status.i1.i, align 4, !annotation !427
  br label %while.body.i5.i

while.body.i5.i:                                  ; preds = %if.end3.i12.i.while.body.i5.i_crit_edge, %while.body.i
  %dec12.i2.i = phi i32 [ 1999, %while.body.i ], [ %dec.i10.i, %if.end3.i12.i.while.body.i5.i_crit_edge ]
  %call.i3.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef 1108344836, ptr noundef nonnull %flash_status.i1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool1.not.i4.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool1.not.i4.i, label %if.end.i9.i, label %while.end.i15.i

if.end.i9.i:                                      ; preds = %while.body.i5.i
  %30 = ptrtoint ptr %flash_status.i1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flash_status.i1.i, align 4
  %and.i7.i = and i32 %31, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i7.i)
  %cmp.i8.i = icmp eq i32 %and.i7.i, 6
  br i1 %cmp.i8.i, label %while.end.i15.thread.i, label %if.end3.i12.i

if.end3.i12.i:                                    ; preds = %if.end.i9.i
  tail call void @msleep(i32 noundef 1) #5
  %dec.i10.i = add nsw i32 %dec12.i2.i, -1
  %tobool.not.i11.i = icmp eq i32 %dec12.i2.i, 0
  br i1 %tobool.not.i11.i, label %qla8044_poll_flash_status_reg.exit16.thread.i, label %if.end3.i12.i.while.body.i5.i_crit_edge

if.end3.i12.i.while.body.i5.i_crit_edge:          ; preds = %if.end3.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i5.i

qla8044_poll_flash_status_reg.exit16.thread.i:    ; preds = %if.end3.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i1.i) #5
  br label %if.end17.i

while.end.i15.i:                                  ; preds = %while.body.i5.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45372, ptr noundef nonnull @.str.133, ptr noundef nonnull @__func__.qla8044_poll_flash_status_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec12.i2.i)
  %tobool4.not.i13.i = icmp eq i32 %dec12.i2.i, 0
  br i1 %tobool4.not.i13.i, label %while.end.i15.i.qla8044_poll_flash_status_reg.exit16.thread38.i_crit_edge, label %if.then16.loopexit.i

while.end.i15.i.qla8044_poll_flash_status_reg.exit16.thread38.i_crit_edge: ; preds = %while.end.i15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_flash_status_reg.exit16.thread38.i

while.end.i15.thread.i:                           ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec12.i2.i)
  %tobool4.not.i1394.i = icmp eq i32 %dec12.i2.i, 0
  br i1 %tobool4.not.i1394.i, label %while.end.i15.thread.i.qla8044_poll_flash_status_reg.exit16.thread38.i_crit_edge, label %qla8044_poll_flash_status_reg.exit16.thread96.i

while.end.i15.thread.i.qla8044_poll_flash_status_reg.exit16.thread38.i_crit_edge: ; preds = %while.end.i15.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_flash_status_reg.exit16.thread38.i

qla8044_poll_flash_status_reg.exit16.thread96.i:  ; preds = %while.end.i15.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i1.i) #5
  br label %if.end17.i

qla8044_poll_flash_status_reg.exit16.thread38.i:  ; preds = %while.end.i15.thread.i.qla8044_poll_flash_status_reg.exit16.thread38.i_crit_edge, %while.end.i15.i.qla8044_poll_flash_status_reg.exit16.thread38.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i1.i) #5
  br label %if.then14

if.then16.loopexit.i:                             ; preds = %while.end.i15.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i1.i) #5
  br label %if.then14

if.end17.i:                                       ; preds = %qla8044_poll_flash_status_reg.exit16.thread96.i, %qla8044_poll_flash_status_reg.exit16.thread.i
  %dec18.i = add nsw i32 %dwords.addr.066.i, -1
  %dwptr.addr.0.i = getelementptr i32, ptr %dwptr.addr.067.i, i32 1
  %cmp10.not.i = icmp eq i32 %dec18.i, 1
  br i1 %cmp10.not.i, label %while.end.i, label %if.end17.i.while.body.i_crit_edge

if.end17.i.while.body.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.end.i:                                      ; preds = %if.end17.i
  %shr.i90 = lshr i32 %offset.addr.0166, 2
  %or19.i = or i32 %shr.i90, 8388608
  %call20.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410376, i32 noundef %or19.i) #5
  %32 = ptrtoint ptr %dwptr.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dwptr.addr.0.i, align 4
  %call22.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410380, i32 noundef %33) #5
  %call23.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410372, i32 noundef 125) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flash_status.i17.i) #5
  %34 = ptrtoint ptr %flash_status.i17.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %flash_status.i17.i, align 4, !annotation !427
  br label %while.body.i21.i

while.body.i21.i:                                 ; preds = %if.end3.i28.i.while.body.i21.i_crit_edge, %while.end.i
  %dec12.i18.i = phi i32 [ 1999, %while.end.i ], [ %dec.i26.i, %if.end3.i28.i.while.body.i21.i_crit_edge ]
  %call.i19.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef 1108344836, ptr noundef nonnull %flash_status.i17.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %tobool1.not.i20.i = icmp eq i32 %call.i19.i, 0
  br i1 %tobool1.not.i20.i, label %if.end.i25.i, label %while.end.i31.i

if.end.i25.i:                                     ; preds = %while.body.i21.i
  %35 = ptrtoint ptr %flash_status.i17.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flash_status.i17.i, align 4
  %and.i23.i = and i32 %36, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i23.i)
  %cmp.i24.i = icmp eq i32 %and.i23.i, 6
  br i1 %cmp.i24.i, label %while.end.i31.thread.i, label %if.end3.i28.i

if.end3.i28.i:                                    ; preds = %if.end.i25.i
  tail call void @msleep(i32 noundef 1) #5
  %dec.i26.i = add nsw i32 %dec12.i18.i, -1
  %tobool.not.i27.i = icmp eq i32 %dec12.i18.i, 0
  br i1 %tobool.not.i27.i, label %qla8044_poll_flash_status_reg.exit32.thread.i, label %if.end3.i28.i.while.body.i21.i_crit_edge

if.end3.i28.i.while.body.i21.i_crit_edge:         ; preds = %if.end3.i28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i21.i

qla8044_poll_flash_status_reg.exit32.thread.i:    ; preds = %if.end3.i28.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i17.i) #5
  br label %if.end27.i

while.end.i31.i:                                  ; preds = %while.body.i21.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45372, ptr noundef nonnull @.str.133, ptr noundef nonnull @__func__.qla8044_poll_flash_status_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec12.i18.i)
  %tobool4.not.i29.i = icmp eq i32 %dec12.i18.i, 0
  br i1 %tobool4.not.i29.i, label %while.end.i31.i.qla8044_poll_flash_status_reg.exit32.thread42.i_crit_edge, label %qla8044_poll_flash_status_reg.exit32.i

while.end.i31.i.qla8044_poll_flash_status_reg.exit32.thread42.i_crit_edge: ; preds = %while.end.i31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_flash_status_reg.exit32.thread42.i

while.end.i31.thread.i:                           ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec12.i18.i)
  %tobool4.not.i29100.i = icmp eq i32 %dec12.i18.i, 0
  br i1 %tobool4.not.i29100.i, label %while.end.i31.thread.i.qla8044_poll_flash_status_reg.exit32.thread42.i_crit_edge, label %qla8044_poll_flash_status_reg.exit32.thread102.i

while.end.i31.thread.i.qla8044_poll_flash_status_reg.exit32.thread42.i_crit_edge: ; preds = %while.end.i31.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_flash_status_reg.exit32.thread42.i

qla8044_poll_flash_status_reg.exit32.thread102.i: ; preds = %while.end.i31.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i17.i) #5
  br label %if.end27.i

qla8044_poll_flash_status_reg.exit32.thread42.i:  ; preds = %while.end.i31.thread.i.qla8044_poll_flash_status_reg.exit32.thread42.i_crit_edge, %while.end.i31.i.qla8044_poll_flash_status_reg.exit32.thread42.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i17.i) #5
  br label %if.then14

qla8044_poll_flash_status_reg.exit32.i:           ; preds = %while.end.i31.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i17.i) #5
  br label %if.then14

if.end27.i:                                       ; preds = %qla8044_poll_flash_status_reg.exit32.thread102.i, %qla8044_poll_flash_status_reg.exit32.thread.i
  %call28.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef 671670288, ptr noundef nonnull %spi_val.i) #5
  %37 = ptrtoint ptr %spi_val.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %spi_val.i, align 4
  %and.i91 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %cmp29.not.i = icmp eq i32 %and.i91, 0
  br i1 %cmp29.not.i, label %if.end27.i.qla8044_write_flash_buffer_mode.exit_crit_edge, label %if.then30.i

if.end27.i.qla8044_write_flash_buffer_mode.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_write_flash_buffer_mode.exit

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45355, ptr noundef nonnull @.str.138, ptr noundef nonnull @__func__.qla8044_write_flash_buffer_mode) #5
  %39 = ptrtoint ptr %spi_val.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %spi_val.i, align 4
  %call31.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef 671670292, ptr noundef nonnull %spi_val.i) #5
  %40 = ptrtoint ptr %spi_val.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %spi_val.i, align 4
  %or32.i = or i32 %41, 4
  %call33.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 671670292, i32 noundef %or32.i) #5
  br label %qla8044_write_flash_buffer_mode.exit

qla8044_write_flash_buffer_mode.exit:             ; preds = %if.then30.i, %if.end27.i.qla8044_write_flash_buffer_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spi_val.i) #5
  br label %if.end16

if.then14:                                        ; preds = %qla8044_poll_flash_status_reg.exit32.i, %qla8044_poll_flash_status_reg.exit32.thread42.i, %if.then16.loopexit.i, %qla8044_poll_flash_status_reg.exit16.thread38.i, %qla8044_poll_flash_status_reg.exit.i87, %qla8044_poll_flash_status_reg.exit.thread34.i
  %.sink = phi i32 [ 45348, %qla8044_poll_flash_status_reg.exit.i87 ], [ 45348, %qla8044_poll_flash_status_reg.exit.thread34.i ], [ 45353, %if.then16.loopexit.i ], [ 45353, %qla8044_poll_flash_status_reg.exit16.thread38.i ], [ 45354, %qla8044_poll_flash_status_reg.exit32.i ], [ 45354, %qla8044_poll_flash_status_reg.exit32.thread42.i ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef %.sink, ptr noundef nonnull @.str.138, ptr noundef nonnull @__func__.qla8044_write_flash_buffer_mode) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spi_val.i) #5
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45346, ptr noundef nonnull @.str.48) #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then14
  %liter.042.i = phi i32 [ 0, %if.then14 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %dwptr.addr.040.i = phi ptr [ %p_src.0170, %if.then14 ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %faddr.addr.038.i = phi i32 [ %offset.addr.0166, %if.then14 ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %shr.i.i = lshr i32 %faddr.addr.038.i, 2
  %or.i.i = or i32 %shr.i.i, 8388608
  %call.i.i92 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410376, i32 noundef %or.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i92)
  %tobool.not.i.i93 = icmp eq i32 %call.i.i92, 0
  br i1 %tobool.not.i.i93, label %if.end.i.i94, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45364, ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.qla8044_flash_write_u32) #5
  br label %if.then.i97

if.end.i.i94:                                     ; preds = %for.body.i
  %42 = ptrtoint ptr %dwptr.addr.040.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dwptr.addr.040.i, align 4
  %call1.i.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410380, i32 noundef %43) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i94
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45365, ptr noundef nonnull @.str.141, ptr noundef nonnull @__func__.qla8044_flash_write_u32) #5
  br label %if.then.i97

if.end4.i.i:                                      ; preds = %if.end.i.i94
  %call5.i.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410372, i32 noundef 61) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45366, ptr noundef nonnull @.str.135, ptr noundef nonnull @__func__.qla8044_flash_write_u32) #5
  br label %if.then.i97

if.end8.i.i:                                      ; preds = %if.end4.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flash_status.i.i.i) #5
  %44 = ptrtoint ptr %flash_status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %flash_status.i.i.i, align 4, !annotation !427
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end3.i.i.i.while.body.i.i.i_crit_edge, %if.end8.i.i
  %dec12.i.i.i = phi i32 [ 1999, %if.end8.i.i ], [ %dec.i.i.i, %if.end3.i.i.i.while.body.i.i.i_crit_edge ]
  %call.i.i.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef 1108344836, ptr noundef nonnull %flash_status.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i96, label %while.end.i.i.i

if.end.i.i.i96:                                   ; preds = %while.body.i.i.i
  %45 = ptrtoint ptr %flash_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flash_status.i.i.i, align 4
  %and.i.i.i = and i32 %46, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i.i.i)
  %cmp.i.i.i95 = icmp eq i32 %and.i.i.i, 6
  br i1 %cmp.i.i.i95, label %while.end.i.thread.i.i, label %if.end3.i.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i96
  tail call void @msleep(i32 noundef 1) #5
  %dec.i.i.i = add nsw i32 %dec12.i.i.i, -1
  %tobool.not.i.i.i = icmp eq i32 %dec12.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %qla8044_poll_flash_status_reg.exit.thread.i.i, label %if.end3.i.i.i.while.body.i.i.i_crit_edge

if.end3.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.i

qla8044_poll_flash_status_reg.exit.thread.i.i:    ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i.i.i) #5
  br label %for.inc.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45372, ptr noundef nonnull @.str.133, ptr noundef nonnull @__func__.qla8044_poll_flash_status_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec12.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %dec12.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %while.end.i.i.i.qla8044_poll_flash_status_reg.exit.thread25.i.i_crit_edge, label %qla8044_poll_flash_status_reg.exit.i.i

while.end.i.i.i.qla8044_poll_flash_status_reg.exit.thread25.i.i_crit_edge: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_flash_status_reg.exit.thread25.i.i

while.end.i.thread.i.i:                           ; preds = %if.end.i.i.i96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec12.i.i.i)
  %tobool4.not.i40.i.i = icmp eq i32 %dec12.i.i.i, 0
  br i1 %tobool4.not.i40.i.i, label %while.end.i.thread.i.i.qla8044_poll_flash_status_reg.exit.thread25.i.i_crit_edge, label %qla8044_poll_flash_status_reg.exit.thread42.i.i

while.end.i.thread.i.i.qla8044_poll_flash_status_reg.exit.thread25.i.i_crit_edge: ; preds = %while.end.i.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_flash_status_reg.exit.thread25.i.i

qla8044_poll_flash_status_reg.exit.thread42.i.i:  ; preds = %while.end.i.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i.i.i) #5
  br label %for.inc.i

qla8044_poll_flash_status_reg.exit.thread25.i.i:  ; preds = %while.end.i.thread.i.i.qla8044_poll_flash_status_reg.exit.thread25.i.i_crit_edge, %while.end.i.i.i.qla8044_poll_flash_status_reg.exit.thread25.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i.i.i) #5
  br label %if.then11.i.i

qla8044_poll_flash_status_reg.exit.i.i:           ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i.i.i) #5
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %qla8044_poll_flash_status_reg.exit.i.i, %qla8044_poll_flash_status_reg.exit.thread25.i.i
  %47 = phi i32 [ 258, %qla8044_poll_flash_status_reg.exit.thread25.i.i ], [ %call.i.i.i, %qla8044_poll_flash_status_reg.exit.i.i ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45367, ptr noundef nonnull @.str.136, ptr noundef nonnull @__func__.qla8044_flash_write_u32) #5
  br label %if.then.i97

if.then.i97:                                      ; preds = %if.then11.i.i, %if.then7.i.i, %if.then3.i.i, %if.then.i.i
  %ret_val.0.i.ph.i = phi i32 [ %47, %if.then11.i.i ], [ %call5.i.i, %if.then7.i.i ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i92, %if.then.i.i ]
  %48 = ptrtoint ptr %dwptr.addr.040.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dwptr.addr.040.i, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45377, ptr noundef nonnull @.str.139, ptr noundef nonnull @__func__.qla8044_write_flash_dword_mode, i32 noundef %faddr.addr.038.i, i32 noundef %49) #5
  br label %if.end16

for.inc.i:                                        ; preds = %qla8044_poll_flash_status_reg.exit.thread42.i.i, %qla8044_poll_flash_status_reg.exit.thread.i.i
  %inc.i = add nuw nsw i32 %liter.042.i, 1
  %add.i = add i32 %faddr.addr.038.i, 4
  %incdec.ptr.i = getelementptr i32, ptr %dwptr.addr.040.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.if.end16_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.end16_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end16:                                         ; preds = %for.inc.i.if.end16_crit_edge, %if.then.i97, %qla8044_write_flash_buffer_mode.exit
  %rval.2 = phi i32 [ 0, %qla8044_write_flash_buffer_mode.exit ], [ %ret_val.0.i.ph.i, %if.then.i97 ], [ 0, %for.inc.i.if.end16_crit_edge ]
  %add.ptr = getelementptr i8, ptr %p_src.0170, i32 256
  %add17 = add i32 %offset.addr.0166, 256
  %inc19 = add nuw nsw i32 %i.1169, 1
  %exitcond223.not = icmp eq i32 %inc19, %smax222
  br i1 %exitcond223.not, label %if.end16.for.end20_crit_edge, label %if.end16.for.body11_crit_edge

if.end16.for.body11_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11

if.end16.for.end20_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end20

for.end20:                                        ; preds = %if.end16.for.end20_crit_edge, %for.end.for.end20_crit_edge
  %rval.1.lcssa = phi i32 [ %rval.0.lcssa, %for.end.for.end20_crit_edge ], [ %rval.2, %if.end16.for.end20_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %vha, i32 noundef 45363, ptr noundef nonnull @.str.49) #5
  br label %out

out:                                              ; preds = %for.end20, %if.then7
  %rval.3 = phi i32 [ %18, %if.then7 ], [ %rval.1.lcssa, %for.end20 ]
  %50 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw.i, align 4
  %fdt_wrt_disable.i = getelementptr inbounds %struct.qla_hw_data, ptr %51, i32 0, i32 213
  %52 = ptrtoint ptr %fdt_wrt_disable.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fdt_wrt_disable.i, align 8
  %call.i99 = tail call fastcc i32 @qla8044_write_flash_status_reg(ptr noundef %vha, i32 noundef %53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i100 = icmp eq i32 %call.i99, 0
  br i1 %tobool.not.i100, label %out.qla8044_protect_flash.exit_crit_edge, label %if.then.i101

out.qla8044_protect_flash.exit_crit_edge:         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_protect_flash.exit

if.then.i101:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45371, ptr noundef nonnull @.str.128, ptr noundef nonnull @__func__.qla8044_protect_flash) #5
  br label %qla8044_protect_flash.exit

qla8044_protect_flash.exit:                       ; preds = %if.then.i101, %out.qla8044_protect_flash.exit_crit_edge
  %54 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %nx_pcibase.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %55, i32 0, i32 242
  %56 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %57, i32 13568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -16777216) #5, !srcloc !426
  %58 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %59, i32 14420
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %61 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %host, align 8
  tail call void @scsi_unblock_requests(ptr noundef %62) #5
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %qla8044_protect_flash.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rval.3, %qla8044_protect_flash.exit ], [ 258, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_flash_lock(ptr noundef %vha) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %2 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %3, i32 14416
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not21 = icmp eq i32 %4, 0
  br i1 %tobool.not21, label %entry.if.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.end4.if.end_crit_edge, %entry.if.end_crit_edge
  %timeout.022 = phi i32 [ %inc, %if.end4.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %timeout.022)
  %exitcond = icmp eq i32 %timeout.022, 499
  br i1 %exitcond, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %6, i32 13568
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #5, !srcloc !423
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %portnum = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 254
  %9 = ptrtoint ptr %portnum to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %portnum, align 4
  %conv = zext i16 %10 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45331, ptr noundef nonnull @.str.127, ptr noundef nonnull @__func__.qla8044_flash_lock, i32 noundef %conv, i32 noundef %8) #5
  br label %while.end

if.end4:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %timeout.022, 1
  tail call void @msleep(i32 noundef 20) #5
  %11 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 14416
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end4.if.end_crit_edge, label %if.end4.while.end_crit_edge

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end4.if.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

while.end:                                        ; preds = %if.end4.while.end_crit_edge, %if.then2, %entry.while.end_crit_edge
  %ret_val.0 = phi i32 [ 258, %if.then2 ], [ 0, %entry.while.end_crit_edge ], [ 0, %if.end4.while.end_crit_edge ]
  %portnum5 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 254
  %14 = ptrtoint ptr %portnum5 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %portnum5, align 4
  %conv6 = zext i16 %15 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv6) #5
  %17 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %18, i32 13568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %16) #5, !srcloc !426
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla8044_intr_handler(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  %mb = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mb) #5
  %0 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i16], ptr %mb, i32 0, i32 3
  %tobool.not = icmp eq ptr %dev_id, null
  %3 = call ptr @memset(ptr %mb, i32 255, i32 16)
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 2, ptr noundef null, i32 noundef 45379, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.qla8044_intr_handler) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.rsp_que, ptr %dev_id, i32 0, i32 13
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 43
  %10 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 1
  br i1 %cmp.i.not, label %if.end7, label %if.end.cleanup_crit_edge, !prof !430

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %nx_pcibase.i = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 242
  %12 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 14528
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !423
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool9.not = icmp sgt i32 %15, -1
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %9, i32 noundef 45380, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.qla8044_intr_handler) #5
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %portnum = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 254
  %16 = ptrtoint ptr %portnum to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %portnum, align 4
  %conv = zext i16 %17 to i32
  %shl = shl nuw i32 %conv, 16
  %and12 = and i32 %15, 983040
  call void @__sanitizer_cov_trace_cmp4(i32 %and12, i32 %shl)
  %cmp.not = icmp eq i32 %and12, %shl
  br i1 %cmp.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %9, i32 noundef 45381, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.qla8044_intr_handler, i32 noundef %and12, i32 noundef %shl) #5
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %19, i32 14532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 0) #5, !srcloc !426
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end16
  %20 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nx_pcibase.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %21, i32 14528
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112) #5, !srcloc !423
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and18 = and i32 %23, 983040
  call void @__sanitizer_cov_trace_cmp4(i32 %and18, i32 %shl)
  %cmp19.not = icmp ne i32 %and18, %shl
  %and23 = and i32 %23, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %or.cond = or i1 %cmp19.not, %tobool24.not
  br i1 %or.cond, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.body
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 9
  %24 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase, align 4
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 6
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #5
  %host_int = getelementptr inbounds %struct.device_reg_82xx, ptr %25, i32 0, i32 10
  %arrayidx50 = getelementptr %struct.device_reg_82xx, ptr %25, i32 0, i32 7, i32 1
  %arrayidx54 = getelementptr %struct.device_reg_82xx, ptr %25, i32 0, i32 7, i32 2
  %arrayidx58 = getelementptr %struct.device_reg_82xx, ptr %25, i32 0, i32 7, i32 3
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_int) #5, !srcloc !423
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !431
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool37.not = icmp eq i32 %26, 0
  br i1 %tobool37.not, label %do.end.for.end_crit_edge, label %if.then38

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then38:                                        ; preds = %do.end
  %host_status = getelementptr inbounds %struct.device_reg_82xx, ptr %25, i32 0, i32 9
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_status) #5, !srcloc !423
  %28 = call i32 @llvm.bswap.i32(i32 %27) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !431
  %and40 = and i32 %28, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %cmp41 = icmp eq i32 %and40, 0
  br i1 %cmp41, label %for.end.thread, label %if.end44

for.end.thread:                                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  %mbx_cmd_flags.i116 = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 124
  %29 = ptrtoint ptr %mbx_cmd_flags.i116 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %mbx_cmd_flags.i116, align 4
  br label %qla2x00_handle_mbx_completion.exit

if.end44:                                         ; preds = %if.then38
  %trunc = trunc i32 %28 to i8
  %31 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.146)
  switch i8 %trunc, label %sw.default [
    i8 1, label %if.end44.sw.bb_crit_edge
    i8 2, label %if.end44.sw.bb_crit_edge121
    i8 16, label %if.end44.sw.bb_crit_edge122
    i8 17, label %if.end44.sw.bb_crit_edge123
    i8 18, label %sw.bb47
    i8 19, label %sw.bb61
  ]

if.end44.sw.bb_crit_edge123:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end44.sw.bb_crit_edge122:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end44.sw.bb_crit_edge121:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end44.sw.bb_crit_edge:                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.end44.sw.bb_crit_edge, %if.end44.sw.bb_crit_edge121, %if.end44.sw.bb_crit_edge122, %if.end44.sw.bb_crit_edge123
  %shr = lshr i32 %28, 16
  %conv46 = trunc i32 %shr to i16
  call void @qla82xx_mbx_completion(ptr noundef %9, i16 noundef zeroext %conv46) #5
  br label %for.end

sw.bb47:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %shr48 = lshr i32 %28, 16
  %conv49 = trunc i32 %shr48 to i16
  %32 = ptrtoint ptr %mb to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv49, ptr %mb, align 2
  %33 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx50) #5, !srcloc !432
  %34 = call i16 @llvm.bswap.i16(i16 %33) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !433
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %0, align 2
  %36 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx54) #5, !srcloc !432
  %37 = call i16 @llvm.bswap.i16(i16 %36) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !433
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %1, align 2
  %39 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx58) #5, !srcloc !432
  %40 = call i16 @llvm.bswap.i16(i16 %39) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !433
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %2, align 2
  call void @qla2x00_async_event(ptr noundef %9, ptr noundef nonnull %dev_id, ptr noundef nonnull %mb) #5
  br label %for.end

sw.bb61:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  call void @qla24xx_process_response_queue(ptr noundef %9, ptr noundef nonnull %dev_id) #5
  br label %for.end

sw.default:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %and45 = and i32 %28, 255
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %9, i32 noundef 45382, ptr noundef nonnull @.str.53, i32 noundef %and45) #5
  br label %for.end

for.end:                                          ; preds = %sw.default, %sw.bb61, %sw.bb47, %sw.bb, %do.end.for.end_crit_edge
  %tobool1.not.i = phi i1 [ true, %do.end.for.end_crit_edge ], [ true, %sw.default ], [ true, %sw.bb61 ], [ true, %sw.bb47 ], [ false, %sw.bb ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !434
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %host_int, i32 0) #5, !srcloc !426
  %mbx_cmd_flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 124
  %42 = ptrtoint ptr %mbx_cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %mbx_cmd_flags.i, align 4
  %44 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %for.end.qla2x00_handle_mbx_completion.exit_crit_edge, label %land.lhs.true2.i

for.end.qla2x00_handle_mbx_completion.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla2x00_handle_mbx_completion.exit

land.lhs.true2.i:                                 ; preds = %for.end
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 2
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load.i = load volatile i32, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool3.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool3.not.i, label %land.lhs.true2.i.qla2x00_handle_mbx_completion.exit_crit_edge, label %if.then.i

land.lhs.true2.i.qla2x00_handle_mbx_completion.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla2x00_handle_mbx_completion.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @_set_bit(i32 noundef 1, ptr noundef %mbx_cmd_flags.i) #5
  call void @_clear_bit(i32 noundef 2, ptr noundef %mbx_cmd_flags.i) #5
  %mbx_intr_comp.i = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 129
  call void @complete(ptr noundef %mbx_intr_comp.i) #5
  br label %qla2x00_handle_mbx_completion.exit

qla2x00_handle_mbx_completion.exit:               ; preds = %if.then.i, %land.lhs.true2.i.qla2x00_handle_mbx_completion.exit_crit_edge, %for.end.qla2x00_handle_mbx_completion.exit_crit_edge, %for.end.thread
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call30) #5
  br label %cleanup

cleanup:                                          ; preds = %qla2x00_handle_mbx_completion.exit, %if.then14, %if.then10, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then14 ], [ 1, %qla2x00_handle_mbx_completion.exit ], [ 0, %if.then10 ], [ 0, %if.then ], [ 1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mb) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla82xx_mbx_completion(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_async_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla24xx_process_response_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla8044_abort_isp(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %call = tail call i32 @qla8044_idc_lock(ptr noundef %1)
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 242
  %4 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 14212
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xdontresethba to i32))
  %7 = load i32, ptr @ql2xdontresethba, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i35 = getelementptr inbounds %struct.qla_hw_data, ptr %9, i32 0, i32 242
  %10 = ptrtoint ptr %nx_pcibase.i.i35 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nx_pcibase.i.i35, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %11, i32 14224
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %13 = or i32 %12, 16777216
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45248, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.qla8044_set_idc_dontreset, i32 noundef %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %nx_pcibase.i.i35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nx_pcibase.i.i35, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %16, i32 14224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %13) #5, !srcloc !426
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %6)
  %cmp = icmp eq i32 %6, 50331648
  br i1 %cmp, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %nx_pcibase.i.i37 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %17 = ptrtoint ptr %nx_pcibase.i.i37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nx_pcibase.i.i37, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %18, i32 14224
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i38) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp4.not = icmp eq i32 %20, 0
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45374, ptr noundef nonnull @.str.54) #5
  br label %exit_isp_reset

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45376, ptr noundef nonnull @.str.55) #5
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %nx_pcibase.i.i40 = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 242
  %23 = ptrtoint ptr %nx_pcibase.i.i40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nx_pcibase.i.i40, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %24, i32 14212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i41, i32 67108864) #5, !srcloc !426
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end.if.end7_crit_edge
  tail call void @qla83xx_reset_ownership(ptr noundef %vha) #5
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44, i32 8
  %27 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i.i, align 4
  %nx_pcibase.i.i42 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %29 = ptrtoint ptr %nx_pcibase.i.i42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nx_pcibase.i.i42, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %30, i32 13572
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43) #5, !srcloc !423
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and.i44 = and i32 %32, 255
  %portnum.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 254
  %33 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %portnum.i, align 4
  %conv.i = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i44, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %and.i44, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %28, i32 noundef 45336, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla8044_idc_unlock, i32 noundef %conv.i, i32 noundef %and.i44) #5
  br label %qla8044_idc_unlock.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %32, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %36 = ptrtoint ptr %nx_pcibase.i.i42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nx_pcibase.i.i42, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %37, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %35) #5, !srcloc !426
  %38 = ptrtoint ptr %nx_pcibase.i.i42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nx_pcibase.i.i42, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %39, i32 14444
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %qla8044_idc_unlock.exit

qla8044_idc_unlock.exit:                          ; preds = %if.end.i, %if.then.i
  %call8 = tail call i32 @qla8044_device_state_handler(ptr noundef %vha)
  %call9 = tail call i32 @qla8044_idc_lock(ptr noundef %1)
  %41 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw, align 4
  %nx_pcibase.i.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %42, i32 0, i32 242
  %43 = ptrtoint ptr %nx_pcibase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %nx_pcibase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %44, i32 14220
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !423
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw, align 4
  %portnum.i45 = getelementptr inbounds %struct.qla_hw_data, ptr %48, i32 0, i32 254
  %49 = ptrtoint ptr %portnum.i45 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %portnum.i45, align 4
  %conv.i46 = zext i16 %50 to i32
  %shl.i = shl nuw i32 1, %conv.i46
  %neg.i = xor i32 %shl.i, -1
  %and.i47 = and i32 %46, %neg.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45373, ptr noundef nonnull @.str.142, i32 noundef %and.i47) #5
  %51 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %53 = tail call i32 @llvm.bswap.i32(i32 %and.i47) #5
  %nx_pcibase.i.i7.i = getelementptr inbounds %struct.qla_hw_data, ptr %52, i32 0, i32 242
  %54 = ptrtoint ptr %nx_pcibase.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nx_pcibase.i.i7.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %55, i32 14220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8.i, i32 %53) #5, !srcloc !426
  br label %exit_isp_reset

exit_isp_reset:                                   ; preds = %qla8044_idc_unlock.exit, %if.then5
  %rval.0 = phi i32 [ 258, %if.then5 ], [ %call8, %qla8044_idc_unlock.exit ]
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 128
  %driver_data.i.i.i48 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44, i32 8
  %58 = ptrtoint ptr %driver_data.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_data.i.i.i48, align 4
  %nx_pcibase.i.i49 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %60 = ptrtoint ptr %nx_pcibase.i.i49 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %nx_pcibase.i.i49, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %61, i32 13572
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50) #5, !srcloc !423
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and.i51 = and i32 %63, 255
  %portnum.i52 = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 254
  %64 = ptrtoint ptr %portnum.i52 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %portnum.i52, align 4
  %conv.i53 = zext i16 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i51, i32 %conv.i53)
  %cmp.not.i54 = icmp eq i32 %and.i51, %conv.i53
  br i1 %cmp.not.i54, label %if.end.i59, label %if.then.i55

if.then.i55:                                      ; preds = %exit_isp_reset
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %59, i32 noundef 45336, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla8044_idc_unlock, i32 noundef %conv.i53, i32 noundef %and.i51) #5
  br label %qla8044_idc_unlock.exit60

if.end.i59:                                       ; preds = %exit_isp_reset
  call void @__sanitizer_cov_trace_pc() #7
  %or.i56 = or i32 %63, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %66 = tail call i32 @llvm.bswap.i32(i32 %or.i56) #5
  %67 = ptrtoint ptr %nx_pcibase.i.i49 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %nx_pcibase.i.i49, align 4
  %add.ptr.i16.i57 = getelementptr i8, ptr %68, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i57, i32 %66) #5, !srcloc !426
  %69 = ptrtoint ptr %nx_pcibase.i.i49 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %nx_pcibase.i.i49, align 4
  %add.ptr.i18.i58 = getelementptr i8, ptr %70, i32 14444
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i58) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %qla8044_idc_unlock.exit60

qla8044_idc_unlock.exit60:                        ; preds = %if.end.i59, %if.then.i55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.0)
  %cmp10 = icmp eq i32 %rval.0, 0
  br i1 %cmp10, label %if.then11, label %qla8044_idc_unlock.exit60.if.end17_crit_edge

qla8044_idc_unlock.exit60.if.end17_crit_edge:     ; preds = %qla8044_idc_unlock.exit60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then11:                                        ; preds = %qla8044_idc_unlock.exit60
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %72 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load = load volatile i32, ptr %flags, align 8
  %bf.clear = and i32 %bf.load, -1025
  store volatile i32 %bf.clear, ptr %flags, align 8
  %bf.load13 = load volatile i32, ptr %flags, align 8
  %bf.clear14 = and i32 %bf.load13, -129
  store volatile i32 %bf.clear14, ptr %flags, align 8
  %call16 = tail call i32 @qla82xx_restart_isp(ptr noundef %vha) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %qla8044_idc_unlock.exit60.if.end17_crit_edge
  %rval.1 = phi i32 [ %call16, %if.then11 ], [ %rval.0, %qla8044_idc_unlock.exit60.if.end17_crit_edge ]
  ret i32 %rval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla83xx_reset_ownership(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla82xx_restart_isp(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla8044_fw_dump(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %allow_cna_fw_dump = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 282
  %2 = ptrtoint ptr %allow_cna_fw_dump to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %allow_cna_fw_dump, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 5
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 8
  tail call void @scsi_block_requests(ptr noundef %5) #5
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load volatile i32, ptr %flags, align 8
  %bf.set = or i32 %bf.load, 32
  store volatile i32 %bf.set, ptr %flags, align 8
  %call = tail call i32 @qla8044_idc_lock(ptr noundef %1)
  tail call void @qla82xx_set_reset_owner(ptr noundef %vha) #5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 128
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i, align 4
  %nx_pcibase.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %11 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 13572
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !423
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %and.i = and i32 %14, 255
  %portnum.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 254
  %15 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %portnum.i, align 4
  %conv.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %and.i, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %10, i32 noundef 45336, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.qla8044_idc_unlock, i32 noundef %conv.i, i32 noundef %and.i) #5
  br label %qla8044_idc_unlock.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %14, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %18 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %19, i32 13572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %17) #5, !srcloc !426
  %20 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %21, i32 14444
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #5, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  br label %qla8044_idc_unlock.exit

qla8044_idc_unlock.exit:                          ; preds = %if.end.i, %if.then.i
  %call1 = tail call i32 @qla2x00_wait_for_chip_reset(ptr noundef %vha) #5
  %23 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host, align 8
  tail call void @scsi_unblock_requests(ptr noundef %24) #5
  br label %cleanup

cleanup:                                          ; preds = %qla8044_idc_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla82xx_set_reset_owner(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_wait_for_chip_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %addr, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %portnum.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 254
  %2 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %portnum.i, align 4
  %conv.i = zext i16 %3 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 14336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %addr) #5
  %nx_pcibase.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %5 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #5, !srcloc !426
  %7 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %portnum.i, align 4
  %conv2.i = zext i16 %8 to i32
  %mul3.i = shl nuw nsw i32 %conv2.i, 2
  %add4.i = add nuw nsw i32 %mul3.i, 14336
  %9 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %10, i32 %add4.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #5, !srcloc !423
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %addr)
  %cmp.not.i = icmp eq i32 %12, %addr
  br i1 %cmp.not.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %data) #5
  %14 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 14576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #5, !srcloc !426
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45191, ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.qla8044_set_win_base, i32 noundef %addr, i32 noundef %12) #5
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45193, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.qla8044_wr_reg_indirect, i32 noundef %addr, i32 noundef %data) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret_val.0.i8 = phi i32 [ 258, %if.else ], [ 0, %if.then ]
  ret i32 %ret_val.0.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %addr, ptr nocapture noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %portnum.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 254
  %2 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %portnum.i, align 4
  %conv.i = zext i16 %3 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 14336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %addr) #5
  %nx_pcibase.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 242
  %5 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #5, !srcloc !426
  %7 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %portnum.i, align 4
  %conv2.i = zext i16 %8 to i32
  %mul3.i = shl nuw nsw i32 %conv2.i, 2
  %add4.i = add nuw nsw i32 %mul3.i, 14336
  %9 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %10, i32 %add4.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #5, !srcloc !423
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %addr)
  %cmp.not.i = icmp eq i32 %12, %addr
  br i1 %cmp.not.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nx_pcibase.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 14576
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !423
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %data, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45191, ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.qla8044_set_win_base, i32 noundef %addr, i32 noundef %12) #5
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45192, ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.qla8044_rd_reg_indirect, i32 noundef %addr) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret_val.0.i8 = phi i32 [ 258, %if.else ], [ 0, %if.then ]
  ret i32 %ret_val.0.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla8044_process_reset_template(ptr noundef %vha, ptr noundef readonly %p_buff) unnamed_addr #0 align 64 {
entry:
  %value.i133 = alloca i32, align 4
  %value.i.i104 = alloca i32, align 4
  %value.i = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_tmplt = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61
  %seq_end = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 9
  %0 = ptrtoint ptr %seq_end to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %seq_end, align 4
  %template_end = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 10
  %1 = ptrtoint ptr %template_end to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %template_end, align 1
  %hdr = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 8
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdr, align 4
  %entries3 = getelementptr inbounds %struct.qla8044_reset_template_hdr, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %entries3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %entries3, align 1
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %reset_tmplt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reset_tmplt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp159 = icmp slt i32 %7, %conv
  br i1 %cmp159, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %array_index.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 2
  %seq_error.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 1
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %p_entry.0163 = phi ptr [ %p_buff, %for.body.lr.ph ], [ %add.ptr, %sw.epilog.for.body_crit_edge ]
  %index.0161 = phi i32 [ %7, %for.body.lr.ph ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %8 = ptrtoint ptr %p_entry.0163 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %p_entry.0163, align 1
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.147)
  switch i16 %9, label %sw.default [
    i16 0, label %for.body.sw.epilog_crit_edge
    i16 1, label %sw.bb
    i16 2, label %sw.bb9
    i16 4, label %sw.bb10
    i16 8, label %sw.bb11
    i16 16, label %sw.bb12
    i16 32, label %sw.bb13
    i16 64, label %sw.bb14
    i16 128, label %sw.bb17
    i16 256, label %sw.bb18
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %count.i = getelementptr inbounds %struct.qla8044_reset_entry_hdr, ptr %p_entry.0163, i32 0, i32 2
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp25.not.i = icmp eq i16 %12, 0
  br i1 %cmp25.not.i, label %sw.bb.sw.epilog_crit_edge, label %for.body.lr.ph.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %add.ptr.i = getelementptr i8, ptr %p_entry.0163, i32 8
  %delay.i = getelementptr inbounds %struct.qla8044_reset_entry_hdr, ptr %p_entry.0163, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %p_entry.026.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %p_entry.026.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %p_entry.026.i, align 1
  %arg2.i = getelementptr inbounds %struct.qla8044_entry, ptr %p_entry.026.i, i32 0, i32 1
  %15 = ptrtoint ptr %arg2.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %arg2.i, align 1
  %call.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %14, i32 noundef %16) #5
  %17 = ptrtoint ptr %delay.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %delay.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i = icmp eq i16 %18, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %cond.false11.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

cond.false11.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i = zext i16 %18 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %conv3.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false11.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %incdec.ptr.i = getelementptr %struct.qla8044_entry, ptr %p_entry.026.i, i32 1
  %20 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %count.i, align 1
  %conv.i = zext i16 %21 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sw.epilog_crit_edge

for.inc.i.sw.epilog_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

sw.bb9:                                           ; preds = %for.body
  %count.i53 = getelementptr inbounds %struct.qla8044_reset_entry_hdr, ptr %p_entry.0163, i32 0, i32 2
  %22 = ptrtoint ptr %count.i53 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %count.i53, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp25.not.i54 = icmp eq i16 %23, 0
  br i1 %cmp25.not.i54, label %sw.bb9.sw.epilog_crit_edge, label %for.body.lr.ph.i57

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body.lr.ph.i57:                               ; preds = %sw.bb9
  %add.ptr.i55 = getelementptr i8, ptr %p_entry.0163, i32 8
  %delay.i56 = getelementptr inbounds %struct.qla8044_reset_entry_hdr, ptr %p_entry.0163, i32 0, i32 3
  br label %for.body.i62

for.body.i62:                                     ; preds = %for.inc.i75.for.body.i62_crit_edge, %for.body.lr.ph.i57
  %i.027.i58 = phi i32 [ 0, %for.body.lr.ph.i57 ], [ %inc.i71, %for.inc.i75.for.body.i62_crit_edge ]
  %p_entry.026.i59 = phi ptr [ %add.ptr.i55, %for.body.lr.ph.i57 ], [ %incdec.ptr.i72, %for.inc.i75.for.body.i62_crit_edge ]
  %24 = ptrtoint ptr %p_entry.026.i59 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %p_entry.026.i59, align 1
  %arg2.i60 = getelementptr inbounds %struct.qla8044_entry, ptr %p_entry.026.i59, i32 0, i32 1
  %26 = ptrtoint ptr %arg2.i60 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %arg2.i60, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #5
  %28 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %value.i.i, align 4, !annotation !427
  %call.i.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %25, ptr noundef nonnull %value.i.i) #5
  %29 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %value.i.i, align 4
  %call1.i.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %27, i32 noundef %30) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #5
  %31 = ptrtoint ptr %delay.i56 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %delay.i56, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.i61 = icmp eq i16 %32, 0
  br i1 %tobool.not.i61, label %for.body.i62.for.inc.i75_crit_edge, label %cond.false11.i70

for.body.i62.for.inc.i75_crit_edge:               ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i75

cond.false11.i70:                                 ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i63 = zext i16 %32 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %33(i32 noundef %conv3.i63) #5
  br label %for.inc.i75

for.inc.i75:                                      ; preds = %cond.false11.i70, %for.body.i62.for.inc.i75_crit_edge
  %inc.i71 = add nuw nsw i32 %i.027.i58, 1
  %incdec.ptr.i72 = getelementptr %struct.qla8044_entry, ptr %p_entry.026.i59, i32 1
  %34 = ptrtoint ptr %count.i53 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %count.i53, align 1
  %conv.i73 = zext i16 %35 to i32
  %cmp.i74 = icmp ult i32 %inc.i71, %conv.i73
  br i1 %cmp.i74, label %for.inc.i75.for.body.i62_crit_edge, label %for.inc.i75.sw.epilog_crit_edge

for.inc.i75.sw.epilog_crit_edge:                  ; preds = %for.inc.i75
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.i75.for.body.i62_crit_edge:               ; preds = %for.inc.i75
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i62

sw.bb10:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #5
  %add.ptr.i76 = getelementptr i8, ptr %p_entry.0163, i32 8
  %add.ptr1.i = getelementptr i8, ptr %p_entry.0163, i32 16
  %delay2.i = getelementptr inbounds %struct.qla8044_reset_entry_hdr, ptr %p_entry.0163, i32 0, i32 3
  %36 = ptrtoint ptr %delay2.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %delay2.i, align 1
  %conv.i77 = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i78 = icmp eq i16 %37, 0
  %count.i79 = getelementptr inbounds %struct.qla8044_reset_entry_hdr, ptr %p_entry.0163, i32 0, i32 2
  %38 = ptrtoint ptr %count.i79 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %count.i79, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp56.not.i = icmp eq i16 %39, 0
  br i1 %tobool.not.i78, label %for.cond.preheader.i, label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %sw.bb10
  br i1 %cmp56.not.i, label %for.cond5.preheader.i.qla8044_poll_list.exit_crit_edge, label %if.then12.lr.ph.i

for.cond5.preheader.i.qla8044_poll_list.exit_crit_edge: ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_list.exit

if.then12.lr.ph.i:                                ; preds = %for.cond5.preheader.i
  %test_value15.i = getelementptr i8, ptr %p_entry.0163, i32 12
  br label %if.then12.i

for.cond.preheader.i:                             ; preds = %sw.bb10
  br i1 %cmp56.not.i, label %for.cond.preheader.i.qla8044_poll_list.exit_crit_edge, label %for.body.lr.ph.i80

for.cond.preheader.i.qla8044_poll_list.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_list.exit

for.body.lr.ph.i80:                               ; preds = %for.cond.preheader.i
  %test_value.i = getelementptr i8, ptr %p_entry.0163, i32 12
  br label %for.body.i86

for.body.i86:                                     ; preds = %for.body.i86.for.body.i86_crit_edge, %for.body.lr.ph.i80
  %i.058.i = phi i32 [ 0, %for.body.lr.ph.i80 ], [ %inc.i82, %for.body.i86.for.body.i86_crit_edge ]
  %p_entry.057.i = phi ptr [ %add.ptr1.i, %for.body.lr.ph.i80 ], [ %incdec.ptr.i83, %for.body.i86.for.body.i86_crit_edge ]
  %40 = ptrtoint ptr %p_entry.057.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %p_entry.057.i, align 1
  %42 = ptrtoint ptr %add.ptr.i76 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %add.ptr.i76, align 1
  %44 = ptrtoint ptr %test_value.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %test_value.i, align 1
  %call.i81 = tail call fastcc i32 @qla8044_poll_reg(ptr noundef %vha, i32 noundef %41, i32 noundef 0, i32 noundef %43, i32 noundef %45) #5
  %inc.i82 = add nuw nsw i32 %i.058.i, 1
  %incdec.ptr.i83 = getelementptr %struct.qla8044_entry, ptr %p_entry.057.i, i32 1
  %46 = ptrtoint ptr %count.i79 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %count.i79, align 1
  %conv3.i84 = zext i16 %47 to i32
  %cmp.i85 = icmp ult i32 %inc.i82, %conv3.i84
  br i1 %cmp.i85, label %for.body.i86.for.body.i86_crit_edge, label %for.body.i86.qla8044_poll_list.exit_crit_edge

for.body.i86.qla8044_poll_list.exit_crit_edge:    ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_list.exit

for.body.i86.for.body.i86_crit_edge:              ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i86

if.then12.i:                                      ; preds = %for.inc23.i.if.then12.i_crit_edge, %if.then12.lr.ph.i
  %i.154.i = phi i32 [ 0, %if.then12.lr.ph.i ], [ %inc24.i, %for.inc23.i.if.then12.i_crit_edge ]
  %p_entry.152.i = phi ptr [ %add.ptr1.i, %if.then12.lr.ph.i ], [ %incdec.ptr25.i, %for.inc23.i.if.then12.i_crit_edge ]
  %48 = ptrtoint ptr %p_entry.152.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %p_entry.152.i, align 1
  %50 = ptrtoint ptr %add.ptr.i76 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %add.ptr.i76, align 1
  %52 = ptrtoint ptr %test_value15.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %test_value15.i, align 1
  %call16.i = tail call fastcc i32 @qla8044_poll_reg(ptr noundef %vha, i32 noundef %49, i32 noundef %conv.i77, i32 noundef %51, i32 noundef %53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then12.i.for.inc23.i_crit_edge, label %if.then18.i

if.then12.i.for.inc23.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc23.i

if.then18.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %p_entry.152.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %p_entry.152.i, align 1
  %call20.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %55, ptr noundef nonnull %value.i) #5
  %arg2.i87 = getelementptr inbounds %struct.qla8044_entry, ptr %p_entry.152.i, i32 0, i32 1
  %56 = ptrtoint ptr %arg2.i87 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %arg2.i87, align 1
  %call21.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %57, ptr noundef nonnull %value.i) #5
  br label %for.inc23.i

for.inc23.i:                                      ; preds = %if.then18.i, %if.then12.i.for.inc23.i_crit_edge
  %inc24.i = add nuw nsw i32 %i.154.i, 1
  %incdec.ptr25.i = getelementptr %struct.qla8044_entry, ptr %p_entry.152.i, i32 1
  %58 = ptrtoint ptr %count.i79 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %count.i79, align 1
  %conv7.i = zext i16 %59 to i32
  %cmp8.i = icmp ult i32 %inc24.i, %conv7.i
  br i1 %cmp8.i, label %for.inc23.i.if.then12.i_crit_edge, label %for.inc23.i.qla8044_poll_list.exit_crit_edge

for.inc23.i.qla8044_poll_list.exit_crit_edge:     ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_list.exit

for.inc23.i.if.then12.i_crit_edge:                ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12.i

qla8044_poll_list.exit:                           ; preds = %for.inc23.i.qla8044_poll_list.exit_crit_edge, %for.body.i86.qla8044_poll_list.exit_crit_edge, %for.cond.preheader.i.qla8044_poll_list.exit_crit_edge, %for.cond5.preheader.i.qla8044_poll_list.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #5
  br label %sw.epilog

sw.bb11:                                          ; preds = %for.body
  %add.ptr.i88 = getelementptr i8, ptr %p_entry.0163, i32 8
  %delay2.i89 = getelementptr inbounds %struct.qla8044_reset_entry_hdr, ptr %p_entry.0163, i32 0, i32 3
  %60 = ptrtoint ptr %delay2.i89 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %delay2.i89, align 1
  %conv.i90 = zext i16 %61 to i32
  %count.i91 = getelementptr inbounds %struct.qla8044_reset_entry_hdr, ptr %p_entry.0163, i32 0, i32 2
  %62 = ptrtoint ptr %count.i91 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %count.i91, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp29.not.i = icmp eq i16 %63, 0
  br i1 %cmp29.not.i, label %sw.bb11.sw.epilog_crit_edge, label %for.body.lr.ph.i95

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body.lr.ph.i95:                               ; preds = %sw.bb11
  %add.ptr1.i92 = getelementptr i8, ptr %p_entry.0163, i32 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool.not.i93 = icmp eq i16 %61, 0
  %test_value.i94 = getelementptr i8, ptr %p_entry.0163, i32 12
  br label %for.body.i97

for.body.i97:                                     ; preds = %for.inc.i103.for.body.i97_crit_edge, %for.body.lr.ph.i95
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i95 ], [ %inc.i99, %for.inc.i103.for.body.i97_crit_edge ]
  %p_entry.030.i = phi ptr [ %add.ptr1.i92, %for.body.lr.ph.i95 ], [ %incdec.ptr.i100, %for.inc.i103.for.body.i97_crit_edge ]
  %64 = ptrtoint ptr %p_entry.030.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %p_entry.030.i, align 1
  %dr_value.i = getelementptr inbounds %struct.qla8044_quad_entry, ptr %p_entry.030.i, i32 0, i32 1
  %66 = ptrtoint ptr %dr_value.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %dr_value.i, align 1
  %call.i96 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %65, i32 noundef %67) #5
  %ar_addr.i = getelementptr inbounds %struct.qla8044_quad_entry, ptr %p_entry.030.i, i32 0, i32 2
  %68 = ptrtoint ptr %ar_addr.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %ar_addr.i, align 1
  %ar_value.i = getelementptr inbounds %struct.qla8044_quad_entry, ptr %p_entry.030.i, i32 0, i32 3
  %70 = ptrtoint ptr %ar_value.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %ar_value.i, align 1
  %call5.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %69, i32 noundef %71) #5
  br i1 %tobool.not.i93, label %for.body.i97.for.inc.i103_crit_edge, label %if.then.i98

for.body.i97.for.inc.i103_crit_edge:              ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i103

if.then.i98:                                      ; preds = %for.body.i97
  %72 = ptrtoint ptr %ar_addr.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %ar_addr.i, align 1
  %74 = ptrtoint ptr %add.ptr.i88 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %add.ptr.i88, align 1
  %76 = ptrtoint ptr %test_value.i94 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %test_value.i94, align 1
  %call7.i = tail call fastcc i32 @qla8044_poll_reg(ptr noundef %vha, i32 noundef %73, i32 noundef %conv.i90, i32 noundef %75, i32 noundef %77) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then.i98.for.inc.i103_crit_edge, label %if.then9.i

if.then.i98.for.inc.i103_crit_edge:               ; preds = %if.then.i98
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i103

if.then9.i:                                       ; preds = %if.then.i98
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45201, ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.qla8044_poll_write_list) #5
  %78 = ptrtoint ptr %reset_tmplt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %reset_tmplt, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45202, ptr noundef nonnull @.str.81, i32 noundef %i.031.i, i32 noundef %79) #5
  br label %for.inc.i103

for.inc.i103:                                     ; preds = %if.then9.i, %if.then.i98.for.inc.i103_crit_edge, %for.body.i97.for.inc.i103_crit_edge
  %inc.i99 = add nuw nsw i32 %i.031.i, 1
  %incdec.ptr.i100 = getelementptr %struct.qla8044_quad_entry, ptr %p_entry.030.i, i32 1
  %80 = ptrtoint ptr %count.i91 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %count.i91, align 1
  %conv3.i101 = zext i16 %81 to i32
  %cmp.i102 = icmp ult i32 %inc.i99, %conv3.i101
  br i1 %cmp.i102, label %for.inc.i103.for.body.i97_crit_edge, label %for.inc.i103.sw.epilog_crit_edge

for.inc.i103.sw.epilog_crit_edge:                 ; preds = %for.inc.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.i103.for.body.i97_crit_edge:              ; preds = %for.inc.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i97

sw.bb12:                                          ; preds = %for.body
  %add.ptr.i105 = getelementptr i8, ptr %p_entry.0163, i32 8
  %count.i106 = getelementptr inbounds %struct.qla8044_reset_entry_hdr, ptr %p_entry.0163, i32 0, i32 2
  %82 = ptrtoint ptr %count.i106 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %count.i106, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %cmp27.not.i = icmp eq i16 %83, 0
  br i1 %cmp27.not.i, label %sw.bb12.sw.epilog_crit_edge, label %for.body.lr.ph.i109

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body.lr.ph.i109:                              ; preds = %sw.bb12
  %add.ptr1.i107 = getelementptr i8, ptr %p_entry.0163, i32 24
  %index_a.i.i = getelementptr i8, ptr %p_entry.0163, i32 22
  %shl.i.i = getelementptr i8, ptr %p_entry.0163, i32 20
  %shr.i.i = getelementptr i8, ptr %p_entry.0163, i32 21
  %or_value.i.i = getelementptr i8, ptr %p_entry.0163, i32 16
  %xor_value.i.i = getelementptr i8, ptr %p_entry.0163, i32 12
  %delay.i108 = getelementptr inbounds %struct.qla8044_reset_entry_hdr, ptr %p_entry.0163, i32 0, i32 3
  br label %for.body.i111

for.body.i111:                                    ; preds = %for.inc.i122.for.body.i111_crit_edge, %for.body.lr.ph.i109
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i109 ], [ %inc.i118, %for.inc.i122.for.body.i111_crit_edge ]
  %p_entry.028.i = phi ptr [ %add.ptr1.i107, %for.body.lr.ph.i109 ], [ %incdec.ptr.i119, %for.inc.i122.for.body.i111_crit_edge ]
  %84 = ptrtoint ptr %p_entry.028.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %p_entry.028.i, align 1
  %arg2.i110 = getelementptr inbounds %struct.qla8044_entry, ptr %p_entry.028.i, i32 0, i32 1
  %86 = ptrtoint ptr %arg2.i110 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %arg2.i110, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i104) #5
  %88 = ptrtoint ptr %value.i.i104 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %value.i.i104, align 4, !annotation !427
  %89 = ptrtoint ptr %index_a.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %index_a.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i.i = icmp eq i8 %90, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i111
  call void @__sanitizer_cov_trace_pc() #7
  %idxprom.i.i = zext i8 %90 to i32
  %arrayidx.i.i = getelementptr %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 3, i32 %idxprom.i.i
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i.i, align 4
  %93 = ptrtoint ptr %value.i.i104 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %value.i.i104, align 4
  br label %qla8044_rmw_crb_reg.exit.i

if.else.i.i:                                      ; preds = %for.body.i111
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i112 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %85, ptr noundef nonnull %value.i.i104) #5
  br label %qla8044_rmw_crb_reg.exit.i

qla8044_rmw_crb_reg.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i
  %94 = ptrtoint ptr %add.ptr.i105 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %add.ptr.i105, align 1
  %96 = ptrtoint ptr %value.i.i104 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %value.i.i104, align 4
  %and.i.i = and i32 %97, %95
  %98 = ptrtoint ptr %shl.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %shl.i.i, align 1
  %conv.i.i = zext i8 %99 to i32
  %shl2.i.i = shl i32 %and.i.i, %conv.i.i
  %100 = ptrtoint ptr %shr.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %shr.i.i, align 1
  %conv3.i.i = zext i8 %101 to i32
  %shr4.i.i = lshr i32 %shl2.i.i, %conv3.i.i
  %102 = ptrtoint ptr %or_value.i.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %or_value.i.i, align 1
  %or.i.i = or i32 %shr4.i.i, %103
  %104 = ptrtoint ptr %xor_value.i.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %xor_value.i.i, align 1
  %xor.i.i = xor i32 %or.i.i, %105
  %call5.i.i = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %87, i32 noundef %xor.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i104) #5
  %106 = ptrtoint ptr %delay.i108 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %delay.i108, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool.not.i113 = icmp eq i16 %107, 0
  br i1 %tobool.not.i113, label %qla8044_rmw_crb_reg.exit.i.for.inc.i122_crit_edge, label %cond.false12.i

qla8044_rmw_crb_reg.exit.i.for.inc.i122_crit_edge: ; preds = %qla8044_rmw_crb_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i122

cond.false12.i:                                   ; preds = %qla8044_rmw_crb_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv4.i = zext i16 %107 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %108(i32 noundef %conv4.i) #5
  br label %for.inc.i122

for.inc.i122:                                     ; preds = %cond.false12.i, %qla8044_rmw_crb_reg.exit.i.for.inc.i122_crit_edge
  %inc.i118 = add nuw nsw i32 %i.029.i, 1
  %incdec.ptr.i119 = getelementptr %struct.qla8044_entry, ptr %p_entry.028.i, i32 1
  %109 = ptrtoint ptr %count.i106 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %count.i106, align 1
  %conv.i120 = zext i16 %110 to i32
  %cmp.i121 = icmp ult i32 %inc.i118, %conv.i120
  br i1 %cmp.i121, label %for.inc.i122.for.body.i111_crit_edge, label %for.inc.i122.sw.epilog_crit_edge

for.inc.i122.sw.epilog_crit_edge:                 ; preds = %for.inc.i122
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.i122.for.body.i111_crit_edge:             ; preds = %for.inc.i122
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i111

sw.bb13:                                          ; preds = %for.body
  %delay.i123 = getelementptr inbounds %struct.qla8044_reset_entry_hdr, ptr %p_entry.0163, i32 0, i32 3
  %111 = ptrtoint ptr %delay.i123 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %delay.i123, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool.not.i124 = icmp eq i16 %112, 0
  br i1 %tobool.not.i124, label %sw.bb13.sw.epilog_crit_edge, label %if.then.i127

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then.i127:                                     ; preds = %sw.bb13
  %conv.i125 = zext i16 %112 to i32
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.i127
  %__ms.01.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %conv.i125, %if.then.i127 ]
  %dec.i = add nsw i32 %__ms.01.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 214748000) #5
  %tobool26.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool26.not.i, label %while.body.i.sw.epilog_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.sw.epilog_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb14:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %114 = ptrtoint ptr %seq_end to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %seq_end, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %for.body
  %115 = ptrtoint ptr %template_end to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %template_end, align 1
  %116 = ptrtoint ptr %seq_error.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %seq_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp.i131 = icmp eq i32 %117, 0
  br i1 %cmp.i131, label %if.then.i132, label %if.else.i

if.then.i132:                                     ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45203, ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__.qla8044_template_end) #5
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45204, ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__.qla8044_template_end) #5
  br label %sw.epilog

sw.bb18:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i133) #5
  %118 = ptrtoint ptr %value.i133 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 -1, ptr %value.i133, align 4, !annotation !427
  %add.ptr.i134 = getelementptr i8, ptr %p_entry.0163, i32 8
  %delay2.i135 = getelementptr inbounds %struct.qla8044_reset_entry_hdr, ptr %p_entry.0163, i32 0, i32 3
  %119 = ptrtoint ptr %delay2.i135 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %delay2.i135, align 1
  %conv.i136 = zext i16 %120 to i32
  %count.i137 = getelementptr inbounds %struct.qla8044_reset_entry_hdr, ptr %p_entry.0163, i32 0, i32 2
  %121 = ptrtoint ptr %count.i137 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %122 = load i16, ptr %count.i137, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %122)
  %cmp41.not.i = icmp eq i16 %122, 0
  br i1 %cmp41.not.i, label %sw.bb18.qla8044_poll_read_list.exit_crit_edge, label %for.body.lr.ph.i142

sw.bb18.qla8044_poll_read_list.exit_crit_edge:    ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_read_list.exit

for.body.lr.ph.i142:                              ; preds = %sw.bb18
  %add.ptr1.i138 = getelementptr i8, ptr %p_entry.0163, i32 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool.not.i139 = icmp eq i16 %120, 0
  %test_value.i140 = getelementptr i8, ptr %p_entry.0163, i32 12
  br label %for.body.i146

for.body.i146:                                    ; preds = %for.inc.i152.for.body.i146_crit_edge, %for.body.lr.ph.i142
  %i.044.i = phi i32 [ 0, %for.body.lr.ph.i142 ], [ %inc19.i, %for.inc.i152.for.body.i146_crit_edge ]
  %p_entry.042.i = phi ptr [ %add.ptr1.i138, %for.body.lr.ph.i142 ], [ %incdec.ptr.i149, %for.inc.i152.for.body.i146_crit_edge ]
  %ar_addr.i143 = getelementptr inbounds %struct.qla8044_quad_entry, ptr %p_entry.042.i, i32 0, i32 2
  %123 = ptrtoint ptr %ar_addr.i143 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %ar_addr.i143, align 1
  %ar_value.i144 = getelementptr inbounds %struct.qla8044_quad_entry, ptr %p_entry.042.i, i32 0, i32 3
  %125 = ptrtoint ptr %ar_value.i144 to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %ar_value.i144, align 1
  %call.i145 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %124, i32 noundef %126) #5
  br i1 %tobool.not.i139, label %for.body.i146.for.inc.i152_crit_edge, label %if.then.i147

for.body.i146.for.inc.i152_crit_edge:             ; preds = %for.body.i146
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i152

if.then.i147:                                     ; preds = %for.body.i146
  %127 = ptrtoint ptr %ar_addr.i143 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %ar_addr.i143, align 1
  %129 = ptrtoint ptr %add.ptr.i134 to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %add.ptr.i134, align 1
  %131 = ptrtoint ptr %test_value.i140 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %test_value.i140, align 1
  %call6.i = tail call fastcc i32 @qla8044_poll_reg(ptr noundef %vha, i32 noundef %128, i32 noundef %conv.i136, i32 noundef %130, i32 noundef %132) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.else.i148, label %if.then8.i

if.then8.i:                                       ; preds = %if.then.i147
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45205, ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.qla8044_poll_read_list) #5
  %133 = ptrtoint ptr %reset_tmplt to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %reset_tmplt, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 524288, ptr noundef %vha, i32 noundef 45206, ptr noundef nonnull @.str.84, i32 noundef %i.044.i, i32 noundef %134) #5
  br label %for.inc.i152

if.else.i148:                                     ; preds = %if.then.i147
  %135 = ptrtoint ptr %array_index.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %array_index.i, align 4
  %137 = ptrtoint ptr %p_entry.042.i to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %p_entry.042.i, align 1
  %call10.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %138, ptr noundef nonnull %value.i133) #5
  %139 = ptrtoint ptr %value.i133 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %value.i133, align 4
  %arrayidx.i = getelementptr %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 3, i32 %136
  %141 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %136)
  %cmp12.i = icmp eq i32 %136, 15
  br i1 %cmp12.i, label %if.then14.i, label %if.else.i148.for.inc.i152_crit_edge

if.else.i148.for.inc.i152_crit_edge:              ; preds = %if.else.i148
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i152

if.then14.i:                                      ; preds = %if.else.i148
  call void @__sanitizer_cov_trace_pc() #7
  %142 = ptrtoint ptr %array_index.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %array_index.i, align 4
  br label %for.inc.i152

for.inc.i152:                                     ; preds = %if.then14.i, %if.else.i148.for.inc.i152_crit_edge, %if.then8.i, %for.body.i146.for.inc.i152_crit_edge
  %inc19.i = add nuw nsw i32 %i.044.i, 1
  %incdec.ptr.i149 = getelementptr %struct.qla8044_quad_entry, ptr %p_entry.042.i, i32 1
  %143 = ptrtoint ptr %count.i137 to i32
  call void @__asan_loadN_noabort(i32 %143, i32 2)
  %144 = load i16, ptr %count.i137, align 1
  %conv3.i150 = zext i16 %144 to i32
  %cmp.i151 = icmp ult i32 %inc19.i, %conv3.i150
  br i1 %cmp.i151, label %for.inc.i152.for.body.i146_crit_edge, label %for.inc.i152.qla8044_poll_read_list.exit_crit_edge

for.inc.i152.qla8044_poll_read_list.exit_crit_edge: ; preds = %for.inc.i152
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_read_list.exit

for.inc.i152.for.body.i146_crit_edge:             ; preds = %for.inc.i152
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i146

qla8044_poll_read_list.exit:                      ; preds = %for.inc.i152.qla8044_poll_read_list.exit_crit_edge, %sw.bb18.qla8044_poll_read_list.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i133) #5
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv8 = zext i16 %9 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45207, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.qla8044_process_reset_template, i32 noundef %conv8, i32 noundef %index.0161) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %qla8044_poll_read_list.exit, %if.else.i, %if.then.i132, %sw.bb14, %while.body.i.sw.epilog_crit_edge, %sw.bb13.sw.epilog_crit_edge, %for.inc.i122.sw.epilog_crit_edge, %sw.bb12.sw.epilog_crit_edge, %for.inc.i103.sw.epilog_crit_edge, %sw.bb11.sw.epilog_crit_edge, %qla8044_poll_list.exit, %for.inc.i75.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %for.inc.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %size = getelementptr inbounds %struct.qla8044_reset_entry_hdr, ptr %p_entry.0163, i32 0, i32 1
  %145 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %145, i32 2)
  %146 = load i16, ptr %size, align 1
  %conv21 = zext i16 %146 to i32
  %add.ptr = getelementptr i8, ptr %p_entry.0163, i32 %conv21
  %inc = add nsw i32 %index.0161, 1
  %147 = ptrtoint ptr %seq_end to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %seq_end, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not = icmp eq i8 %148, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp = icmp slt i32 %inc, %conv
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %sw.epilog.for.body_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %entry.for.end_crit_edge
  %index.0.lcssa = phi i32 [ %7, %entry.for.end_crit_edge ], [ %inc, %sw.epilog.for.end_crit_edge ]
  %149 = ptrtoint ptr %reset_tmplt to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %index.0.lcssa, ptr %reset_tmplt, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_poll_reg(ptr noundef %vha, i32 noundef %addr, i32 noundef %duration, i32 noundef %test_mask, i32 noundef %test_result) unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  %call = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %addr, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 258, i32 %call)
  %cmp = icmp eq i32 %call, 258
  br i1 %cmp, label %entry.if.then12_crit_edge, label %if.end

entry.if.then12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end:                                           ; preds = %entry
  %div = sdiv i32 %duration, 10
  %conv = trunc i32 %div to i8
  br label %do.body

do.body:                                          ; preds = %if.then3.do.body_crit_edge, %if.end
  %retries.0 = phi i8 [ %conv, %if.end ], [ %dec, %if.then3.do.body_crit_edge ]
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  %and = and i32 %2, %test_mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %test_result)
  %cmp1.not = icmp eq i32 %and, %test_result
  br i1 %cmp1.not, label %do.body.if.end13_crit_edge, label %if.then3

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then3:                                         ; preds = %do.body
  tail call void @msleep(i32 noundef %div) #5
  %call5 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %addr, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 258, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 258
  %dec = add i8 %retries.0, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retries.0)
  %tobool.not = icmp eq i8 %retries.0, 0
  %or.cond = select i1 %cmp6, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.then3.if.then12_crit_edge, label %if.then3.do.body_crit_edge

if.then3.do.body_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then3.if.then12_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.then12:                                        ; preds = %if.then3.if.then12_crit_edge, %entry.if.then12_crit_edge
  %seq_error = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 61, i32 1
  %3 = ptrtoint ptr %seq_error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %seq_error, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %seq_error, align 4
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45200, ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__.qla8044_poll_reg, i32 noundef %6, i32 noundef %test_mask, i32 noundef %test_result) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.body.if.end13_crit_edge
  %timeout_error.026 = phi i32 [ 1, %if.then12 ], [ 0, %do.body.if.end13_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret i32 %timeout_error.026
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_lockless_flash_read_u32(ptr noundef %vha, i32 noundef %flash_addr, ptr nocapture noundef writeonly %p_data, i32 noundef %u32_word_count) unnamed_addr #0 align 64 {
entry:
  %u32_word = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u32_word) #5
  %0 = ptrtoint ptr %u32_word to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %u32_word, align 4, !annotation !427
  %and = and i32 %flash_addr, 65535
  %and1 = and i32 %flash_addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45211, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.qla8044_lockless_flash_read_u32, i32 noundef %flash_addr) #5
  br label %exit_lockless_read

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410416, i32 noundef %flash_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45212, ptr noundef nonnull @.str.91, ptr noundef nonnull @__func__.qla8044_lockless_flash_read_u32, i32 noundef %flash_addr) #5
  br label %exit_lockless_read

if.end3:                                          ; preds = %if.end
  %mul = shl i32 %u32_word_count, 2
  %add = add i32 %mul, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp4 = icmp ugt i32 %add, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u32_word_count)
  %cmp679.not = icmp eq i32 %u32_word_count, 0
  br i1 %cmp4, label %for.cond.preheader, label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %if.end3
  br i1 %cmp679.not, label %for.cond21.preheader.exit_lockless_read_crit_edge, label %for.cond21.preheader.for.body23_crit_edge

for.cond21.preheader.for.body23_crit_edge:        ; preds = %for.cond21.preheader
  br label %for.body23

for.cond21.preheader.exit_lockless_read_crit_edge: ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_lockless_read

for.cond.preheader:                               ; preds = %if.end3
  br i1 %cmp679.not, label %for.cond.preheader.exit_lockless_read_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.exit_lockless_read_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_lockless_read

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %addr.083 = phi i32 [ %add12, %for.inc.for.body_crit_edge ], [ %flash_addr, %for.cond.preheader.for.body_crit_edge ]
  %flash_offset.082 = phi i32 [ %flash_offset.1, %for.inc.for.body_crit_edge ], [ %and, %for.cond.preheader.for.body_crit_edge ]
  %i.081 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %p_data.addr.080 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %p_data, %for.cond.preheader.for.body_crit_edge ]
  %and7 = and i32 %addr.083, 65535
  %or = or i32 %and7, 1108672512
  %call8 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %or, ptr noundef nonnull %u32_word)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45213, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.qla8044_lockless_flash_read_u32, i32 noundef %addr.083) #5
  br label %exit_lockless_read

if.end11:                                         ; preds = %for.body
  %1 = ptrtoint ptr %u32_word to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %u32_word, align 4
  %3 = ptrtoint ptr %p_data.addr.080 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %p_data.addr.080, align 4
  %add.ptr = getelementptr i8, ptr %p_data.addr.080, i32 4
  %add12 = add i32 %addr.083, 4
  %add13 = add i32 %flash_offset.082, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add13)
  %cmp14 = icmp ugt i32 %add13, 65535
  br i1 %cmp14, label %if.then15, label %if.end11.for.inc_crit_edge

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then15:                                        ; preds = %if.end11
  %call16 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410416, i32 noundef %add12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.then15.for.inc_crit_edge, label %if.then18

if.then15.for.inc_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45215, ptr noundef nonnull @.str.91, ptr noundef nonnull @__func__.qla8044_lockless_flash_read_u32, i32 noundef %add12) #5
  br label %exit_lockless_read

for.inc:                                          ; preds = %if.then15.for.inc_crit_edge, %if.end11.for.inc_crit_edge
  %flash_offset.1 = phi i32 [ %add13, %if.end11.for.inc_crit_edge ], [ 0, %if.then15.for.inc_crit_edge ]
  %inc = add nuw i32 %i.081, 1
  %exitcond92.not = icmp eq i32 %inc, %u32_word_count
  br i1 %exitcond92.not, label %for.inc.exit_lockless_read_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.exit_lockless_read_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_lockless_read

for.body23:                                       ; preds = %if.end29.for.body23_crit_edge, %for.cond21.preheader.for.body23_crit_edge
  %addr.178 = phi i32 [ %add31, %if.end29.for.body23_crit_edge ], [ %flash_addr, %for.cond21.preheader.for.body23_crit_edge ]
  %i.177 = phi i32 [ %inc33, %if.end29.for.body23_crit_edge ], [ 0, %for.cond21.preheader.for.body23_crit_edge ]
  %p_data.addr.176 = phi ptr [ %add.ptr30, %if.end29.for.body23_crit_edge ], [ %p_data, %for.cond21.preheader.for.body23_crit_edge ]
  %and24 = and i32 %addr.178, 65535
  %or25 = or i32 %and24, 1108672512
  %call26 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %or25, ptr noundef nonnull %u32_word)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45216, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.qla8044_lockless_flash_read_u32, i32 noundef %addr.178) #5
  br label %exit_lockless_read

if.end29:                                         ; preds = %for.body23
  %4 = ptrtoint ptr %u32_word to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u32_word, align 4
  %6 = ptrtoint ptr %p_data.addr.176 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %p_data.addr.176, align 4
  %add.ptr30 = getelementptr i8, ptr %p_data.addr.176, i32 4
  %add31 = add i32 %addr.178, 4
  %inc33 = add nuw i32 %i.177, 1
  %exitcond.not = icmp eq i32 %inc33, %u32_word_count
  br i1 %exitcond.not, label %if.end29.exit_lockless_read_crit_edge, label %if.end29.for.body23_crit_edge

if.end29.for.body23_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body23

if.end29.exit_lockless_read_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_lockless_read

exit_lockless_read:                               ; preds = %if.end29.exit_lockless_read_crit_edge, %if.then28, %for.inc.exit_lockless_read_crit_edge, %if.then18, %if.then10, %for.cond.preheader.exit_lockless_read_crit_edge, %for.cond21.preheader.exit_lockless_read_crit_edge, %if.then2, %if.then
  %ret_val.3 = phi i32 [ 258, %if.then ], [ %call, %if.then2 ], [ %call8, %if.then10 ], [ %call16, %if.then18 ], [ %call26, %if.then28 ], [ 0, %for.cond.preheader.exit_lockless_read_crit_edge ], [ 0, %for.cond21.preheader.exit_lockless_read_crit_edge ], [ 0, %for.inc.exit_lockless_read_crit_edge ], [ 0, %if.end29.exit_lockless_read_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u32_word) #5
  ret i32 %ret_val.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_ms_mem_write_128b(ptr noundef %vha, i64 noundef %addr, ptr nocapture noundef readonly %data, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %agt_ctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agt_ctrl) #5
  %0 = ptrtoint ptr %agt_ctrl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %agt_ctrl, align 4, !annotation !427
  %and = and i64 %addr, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.exit_ms_mem_write_crit_edge

entry.exit_ms_mem_write_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_ms_mem_write

do.body:                                          ; preds = %entry
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %hw_lock = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 253
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef %hw_lock) #5
  %call1 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1090519192, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 258, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 258
  br i1 %cmp2, label %if.then4, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp6107.not = icmp eq i32 %count, 0
  br i1 %cmp6107.not, label %for.cond.preheader.do.body59_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body59_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body59

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45217, ptr noundef nonnull @.str.92, ptr noundef nonnull @__func__.qla8044_ms_mem_write_128b) #5
  br label %do.body59

for.body:                                         ; preds = %for.inc55.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %addr.addr.0110 = phi i64 [ %add57, %for.inc55.for.body_crit_edge ], [ %addr, %for.cond.preheader.for.body_crit_edge ]
  %data.addr.0109 = phi ptr [ %incdec.ptr23, %for.inc55.for.body_crit_edge ], [ %data, %for.cond.preheader.for.body_crit_edge ]
  %i.0108 = phi i32 [ %inc56, %for.inc55.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %3 = and i64 %addr.addr.0110, -134217728
  call void @__sanitizer_cov_trace_const_cmp8(i64 12884901888, i64 %3)
  %4 = icmp eq i64 %3, 12884901888
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %addr.addr.0110)
  %cmp.not.i102 = icmp ult i64 %addr.addr.0110, 268435456
  %or.cond = or i1 %cmp.not.i102, %4
  br i1 %or.cond, label %if.end13, label %for.body.do.body59_crit_edge

for.body.do.body59_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body59

if.end13:                                         ; preds = %for.body
  %conv14 = trunc i64 %addr.addr.0110 to i32
  %call15 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1090519188, i32 noundef %conv14)
  %incdec.ptr = getelementptr i32, ptr %data.addr.0109, i32 1
  %5 = ptrtoint ptr %data.addr.0109 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data.addr.0109, align 4
  %call16 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1090519200, i32 noundef %6)
  %add = add i32 %call16, %call15
  %incdec.ptr17 = getelementptr i32, ptr %data.addr.0109, i32 2
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %incdec.ptr, align 4
  %call18 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1090519204, i32 noundef %8)
  %add19 = add i32 %add, %call18
  %incdec.ptr20 = getelementptr i32, ptr %data.addr.0109, i32 3
  %9 = ptrtoint ptr %incdec.ptr17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %incdec.ptr17, align 4
  %call21 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1090519216, i32 noundef %10)
  %add22 = add i32 %add19, %call21
  %incdec.ptr23 = getelementptr i32, ptr %data.addr.0109, i32 4
  %11 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr20, align 4
  %call24 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1090519220, i32 noundef %12)
  %add25 = add i32 %add22, %call24
  call void @__sanitizer_cov_trace_const_cmp4(i32 258, i32 %add25)
  %cmp26 = icmp eq i32 %add25, 258
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45218, ptr noundef nonnull @.str.93, ptr noundef nonnull @__func__.qla8044_ms_mem_write_128b) #5
  br label %do.body59

if.end29:                                         ; preds = %if.end13
  %call30 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1090519184, i32 noundef 6)
  %call31 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1090519184, i32 noundef 7)
  %add32 = add i32 %call31, %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 258, i32 %add32)
  %cmp33 = icmp eq i32 %add32, 258
  br i1 %cmp33, label %if.then35, label %if.end29.for.body40_crit_edge

if.end29.for.body40_crit_edge:                    ; preds = %if.end29
  br label %for.body40

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45219, ptr noundef nonnull @.str.94, ptr noundef nonnull @__func__.qla8044_ms_mem_write_128b) #5
  br label %do.body59

for.cond37:                                       ; preds = %if.end45
  %inc = add nuw nsw i32 %j.0106, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.then53, label %for.cond37.for.body40_crit_edge

for.cond37.for.body40_crit_edge:                  ; preds = %for.cond37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body40

for.body40:                                       ; preds = %for.cond37.for.body40_crit_edge, %if.end29.for.body40_crit_edge
  %j.0106 = phi i32 [ %inc, %for.cond37.for.body40_crit_edge ], [ 0, %if.end29.for.body40_crit_edge ]
  %call41 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef 1090519184, ptr noundef nonnull %agt_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 258, i32 %call41)
  %cmp42 = icmp eq i32 %call41, 258
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45220, ptr noundef nonnull @.str.95, ptr noundef nonnull @__func__.qla8044_ms_mem_write_128b) #5
  br label %do.body59

if.end45:                                         ; preds = %for.body40
  %13 = ptrtoint ptr %agt_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %agt_ctrl, align 4
  %and46 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %cmp47 = icmp eq i32 %and46, 0
  br i1 %cmp47, label %for.inc55, label %for.cond37

if.then53:                                        ; preds = %for.cond37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 0, ptr noundef %vha, i32 noundef 45221, ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__.qla8044_ms_mem_write_128b) #5
  br label %do.body59

for.inc55:                                        ; preds = %if.end45
  %inc56 = add nuw i32 %i.0108, 1
  %add57 = add i64 %addr.addr.0110, 16
  %exitcond114.not = icmp eq i32 %inc56, %count
  br i1 %exitcond114.not, label %for.inc55.do.body59_crit_edge, label %for.inc55.for.body_crit_edge

for.inc55.for.body_crit_edge:                     ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc55.do.body59_crit_edge:                    ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body59

do.body59:                                        ; preds = %for.inc55.do.body59_crit_edge, %if.then53, %if.then44, %if.then35, %if.then28, %for.body.do.body59_crit_edge, %if.then4, %for.cond.preheader.do.body59_crit_edge
  %ret_val.3 = phi i32 [ 258, %if.then4 ], [ 258, %if.then28 ], [ 258, %if.then35 ], [ 258, %if.then44 ], [ 258, %if.then53 ], [ %call1, %for.cond.preheader.do.body59_crit_edge ], [ %call41, %for.inc55.do.body59_crit_edge ], [ 258, %for.body.do.body59_crit_edge ]
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call) #5
  br label %exit_ms_mem_write

exit_ms_mem_write:                                ; preds = %do.body59, %entry.exit_ms_mem_write_crit_edge
  %ret_val.4 = phi i32 [ %ret_val.3, %do.body59 ], [ 258, %entry.exit_ms_mem_write_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agt_ctrl) #5
  ret i32 %ret_val.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_abort_isp_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla2x00_quiesce_io(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_ipmdio_wr_reg(ptr noundef %vha, i32 noundef %addr1, i32 noundef %addr3, i32 noundef %mask, i32 noundef %addr, i32 noundef %value) unnamed_addr #0 align 64 {
entry:
  %temp.i14 = alloca i32, align 4
  %temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #5
  %0 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %temp.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -10, %1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %call1.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %addr1, ptr noundef nonnull %temp.i) #5
  %2 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temp.i, align 4
  %and.i = and i32 %3, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %4
  %cmp2.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp2.i, label %qla8044_poll_wait_for_ready.exit.thread, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

qla8044_poll_wait_for_ready.exit.thread:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45393, ptr noundef nonnull @.str.126) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #5
  br label %cleanup

if.end:                                           ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #5
  %call1 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %addr3, i32 noundef %value)
  %call2 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %addr1, i32 noundef %addr)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i14) #5
  %5 = ptrtoint ptr %temp.i14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %temp.i14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i15 = sub i32 -10, %6
  br label %do.body.i19

do.body.i19:                                      ; preds = %if.end.i22.do.body.i19_crit_edge, %if.end
  %call1.i16 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %addr1, ptr noundef nonnull %temp.i14) #5
  %7 = ptrtoint ptr %temp.i14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp.i14, align 4
  %and.i17 = and i32 %8, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %cmp.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %cmp.not.i18, label %if.end.i22, label %qla8044_poll_wait_for_ready.exit25

if.end.i22:                                       ; preds = %do.body.i19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub.i20 = add i32 %add.neg.i15, %9
  %cmp2.i21 = icmp sgt i32 %sub.i20, -1
  br i1 %cmp2.i21, label %10, label %if.end.i22.do.body.i19_crit_edge

if.end.i22.do.body.i19_crit_edge:                 ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i19

qla8044_poll_wait_for_ready.exit25:               ; preds = %do.body.i19
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i14) #5
  br label %cleanup

10:                                               ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45393, ptr noundef nonnull @.str.126) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i14) #5
  br label %cleanup

cleanup:                                          ; preds = %10, %qla8044_poll_wait_for_ready.exit25, %qla8044_poll_wait_for_ready.exit.thread
  %retval.0 = phi i32 [ -1, %qla8044_poll_wait_for_ready.exit.thread ], [ -1, %10 ], [ 0, %qla8044_poll_wait_for_ready.exit25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_ipmdio_rd_reg(ptr noundef %vha, i32 noundef %addr1, i32 noundef %addr3, i32 noundef %mask, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  %temp.i14 = alloca i32, align 4
  %temp.i = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #5
  %0 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %temp.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -10, %1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %call1.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %addr1, ptr noundef nonnull %temp.i) #5
  %2 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temp.i, align 4
  %and.i = and i32 %3, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %4
  %cmp2.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp2.i, label %qla8044_poll_wait_for_ready.exit.thread, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

qla8044_poll_wait_for_ready.exit.thread:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45393, ptr noundef nonnull @.str.126) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #5
  br label %cleanup

if.end:                                           ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #5
  %or = or i32 %addr, 1073741824
  %call1 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef %addr1, i32 noundef %or)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i14) #5
  %5 = ptrtoint ptr %temp.i14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %temp.i14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i15 = sub i32 -10, %6
  br label %do.body.i19

do.body.i19:                                      ; preds = %if.end.i22.do.body.i19_crit_edge, %if.end
  %call1.i16 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %addr1, ptr noundef nonnull %temp.i14) #5
  %7 = ptrtoint ptr %temp.i14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp.i14, align 4
  %and.i17 = and i32 %8, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %cmp.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %cmp.not.i18, label %if.end.i22, label %if.end5

if.end.i22:                                       ; preds = %do.body.i19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub.i20 = add i32 %add.neg.i15, %9
  %cmp2.i21 = icmp sgt i32 %sub.i20, -1
  br i1 %cmp2.i21, label %qla8044_poll_wait_for_ready.exit25.thread, label %if.end.i22.do.body.i19_crit_edge

if.end.i22.do.body.i19_crit_edge:                 ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i19

qla8044_poll_wait_for_ready.exit25.thread:        ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45393, ptr noundef nonnull @.str.126) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i14) #5
  br label %cleanup

if.end5:                                          ; preds = %do.body.i19
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i14) #5
  %10 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ret, align 4
  %call6 = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef %addr3, ptr noundef nonnull %ret)
  %11 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %qla8044_poll_wait_for_ready.exit25.thread, %qla8044_poll_wait_for_ready.exit.thread
  %retval.0 = phi i32 [ %12, %if.end5 ], [ -1, %qla8044_poll_wait_for_ready.exit.thread ], [ 0, %qla8044_poll_wait_for_ready.exit25.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla8044_write_flash_status_reg(ptr noundef %vha, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  %flash_status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %fdt_wrt_sts_reg_cmd = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 219
  %2 = ptrtoint ptr %fdt_wrt_sts_reg_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fdt_wrt_sts_reg_cmd, align 16
  %or = or i32 %3, 16580864
  %call = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410376, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45349, ptr noundef nonnull @.str.129, ptr noundef nonnull @__func__.qla8044_write_flash_status_reg) #5
  br label %exit_func

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410380, i32 noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45350, ptr noundef nonnull @.str.130, ptr noundef nonnull @__func__.qla8044_write_flash_status_reg) #5
  br label %exit_func

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @qla8044_wr_reg_indirect(ptr noundef %vha, i32 noundef 1108410372, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45351, ptr noundef nonnull @.str.131, ptr noundef nonnull @__func__.qla8044_write_flash_status_reg) #5
  br label %exit_func

if.end8:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flash_status.i) #5
  %4 = ptrtoint ptr %flash_status.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flash_status.i, align 4, !annotation !427
  br label %while.body.i

while.body.i:                                     ; preds = %if.end3.i.while.body.i_crit_edge, %if.end8
  %dec12.i = phi i32 [ 1999, %if.end8 ], [ %dec.i, %if.end3.i.while.body.i_crit_edge ]
  %call.i = call fastcc i32 @qla8044_rd_reg_indirect(ptr noundef %vha, i32 noundef 1108344836, ptr noundef nonnull %flash_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  %5 = ptrtoint ptr %flash_status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flash_status.i, align 4
  %and.i = and i32 %6, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 6
  br i1 %cmp.i, label %while.end.i.thread, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  tail call void @msleep(i32 noundef 1) #5
  %dec.i = add nsw i32 %dec12.i, -1
  %tobool.not.i = icmp eq i32 %dec12.i, 0
  br i1 %tobool.not.i, label %qla8044_poll_flash_status_reg.exit.thread, label %if.end3.i.while.body.i_crit_edge

if.end3.i.while.body.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

qla8044_poll_flash_status_reg.exit.thread:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i) #5
  br label %exit_func

while.end.i:                                      ; preds = %while.body.i
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45372, ptr noundef nonnull @.str.133, ptr noundef nonnull @__func__.qla8044_poll_flash_status_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec12.i)
  %tobool4.not.i = icmp eq i32 %dec12.i, 0
  br i1 %tobool4.not.i, label %while.end.i.qla8044_poll_flash_status_reg.exit.thread26_crit_edge, label %qla8044_poll_flash_status_reg.exit

while.end.i.qla8044_poll_flash_status_reg.exit.thread26_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_flash_status_reg.exit.thread26

while.end.i.thread:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec12.i)
  %tobool4.not.i41 = icmp eq i32 %dec12.i, 0
  br i1 %tobool4.not.i41, label %while.end.i.thread.qla8044_poll_flash_status_reg.exit.thread26_crit_edge, label %qla8044_poll_flash_status_reg.exit.thread43

while.end.i.thread.qla8044_poll_flash_status_reg.exit.thread26_crit_edge: ; preds = %while.end.i.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla8044_poll_flash_status_reg.exit.thread26

qla8044_poll_flash_status_reg.exit.thread43:      ; preds = %while.end.i.thread
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i) #5
  br label %exit_func

qla8044_poll_flash_status_reg.exit.thread26:      ; preds = %while.end.i.thread.qla8044_poll_flash_status_reg.exit.thread26_crit_edge, %while.end.i.qla8044_poll_flash_status_reg.exit.thread26_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i) #5
  br label %if.then11

qla8044_poll_flash_status_reg.exit:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_status.i) #5
  br label %if.then11

if.then11:                                        ; preds = %qla8044_poll_flash_status_reg.exit, %qla8044_poll_flash_status_reg.exit.thread26
  %7 = phi i32 [ 258, %qla8044_poll_flash_status_reg.exit.thread26 ], [ %call.i, %qla8044_poll_flash_status_reg.exit ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 45352, ptr noundef nonnull @.str.132, ptr noundef nonnull @__func__.qla8044_write_flash_status_reg) #5
  br label %exit_func

exit_func:                                        ; preds = %if.then11, %qla8044_poll_flash_status_reg.exit.thread43, %qla8044_poll_flash_status_reg.exit.thread, %if.then7, %if.then3, %if.then
  %ret_val.0 = phi i32 [ %call, %if.then ], [ %call1, %if.then3 ], [ %call5, %if.then7 ], [ %7, %if.then11 ], [ 0, %qla8044_poll_flash_status_reg.exit.thread ], [ 0, %qla8044_poll_flash_status_reg.exit.thread43 ]
  ret i32 %ret_val.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412}
!llvm.module.flags = !{!414, !415, !416, !417, !418, !419, !420, !421}
!llvm.ident = !{!422}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 277, i32 35}
!2 = !{ptr @__func__.qla8044_clear_qsnt_ready, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 278, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 385, i32 8}
!6 = !{ptr @__func__.qla8044_idc_lock, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 387, i32 8}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 395, i32 9}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 405, i32 10}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 414, i32 12}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 435, i32 7}
!16 = !{ptr @__func__.qla8044_idc_unlock, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 436, i32 7}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 569, i32 7}
!20 = !{ptr @__func__.qla8044_read_optrom_data, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 570, i32 7}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1373, i32 6}
!24 = !{ptr @__func__.qla8044_clear_drv_active, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1374, i32 6}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1523, i32 7}
!28 = !{ptr @__func__.qla8044_read_reset_template, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1524, i32 7}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1535, i32 6}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1541, i32 7}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1553, i32 7}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1565, i32 6}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1578, i32 7}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1583, i32 6}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1616, i32 6}
!44 = !{ptr @__func__.qla8044_set_idc_dontreset, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1616, i32 29}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1940, i32 6}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1942, i32 30}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1953, i32 9}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1954, i32 9}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1998, i32 8}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2089, i32 7}
!58 = !{ptr @__func__.qla8044_check_fw_alive, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2091, i32 21}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2106, i32 8}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2136, i32 8}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2147, i32 8}
!66 = !{ptr @__func__.qla8044_watchdog, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2148, i32 8}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2154, i32 8}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2166, i32 18}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2187, i32 11}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2191, i32 19}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3231, i32 7}
!78 = !{ptr @__func__.qla8044_collect_md_data, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3232, i32 7}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3238, i32 7}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3247, i32 7}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3255, i32 7}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3267, i32 7}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3277, i32 6}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3284, i32 7}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3290, i32 6}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3293, i32 5}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3296, i32 6}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3313, i32 8}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3327, i32 7}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3454, i32 7}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3462, i32 6}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3469, i32 6}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3485, i32 7}
!110 = !{ptr @__func__.qla8044_get_minidump, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3486, i32 7}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3823, i32 7}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3827, i32 8}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3834, i32 6}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3845, i32 8}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3855, i32 6}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3895, i32 7}
!124 = !{ptr @__func__.qla8044_intr_handler, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3895, i32 46}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3909, i32 7}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3918, i32 7}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3965, i32 9}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 4031, i32 8}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 4037, i32 7}
!136 = !{ptr @qla8044_reg_tbl, !137, !"qla8044_reg_tbl", i1 false, i1 false}
!137 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 15, i32 23}
!138 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 330, i32 34}
!140 = !{ptr @__func__.qla8044_lock_recovery, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 331, i32 8}
!142 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 520, i32 7}
!144 = !{ptr @__func__.qla8044_read_flash_data, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 520, i32 36}
!146 = !{ptr @.str.58, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 529, i32 8}
!148 = !{ptr @.str.59, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 541, i32 8}
!150 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 114, i32 7}
!152 = !{ptr @__func__.qla8044_wr_reg_indirect, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 115, i32 7}
!154 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 80, i32 7}
!156 = !{ptr @__func__.qla8044_set_win_base, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 82, i32 7}
!158 = !{ptr @.str.62, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 99, i32 7}
!160 = !{ptr @__func__.qla8044_rd_reg_indirect, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 99, i32 42}
!162 = distinct !{null, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1502, i32 7}
!164 = distinct !{null, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1502, i32 42}
!166 = !{ptr @.str.64, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1462, i32 7}
!168 = !{ptr @__func__.qla8044_dump_reset_seq_hdr, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1462, i32 49}
!170 = !{ptr @.str.65, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1468, i32 6}
!172 = !{ptr @__func__.qla8044_set_drv_active, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1752, i32 6}
!174 = !{ptr @__func__.qla8044_clear_idc_dontreset, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1778, i32 29}
!176 = !{ptr @.str.66, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1800, i32 7}
!178 = !{ptr @__func__.qla8044_set_idc_ver, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1801, i32 7}
!180 = !{ptr @.str.67, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1808, i32 8}
!182 = !{ptr @.str.68, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1420, i32 6}
!184 = !{ptr @__func__.qla8044_device_bootstrap, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1420, i32 38}
!186 = !{ptr @.str.69, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1430, i32 8}
!188 = !{ptr @.str.70, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1448, i32 6}
!190 = !{ptr @.str.71, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 492, i32 36}
!192 = !{ptr @.str.72, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1344, i32 7}
!194 = !{ptr @__func__.qla8044_start_firmware, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1345, i32 7}
!196 = !{ptr @.str.73, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1350, i32 7}
!198 = !{ptr @.str.74, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1355, i32 7}
!200 = !{ptr @.str.75, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1284, i32 7}
!202 = !{ptr @.str.76, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1290, i32 7}
!204 = !{ptr @__func__.qla8044_restart, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1291, i32 7}
!206 = !{ptr @.str.77, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1016, i32 7}
!208 = !{ptr @__func__.qla8044_process_stop_seq, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1016, i32 46}
!210 = !{ptr @.str.78, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 986, i32 8}
!212 = !{ptr @__func__.qla8044_process_reset_template, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 987, i32 24}
!214 = !{ptr @.str.79, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 695, i32 7}
!216 = !{ptr @__func__.qla8044_poll_reg, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 696, i32 7}
!218 = !{ptr @.str.80, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 795, i32 9}
!220 = !{ptr @__func__.qla8044_poll_write_list, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 796, i32 9}
!222 = !{ptr @.str.81, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 798, i32 9}
!224 = !{ptr @.str.82, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 867, i32 7}
!226 = !{ptr @__func__.qla8044_template_end, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 867, i32 55}
!228 = !{ptr @.str.83, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 870, i32 7}
!230 = !{ptr @__func__.qla8044_poll_read_list, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 911, i32 19}
!232 = !{ptr @.str.84, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 913, i32 9}
!234 = !{ptr @.str.85, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1005, i32 7}
!236 = !{ptr @__func__.qla8044_process_init_seq, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1006, i32 7}
!238 = !{ptr @.str.86, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1236, i32 7}
!240 = !{ptr @__func__.qla8044_copy_bootloader, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1237, i32 30}
!242 = !{ptr @.str.87, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1246, i32 7}
!244 = !{ptr @.str.88, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1249, i32 34}
!246 = !{ptr @.str.89, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1257, i32 7}
!248 = !{ptr @.str.90, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1261, i32 6}
!250 = !{ptr @__func__.qla8044_lockless_flash_read_u32, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1043, i32 7}
!252 = !{ptr @.str.91, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1053, i32 7}
!254 = !{ptr @.str.92, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1140, i32 7}
!256 = !{ptr @__func__.qla8044_ms_mem_write_128b, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1140, i32 45}
!258 = !{ptr @.str.93, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1167, i32 8}
!260 = !{ptr @.str.94, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1179, i32 8}
!262 = !{ptr @.str.95, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1188, i32 9}
!264 = !{ptr @.str.96, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1199, i32 8}
!266 = !{ptr @.str.97, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1025, i32 7}
!268 = !{ptr @__func__.qla8044_process_start_seq, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1026, i32 7}
!270 = !{ptr @.str.98, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1326, i32 8}
!272 = !{ptr @__func__.qla8044_check_cmd_peg_status, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1327, i32 34}
!274 = !{ptr @.str.99, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1652, i32 6}
!276 = !{ptr @__func__.qla8044_need_reset_handler, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1652, i32 45}
!278 = !{ptr @.str.100, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1670, i32 6}
!280 = !{ptr @.str.101, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1681, i32 8}
!282 = !{ptr @.str.102, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1702, i32 7}
!284 = !{ptr @.str.103, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1633, i32 6}
!286 = !{ptr @__func__.qla8044_set_rst_ready, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1634, i32 6}
!288 = !{ptr @.str.104, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1895, i32 8}
!290 = !{ptr @.str.105, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1916, i32 7}
!292 = !{ptr @__func__.qla8044_need_qsnt_handler, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 1916, i32 36}
!294 = !{ptr @__func__.qla8044_set_qsnt_ready, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 265, i32 7}
!296 = !{ptr @.str.106, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2048, i32 7}
!298 = !{ptr @.str.107, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2055, i32 7}
!300 = !{ptr @.str.108, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2456, i32 6}
!302 = !{ptr @.str.109, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2217, i32 34}
!304 = !{ptr @__func__.qla8044_minidump_process_control, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2217, i32 55}
!306 = !{ptr @__func__.qla8044_minidump_process_rdcrb, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2326, i32 55}
!308 = !{ptr @.str.110, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2914, i32 7}
!310 = !{ptr @.str.111, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2924, i32 7}
!312 = !{ptr @.str.112, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2963, i32 8}
!314 = !{ptr @__func__.qla8044_minidump_pex_dma_read, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2964, i32 8}
!316 = !{ptr @.str.113, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2968, i32 7}
!318 = !{ptr @__func__.qla8044_minidump_process_rdmem, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2352, i32 55}
!320 = !{ptr @.str.114, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2358, i32 6}
!322 = !{ptr @.str.115, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2363, i32 7}
!324 = !{ptr @.str.116, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2370, i32 7}
!326 = !{ptr @.str.117, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2376, i32 6}
!328 = !{ptr @.str.118, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2412, i32 6}
!330 = !{ptr @.str.119, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2432, i32 34}
!332 = !{ptr @__func__.qla8044_minidump_process_rdrom, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2433, i32 6}
!334 = !{ptr @.str.120, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2440, i32 7}
!336 = !{ptr @__func__.qla8044_minidump_process_l2tag, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2474, i32 55}
!338 = !{ptr @__func__.qla8044_minidump_process_rdocm, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2562, i32 55}
!340 = !{ptr @.str.121, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2570, i32 6}
!342 = !{ptr @.str.122, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2578, i32 34}
!344 = !{ptr @__func__.qla8044_minidump_process_rdmux, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2593, i32 55}
!346 = !{ptr @__func__.qla8044_minidump_process_queue, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2623, i32 55}
!348 = !{ptr @.str.123, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2674, i32 10}
!350 = !{ptr @__func__.qla8044_minidump_process_pollrd, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2674, i32 27}
!352 = !{ptr @__func__.qla8044_minidump_process_pollrdmwr, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2764, i32 26}
!354 = !{ptr @.str.124, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 2785, i32 9}
!356 = !{ptr @__func__.qla8044_minidump_process_rddfe, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3031, i32 25}
!358 = !{ptr @.str.125, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 199, i32 8}
!360 = !{ptr @.str.126, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 152, i32 5}
!362 = !{ptr @__func__.qla8044_minidump_process_pollwr, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3189, i32 53}
!364 = !{ptr @.str.127, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 464, i32 8}
!366 = !{ptr @__func__.qla8044_flash_lock, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 465, i32 8}
!368 = !{ptr @.str.128, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3572, i32 7}
!370 = !{ptr @__func__.qla8044_unprotect_flash, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3572, i32 43}
!372 = !{ptr @.str.129, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3532, i32 7}
!374 = !{ptr @__func__.qla8044_write_flash_status_reg, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3532, i32 47}
!376 = !{ptr @.str.130, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3539, i32 7}
!378 = !{ptr @.str.131, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3547, i32 7}
!380 = !{ptr @.str.132, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3554, i32 7}
!382 = !{ptr @.str.133, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3503, i32 8}
!384 = !{ptr @__func__.qla8044_poll_flash_status_reg, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3504, i32 8}
!386 = !{ptr @.str.134, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3605, i32 7}
!388 = !{ptr @__func__.qla8044_erase_flash_sector, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3605, i32 55}
!390 = !{ptr @.str.135, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3628, i32 7}
!392 = !{ptr @.str.136, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3633, i32 7}
!394 = distinct !{null, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3696, i32 7}
!396 = !{ptr @.str.138, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3716, i32 7}
!398 = !{ptr @__func__.qla8044_write_flash_buffer_mode, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3716, i32 24}
!400 = !{ptr @.str.139, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3780, i32 8}
!402 = !{ptr @__func__.qla8044_write_flash_dword_mode, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3780, i32 43}
!404 = !{ptr @.str.140, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3661, i32 7}
!406 = !{ptr @__func__.qla8044_flash_write_u32, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3661, i32 44}
!408 = !{ptr @.str.141, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3667, i32 7}
!410 = !{ptr @__func__.qla8044_protect_flash, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 3589, i32 43}
!412 = !{ptr @.str.142, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/scsi/qla2xxx/qla_nx2.c", i32 4003, i32 6}
!414 = !{i32 1, !"wchar_size", i32 2}
!415 = !{i32 1, !"min_enum_size", i32 4}
!416 = !{i32 8, !"branch-target-enforcement", i32 0}
!417 = !{i32 8, !"sign-return-address", i32 0}
!418 = !{i32 8, !"sign-return-address-all", i32 0}
!419 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!420 = !{i32 7, !"uwtable", i32 1}
!421 = !{i32 7, !"frame-pointer", i32 2}
!422 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!423 = !{i64 5252207}
!424 = !{i64 2156891304}
!425 = !{i64 2156891542}
!426 = !{i64 5251789}
!427 = !{!"auto-init"}
!428 = !{i8 0, i8 2}
!429 = !{i64 2156904992}
!430 = !{!"branch_weights", i32 2000, i32 1}
!431 = !{i64 2156291456}
!432 = !{i64 5251369}
!433 = !{i64 2156290853}
!434 = !{i64 2156293900}
