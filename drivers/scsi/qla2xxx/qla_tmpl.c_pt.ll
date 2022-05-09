; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla2xxx/qla_tmpl.c_pt.bc'
source_filename = "../drivers/scsi/qla2xxx/qla_tmpl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.198 = type { i32, ptr }
%struct.qla27xx_fwdt_template = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [16 x i32], [8 x i32], [5 x i32] }
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
%struct.anon.171 = type { i32, i32, i32, i8, [2 x i8], i8 }
%struct.qla27xx_fwdt_entry = type { %struct.anon.171, %union.anon.172 }
%union.anon.172 = type <{ %struct.anon.187, [28 x i8] }>
%struct.anon.187 = type { i8, [3 x i8], i32, i64 }
%struct.anon.175 = type <{ i32, i8, i16, i8 }>
%struct.anon.177 = type <{ i32, i8, i16, i8, i8, [3 x i8], i32 }>
%struct.anon.178 = type { i32, i32, [2 x i8], i8, i8, i32 }
%struct.req_que = type { i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i32, i16, i32, i32, ptr, i16, [64 x i8] }
%struct.rsp_que = type { i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, i16, [64 x i8] }
%struct.anon.183 = type <{ i32, i64, i64, i32, i32, i32, i32, i32, i32 }>
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
%struct.anon.197 = type { i32, i32, i32, i32 }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: template type %x\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_template_valid = private unnamed_addr constant [28 x i8] c"qla27xx_fwdt_template_valid\00", align 1
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: failed template checksum\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"-> mpi_fwdump no buffer\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"-> MPI firmware already dumped -- dump saving to temporary buffer %p.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"-> fwdt1 running...\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"-> fwdt1 no template\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"-> fwdt1 fwdump residual=%+ld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"-> MPI firmware dump saved to buffer (%lu/%p)\0A\00", [49 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/qla2xxx/qla_tmpl.c\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"-> fwdump no buffer\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"-> Firmware already dumped (%p) -- ignoring request\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"-> fwdt0 running...\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"-> fwdt0 no template\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"-> fwdt0 fwdump residual=%+ld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"-> Firmware dump saved to buffer (%lu/%p) <%lx>\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: entry count %u\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.qla27xx_walk_template = private unnamed_addr constant [22 x i8] c"qla27xx_walk_template\00", align 1
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to capture FW dump\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: entry count residual=+%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: missing end entry\0A\00", [41 x i8] zeroinitializer }, align 32
@qla27xx_fwdt_entry_call = internal constant { [26 x %struct.anon.198], [48 x i8] } { [26 x %struct.anon.198] [%struct.anon.198 { i32 0, ptr @qla27xx_fwdt_entry_t0 }, %struct.anon.198 { i32 255, ptr @qla27xx_fwdt_entry_t255 }, %struct.anon.198 { i32 256, ptr @qla27xx_fwdt_entry_t256 }, %struct.anon.198 { i32 257, ptr @qla27xx_fwdt_entry_t257 }, %struct.anon.198 { i32 258, ptr @qla27xx_fwdt_entry_t258 }, %struct.anon.198 { i32 259, ptr @qla27xx_fwdt_entry_t259 }, %struct.anon.198 { i32 260, ptr @qla27xx_fwdt_entry_t260 }, %struct.anon.198 { i32 261, ptr @qla27xx_fwdt_entry_t261 }, %struct.anon.198 { i32 262, ptr @qla27xx_fwdt_entry_t262 }, %struct.anon.198 { i32 263, ptr @qla27xx_fwdt_entry_t263 }, %struct.anon.198 { i32 264, ptr @qla27xx_fwdt_entry_t264 }, %struct.anon.198 { i32 265, ptr @qla27xx_fwdt_entry_t265 }, %struct.anon.198 { i32 266, ptr @qla27xx_fwdt_entry_t266 }, %struct.anon.198 { i32 267, ptr @qla27xx_fwdt_entry_t267 }, %struct.anon.198 { i32 268, ptr @qla27xx_fwdt_entry_t268 }, %struct.anon.198 { i32 269, ptr @qla27xx_fwdt_entry_t269 }, %struct.anon.198 { i32 270, ptr @qla27xx_fwdt_entry_t270 }, %struct.anon.198 { i32 271, ptr @qla27xx_fwdt_entry_t271 }, %struct.anon.198 { i32 272, ptr @qla27xx_fwdt_entry_t272 }, %struct.anon.198 { i32 273, ptr @qla27xx_fwdt_entry_t273 }, %struct.anon.198 { i32 274, ptr @qla27xx_fwdt_entry_t274 }, %struct.anon.198 { i32 275, ptr @qla27xx_fwdt_entry_t275 }, %struct.anon.198 { i32 276, ptr @qla27xx_fwdt_entry_t276 }, %struct.anon.198 { i32 277, ptr @qla27xx_fwdt_entry_t277 }, %struct.anon.198 { i32 278, ptr @qla27xx_fwdt_entry_t278 }, %struct.anon.198 { i32 -1, ptr @qla27xx_fwdt_entry_other }], [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: nop [%lx]\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t0 = private unnamed_addr constant [22 x i8] c"qla27xx_fwdt_entry_t0\00", align 1
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: end [%lx]\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t255 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t255\00", align 1
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: rdio t1 [%lx]\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t256 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t256\00", align 1
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: wrio t1 [%lx]\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t257 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t257\00", align 1
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: rdio t2 [%lx]\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t258 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t258\00", align 1
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: wrio t2 [%lx]\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t259 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t259\00", align 1
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: rdpci [%lx]\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t260 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t260\00", align 1
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: wrpci [%lx]\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t261 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t261\00", align 1
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: rdram(%x) [%lx]\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t262 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t262\00", align 1
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: unknown area %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: unusable range (start=%lx end=%lx)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: dump ram MB failed. Area %xh start %lxh end %lxh\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: getq(%x) [%lx]\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t263 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t263\00", align 1
@ql2x_ini_mode = external dso_local local_unnamed_addr global i32, align 4
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: unknown queue %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: getfce [%lx]\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t264 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t264\00", align 1
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: missing fce\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: pause risc [%lx]\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t265 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t265\00", align 1
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: reset risc [%lx]\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t266 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t266\00", align 1
@qla27xx_fwdt_entry_t266.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: dis intr [%lx]\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t267 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t267\00", align 1
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: gethb(%x) [%lx]\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t268 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t268\00", align 1
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: missing eft\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: missing exch offld\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: missing ext login\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: unknown buffer %x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: scratch [%lx]\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t269 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t269\00", align 1
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: rdremreg [%lx]\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t270 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t270\00", align 1
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: wrremreg [%lx]\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t271 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t271\00", align 1
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: rdremram [%lx]\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t272 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t272\00", align 1
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: @%lx -> (%lx dwords)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: pcicfg [%lx]\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t273 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t273\00", align 1
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: failed pcicfg read at %lx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: getqsh(%lx) [%lx]\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t274 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t274\00", align 1
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: unknown queue %lx\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: buffer(%lx) [%lx]\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t275 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t275\00", align 1
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: buffer zero length\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: buffer overflow, truncate [%lx]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: cond [%lx]\0A\00", [16 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t276 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t276\00", align 1
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: rdpep [%lx]\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t277 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t277\00", align 1
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: wrpep [%lx]\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_t278 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_t278\00", align 1
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: other %lx [%lx]\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.qla27xx_fwdt_entry_other = private unnamed_addr constant [25 x i8] c"qla27xx_fwdt_entry_other\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@qla27xx_driver_info.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@qla2x00_version_str = external dso_local global [0 x i8], align 1
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%hhu.%hhu.%hhu.%hhu\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.60 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 986, i32 7 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 993, i32 7 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1008, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1020, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1024, i32 36 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1027, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1035, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1046, i32 10 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1059, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1062, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1065, i32 7 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1072, i32 36 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1075, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1083, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1091, i32 7 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 842, i32 6 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 852, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 859, i32 7 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 863, i32 7 }
@___asan_gen_.121 = private unnamed_addr constant [24 x i8] c"qla27xx_fwdt_entry_call\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 790, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 140, i32 6 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 151, i32 6 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 168, i32 6 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 183, i32 6 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 202, i32 6 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 220, i32 6 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 235, i32 6 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 250, i32 6 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 267, i32 6 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 296, i32 7 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 303, i32 7 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 315, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 335, i32 6 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 378, i32 7 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 397, i32 6 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 413, i32 7 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 425, i32 6 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 437, i32 6 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 452, i32 6 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 463, i32 6 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 474, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 489, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 504, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 520, i32 7 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 533, i32 6 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 553, i32 6 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 573, i32 6 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 589, i32 6 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 592, i32 7 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 610, i32 6 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 615, i32 8 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 633, i32 6 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 672, i32 7 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 696, i32 6 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 699, i32 7 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 706, i32 7 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 720, i32 6 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 749, i32 6 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 767, i32 6 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 781, i32 6 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [35 x i8] c"../drivers/scsi/qla2xxx/qla_tmpl.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 880, i32 2 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @qla27xx_fwdt_entry_call, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla27xx_fwdt_entry_call to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla27xx_fwdt_calculate_dump_size(ptr noundef %vha, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %len, align 4
  %1 = ptrtoint ptr %p to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %p, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1660944384, i32 %2)
  %cmp.i.not.i = icmp eq i32 %2, 1660944384
  br i1 %cmp.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef null, i32 noundef 53276, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.qla27xx_fwdt_template_valid, i32 noundef %3) #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %template_size.i.i = getelementptr inbounds %struct.qla27xx_fwdt_template, ptr %p, i32 0, i32 2
  %4 = ptrtoint ptr %template_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %template_size.i.i, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %tobool.not9.i.i.i = icmp ult i32 %6, 4
  br i1 %tobool.not9.i.i.i, label %if.end.i.qla27xx_verify_template_checksum.exit.i_crit_edge, label %for.body.preheader.i.i.i

if.end.i.qla27xx_verify_template_checksum.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_verify_template_checksum.exit.i

for.body.preheader.i.i.i:                         ; preds = %if.end.i
  %div8.i.i.i = lshr i32 %6, 2
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %sum.012.i.i.i = phi i64 [ %add.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %buf.011.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %p, %for.body.preheader.i.i.i ]
  %size.addr.010.i.i.i = phi i32 [ %dec.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %div8.i.i.i, %for.body.preheader.i.i.i ]
  %dec.i.i.i = add nsw i32 %size.addr.010.i.i.i, -1
  %7 = ptrtoint ptr %buf.011.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf.011.i.i.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %conv.i.i.i = zext i32 %9 to i64
  %add.i.i.i = add i64 %sum.012.i.i.i, %conv.i.i.i
  %incdec.ptr.i.i.i = getelementptr i32, ptr %buf.011.i.i.i, i32 1
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.qla27xx_verify_template_checksum.exit.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.body.i.i.i.qla27xx_verify_template_checksum.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_verify_template_checksum.exit.i

qla27xx_verify_template_checksum.exit.i:          ; preds = %for.body.i.i.i.qla27xx_verify_template_checksum.exit.i_crit_edge, %if.end.i.qla27xx_verify_template_checksum.exit.i_crit_edge
  %sum.0.lcssa.i.i.i = phi i64 [ 0, %if.end.i.qla27xx_verify_template_checksum.exit.i_crit_edge ], [ %add.i.i.i, %for.body.i.i.i.qla27xx_verify_template_checksum.exit.i_crit_edge ]
  %shr.i.i.i = lshr i64 %sum.0.lcssa.i.i.i, 32
  %add1.i.i.i = add i64 %shr.i.i.i, %sum.0.lcssa.i.i.i
  %10 = trunc i64 %add1.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i7.not.i = icmp eq i32 %10, -1
  br i1 %cmp.i7.not.i, label %if.then, label %if.then3.i

if.then3.i:                                       ; preds = %qla27xx_verify_template_checksum.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef null, i32 noundef 53277, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.qla27xx_fwdt_template_valid) #7
  br label %if.end

if.then:                                          ; preds = %qla27xx_verify_template_checksum.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %template_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %template_size.i.i, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %len, align 4
  call fastcc void @qla27xx_walk_template(ptr noundef %vha, ptr noundef %p, ptr noundef null, ptr noundef nonnull %len)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then3.i, %if.then.i
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  ret i32 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla27xx_fwdt_template_valid(ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %p, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1660944384, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 1660944384
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef null, i32 noundef 53276, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.qla27xx_fwdt_template_valid, i32 noundef %2) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %template_size.i = getelementptr inbounds %struct.qla27xx_fwdt_template, ptr %p, i32 0, i32 2
  %3 = ptrtoint ptr %template_size.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %template_size.i, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %tobool.not9.i.i = icmp ult i32 %5, 4
  br i1 %tobool.not9.i.i, label %if.end.qla27xx_verify_template_checksum.exit_crit_edge, label %for.body.preheader.i.i

if.end.qla27xx_verify_template_checksum.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_verify_template_checksum.exit

for.body.preheader.i.i:                           ; preds = %if.end
  %div8.i.i = lshr i32 %5, 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %sum.012.i.i = phi i64 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %buf.011.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %p, %for.body.preheader.i.i ]
  %size.addr.010.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %div8.i.i, %for.body.preheader.i.i ]
  %dec.i.i = add nsw i32 %size.addr.010.i.i, -1
  %6 = ptrtoint ptr %buf.011.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf.011.i.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %conv.i.i = zext i32 %8 to i64
  %add.i.i = add i64 %sum.012.i.i, %conv.i.i
  %incdec.ptr.i.i = getelementptr i32, ptr %buf.011.i.i, i32 1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.qla27xx_verify_template_checksum.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.qla27xx_verify_template_checksum.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_verify_template_checksum.exit

qla27xx_verify_template_checksum.exit:            ; preds = %for.body.i.i.qla27xx_verify_template_checksum.exit_crit_edge, %if.end.qla27xx_verify_template_checksum.exit_crit_edge
  %sum.0.lcssa.i.i = phi i64 [ 0, %if.end.qla27xx_verify_template_checksum.exit_crit_edge ], [ %add.i.i, %for.body.i.i.qla27xx_verify_template_checksum.exit_crit_edge ]
  %shr.i.i = lshr i64 %sum.0.lcssa.i.i, 32
  %add1.i.i = add i64 %shr.i.i, %sum.0.lcssa.i.i
  %9 = trunc i64 %add1.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i7.not = icmp eq i32 %9, -1
  br i1 %cmp.i7.not, label %qla27xx_verify_template_checksum.exit.cleanup_crit_edge, label %if.then3

qla27xx_verify_template_checksum.exit.cleanup_crit_edge: ; preds = %qla27xx_verify_template_checksum.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %qla27xx_verify_template_checksum.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef null, i32 noundef 53277, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.qla27xx_fwdt_template_valid) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %qla27xx_verify_template_checksum.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then ], [ 1, %qla27xx_verify_template_checksum.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla27xx_walk_template(ptr noundef %vha, ptr noundef %tmp, ptr noundef %buf, ptr noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %entry_offset = getelementptr inbounds %struct.qla27xx_fwdt_template, ptr %tmp, i32 0, i32 1
  %0 = ptrtoint ptr %entry_offset to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %entry_offset, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add.ptr = getelementptr i8, ptr %tmp, i32 %2
  %entry_count = getelementptr inbounds %struct.qla27xx_fwdt_template, ptr %tmp, i32 0, i32 4
  %3 = ptrtoint ptr %entry_count to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %entry_count, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %count = getelementptr inbounds %struct.qla27xx_fwdt_template, ptr %tmp, i32 0, i32 3
  %6 = ptrtoint ptr %count to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %count, align 1
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53274, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.qla27xx_walk_template, i32 noundef %5) #7
  br label %while.cond

while.cond:                                       ; preds = %qla27xx_find_entry.exit.while.cond_crit_edge, %entry
  %ent.0 = phi ptr [ %add.ptr, %entry ], [ %call5, %qla27xx_find_entry.exit.while.cond_crit_edge ]
  %tobool.not = icmp eq ptr %ent.0, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %7 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %count, align 1
  %dec = add i32 %8, -1
  store i32 %dec, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %if.then15, label %while.body

while.body:                                       ; preds = %land.rhs
  %9 = ptrtoint ptr %ent.0 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %ent.0, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %while.body
  %list.0.i = phi ptr [ @qla27xx_fwdt_entry_call, %while.body ], [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ]
  %12 = ptrtoint ptr %list.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %list.0.i, align 4
  %cmp.i = icmp ult i32 %13, %11
  %incdec.ptr.i = getelementptr %struct.anon.198, ptr %list.0.i, i32 1
  br i1 %cmp.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp3.i = icmp eq i32 %13, %11
  br i1 %cmp3.i, label %if.then.i, label %while.end.i.qla27xx_find_entry.exit_crit_edge

while.end.i.qla27xx_find_entry.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_find_entry.exit

if.then.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = getelementptr inbounds %struct.anon.198, ptr %list.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  br label %qla27xx_find_entry.exit

qla27xx_find_entry.exit:                          ; preds = %if.then.i, %while.end.i.qla27xx_find_entry.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.then.i ], [ @qla27xx_fwdt_entry_other, %while.end.i.qla27xx_find_entry.exit_crit_edge ]
  %call5 = tail call ptr %retval.0.i(ptr noundef %vha, ptr noundef nonnull %ent.0, ptr noundef %buf, ptr noundef %len) #7
  %magicptr = ptrtoint ptr %call5 to i32
  %16 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr, label %qla27xx_find_entry.exit.while.cond_crit_edge [
    i32 0, label %qla27xx_find_entry.exit.while.end_crit_edge
    i32 -1, label %if.then7
  ]

qla27xx_find_entry.exit.while.end_crit_edge:      ; preds = %qla27xx_find_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

qla27xx_find_entry.exit.while.cond_crit_edge:     ; preds = %qla27xx_find_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.then7:                                         ; preds = %qla27xx_find_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.16) #7
  br label %bailout

while.end:                                        ; preds = %qla27xx_find_entry.exit.while.end_crit_edge, %while.cond.while.end_crit_edge
  %18 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %.pr = load i32, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool10.not = icmp eq i32 %.pr, 0
  br i1 %tobool10.not, label %while.end.bailout_crit_edge, label %if.end13.thread42

while.end.bailout_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bailout

if.end13.thread42:                                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53272, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.qla27xx_walk_template, i32 noundef %.pr) #7
  br label %bailout

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53272, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.qla27xx_walk_template, i32 noundef %dec) #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53273, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.qla27xx_walk_template) #7
  br label %bailout

bailout:                                          ; preds = %if.then15, %if.end13.thread42, %while.end.bailout_crit_edge, %if.then7
  %19 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %22 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %count, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qla27xx_fwdt_template_size(ptr nocapture noundef readonly %p) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %template_size = getelementptr inbounds %struct.qla27xx_fwdt_template, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %template_size to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %template_size, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_log(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla27xx_mpi_fwdump(ptr noundef %vha, i32 noundef %hardware_locked) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hardware_locked)
  %tobool.not = icmp eq i32 %hardware_locked, 0
  br i1 %tobool.not, label %do.body1, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %hardware_lock = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #7
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %call2, %do.body1 ]
  %hw5 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %2 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw5, align 4
  %mpi_fw_dump = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 170
  %4 = ptrtoint ptr %mpi_fw_dump to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mpi_fw_dump, align 32
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 755, ptr noundef nonnull @.str.2) #7
  br label %bailout

if.else:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.qla_hw_data, ptr %3, i32 0, i32 163, i32 1
  %mpi_fw_dumped = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 172
  %6 = ptrtoint ptr %mpi_fw_dumped to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %mpi_fw_dumped, align 8
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp eq i8 %7, 0
  br i1 %tobool13.not, label %if.else.if.end15_crit_edge, label %if.then14

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dump_size = getelementptr %struct.qla_hw_data, ptr %3, i32 0, i32 163, i32 1, i32 2
  %8 = ptrtoint ptr %dump_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dump_size, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %9
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 756, ptr noundef nonnull @.str.3, ptr noundef %add.ptr) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.else.if.end15_crit_edge
  %buf.0 = phi ptr [ %add.ptr, %if.then14 ], [ %5, %if.else.if.end15_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 757, ptr noundef nonnull @.str.4) #7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool16.not = icmp eq ptr %11, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 758, ptr noundef nonnull @.str.5) #7
  br label %bailout

if.end18:                                         ; preds = %if.end15
  %call20 = tail call fastcc i32 @qla27xx_execute_fwdt_template(ptr noundef %vha, ptr noundef nonnull %11, ptr noundef %buf.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.end18.bailout_crit_edge, label %if.else24

if.end18.bailout_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %bailout

if.else24:                                        ; preds = %if.end18
  %dump_size25 = getelementptr %struct.qla_hw_data, ptr %3, i32 0, i32 163, i32 1, i32 2
  %12 = ptrtoint ptr %dump_size25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dump_size25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call20)
  %cmp26.not = icmp eq i32 %13, %call20
  br i1 %cmp26.not, label %if.else24.if.end31_crit_edge, label %if.then28

if.else24.if.end31_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then28:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %13, %call20
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 759, ptr noundef nonnull @.str.6, i32 noundef %sub) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.else24.if.end31_crit_edge
  %14 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw5, align 4
  %num_mpi_reset = getelementptr inbounds %struct.qla_hw_data, ptr %15, i32 0, i32 298, i32 1
  %16 = ptrtoint ptr %num_mpi_reset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_mpi_reset, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %num_mpi_reset, align 4
  br i1 %tobool13.not, label %if.end35, label %if.end31.bailout_crit_edge

if.end31.bailout_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %bailout

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw5, align 4
  %mpi_fw_dump_len = getelementptr inbounds %struct.qla_hw_data, ptr %19, i32 0, i32 171
  %20 = ptrtoint ptr %mpi_fw_dump_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call20, ptr %mpi_fw_dump_len, align 4
  %21 = load ptr, ptr %hw5, align 4
  %mpi_fw_dumped38 = getelementptr inbounds %struct.qla_hw_data, ptr %21, i32 0, i32 172
  %22 = ptrtoint ptr %mpi_fw_dumped38 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load39 = load i8, ptr %mpi_fw_dumped38, align 8
  %bf.set = or i8 %bf.load39, 64
  store i8 %bf.set, ptr %mpi_fw_dumped38, align 8
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 6
  %23 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %host_no, align 4
  %25 = load ptr, ptr %hw5, align 4
  %mpi_fw_dump42 = getelementptr inbounds %struct.qla_hw_data, ptr %25, i32 0, i32 170
  %26 = ptrtoint ptr %mpi_fw_dump42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mpi_fw_dump42, align 32
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 760, ptr noundef nonnull @.str.7, i32 noundef %24, ptr noundef %27) #7
  %call43 = tail call i32 @qla2x00_post_uevent_work(ptr noundef %vha, i32 noundef 0) #7
  br label %bailout

bailout:                                          ; preds = %if.end35, %if.end31.bailout_crit_edge, %if.end18.bailout_crit_edge, %if.then17, %if.then7
  br i1 %tobool.not, label %if.then49, label %bailout.if.end52_crit_edge

bailout.if.end52_crit_edge:                       ; preds = %bailout
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then49:                                        ; preds = %bailout
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw5, align 4
  %hardware_lock51 = getelementptr inbounds %struct.qla_hw_data, ptr %29, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock51, i32 noundef %flags.0) #7
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %bailout.if.end52_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla27xx_execute_fwdt_template(ptr noundef %vha, ptr nocapture noundef readonly %tmp, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  %v.i.i = alloca [6 x i8], align 1
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %len, align 4
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1660944384, i32 %2)
  %cmp.i.not.i = icmp eq i32 %2, 1660944384
  br i1 %cmp.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef null, i32 noundef 53276, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.qla27xx_fwdt_template_valid, i32 noundef %3) #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %template_size.i.i = getelementptr inbounds %struct.qla27xx_fwdt_template, ptr %tmp, i32 0, i32 2
  %4 = ptrtoint ptr %template_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %template_size.i.i, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %tobool.not9.i.i.i = icmp ult i32 %6, 4
  br i1 %tobool.not9.i.i.i, label %if.end.i.qla27xx_verify_template_checksum.exit.i_crit_edge, label %for.body.preheader.i.i.i

if.end.i.qla27xx_verify_template_checksum.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_verify_template_checksum.exit.i

for.body.preheader.i.i.i:                         ; preds = %if.end.i
  %div8.i.i.i = lshr i32 %6, 2
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %sum.012.i.i.i = phi i64 [ %add.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %buf.011.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %tmp, %for.body.preheader.i.i.i ]
  %size.addr.010.i.i.i = phi i32 [ %dec.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %div8.i.i.i, %for.body.preheader.i.i.i ]
  %dec.i.i.i = add nsw i32 %size.addr.010.i.i.i, -1
  %7 = ptrtoint ptr %buf.011.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf.011.i.i.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %conv.i.i.i = zext i32 %9 to i64
  %add.i.i.i = add i64 %sum.012.i.i.i, %conv.i.i.i
  %incdec.ptr.i.i.i = getelementptr i32, ptr %buf.011.i.i.i, i32 1
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.qla27xx_verify_template_checksum.exit.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.body.i.i.i.qla27xx_verify_template_checksum.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_verify_template_checksum.exit.i

qla27xx_verify_template_checksum.exit.i:          ; preds = %for.body.i.i.i.qla27xx_verify_template_checksum.exit.i_crit_edge, %if.end.i.qla27xx_verify_template_checksum.exit.i_crit_edge
  %sum.0.lcssa.i.i.i = phi i64 [ 0, %if.end.i.qla27xx_verify_template_checksum.exit.i_crit_edge ], [ %add.i.i.i, %for.body.i.i.i.qla27xx_verify_template_checksum.exit.i_crit_edge ]
  %shr.i.i.i = lshr i64 %sum.0.lcssa.i.i.i, 32
  %add1.i.i.i = add i64 %shr.i.i.i, %sum.0.lcssa.i.i.i
  %10 = trunc i64 %add1.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i7.not.i = icmp eq i32 %10, -1
  br i1 %cmp.i7.not.i, label %if.then, label %if.then3.i

if.then3.i:                                       ; preds = %qla27xx_verify_template_checksum.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef null, i32 noundef 53277, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.qla27xx_fwdt_template_valid) #7
  br label %if.end

if.then:                                          ; preds = %qla27xx_verify_template_checksum.exit.i
  %11 = ptrtoint ptr %template_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %template_size.i.i, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %len, align 4
  %15 = call ptr @memcpy(ptr %buf, ptr %tmp, i32 %13)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  %capture_timestamp.i.i = getelementptr inbounds %struct.qla27xx_fwdt_template, ptr %buf, i32 0, i32 6
  %18 = ptrtoint ptr %capture_timestamp.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %capture_timestamp.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %v.i.i) #7
  %19 = call ptr @memset(ptr %v.i.i, i32 0, i32 6)
  %add.ptr2.i.i = getelementptr inbounds i8, ptr %v.i.i, i32 1
  %add.ptr4.i.i = getelementptr inbounds i8, ptr %v.i.i, i32 2
  %add.ptr6.i.i = getelementptr inbounds i8, ptr %v.i.i, i32 3
  %call.i.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull @qla2x00_version_str, ptr noundef nonnull @.str.59, ptr noundef nonnull %v.i.i, ptr noundef %add.ptr2.i.i, ptr noundef %add.ptr4.i.i, ptr noundef %add.ptr6.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp.not.i.i, label %if.then.ql27xx_edit_template.exit_crit_edge, label %land.rhs.i.i

if.then.ql27xx_edit_template.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %ql27xx_edit_template.exit

land.rhs.i.i:                                     ; preds = %if.then
  %.b67.i.i = load i1, ptr @qla27xx_driver_info.__already_done, align 1
  br i1 %.b67.i.i, label %land.rhs.i.i.ql27xx_edit_template.exit_crit_edge, label %if.then.i.i, !prof !190

land.rhs.i.i.ql27xx_edit_template.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ql27xx_edit_template.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @qla27xx_driver_info.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 882, i32 noundef 9, ptr noundef null) #7
  br label %ql27xx_edit_template.exit

ql27xx_edit_template.exit:                        ; preds = %if.then.i.i, %land.rhs.i.i.ql27xx_edit_template.exit_crit_edge, %if.then.ql27xx_edit_template.exit_crit_edge
  %20 = ptrtoint ptr %add.ptr6.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr6.i.i, align 1
  %conv.i.i = zext i8 %21 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %22 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr4.i.i, align 1
  %conv43.i.i = zext i8 %23 to i32
  %shl44.i.i = shl nuw nsw i32 %conv43.i.i, 16
  %or.i.i = or i32 %shl44.i.i, %shl.i.i
  %24 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr2.i.i, align 1
  %conv46.i.i = zext i8 %25 to i32
  %shl47.i.i = shl nuw nsw i32 %conv46.i.i, 8
  %or48.i.i = or i32 %or.i.i, %shl47.i.i
  %26 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %v.i.i, align 1
  %conv50.i.i = zext i8 %27 to i32
  %or51.i.i = or i32 %or48.i.i, %conv50.i.i
  %28 = call i32 @llvm.bswap.i32(i32 %or51.i.i) #7
  %driver_info.i.i = getelementptr inbounds %struct.qla27xx_fwdt_template, ptr %buf, i32 0, i32 9
  %29 = ptrtoint ptr %driver_info.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %driver_info.i.i, align 1
  %arrayidx53.i.i = getelementptr inbounds [6 x i8], ptr %v.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx53.i.i, align 1
  %conv54.i.i = zext i8 %31 to i32
  %shl55.i.i = shl nuw nsw i32 %conv54.i.i, 8
  %arrayidx56.i.i = getelementptr inbounds [6 x i8], ptr %v.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx56.i.i, align 1
  %conv57.i.i = zext i8 %33 to i32
  %or58.i.i = or i32 %shl55.i.i, %conv57.i.i
  %34 = call i32 @llvm.bswap.i32(i32 %or58.i.i) #7
  %arrayidx60.i.i = getelementptr %struct.qla27xx_fwdt_template, ptr %buf, i32 0, i32 9, i32 1
  %35 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %arrayidx60.i.i, align 1
  %arrayidx62.i.i = getelementptr %struct.qla27xx_fwdt_template, ptr %buf, i32 0, i32 9, i32 2
  %36 = ptrtoint ptr %arrayidx62.i.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 2018915346, ptr %arrayidx62.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %v.i.i) #7
  %hw.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %37 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw.i.i, align 4
  %fw_major_version.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %38, i32 0, i32 135
  %39 = ptrtoint ptr %fw_major_version.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %fw_major_version.i.i, align 4
  %conv.i3.i = zext i16 %40 to i32
  %41 = call i32 @llvm.bswap.i32(i32 %conv.i3.i) #7
  %firmware_version.i.i = getelementptr inbounds %struct.qla27xx_fwdt_template, ptr %buf, i32 0, i32 12
  %42 = ptrtoint ptr %firmware_version.i.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %firmware_version.i.i, align 1
  %43 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw.i.i, align 4
  %fw_minor_version.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %44, i32 0, i32 136
  %45 = ptrtoint ptr %fw_minor_version.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %fw_minor_version.i.i, align 2
  %conv2.i.i = zext i16 %46 to i32
  %47 = call i32 @llvm.bswap.i32(i32 %conv2.i.i) #7
  %arrayidx4.i.i = getelementptr %struct.qla27xx_fwdt_template, ptr %buf, i32 0, i32 12, i32 1
  %48 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %arrayidx4.i.i, align 1
  %49 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw.i.i, align 4
  %fw_subminor_version.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %50, i32 0, i32 137
  %51 = ptrtoint ptr %fw_subminor_version.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %fw_subminor_version.i.i, align 8
  %conv6.i.i = zext i16 %52 to i32
  %53 = call i32 @llvm.bswap.i32(i32 %conv6.i.i) #7
  %arrayidx8.i.i = getelementptr %struct.qla27xx_fwdt_template, ptr %buf, i32 0, i32 12, i32 2
  %54 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %arrayidx8.i.i, align 1
  %55 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw.i.i, align 4
  %fw_attributes_h.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %56, i32 0, i32 139
  %57 = ptrtoint ptr %fw_attributes_h.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %fw_attributes_h.i.i, align 4
  %conv10.i.i = zext i16 %58 to i32
  %shl.i4.i = shl nuw i32 %conv10.i.i, 16
  %fw_attributes.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %56, i32 0, i32 138
  %59 = ptrtoint ptr %fw_attributes.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %fw_attributes.i.i, align 2
  %conv12.i.i = zext i16 %60 to i32
  %or.i5.i = or i32 %shl.i4.i, %conv12.i.i
  %61 = call i32 @llvm.bswap.i32(i32 %or.i5.i) #7
  %arrayidx14.i.i = getelementptr %struct.qla27xx_fwdt_template, ptr %buf, i32 0, i32 12, i32 3
  %62 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %arrayidx14.i.i, align 1
  %63 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw.i.i, align 4
  %fw_attributes_ext.i.i = getelementptr inbounds %struct.qla_hw_data, ptr %64, i32 0, i32 140
  %arrayidx16.i.i = getelementptr %struct.qla_hw_data, ptr %64, i32 0, i32 140, i32 1
  %65 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx16.i.i, align 2
  %conv17.i.i = zext i16 %66 to i32
  %shl18.i.i = shl nuw i32 %conv17.i.i, 16
  %67 = ptrtoint ptr %fw_attributes_ext.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %fw_attributes_ext.i.i, align 2
  %conv22.i.i = zext i16 %68 to i32
  %or23.i.i = or i32 %shl18.i.i, %conv22.i.i
  %69 = call i32 @llvm.bswap.i32(i32 %or23.i.i) #7
  %arrayidx25.i.i = getelementptr %struct.qla27xx_fwdt_template, ptr %buf, i32 0, i32 12, i32 4
  %70 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %69, ptr %arrayidx25.i.i, align 1
  call fastcc void @qla27xx_walk_template(ptr noundef %vha, ptr noundef %buf, ptr noundef %buf, ptr noundef nonnull %len)
  br label %if.end

if.end:                                           ; preds = %ql27xx_edit_template.exit, %if.then3.i, %if.then.i
  %71 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_post_uevent_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla27xx_fwdump(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %dep_map = getelementptr inbounds %struct.qla_hw_data, ptr %2, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !191

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1059, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %hw24 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %3 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw24, align 4
  %fw_dump = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 164
  %5 = ptrtoint ptr %fw_dump to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw_dump, align 8
  %tobool25.not = icmp eq ptr %6, null
  br i1 %tobool25.not, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 53278, ptr noundef nonnull @.str.9) #7
  br label %if.end60

if.else:                                          ; preds = %if.end
  %fw_dumped = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 167
  %7 = ptrtoint ptr %fw_dumped to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fw_dumped, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool28.not = icmp eq i8 %8, 0
  br i1 %tobool28.not, label %if.else32, label %if.then29

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 53279, ptr noundef nonnull @.str.10, ptr noundef nonnull %6) #7
  br label %if.end60

if.else32:                                        ; preds = %if.else
  %fwdt34 = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 163
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 53265, ptr noundef nonnull @.str.11) #7
  %9 = ptrtoint ptr %fwdt34 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fwdt34, align 4
  %tobool37.not = icmp eq ptr %10, null
  br i1 %tobool37.not, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 53266, ptr noundef nonnull @.str.12) #7
  br label %if.end60

if.end39:                                         ; preds = %if.else32
  %call41 = tail call fastcc i32 @qla27xx_execute_fwdt_template(ptr noundef %vha, ptr noundef nonnull %10, ptr noundef nonnull %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.end39.if.end60_crit_edge, label %if.else44

if.end39.if.end60_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.else44:                                        ; preds = %if.end39
  %dump_size = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 163, i32 0, i32 2
  %11 = ptrtoint ptr %dump_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dump_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %call41)
  %cmp45.not = icmp eq i32 %12, %call41
  br i1 %cmp45.not, label %if.else44.if.end49_crit_edge, label %if.then46

if.else44.if.end49_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then46:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %12, %call41
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 53267, ptr noundef nonnull @.str.13, i32 noundef %sub) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.else44.if.end49_crit_edge
  %13 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw24, align 4
  %fw_dump_len = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 165
  %15 = ptrtoint ptr %fw_dump_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call41, ptr %fw_dump_len, align 4
  %16 = load ptr, ptr %hw24, align 4
  %fw_dumped52 = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 167
  %17 = ptrtoint ptr %fw_dumped52 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %fw_dumped52, align 4
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 6
  %18 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %host_no, align 4
  %20 = load ptr, ptr %hw24, align 4
  %fw_dump54 = getelementptr inbounds %struct.qla_hw_data, ptr %20, i32 0, i32 164
  %21 = ptrtoint ptr %fw_dump54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw_dump54, align 8
  %fw_dump_cap_flags = getelementptr inbounds %struct.qla_hw_data, ptr %20, i32 0, i32 168
  %23 = ptrtoint ptr %fw_dump_cap_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fw_dump_cap_flags, align 8
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 53269, ptr noundef nonnull @.str.14, i32 noundef %19, ptr noundef %22, i32 noundef %24) #7
  %call56 = tail call i32 @qla2x00_post_uevent_work(ptr noundef %vha, i32 noundef 0) #7
  br label %if.end60

if.end60:                                         ; preds = %if.end49, %if.end39.if.end60_crit_edge, %if.then38, %if.then29, %if.then26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dbg(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_other(ptr noundef %vha, ptr noundef %ent, ptr noundef readnone %buf, ptr nocapture noundef readonly %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %ent, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 54015, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_other, i32 noundef %2, i32 noundef %4) #7
  %tobool.not.i = icmp eq ptr %buf, null
  br i1 %tobool.not.i, label %entry.qla27xx_skip_entry.exit_crit_edge, label %if.then.i

entry.qla27xx_skip_entry.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_skip_entry.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_flags.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 5
  %5 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %driver_flags.i, align 1
  %7 = or i8 %6, -128
  store i8 %7, ptr %driver_flags.i, align 1
  br label %qla27xx_skip_entry.exit

qla27xx_skip_entry.exit:                          ; preds = %if.then.i, %entry.qla27xx_skip_entry.exit_crit_edge
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %size.i, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %add.ptr.i = getelementptr i8, ptr %ent, i32 %10
  ret ptr %add.ptr.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t0(ptr noundef %vha, ptr noundef %ent, ptr noundef readnone %buf, ptr nocapture noundef readonly %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53504, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t0, i32 noundef %1) #7
  %tobool.not.i = icmp eq ptr %buf, null
  br i1 %tobool.not.i, label %entry.qla27xx_skip_entry.exit_crit_edge, label %if.then.i

entry.qla27xx_skip_entry.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_skip_entry.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_flags.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 5
  %2 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %driver_flags.i, align 1
  %4 = or i8 %3, -128
  store i8 %4, ptr %driver_flags.i, align 1
  br label %qla27xx_skip_entry.exit

qla27xx_skip_entry.exit:                          ; preds = %if.then.i, %entry.qla27xx_skip_entry.exit_crit_edge
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %size.i, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %add.ptr.i = getelementptr i8, ptr %ent, i32 %7
  ret ptr %add.ptr.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @qla27xx_fwdt_entry_t255(ptr noundef %vha, ptr nocapture noundef %ent, ptr noundef readnone %buf, ptr nocapture noundef readonly %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53759, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t255, i32 noundef %1) #7
  %tobool.not.i = icmp eq ptr %buf, null
  br i1 %tobool.not.i, label %entry.qla27xx_skip_entry.exit_crit_edge, label %if.then.i

entry.qla27xx_skip_entry.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_skip_entry.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_flags.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 5
  %2 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %driver_flags.i, align 1
  %4 = or i8 %3, -128
  store i8 %4, ptr %driver_flags.i, align 1
  br label %qla27xx_skip_entry.exit

qla27xx_skip_entry.exit:                          ; preds = %if.then.i, %entry.qla27xx_skip_entry.exit_crit_edge
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t256(ptr noundef %vha, ptr noundef readonly %ent, ptr noundef %buf, ptr noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %0, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %pci_offset = getelementptr inbounds %struct.anon.175, ptr %0, i32 0, i32 3
  %4 = ptrtoint ptr %pci_offset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pci_offset, align 1
  %conv = zext i8 %5 to i32
  %reg_count = getelementptr inbounds %struct.anon.175, ptr %0, i32 0, i32 2
  %6 = ptrtoint ptr %reg_count to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %reg_count, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv1 = zext i16 %8 to i32
  %reg_width = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %reg_width to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %reg_width, align 1
  %conv2 = zext i8 %10 to i32
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53760, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t256, i32 noundef %12) #7
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i.i = icmp eq i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp1.i.i = icmp eq i8 %10, 2
  %cond.i.i = select i1 %cmp1.i.i, ptr @qla27xx_read16, ptr @qla27xx_read32
  %cond2.i.i = select i1 %cmp.i.i, ptr @qla27xx_read8, ptr %cond.i.i
  %tobool.not.i.i = icmp eq ptr %buf, null
  br i1 %tobool.not.i.i, label %entry.qla27xx_write_reg.exit.i_crit_edge, label %if.then.i.i

entry.qla27xx_write_reg.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_write_reg.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #7, !srcloc !194
  br label %qla27xx_write_reg.exit.i

qla27xx_write_reg.exit.i:                         ; preds = %if.then.i.i, %entry.qla27xx_write_reg.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not13.i = icmp eq i16 %7, 0
  br i1 %tobool.not13.i, label %qla27xx_write_reg.exit.i.qla27xx_read_window.exit_crit_edge, label %qla27xx_write_reg.exit.i.while.body.i_crit_edge

qla27xx_write_reg.exit.i.while.body.i_crit_edge:  ; preds = %qla27xx_write_reg.exit.i
  br label %while.body.i

qla27xx_write_reg.exit.i.qla27xx_read_window.exit_crit_edge: ; preds = %qla27xx_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_read_window.exit

while.body.i:                                     ; preds = %qla27xx_insert32.exit.i.while.body.i_crit_edge, %qla27xx_write_reg.exit.i.while.body.i_crit_edge
  %window.017.i = phi ptr [ %add.ptr1.i, %qla27xx_insert32.exit.i.while.body.i_crit_edge ], [ %add.ptr.i, %qla27xx_write_reg.exit.i.while.body.i_crit_edge ]
  %addr.addr.015.i = phi i32 [ %inc.i, %qla27xx_insert32.exit.i.while.body.i_crit_edge ], [ %3, %qla27xx_write_reg.exit.i.while.body.i_crit_edge ]
  %count.addr.014.i = phi i32 [ %dec.i, %qla27xx_insert32.exit.i.while.body.i_crit_edge ], [ %conv1, %qla27xx_write_reg.exit.i.while.body.i_crit_edge ]
  %dec.i = add i32 %count.addr.014.i, -1
  br i1 %tobool.not.i.i, label %while.body.i.qla27xx_insert32.exit.i_crit_edge, label %if.then.i12.i

while.body.i.qla27xx_insert32.exit.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_insert32.exit.i

if.then.i12.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %buf, i32 %18
  %19 = tail call i32 @llvm.bswap.i32(i32 %addr.addr.015.i) #7
  %20 = ptrtoint ptr %add.ptr.i11.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %add.ptr.i11.i, align 4
  br label %qla27xx_insert32.exit.i

qla27xx_insert32.exit.i:                          ; preds = %if.then.i12.i, %while.body.i.qla27xx_insert32.exit.i_crit_edge
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %add.i.i = add i32 %22, 4
  store i32 %add.i.i, ptr %len, align 4
  tail call void %cond2.i.i(ptr noundef %window.017.i, ptr noundef %buf, ptr noundef %len) #7, !callees !195
  %add.ptr1.i = getelementptr i8, ptr %window.017.i, i32 %conv2
  %inc.i = add i32 %addr.addr.015.i, 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %qla27xx_insert32.exit.i.qla27xx_read_window.exit_crit_edge, label %qla27xx_insert32.exit.i.while.body.i_crit_edge

qla27xx_insert32.exit.i.while.body.i_crit_edge:   ; preds = %qla27xx_insert32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

qla27xx_insert32.exit.i.qla27xx_read_window.exit_crit_edge: ; preds = %qla27xx_insert32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_read_window.exit

qla27xx_read_window.exit:                         ; preds = %qla27xx_insert32.exit.i.qla27xx_read_window.exit_crit_edge, %qla27xx_write_reg.exit.i.qla27xx_read_window.exit_crit_edge
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %size.i, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  %add.ptr.i9 = getelementptr i8, ptr %ent, i32 %25
  ret ptr %add.ptr.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t257(ptr noundef %vha, ptr noundef readonly %ent, ptr noundef readnone %buf, ptr nocapture noundef readonly %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %0, align 1
  %pci_offset = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %pci_offset to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pci_offset, align 1
  %write_data = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %write_data to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %write_data, align 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53761, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t257, i32 noundef %8) #7
  %tobool.not.i = icmp eq ptr %buf, null
  br i1 %tobool.not.i, label %entry.qla27xx_write_reg.exit12_crit_edge, label %if.then.i11

entry.qla27xx_write_reg.exit12_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_write_reg.exit12

if.then.i11:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase, align 4
  %conv = zext i8 %4 to i32
  %add.ptr.i = getelementptr i8, ptr %12, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !194
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %iobase2 = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %iobase2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase2, align 4
  %add.ptr.i10 = getelementptr i8, ptr %16, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %6) #7, !srcloc !194
  br label %qla27xx_write_reg.exit12

qla27xx_write_reg.exit12:                         ; preds = %if.then.i11, %entry.qla27xx_write_reg.exit12_crit_edge
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %size.i, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %add.ptr.i13 = getelementptr i8, ptr %ent, i32 %19
  ret ptr %add.ptr.i13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t258(ptr noundef %vha, ptr noundef readonly %ent, ptr noundef %buf, ptr noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %banksel_offset = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 3
  %1 = ptrtoint ptr %banksel_offset to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %banksel_offset, align 1
  %bank1 = getelementptr inbounds %struct.anon.177, ptr %0, i32 0, i32 6
  %3 = ptrtoint ptr %bank1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %bank1, align 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %0, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %pci_offset = getelementptr inbounds %struct.anon.177, ptr %0, i32 0, i32 3
  %8 = ptrtoint ptr %pci_offset to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pci_offset, align 1
  %conv2 = zext i8 %9 to i32
  %reg_count = getelementptr inbounds %struct.anon.177, ptr %0, i32 0, i32 2
  %10 = ptrtoint ptr %reg_count to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %reg_count, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv3 = zext i16 %12 to i32
  %reg_width = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %reg_width to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reg_width, align 1
  %conv4 = zext i8 %14 to i32
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53762, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t258, i32 noundef %16) #7
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %tobool.not.i = icmp eq ptr %buf, null
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %iobase620 = getelementptr inbounds %struct.qla_hw_data, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %iobase620 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase620, align 4
  br i1 %tobool.not.i, label %qla27xx_write_reg.exit.thread, label %if.then.i.i

qla27xx_write_reg.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.i.i22 = icmp eq i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp1.i.i23 = icmp eq i8 %14, 2
  %cond.i.i24 = select i1 %cmp1.i.i23, ptr @qla27xx_read16, ptr @qla27xx_read32
  %cond2.i.i25 = select i1 %cmp.i.i22, ptr @qla27xx_read8, ptr %cond.i.i24
  br label %qla27xx_write_reg.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %2 to i32
  %add.ptr.i = getelementptr i8, ptr %20, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !194
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %iobase6 = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %iobase6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iobase6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.i.i = icmp eq i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp1.i.i = icmp eq i8 %14, 2
  %cond.i.i = select i1 %cmp1.i.i, ptr @qla27xx_read16, ptr @qla27xx_read32
  %cond2.i.i = select i1 %cmp.i.i, ptr @qla27xx_read8, ptr %cond.i.i
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #7, !srcloc !194
  br label %qla27xx_write_reg.exit.i

qla27xx_write_reg.exit.i:                         ; preds = %if.then.i.i, %qla27xx_write_reg.exit.thread
  %cond2.i.i27 = phi ptr [ %cond2.i.i25, %qla27xx_write_reg.exit.thread ], [ %cond2.i.i, %if.then.i.i ]
  %.pn = phi ptr [ %20, %qla27xx_write_reg.exit.thread ], [ %24, %if.then.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not13.i = icmp eq i16 %11, 0
  br i1 %tobool.not13.i, label %qla27xx_write_reg.exit.i.qla27xx_read_window.exit_crit_edge, label %while.body.i.preheader

qla27xx_write_reg.exit.i.qla27xx_read_window.exit_crit_edge: ; preds = %qla27xx_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_read_window.exit

while.body.i.preheader:                           ; preds = %qla27xx_write_reg.exit.i
  %add.ptr.i1726 = getelementptr i8, ptr %.pn, i32 %conv2
  br label %while.body.i

while.body.i:                                     ; preds = %qla27xx_insert32.exit.i.while.body.i_crit_edge, %while.body.i.preheader
  %window.017.i = phi ptr [ %add.ptr1.i, %qla27xx_insert32.exit.i.while.body.i_crit_edge ], [ %add.ptr.i1726, %while.body.i.preheader ]
  %addr.addr.015.i = phi i32 [ %inc.i, %qla27xx_insert32.exit.i.while.body.i_crit_edge ], [ %7, %while.body.i.preheader ]
  %count.addr.014.i = phi i32 [ %dec.i, %qla27xx_insert32.exit.i.while.body.i_crit_edge ], [ %conv3, %while.body.i.preheader ]
  %dec.i = add i32 %count.addr.014.i, -1
  br i1 %tobool.not.i, label %while.body.i.qla27xx_insert32.exit.i_crit_edge, label %if.then.i12.i

while.body.i.qla27xx_insert32.exit.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_insert32.exit.i

if.then.i12.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %buf, i32 %26
  %27 = tail call i32 @llvm.bswap.i32(i32 %addr.addr.015.i) #7
  %28 = ptrtoint ptr %add.ptr.i11.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %add.ptr.i11.i, align 4
  br label %qla27xx_insert32.exit.i

qla27xx_insert32.exit.i:                          ; preds = %if.then.i12.i, %while.body.i.qla27xx_insert32.exit.i_crit_edge
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %add.i.i = add i32 %30, 4
  store i32 %add.i.i, ptr %len, align 4
  tail call void %cond2.i.i27(ptr noundef %window.017.i, ptr noundef %buf, ptr noundef %len) #7, !callees !195
  %add.ptr1.i = getelementptr i8, ptr %window.017.i, i32 %conv4
  %inc.i = add i32 %addr.addr.015.i, 1
  %tobool.not.i18 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i18, label %qla27xx_insert32.exit.i.qla27xx_read_window.exit_crit_edge, label %qla27xx_insert32.exit.i.while.body.i_crit_edge

qla27xx_insert32.exit.i.while.body.i_crit_edge:   ; preds = %qla27xx_insert32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

qla27xx_insert32.exit.i.qla27xx_read_window.exit_crit_edge: ; preds = %qla27xx_insert32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_read_window.exit

qla27xx_read_window.exit:                         ; preds = %qla27xx_insert32.exit.i.qla27xx_read_window.exit_crit_edge, %qla27xx_write_reg.exit.i.qla27xx_read_window.exit_crit_edge
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %size.i, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  %add.ptr.i19 = getelementptr i8, ptr %ent, i32 %33
  ret ptr %add.ptr.i19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t259(ptr noundef %vha, ptr noundef readonly %ent, ptr noundef readnone %buf, ptr nocapture noundef readonly %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %0, align 1
  %banksel_offset = getelementptr inbounds %struct.anon.178, ptr %0, i32 0, i32 4
  %3 = ptrtoint ptr %banksel_offset to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %banksel_offset, align 1
  %bank1 = getelementptr inbounds %struct.anon.178, ptr %0, i32 0, i32 5
  %5 = ptrtoint ptr %bank1 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %bank1, align 1
  %pci_offset = getelementptr inbounds %struct.anon.178, ptr %0, i32 0, i32 3
  %7 = ptrtoint ptr %pci_offset to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pci_offset, align 1
  %write_data = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %write_data to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %write_data, align 1
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53763, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t259, i32 noundef %12) #7
  %tobool.not.i = icmp eq ptr %buf, null
  br i1 %tobool.not.i, label %entry.qla27xx_write_reg.exit24_crit_edge, label %if.then.i23

entry.qla27xx_write_reg.exit24_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_write_reg.exit24

if.then.i23:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase, align 4
  %conv2 = zext i8 %8 to i32
  %conv = zext i8 %4 to i32
  %add.ptr.i = getelementptr i8, ptr %16, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !194
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %iobase4 = getelementptr inbounds %struct.qla_hw_data, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %iobase4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase4, align 4
  %add.ptr.i18 = getelementptr i8, ptr %20, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %6) #7, !srcloc !194
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %iobase6 = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %iobase6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iobase6, align 4
  %add.ptr.i22 = getelementptr i8, ptr %24, i32 %conv2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %10) #7, !srcloc !194
  br label %qla27xx_write_reg.exit24

qla27xx_write_reg.exit24:                         ; preds = %if.then.i23, %entry.qla27xx_write_reg.exit24_crit_edge
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %size.i, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  %add.ptr.i25 = getelementptr i8, ptr %ent, i32 %27
  ret ptr %add.ptr.i25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t260(ptr noundef %vha, ptr noundef readonly %ent, ptr noundef writeonly %buf, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %0, align 1
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53764, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t260, i32 noundef %4) #7
  %tobool.not.i = icmp eq ptr %buf, null
  br i1 %tobool.not.i, label %qla27xx_insert32.exit.thread, label %if.then.i.i.i

qla27xx_insert32.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %add.i9 = add i32 %6, 4
  store i32 %add.i9, ptr %len, align 4
  br label %qla27xx_read_reg.exit

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %2 to i32
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %8
  %9 = shl nuw i32 %conv, 24
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr.i, align 4
  %11 = load i32, ptr %len, align 4
  %add.i = add i32 %11, 4
  store i32 %add.i, ptr %len, align 4
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase, align 4
  %add.ptr.i7 = getelementptr i8, ptr %15, i32 %conv
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #7, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %buf, i32 %18
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %add.ptr.i.i.i, align 4
  br label %qla27xx_read_reg.exit

qla27xx_read_reg.exit:                            ; preds = %if.then.i.i.i, %qla27xx_insert32.exit.thread
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %add.i.i.i = add i32 %21, 4
  store i32 %add.i.i.i, ptr %len, align 4
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %22 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %size.i, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %add.ptr.i8 = getelementptr i8, ptr %ent, i32 %24
  ret ptr %add.ptr.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t261(ptr noundef %vha, ptr noundef readonly %ent, ptr noundef readnone %buf, ptr nocapture noundef readonly %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %0, align 1
  %write_data = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %write_data to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %write_data, align 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53765, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t261, i32 noundef %6) #7
  %tobool.not.i = icmp eq ptr %buf, null
  br i1 %tobool.not.i, label %entry.qla27xx_write_reg.exit_crit_edge, label %if.then.i

entry.qla27xx_write_reg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_write_reg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase, align 4
  %conv = zext i8 %2 to i32
  %add.ptr.i = getelementptr i8, ptr %10, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !194
  br label %qla27xx_write_reg.exit

qla27xx_write_reg.exit:                           ; preds = %if.then.i, %entry.qla27xx_write_reg.exit_crit_edge
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %size.i, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %add.ptr.i4 = getelementptr i8, ptr %ent, i32 %13
  ret ptr %add.ptr.i4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t262(ptr noundef %vha, ptr noundef %ent, ptr noundef %buf, ptr nocapture noundef %len) #0 align 64 {
entry:
  %buf.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %buf.addr, align 4
  %1 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  %start_addr = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %start_addr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %start_addr, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %end_addr = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %end_addr to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %end_addr, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53766, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t262, i32 noundef %conv, i32 noundef %11) #7
  %12 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %3, label %if.else40 [
    i8 1, label %entry.if.end45_crit_edge
    i8 2, label %if.then6
    i8 3, label %if.then12
    i8 4, label %if.then23
    i8 5, label %if.then34
  ]

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then6:                                         ; preds = %entry
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %fw_memory_size = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 141
  %15 = ptrtoint ptr %fw_memory_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fw_memory_size, align 4
  %17 = ptrtoint ptr %buf.addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf.addr, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.then6.if.end45_crit_edge, label %if.then7

if.then6.if.end45_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then7:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %16)
  br label %if.end45.sink.split

if.then12:                                        ; preds = %entry
  %hw13 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %20 = ptrtoint ptr %hw13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw13, align 4
  %fw_shared_ram_start = getelementptr inbounds %struct.qla_hw_data, ptr %21, i32 0, i32 151
  %22 = ptrtoint ptr %fw_shared_ram_start to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw_shared_ram_start, align 32
  %fw_shared_ram_end = getelementptr inbounds %struct.qla_hw_data, ptr %21, i32 0, i32 152
  %24 = ptrtoint ptr %fw_shared_ram_end to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fw_shared_ram_end, align 4
  %26 = ptrtoint ptr %buf.addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf.addr, align 4
  %tobool15.not = icmp eq ptr %27, null
  br i1 %tobool15.not, label %if.then12.if.end45_crit_edge, label %if.then16

if.then12.if.end45_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %28 = tail call i32 @llvm.bswap.i32(i32 %23)
  %29 = ptrtoint ptr %start_addr to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %start_addr, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %25)
  br label %if.end45.sink.split

if.then23:                                        ; preds = %entry
  %hw24 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %31 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw24, align 4
  %fw_ddr_ram_start = getelementptr inbounds %struct.qla_hw_data, ptr %32, i32 0, i32 153
  %33 = ptrtoint ptr %fw_ddr_ram_start to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw_ddr_ram_start, align 8
  %fw_ddr_ram_end = getelementptr inbounds %struct.qla_hw_data, ptr %32, i32 0, i32 154
  %35 = ptrtoint ptr %fw_ddr_ram_end to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fw_ddr_ram_end, align 4
  %37 = ptrtoint ptr %buf.addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buf.addr, align 4
  %tobool26.not = icmp eq ptr %38, null
  br i1 %tobool26.not, label %if.then23.if.end45_crit_edge, label %if.then27

if.then23.if.end45_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %39 = tail call i32 @llvm.bswap.i32(i32 %34)
  %40 = ptrtoint ptr %start_addr to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %start_addr, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %36)
  br label %if.end45.sink.split

if.then34:                                        ; preds = %entry
  %42 = ptrtoint ptr %buf.addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buf.addr, align 4
  %tobool35.not = icmp eq ptr %43, null
  br i1 %tobool35.not, label %if.then34.if.end45_crit_edge, label %if.then36

if.then34.if.end45_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then36:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %start_addr to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %5, ptr %start_addr, align 1
  br label %if.end45.sink.split

if.else40:                                        ; preds = %entry
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53282, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t262, i32 noundef %conv) #7
  %45 = ptrtoint ptr %buf.addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buf.addr, align 4
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %if.else40.done_crit_edge, label %if.then.i

if.else40.done_crit_edge:                         ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then.i:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  %driver_flags.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 5
  %47 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %driver_flags.i, align 1
  %49 = or i8 %48, -128
  store i8 %49, ptr %driver_flags.i, align 1
  br label %done

if.end45.sink.split:                              ; preds = %if.then36, %if.then27, %if.then16, %if.then7
  %.sink = phi i32 [ %19, %if.then7 ], [ %41, %if.then27 ], [ %8, %if.then36 ], [ %30, %if.then16 ]
  %start.0.ph = phi i32 [ %6, %if.then7 ], [ %34, %if.then27 ], [ %6, %if.then36 ], [ %23, %if.then16 ]
  %end.0.ph = phi i32 [ %16, %if.then7 ], [ %36, %if.then27 ], [ %9, %if.then36 ], [ %25, %if.then16 ]
  %50 = ptrtoint ptr %end_addr to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %.sink, ptr %end_addr, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %if.then34.if.end45_crit_edge, %if.then23.if.end45_crit_edge, %if.then12.if.end45_crit_edge, %if.then6.if.end45_crit_edge, %entry.if.end45_crit_edge
  %start.0 = phi i32 [ %6, %entry.if.end45_crit_edge ], [ %6, %if.then6.if.end45_crit_edge ], [ %23, %if.then12.if.end45_crit_edge ], [ %34, %if.then23.if.end45_crit_edge ], [ %6, %if.then34.if.end45_crit_edge ], [ %start.0.ph, %if.end45.sink.split ]
  %end.0 = phi i32 [ %9, %entry.if.end45_crit_edge ], [ %16, %if.then6.if.end45_crit_edge ], [ %25, %if.then12.if.end45_crit_edge ], [ %36, %if.then23.if.end45_crit_edge ], [ %9, %if.then34.if.end45_crit_edge ], [ %end.0.ph, %if.end45.sink.split ]
  %51 = add i32 %start.0, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %end.0)
  %.not = icmp ult i32 %51, %end.0
  br i1 %.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end45
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53283, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t262, i32 noundef %start.0, i32 noundef %end.0) #7
  %52 = ptrtoint ptr %buf.addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buf.addr, align 4
  %tobool.not.i117 = icmp eq ptr %53, null
  br i1 %tobool.not.i117, label %if.then53.done_crit_edge, label %if.then.i119

if.then53.done_crit_edge:                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then.i119:                                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  %driver_flags.i118 = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 5
  %54 = ptrtoint ptr %driver_flags.i118 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %driver_flags.i118, align 1
  %56 = or i8 %55, -128
  store i8 %56, ptr %driver_flags.i118, align 1
  br label %done

if.end54:                                         ; preds = %if.end45
  %sub = sub i32 %end.0, %start.0
  %add = add i32 %sub, 1
  %57 = ptrtoint ptr %buf.addr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buf.addr, align 4
  %tobool55.not = icmp eq ptr %58, null
  br i1 %tobool55.not, label %if.end54.if.end62_crit_edge, label %if.then56

if.end54.if.end62_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then56:                                        ; preds = %if.end54
  %59 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len, align 4
  %add.ptr = getelementptr i8, ptr %58, i32 %60
  %61 = ptrtoint ptr %buf.addr to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr, ptr %buf.addr, align 4
  %hw57 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %62 = ptrtoint ptr %hw57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw57, align 4
  %call = call i32 @qla24xx_dump_ram(ptr noundef %63, i32 noundef %start.0, ptr noundef %add.ptr, i32 noundef %add, ptr noundef nonnull %buf.addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp58.not = icmp eq i32 %call, 0
  br i1 %cmp58.not, label %if.then56.if.end62_crit_edge, label %if.then60

if.then56.if.end62_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then60:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %vha, i32 noundef 65535, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t262, i32 noundef %conv, i32 noundef %start.0, i32 noundef %end.0) #7
  br label %cleanup

if.end62:                                         ; preds = %if.then56.if.end62_crit_edge, %if.end54.if.end62_crit_edge
  %mul = shl i32 %add, 2
  %64 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len, align 4
  %add63 = add i32 %65, %mul
  store i32 %add63, ptr %len, align 4
  br label %done

done:                                             ; preds = %if.end62, %if.then.i119, %if.then53.done_crit_edge, %if.then.i, %if.else40.done_crit_edge
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %66 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %size.i, align 1
  %68 = call i32 @llvm.bswap.i32(i32 %67) #7
  %add.ptr.i = getelementptr i8, ptr %ent, i32 %68
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then60
  %retval.0 = phi ptr [ %add.ptr.i, %done ], [ inttoptr (i32 -1 to ptr), %if.then60 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t263(ptr noundef %vha, ptr noundef %ent, ptr noundef writeonly %buf, ptr noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %queue_type = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %queue_type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %queue_type, align 1
  %conv = zext i8 %2 to i32
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 98304, ptr noundef %vha, i32 noundef 53767, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t263, i32 noundef %conv, i32 noundef %4) #7
  %5 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %2, label %if.else55 [
    i8 1, label %for.cond.preheader
    i8 2, label %for.cond22.preheader
  ]

for.cond22.preheader:                             ; preds = %entry
  %hw23 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %6 = ptrtoint ptr %hw23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw23, align 4
  %max_rsp_queues234 = getelementptr inbounds %struct.qla_hw_data, ptr %7, i32 0, i32 31
  %8 = ptrtoint ptr %max_rsp_queues234 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max_rsp_queues234, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp25236.not = icmp eq i8 %9, 0
  br i1 %cmp25236.not, label %for.cond22.preheader.if.end77_crit_edge, label %for.body27.lr.ph

for.cond22.preheader.if.end77_crit_edge:          ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

for.body27.lr.ph:                                 ; preds = %for.cond22.preheader
  %tobool32.not = icmp eq ptr %buf, null
  br label %for.body27

for.cond.preheader:                               ; preds = %entry
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %max_req_queues241 = getelementptr inbounds %struct.qla_hw_data, ptr %11, i32 0, i32 30
  %12 = ptrtoint ptr %max_req_queues241 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max_req_queues241, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp3243.not = icmp eq i8 %13, 0
  br i1 %cmp3243.not, label %for.cond.preheader.if.end77_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end77_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool6.not = icmp eq ptr %buf, null
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %14 = phi ptr [ %11, %for.body.lr.ph ], [ %39, %if.end.for.body_crit_edge ]
  %i.0245 = phi i32 [ 0, %for.body.lr.ph ], [ %inc18, %if.end.for.body_crit_edge ]
  %count.0244 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1, %if.end.for.body_crit_edge ]
  %req_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %req_q_map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req_q_map, align 4
  %arrayidx = getelementptr ptr, ptr %16, i32 %i.0245
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %18, null
  %tobool.not.not = xor i1 %tobool.not, true
  %or.cond = or i1 %tobool6.not, %tobool.not.not
  br i1 %or.cond, label %if.then7, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then7:                                         ; preds = %for.body
  br i1 %tobool.not, label %if.then7.cond.end_crit_edge, label %cond.true

if.then7.cond.end_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %length9 = getelementptr inbounds %struct.req_que, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %length9 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %length9, align 2
  %conv10 = zext i16 %20 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then7.cond.end_crit_edge
  %cond = phi i32 [ %conv10, %cond.true ], [ 2048, %if.then7.cond.end_crit_edge ]
  br i1 %tobool6.not, label %qla27xx_insert16.exit.thread, label %if.then.i154

qla27xx_insert16.exit.thread:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %add.i206 = add i32 %22, 2
  store i32 %add.i206, ptr %len, align 4
  br label %qla27xx_insert16.exit156

if.then.i154:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv11 = trunc i32 %i.0245 to i16
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %24
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv11) #7
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %add.ptr.i, align 2
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %add.i = add i32 %28, 2
  store i32 %add.i, ptr %len, align 4
  %conv12 = trunc i32 %cond to i16
  %add.ptr.i153 = getelementptr i8, ptr %buf, i32 %add.i
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv12) #7
  %30 = ptrtoint ptr %add.ptr.i153 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %add.ptr.i153, align 2
  br label %qla27xx_insert16.exit156

qla27xx_insert16.exit156:                         ; preds = %if.then.i154, %qla27xx_insert16.exit.thread
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %add.i155 = add i32 %32, 2
  store i32 %add.i155, ptr %len, align 4
  br i1 %tobool.not, label %cond.end16.thread, label %cond.end16

cond.end16.thread:                                ; preds = %qla27xx_insert16.exit156
  call void @__sanitizer_cov_trace_pc() #9
  %mul209 = shl nuw nsw i32 %cond, 6
  br label %qla27xx_insertbuf.exit

cond.end16:                                       ; preds = %qla27xx_insert16.exit156
  %ring = getelementptr inbounds %struct.req_que, ptr %18, i32 0, i32 1
  %33 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ring, align 4
  %mul = shl nuw nsw i32 %cond, 6
  %tobool1.not.i = icmp eq ptr %34, null
  %or.cond.i = or i1 %tobool6.not, %tobool1.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool3.not.i = icmp eq i32 %cond, 0
  %or.cond10.i = or i1 %tobool3.not.i, %or.cond.i
  br i1 %or.cond10.i, label %cond.end16.qla27xx_insertbuf.exit_crit_edge, label %if.then.i159

cond.end16.qla27xx_insertbuf.exit_crit_edge:      ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_insertbuf.exit

if.then.i159:                                     ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i158 = getelementptr i8, ptr %buf, i32 %add.i155
  %35 = call ptr @memcpy(ptr %add.ptr.i158, ptr %34, i32 %mul)
  br label %qla27xx_insertbuf.exit

qla27xx_insertbuf.exit:                           ; preds = %if.then.i159, %cond.end16.qla27xx_insertbuf.exit_crit_edge, %cond.end16.thread
  %mul214 = phi i32 [ %mul209, %cond.end16.thread ], [ %mul, %cond.end16.qla27xx_insertbuf.exit_crit_edge ], [ %mul, %if.then.i159 ]
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %add.i160 = add i32 %37, %mul214
  store i32 %add.i160, ptr %len, align 4
  %inc = add i32 %count.0244, 1
  br label %if.end

if.end:                                           ; preds = %qla27xx_insertbuf.exit, %for.body.if.end_crit_edge
  %count.1 = phi i32 [ %inc, %qla27xx_insertbuf.exit ], [ %count.0244, %for.body.if.end_crit_edge ]
  %inc18 = add nuw nsw i32 %i.0245, 1
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 4
  %max_req_queues = getelementptr inbounds %struct.qla_hw_data, ptr %39, i32 0, i32 30
  %40 = ptrtoint ptr %max_req_queues to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %max_req_queues, align 8
  %conv2 = zext i8 %41 to i32
  %cmp3 = icmp ult i32 %inc18, %conv2
  br i1 %cmp3, label %if.end.for.body_crit_edge, label %if.end.if.end77_crit_edge

if.end.if.end77_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body27:                                       ; preds = %if.end51.for.body27_crit_edge, %for.body27.lr.ph
  %42 = phi ptr [ %7, %for.body27.lr.ph ], [ %67, %if.end51.for.body27_crit_edge ]
  %i.1238 = phi i32 [ 0, %for.body27.lr.ph ], [ %inc53, %if.end51.for.body27_crit_edge ]
  %count.2237 = phi i32 [ 0, %for.body27.lr.ph ], [ %count.3, %if.end51.for.body27_crit_edge ]
  %rsp_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %42, i32 0, i32 25
  %43 = ptrtoint ptr %rsp_q_map to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rsp_q_map, align 16
  %arrayidx29 = getelementptr ptr, ptr %44, i32 %i.1238
  %45 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx29, align 4
  %tobool30.not = icmp eq ptr %46, null
  %tobool30.not.not = xor i1 %tobool30.not, true
  %or.cond150 = or i1 %tobool32.not, %tobool30.not.not
  br i1 %or.cond150, label %if.then33, label %for.body27.if.end51_crit_edge

for.body27.if.end51_crit_edge:                    ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then33:                                        ; preds = %for.body27
  br i1 %tobool30.not, label %if.then33.cond.end39_crit_edge, label %cond.true35

if.then33.cond.end39_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end39

cond.true35:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %length36 = getelementptr inbounds %struct.rsp_que, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %length36 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %length36, align 4
  %conv37 = zext i16 %48 to i32
  br label %cond.end39

cond.end39:                                       ; preds = %cond.true35, %if.then33.cond.end39_crit_edge
  %cond40 = phi i32 [ %conv37, %cond.true35 ], [ 128, %if.then33.cond.end39_crit_edge ]
  br i1 %tobool32.not, label %qla27xx_insert16.exit165.thread, label %if.then.i168

qla27xx_insert16.exit165.thread:                  ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len, align 4
  %add.i164215 = add i32 %50, 2
  store i32 %add.i164215, ptr %len, align 4
  br label %qla27xx_insert16.exit170

if.then.i168:                                     ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #9
  %conv41 = trunc i32 %i.1238 to i16
  %51 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len, align 4
  %add.ptr.i162 = getelementptr i8, ptr %buf, i32 %52
  %53 = tail call i16 @llvm.bswap.i16(i16 %conv41) #7
  %54 = ptrtoint ptr %add.ptr.i162 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %add.ptr.i162, align 2
  %55 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len, align 4
  %add.i164 = add i32 %56, 2
  store i32 %add.i164, ptr %len, align 4
  %conv42 = trunc i32 %cond40 to i16
  %add.ptr.i167 = getelementptr i8, ptr %buf, i32 %add.i164
  %57 = tail call i16 @llvm.bswap.i16(i16 %conv42) #7
  %58 = ptrtoint ptr %add.ptr.i167 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %add.ptr.i167, align 2
  br label %qla27xx_insert16.exit170

qla27xx_insert16.exit170:                         ; preds = %if.then.i168, %qla27xx_insert16.exit165.thread
  %59 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len, align 4
  %add.i169 = add i32 %60, 2
  store i32 %add.i169, ptr %len, align 4
  br i1 %tobool30.not, label %cond.end47.thread, label %cond.end47

cond.end47.thread:                                ; preds = %qla27xx_insert16.exit170
  call void @__sanitizer_cov_trace_pc() #9
  %mul49218 = shl nuw nsw i32 %cond40, 6
  br label %qla27xx_insertbuf.exit179

cond.end47:                                       ; preds = %qla27xx_insert16.exit170
  %ring45 = getelementptr inbounds %struct.rsp_que, ptr %46, i32 0, i32 1
  %61 = ptrtoint ptr %ring45 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ring45, align 4
  %mul49 = shl nuw nsw i32 %cond40, 6
  %tobool1.not.i172 = icmp eq ptr %62, null
  %or.cond.i173 = or i1 %tobool32.not, %tobool1.not.i172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond40)
  %tobool3.not.i174 = icmp eq i32 %cond40, 0
  %or.cond10.i175 = or i1 %tobool3.not.i174, %or.cond.i173
  br i1 %or.cond10.i175, label %cond.end47.qla27xx_insertbuf.exit179_crit_edge, label %if.then.i177

cond.end47.qla27xx_insertbuf.exit179_crit_edge:   ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_insertbuf.exit179

if.then.i177:                                     ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i176 = getelementptr i8, ptr %buf, i32 %add.i169
  %63 = call ptr @memcpy(ptr %add.ptr.i176, ptr %62, i32 %mul49)
  br label %qla27xx_insertbuf.exit179

qla27xx_insertbuf.exit179:                        ; preds = %if.then.i177, %cond.end47.qla27xx_insertbuf.exit179_crit_edge, %cond.end47.thread
  %mul49223 = phi i32 [ %mul49218, %cond.end47.thread ], [ %mul49, %cond.end47.qla27xx_insertbuf.exit179_crit_edge ], [ %mul49, %if.then.i177 ]
  %64 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len, align 4
  %add.i178 = add i32 %65, %mul49223
  store i32 %add.i178, ptr %len, align 4
  %inc50 = add i32 %count.2237, 1
  br label %if.end51

if.end51:                                         ; preds = %qla27xx_insertbuf.exit179, %for.body27.if.end51_crit_edge
  %count.3 = phi i32 [ %inc50, %qla27xx_insertbuf.exit179 ], [ %count.2237, %for.body27.if.end51_crit_edge ]
  %inc53 = add nuw nsw i32 %i.1238, 1
  %66 = ptrtoint ptr %hw23 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw23, align 4
  %max_rsp_queues = getelementptr inbounds %struct.qla_hw_data, ptr %67, i32 0, i32 31
  %68 = ptrtoint ptr %max_rsp_queues to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %max_rsp_queues, align 1
  %conv24 = zext i8 %69 to i32
  %cmp25 = icmp ult i32 %inc53, %conv24
  br i1 %cmp25, label %if.end51.for.body27_crit_edge, label %if.end51.if.end77_crit_edge

if.end51.if.end77_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.end51.for.body27_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body27

if.else55:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2x_ini_mode to i32))
  %70 = load i32, ptr @ql2x_ini_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp56.not = icmp eq i32 %70, 2
  br i1 %cmp56.not, label %if.else55.if.else74_crit_edge, label %land.lhs.true

if.else55.if.else74_crit_edge:                    ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else74

land.lhs.true:                                    ; preds = %if.else55
  %71 = ptrtoint ptr %queue_type to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %queue_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %72)
  %cmp60 = icmp eq i8 %72, 3
  br i1 %cmp60, label %if.then62, label %land.lhs.true.if.else74_crit_edge

land.lhs.true.if.else74_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else74

if.then62:                                        ; preds = %land.lhs.true
  %hw63 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %73 = ptrtoint ptr %hw63 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw63, align 4
  %atio_ring = getelementptr inbounds %struct.qla_hw_data, ptr %74, i32 0, i32 281, i32 2
  %75 = ptrtoint ptr %atio_ring to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %atio_ring, align 8
  %tobool64.not = icmp ne ptr %76, null
  %tobool66.not = icmp eq ptr %buf, null
  %or.cond151 = or i1 %tobool66.not, %tobool64.not
  br i1 %or.cond151, label %if.then67, label %if.then62.qla27xx_skip_entry.exit204_crit_edge

if.then62.qla27xx_skip_entry.exit204_crit_edge:   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_skip_entry.exit204

if.then67:                                        ; preds = %if.then62
  %atio_q_length = getelementptr inbounds %struct.qla_hw_data, ptr %74, i32 0, i32 281, i32 5
  %77 = ptrtoint ptr %atio_q_length to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %atio_q_length, align 2
  %conv69 = zext i16 %78 to i32
  %79 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len, align 4
  br i1 %tobool66.not, label %qla27xx_insert16.exit184.thread, label %if.then.i187

qla27xx_insert16.exit184.thread:                  ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %add.i183224 = add i32 %80, 2
  %81 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add.i183224, ptr %len, align 4
  br label %qla27xx_insert16.exit189

if.then.i187:                                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i181 = getelementptr i8, ptr %buf, i32 %80
  %82 = ptrtoint ptr %add.ptr.i181 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %add.ptr.i181, align 2
  %83 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len, align 4
  %add.i183 = add i32 %84, 2
  store i32 %add.i183, ptr %len, align 4
  %add.ptr.i186 = getelementptr i8, ptr %buf, i32 %add.i183
  %85 = tail call i16 @llvm.bswap.i16(i16 %78) #7
  %86 = ptrtoint ptr %add.ptr.i186 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %add.ptr.i186, align 2
  br label %qla27xx_insert16.exit189

qla27xx_insert16.exit189:                         ; preds = %if.then.i187, %qla27xx_insert16.exit184.thread
  %87 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len, align 4
  %add.i188 = add i32 %88, 2
  store i32 %add.i188, ptr %len, align 4
  %mul71 = shl nuw nsw i32 %conv69, 6
  %tobool1.not.i191 = icmp eq ptr %76, null
  %or.cond.i192 = or i1 %tobool66.not, %tobool1.not.i191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool3.not.i193 = icmp eq i16 %78, 0
  %or.cond10.i194 = or i1 %or.cond.i192, %tobool3.not.i193
  br i1 %or.cond10.i194, label %if.end77.thread, label %if.end77.thread.thread

if.end77.thread.thread:                           ; preds = %qla27xx_insert16.exit189
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i195 = getelementptr i8, ptr %buf, i32 %add.i188
  %89 = call ptr @memcpy(ptr %add.ptr.i195, ptr %76, i32 %mul71)
  %90 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len, align 4
  %add.i197256 = add i32 %91, %mul71
  store i32 %add.i197256, ptr %len, align 4
  br label %if.then81

if.else74:                                        ; preds = %land.lhs.true.if.else74_crit_edge, %if.else55.if.else74_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53286, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t263, i32 noundef %conv) #7
  %tobool.not.i199 = icmp eq ptr %buf, null
  br i1 %tobool.not.i199, label %if.else74.if.end84_crit_edge, label %if.then.i200

if.else74.if.end84_crit_edge:                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then.i200:                                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #9
  %driver_flags.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 5
  %92 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %driver_flags.i, align 1
  %94 = or i8 %93, -128
  store i8 %94, ptr %driver_flags.i, align 1
  br label %qla27xx_skip_entry.exit204

if.end77:                                         ; preds = %if.end51.if.end77_crit_edge, %if.end.if.end77_crit_edge, %for.cond.preheader.if.end77_crit_edge, %for.cond22.preheader.if.end77_crit_edge
  %count.5 = phi i32 [ 0, %for.cond.preheader.if.end77_crit_edge ], [ 0, %for.cond22.preheader.if.end77_crit_edge ], [ %count.1, %if.end.if.end77_crit_edge ], [ %count.3, %if.end51.if.end77_crit_edge ]
  %tobool78.not = icmp eq ptr %buf, null
  br i1 %tobool78.not, label %if.end77.if.end84_crit_edge, label %if.then79

if.end77.if.end84_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.end77.thread:                                  ; preds = %qla27xx_insert16.exit189
  %95 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len, align 4
  %add.i197 = add i32 %96, %mul71
  store i32 %add.i197, ptr %len, align 4
  %tobool78.not251 = icmp eq ptr %buf, null
  br i1 %tobool78.not251, label %if.end77.thread.if.end84_crit_edge, label %if.end77.thread.if.then81_crit_edge

if.end77.thread.if.then81_crit_edge:              ; preds = %if.end77.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then81

if.end77.thread.if.end84_crit_edge:               ; preds = %if.end77.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.5)
  %tobool80.not = icmp eq i32 %count.5, 0
  br i1 %tobool80.not, label %if.then79.qla27xx_skip_entry.exit204_crit_edge, label %if.then79.if.then81_crit_edge

if.then79.if.then81_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then81

if.then79.qla27xx_skip_entry.exit204_crit_edge:   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_skip_entry.exit204

if.then81:                                        ; preds = %if.then79.if.then81_crit_edge, %if.end77.thread.if.then81_crit_edge, %if.end77.thread.thread
  %count.5252255 = phi i32 [ %count.5, %if.then79.if.then81_crit_edge ], [ 1, %if.end77.thread.thread ], [ 1, %if.end77.thread.if.then81_crit_edge ]
  %97 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %97, i32 4)
  store i32 %count.5252255, ptr %0, align 1
  br label %if.end84

qla27xx_skip_entry.exit204:                       ; preds = %if.then79.qla27xx_skip_entry.exit204_crit_edge, %if.then.i200, %if.then62.qla27xx_skip_entry.exit204_crit_edge
  %driver_flags.i202 = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 5
  %98 = ptrtoint ptr %driver_flags.i202 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %driver_flags.i202, align 1
  %100 = or i8 %99, -128
  store i8 %100, ptr %driver_flags.i202, align 1
  br label %if.end84

if.end84:                                         ; preds = %qla27xx_skip_entry.exit204, %if.then81, %if.end77.thread.if.end84_crit_edge, %if.end77.if.end84_crit_edge, %if.else74.if.end84_crit_edge
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %101 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %size.i, align 1
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #7
  %add.ptr.i205 = getelementptr i8, ptr %ent, i32 %103
  ret ptr %add.ptr.i205
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t264(ptr noundef %vha, ptr noundef %ent, ptr noundef writeonly %buf, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53768, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t264, i32 noundef %1) #7
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %fce = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 186
  %4 = ptrtoint ptr %fce to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fce, align 32
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %buf, null
  br i1 %tobool1.not, label %if.then.qla27xx_insertbuf.exit_crit_edge, label %if.end

if.then.qla27xx_insertbuf.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_insertbuf.exit

if.end:                                           ; preds = %if.then
  %6 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 65536, ptr %6, align 1
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %fce_wr = getelementptr inbounds %struct.qla_hw_data, ptr %9, i32 0, i32 189
  %10 = ptrtoint ptr %fce_wr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %fce_wr, align 8
  %write_pointer = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %write_pointer to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %write_pointer, align 1
  %13 = load ptr, ptr %hw, align 4
  %fce_dma = getelementptr inbounds %struct.qla_hw_data, ptr %13, i32 0, i32 185
  %14 = ptrtoint ptr %fce_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fce_dma, align 4
  %conv = zext i32 %15 to i64
  %base_pointer = getelementptr inbounds %struct.anon.183, ptr %6, i32 0, i32 2
  %16 = ptrtoint ptr %base_pointer to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %conv, ptr %base_pointer, align 1
  %17 = load ptr, ptr %hw, align 4
  %fce_mb = getelementptr inbounds %struct.qla_hw_data, ptr %17, i32 0, i32 188
  %18 = ptrtoint ptr %fce_mb to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %fce_mb, align 8
  %conv6 = zext i16 %19 to i32
  %fce_enable_mb0 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 1, i32 4
  %20 = ptrtoint ptr %fce_enable_mb0 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %conv6, ptr %fce_enable_mb0, align 1
  %21 = load ptr, ptr %hw, align 4
  %arrayidx9 = getelementptr %struct.qla_hw_data, ptr %21, i32 0, i32 188, i32 2
  %22 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx9, align 4
  %conv10 = zext i16 %23 to i32
  %fce_enable_mb2 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 1, i32 8
  %24 = ptrtoint ptr %fce_enable_mb2 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %conv10, ptr %fce_enable_mb2, align 1
  %25 = load ptr, ptr %hw, align 4
  %arrayidx13 = getelementptr %struct.qla_hw_data, ptr %25, i32 0, i32 188, i32 3
  %26 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %27 to i32
  %fce_enable_mb3 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 1, i32 12
  %28 = ptrtoint ptr %fce_enable_mb3 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %conv14, ptr %fce_enable_mb3, align 1
  %29 = load ptr, ptr %hw, align 4
  %arrayidx17 = getelementptr %struct.qla_hw_data, ptr %29, i32 0, i32 188, i32 4
  %30 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx17, align 8
  %conv18 = zext i16 %31 to i32
  %fce_enable_mb4 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 1, i32 16
  %32 = ptrtoint ptr %fce_enable_mb4 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %conv18, ptr %fce_enable_mb4, align 1
  %33 = load ptr, ptr %hw, align 4
  %arrayidx21 = getelementptr %struct.qla_hw_data, ptr %33, i32 0, i32 188, i32 5
  %34 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %35 to i32
  %fce_enable_mb5 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 1, i32 20
  %36 = ptrtoint ptr %fce_enable_mb5 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %conv22, ptr %fce_enable_mb5, align 1
  %37 = load ptr, ptr %hw, align 4
  %arrayidx25 = getelementptr %struct.qla_hw_data, ptr %37, i32 0, i32 188, i32 6
  %38 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx25, align 4
  %conv26 = zext i16 %39 to i32
  %fce_enable_mb6 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 1, i32 24
  %40 = ptrtoint ptr %fce_enable_mb6 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %conv26, ptr %fce_enable_mb6, align 1
  %41 = load ptr, ptr %hw, align 4
  %fce28 = getelementptr inbounds %struct.qla_hw_data, ptr %41, i32 0, i32 186
  %42 = ptrtoint ptr %fce28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fce28, align 32
  %tobool1.not.i = icmp eq ptr %43, null
  br i1 %tobool1.not.i, label %if.end.qla27xx_insertbuf.exit_crit_edge, label %if.then.i

if.end.qla27xx_insertbuf.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_insertbuf.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %45
  %46 = call ptr @memcpy(ptr %add.ptr.i, ptr %43, i32 65536)
  br label %qla27xx_insertbuf.exit

qla27xx_insertbuf.exit:                           ; preds = %if.then.i, %if.end.qla27xx_insertbuf.exit_crit_edge, %if.then.qla27xx_insertbuf.exit_crit_edge
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  %add.i = add i32 %48, 65536
  store i32 %add.i, ptr %len, align 4
  br label %if.end29

if.else:                                          ; preds = %entry
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53287, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t264) #7
  %tobool.not.i54 = icmp eq ptr %buf, null
  br i1 %tobool.not.i54, label %if.else.if.end29_crit_edge, label %if.then.i55

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then.i55:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %driver_flags.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 5
  %49 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %driver_flags.i, align 1
  %51 = or i8 %50, -128
  store i8 %51, ptr %driver_flags.i, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then.i55, %if.else.if.end29_crit_edge, %qla27xx_insertbuf.exit
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %52 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %size.i, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #7
  %add.ptr.i56 = getelementptr i8, ptr %ent, i32 %54
  ret ptr %add.ptr.i56
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t265(ptr noundef %vha, ptr noundef readonly %ent, ptr noundef readnone %buf, ptr nocapture noundef readonly %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 98304, ptr noundef %vha, i32 noundef 53769, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t265, i32 noundef %1) #7
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 4
  tail call void @qla24xx_pause_risc(ptr noundef %5, ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %size.i, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %add.ptr.i = getelementptr i8, ptr %ent, i32 %8
  ret ptr %add.ptr.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t266(ptr noundef %vha, ptr noundef readonly %ent, ptr noundef readnone %buf, ptr nocapture noundef readonly %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53770, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t266, i32 noundef %1) #7
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %if.then

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then:                                          ; preds = %entry
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %call = tail call i32 @qla24xx_soft_reset(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.then.if.end37_crit_edge, label %land.rhs

if.then.if.end37_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

land.rhs:                                         ; preds = %if.then
  %.b42 = load i1, ptr @qla27xx_fwdt_entry_t266.__already_done, align 1
  br i1 %.b42, label %land.rhs.if.end37_crit_edge, label %if.then8, !prof !190

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @qla27xx_fwdt_entry_t266.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 439, i32 noundef 9, ptr noundef null) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then8, %land.rhs.if.end37_crit_edge, %if.then.if.end37_crit_edge, %entry.if.end37_crit_edge
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %size.i, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  %add.ptr.i = getelementptr i8, ptr %ent, i32 %6
  ret ptr %add.ptr.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t267(ptr noundef %vha, ptr noundef readonly %ent, ptr noundef readnone %buf, ptr nocapture noundef readonly %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %0, align 1
  %data1 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %data1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %data1, align 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53771, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t267, i32 noundef %6) #7
  %tobool.not.i = icmp eq ptr %buf, null
  br i1 %tobool.not.i, label %entry.qla27xx_write_reg.exit_crit_edge, label %if.then.i

entry.qla27xx_write_reg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_write_reg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase, align 4
  %conv = zext i8 %2 to i32
  %add.ptr.i = getelementptr i8, ptr %10, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !194
  br label %qla27xx_write_reg.exit

qla27xx_write_reg.exit:                           ; preds = %if.then.i, %entry.qla27xx_write_reg.exit_crit_edge
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %size.i, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %add.ptr.i5 = getelementptr i8, ptr %ent, i32 %13
  ret ptr %add.ptr.i5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t268(ptr noundef %vha, ptr noundef %ent, ptr noundef writeonly %buf, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %0, align 1
  %conv = zext i8 %2 to i32
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53772, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t268, i32 noundef %conv, i32 noundef %4) #7
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %0, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %6, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb10
    i8 3, label %sw.bb28
    i8 4, label %entry.sw.bb46_crit_edge
    i8 5, label %entry.sw.bb46_crit_edge131
  ]

entry.sw.bb46_crit_edge131:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb46

entry.sw.bb46_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb46

sw.bb:                                            ; preds = %entry
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %eft = getelementptr inbounds %struct.qla_hw_data, ptr %9, i32 0, i32 175
  %10 = ptrtoint ptr %eft to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eft, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %tobool3.not = icmp eq ptr %buf, null
  br i1 %tobool3.not, label %if.then.qla27xx_insertbuf.exit_crit_edge, label %if.end

if.then.qla27xx_insertbuf.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_insertbuf.exit

if.end:                                           ; preds = %if.then
  %buf_size = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %buf_size to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 65536, ptr %buf_size, align 1
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %eft_dma = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 174
  %15 = ptrtoint ptr %eft_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %eft_dma, align 16
  %conv6 = zext i32 %16 to i64
  %start_addr = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %start_addr to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %conv6, ptr %start_addr, align 1
  %18 = load ptr, ptr %hw, align 4
  %eft8 = getelementptr inbounds %struct.qla_hw_data, ptr %18, i32 0, i32 175
  %19 = ptrtoint ptr %eft8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eft8, align 4
  %tobool1.not.i = icmp eq ptr %20, null
  br i1 %tobool1.not.i, label %if.end.qla27xx_insertbuf.exit_crit_edge, label %if.then.i

if.end.qla27xx_insertbuf.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_insertbuf.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %22
  %23 = call ptr @memcpy(ptr %add.ptr.i, ptr %20, i32 65536)
  br label %qla27xx_insertbuf.exit

qla27xx_insertbuf.exit:                           ; preds = %if.then.i, %if.end.qla27xx_insertbuf.exit_crit_edge, %if.then.qla27xx_insertbuf.exit_crit_edge
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %add.i = add i32 %25, 65536
  store i32 %add.i, ptr %len, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53288, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t268) #7
  %tobool.not.i93 = icmp eq ptr %buf, null
  br i1 %tobool.not.i93, label %if.else.sw.epilog_crit_edge, label %if.then.i94

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i94:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %driver_flags.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 5
  %26 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %driver_flags.i, align 1
  %28 = or i8 %27, -128
  store i8 %28, ptr %driver_flags.i, align 1
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %hw11 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %29 = ptrtoint ptr %hw11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw11, align 4
  %exchoffld_buf = getelementptr inbounds %struct.qla_hw_data, ptr %30, i32 0, i32 113
  %31 = ptrtoint ptr %exchoffld_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %exchoffld_buf, align 8
  %tobool12.not = icmp eq ptr %32, null
  br i1 %tobool12.not, label %if.else26, label %if.then13

if.then13:                                        ; preds = %sw.bb10
  %tobool14.not = icmp eq ptr %buf, null
  br i1 %tobool14.not, label %if.then13.if.end21_crit_edge, label %if.then15

if.then13.if.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %exchoffld_size = getelementptr inbounds %struct.qla_hw_data, ptr %30, i32 0, i32 115
  %33 = ptrtoint ptr %exchoffld_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %exchoffld_size, align 32
  %buf_size17 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %buf_size17 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %buf_size17, align 1
  %36 = ptrtoint ptr %hw11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw11, align 4
  %exchoffld_buf_dma = getelementptr inbounds %struct.qla_hw_data, ptr %37, i32 0, i32 114
  %38 = ptrtoint ptr %exchoffld_buf_dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %exchoffld_buf_dma, align 4
  %conv19 = zext i32 %39 to i64
  %start_addr20 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 3
  %40 = ptrtoint ptr %start_addr20 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %conv19, ptr %start_addr20, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.then13.if.end21_crit_edge
  %41 = ptrtoint ptr %hw11 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw11, align 4
  %exchoffld_buf23 = getelementptr inbounds %struct.qla_hw_data, ptr %42, i32 0, i32 113
  %43 = ptrtoint ptr %exchoffld_buf23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %exchoffld_buf23, align 8
  %exchoffld_size25 = getelementptr inbounds %struct.qla_hw_data, ptr %42, i32 0, i32 115
  %45 = ptrtoint ptr %exchoffld_size25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %exchoffld_size25, align 32
  %tobool1.not.i96 = icmp eq ptr %44, null
  %or.cond.i97 = or i1 %tobool14.not, %tobool1.not.i96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool3.not.i = icmp eq i32 %46, 0
  %or.cond10.i = or i1 %tobool3.not.i, %or.cond.i97
  br i1 %or.cond10.i, label %if.end21.qla27xx_insertbuf.exit101_crit_edge, label %if.then.i99

if.end21.qla27xx_insertbuf.exit101_crit_edge:     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_insertbuf.exit101

if.then.i99:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  %add.ptr.i98 = getelementptr i8, ptr %buf, i32 %48
  %49 = call ptr @memcpy(ptr %add.ptr.i98, ptr %44, i32 %46)
  br label %qla27xx_insertbuf.exit101

qla27xx_insertbuf.exit101:                        ; preds = %if.then.i99, %if.end21.qla27xx_insertbuf.exit101_crit_edge
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  %add.i100 = add i32 %51, %46
  store i32 %add.i100, ptr %len, align 4
  br label %sw.epilog

if.else26:                                        ; preds = %sw.bb10
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53288, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t268) #7
  %tobool.not.i102 = icmp eq ptr %buf, null
  br i1 %tobool.not.i102, label %if.else26.sw.epilog_crit_edge, label %if.then.i104

if.else26.sw.epilog_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i104:                                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  %driver_flags.i103 = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 5
  %52 = ptrtoint ptr %driver_flags.i103 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %driver_flags.i103, align 1
  %54 = or i8 %53, -128
  store i8 %54, ptr %driver_flags.i103, align 1
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  %hw29 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %55 = ptrtoint ptr %hw29 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw29, align 4
  %exlogin_buf = getelementptr inbounds %struct.qla_hw_data, ptr %56, i32 0, i32 110
  %57 = ptrtoint ptr %exlogin_buf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %exlogin_buf, align 4
  %tobool30.not = icmp eq ptr %58, null
  br i1 %tobool30.not, label %if.else44, label %if.then31

if.then31:                                        ; preds = %sw.bb28
  %tobool32.not = icmp eq ptr %buf, null
  br i1 %tobool32.not, label %if.then31.if.end39_crit_edge, label %if.then33

if.then31.if.end39_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %exlogin_size = getelementptr inbounds %struct.qla_hw_data, ptr %56, i32 0, i32 112
  %59 = ptrtoint ptr %exlogin_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %exlogin_size, align 4
  %buf_size35 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %61 = ptrtoint ptr %buf_size35 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %60, ptr %buf_size35, align 1
  %62 = ptrtoint ptr %hw29 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw29, align 4
  %exlogin_buf_dma = getelementptr inbounds %struct.qla_hw_data, ptr %63, i32 0, i32 111
  %64 = ptrtoint ptr %exlogin_buf_dma to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %exlogin_buf_dma, align 16
  %conv37 = zext i32 %65 to i64
  %start_addr38 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 3
  %66 = ptrtoint ptr %start_addr38 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 %conv37, ptr %start_addr38, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.then31.if.end39_crit_edge
  %67 = ptrtoint ptr %hw29 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw29, align 4
  %exlogin_buf41 = getelementptr inbounds %struct.qla_hw_data, ptr %68, i32 0, i32 110
  %69 = ptrtoint ptr %exlogin_buf41 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %exlogin_buf41, align 4
  %exlogin_size43 = getelementptr inbounds %struct.qla_hw_data, ptr %68, i32 0, i32 112
  %71 = ptrtoint ptr %exlogin_size43 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %exlogin_size43, align 4
  %tobool1.not.i107 = icmp eq ptr %70, null
  %or.cond.i108 = or i1 %tobool32.not, %tobool1.not.i107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool3.not.i109 = icmp eq i32 %72, 0
  %or.cond10.i110 = or i1 %tobool3.not.i109, %or.cond.i108
  br i1 %or.cond10.i110, label %if.end39.qla27xx_insertbuf.exit114_crit_edge, label %if.then.i112

if.end39.qla27xx_insertbuf.exit114_crit_edge:     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_insertbuf.exit114

if.then.i112:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len, align 4
  %add.ptr.i111 = getelementptr i8, ptr %buf, i32 %74
  %75 = call ptr @memcpy(ptr %add.ptr.i111, ptr %70, i32 %72)
  br label %qla27xx_insertbuf.exit114

qla27xx_insertbuf.exit114:                        ; preds = %if.then.i112, %if.end39.qla27xx_insertbuf.exit114_crit_edge
  %76 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len, align 4
  %add.i113 = add i32 %77, %72
  store i32 %add.i113, ptr %len, align 4
  br label %sw.epilog

if.else44:                                        ; preds = %sw.bb28
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53288, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t268) #7
  %tobool.not.i115 = icmp eq ptr %buf, null
  br i1 %tobool.not.i115, label %if.else44.sw.epilog_crit_edge, label %if.then.i117

if.else44.sw.epilog_crit_edge:                    ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i117:                                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  %driver_flags.i116 = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 5
  %78 = ptrtoint ptr %driver_flags.i116 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %driver_flags.i116, align 1
  %80 = or i8 %79, -128
  store i8 %80, ptr %driver_flags.i116, align 1
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry.sw.bb46_crit_edge, %entry.sw.bb46_crit_edge131
  %tobool.not.i119 = icmp eq ptr %buf, null
  br i1 %tobool.not.i119, label %sw.bb46.sw.epilog_crit_edge, label %if.then.i121

sw.bb46.sw.epilog_crit_edge:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i121:                                     ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #9
  %driver_flags.i120 = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 5
  %81 = ptrtoint ptr %driver_flags.i120 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %driver_flags.i120, align 1
  %83 = or i8 %82, -128
  store i8 %83, ptr %driver_flags.i120, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %conv2 = zext i8 %6 to i32
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 33554432, ptr noundef %vha, i32 noundef 53291, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t268, i32 noundef %conv2) #7
  %tobool.not.i123 = icmp eq ptr %buf, null
  br i1 %tobool.not.i123, label %sw.default.sw.epilog_crit_edge, label %if.then.i125

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i125:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %driver_flags.i124 = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 5
  %84 = ptrtoint ptr %driver_flags.i124 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %driver_flags.i124, align 1
  %86 = or i8 %85, -128
  store i8 %86, ptr %driver_flags.i124, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i125, %sw.default.sw.epilog_crit_edge, %if.then.i121, %sw.bb46.sw.epilog_crit_edge, %if.then.i117, %if.else44.sw.epilog_crit_edge, %qla27xx_insertbuf.exit114, %if.then.i104, %if.else26.sw.epilog_crit_edge, %qla27xx_insertbuf.exit101, %if.then.i94, %if.else.sw.epilog_crit_edge, %qla27xx_insertbuf.exit
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %87 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %size.i, align 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #7
  %add.ptr.i127 = getelementptr i8, ptr %ent, i32 %89
  ret ptr %add.ptr.i127
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t269(ptr noundef %vha, ptr noundef %ent, ptr noundef writeonly %buf, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53773, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t269, i32 noundef %1) #7
  %tobool.not.i = icmp eq ptr %buf, null
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  br i1 %tobool.not.i, label %qla27xx_insert32.exit32.thread, label %if.then

qla27xx_insert32.exit32.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.i3139 = add i32 %3, 20
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add.i3139, ptr %len, align 4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %3
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1431655766, ptr %add.ptr.i, align 4
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %add.i = add i32 %7, 4
  store i32 %add.i, ptr %len, align 4
  %add.ptr.i14 = getelementptr i8, ptr %buf, i32 %add.i
  %8 = ptrtoint ptr %add.ptr.i14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1145324613, ptr %add.ptr.i14, align 4
  %9 = load i32, ptr %len, align 4
  %add.i16 = add i32 %9, 4
  store i32 %add.i16, ptr %len, align 4
  %add.ptr.i19 = getelementptr i8, ptr %buf, i32 %add.i16
  %10 = ptrtoint ptr %add.ptr.i19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -858993460, ptr %add.ptr.i19, align 4
  %11 = load i32, ptr %len, align 4
  %add.i21 = add i32 %11, 4
  store i32 %add.i21, ptr %len, align 4
  %add.ptr.i24 = getelementptr i8, ptr %buf, i32 %add.i21
  %12 = ptrtoint ptr %add.ptr.i24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -572662307, ptr %add.ptr.i24, align 4
  %13 = load i32, ptr %len, align 4
  %add.i26 = add i32 %13, 4
  store i32 %add.i26, ptr %len, align 4
  %add = add i32 %13, 8
  %add.ptr.i29 = getelementptr i8, ptr %buf, i32 %add.i26
  %14 = tail call i32 @llvm.bswap.i32(i32 %add) #7
  %15 = ptrtoint ptr %add.ptr.i29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %add.ptr.i29, align 4
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %add.i31 = add i32 %17, 4
  store i32 %add.i31, ptr %len, align 4
  %18 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 20, ptr %18, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %qla27xx_insert32.exit32.thread
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %size.i, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  %add.ptr.i33 = getelementptr i8, ptr %ent, i32 %22
  ret ptr %add.ptr.i33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t270(ptr noundef %vha, ptr noundef readonly %ent, ptr noundef writeonly %buf, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %0, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %count = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %count, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53774, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t270, i32 noundef %8) #7
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %tobool.not.i = icmp eq ptr %buf, null
  br i1 %tobool.not.i, label %entry.qla27xx_write_reg.exit_crit_edge, label %if.then.i

entry.qla27xx_write_reg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_write_reg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1073741824) #7, !srcloc !194
  br label %qla27xx_write_reg.exit

qla27xx_write_reg.exit:                           ; preds = %if.then.i, %entry.qla27xx_write_reg.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not29 = icmp eq i32 %5, 0
  br i1 %tobool.not29, label %qla27xx_write_reg.exit.while.end_crit_edge, label %qla27xx_write_reg.exit.while.body_crit_edge

qla27xx_write_reg.exit.while.body_crit_edge:      ; preds = %qla27xx_write_reg.exit
  br label %while.body

qla27xx_write_reg.exit.while.end_crit_edge:       ; preds = %qla27xx_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %qla27xx_read_reg.exit.while.body_crit_edge, %qla27xx_write_reg.exit.while.body_crit_edge
  %dwords.032 = phi i32 [ %dec, %qla27xx_read_reg.exit.while.body_crit_edge ], [ %6, %qla27xx_write_reg.exit.while.body_crit_edge ]
  %addr.030 = phi i32 [ %add, %qla27xx_read_reg.exit.while.body_crit_edge ], [ %3, %qla27xx_write_reg.exit.while.body_crit_edge ]
  %dec = add i32 %dwords.032, -1
  br i1 %tobool.not.i, label %qla27xx_insert32.exit.thread, label %if.then.i.i.i

qla27xx_insert32.exit.thread:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %add.i27 = add i32 %14, 4
  store i32 %add.i27, ptr %len, align 4
  br label %qla27xx_read_reg.exit

if.then.i.i.i:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %addr.030, -2147483648
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %iobase3 = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %iobase3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase3, align 4
  %add.ptr.i19 = getelementptr i8, ptr %18, i32 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %19) #7, !srcloc !194
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %add.ptr.i23 = getelementptr i8, ptr %buf, i32 %21
  %22 = tail call i32 @llvm.bswap.i32(i32 %addr.030) #7
  %23 = ptrtoint ptr %add.ptr.i23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %add.ptr.i23, align 4
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %add.i = add i32 %25, 4
  store i32 %add.i, ptr %len, align 4
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %iobase5 = getelementptr inbounds %struct.qla_hw_data, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %iobase5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase5, align 4
  %add.ptr.i25 = getelementptr i8, ptr %29, i32 196
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #7, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %buf, i32 %32
  %33 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %add.ptr.i.i.i, align 4
  br label %qla27xx_read_reg.exit

qla27xx_read_reg.exit:                            ; preds = %if.then.i.i.i, %qla27xx_insert32.exit.thread
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %add.i.i.i = add i32 %35, 4
  store i32 %add.i.i.i, ptr %len, align 4
  %add = add i32 %addr.030, 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %qla27xx_read_reg.exit.while.end_crit_edge, label %qla27xx_read_reg.exit.while.body_crit_edge

qla27xx_read_reg.exit.while.body_crit_edge:       ; preds = %qla27xx_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

qla27xx_read_reg.exit.while.end_crit_edge:        ; preds = %qla27xx_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %qla27xx_read_reg.exit.while.end_crit_edge, %qla27xx_write_reg.exit.while.end_crit_edge
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %36 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %size.i, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  %add.ptr.i26 = getelementptr i8, ptr %ent, i32 %38
  ret ptr %add.ptr.i26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t271(ptr noundef %vha, ptr noundef readonly %ent, ptr noundef readnone %buf, ptr nocapture noundef readonly %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %0, align 1
  %data2 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %data2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %data2, align 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53775, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t271, i32 noundef %6) #7
  %tobool.not.i = icmp eq ptr %buf, null
  br i1 %tobool.not.i, label %entry.qla27xx_write_reg.exit21_crit_edge, label %if.then.i20

entry.qla27xx_write_reg.exit21_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_write_reg.exit21

if.then.i20:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1073741824) #7, !srcloc !194
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %iobase4 = getelementptr inbounds %struct.qla_hw_data, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %iobase4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase4, align 4
  %add.ptr.i15 = getelementptr i8, ptr %14, i32 196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %4) #7, !srcloc !194
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %iobase6 = getelementptr inbounds %struct.qla_hw_data, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %iobase6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase6, align 4
  %add.ptr.i19 = getelementptr i8, ptr %18, i32 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %2) #7, !srcloc !194
  br label %qla27xx_write_reg.exit21

qla27xx_write_reg.exit21:                         ; preds = %if.then.i20, %entry.qla27xx_write_reg.exit21_crit_edge
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %size.i, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %add.ptr.i22 = getelementptr i8, ptr %ent, i32 %21
  ret ptr %add.ptr.i22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t272(ptr noundef %vha, ptr noundef readonly %ent, ptr noundef %buf, ptr nocapture noundef %len) #0 align 64 {
entry:
  %buf.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %buf.addr, align 4
  %1 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %count = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %count, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %1, align 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53776, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t272, i32 noundef %8) #7
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53292, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t272, i32 noundef %9, i32 noundef %4) #7
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %12 = ptrtoint ptr %buf.addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf.addr, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %11
  store ptr %add.ptr, ptr %buf.addr, align 4
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %call = call i32 @qla27xx_dump_mpi_ram(ptr noundef %15, i32 noundef %9, ptr noundef %add.ptr, i32 noundef %4, ptr noundef nonnull %buf.addr) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mul = shl i32 %4, 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %add = add i32 %17, %mul
  store i32 %add, ptr %len, align 4
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %size.i, align 1
  %20 = call i32 @llvm.bswap.i32(i32 %19) #7
  %add.ptr.i = getelementptr i8, ptr %ent, i32 %20
  ret ptr %add.ptr.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t273(ptr noundef %vha, ptr noundef readonly %ent, ptr noundef writeonly %buf, ptr nocapture noundef %len) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %count = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %count, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53777, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t273, i32 noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not22 = icmp eq i32 %2, 0
  br i1 %tobool.not22, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %7 = tail call i32 @llvm.bswap.i32(i32 %2)
  %8 = tail call i32 @llvm.bswap.i32(i32 %4)
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %tobool.not.i = icmp eq ptr %buf, null
  br label %while.body

while.body:                                       ; preds = %qla27xx_insert32.exit18.while.body_crit_edge, %while.body.lr.ph
  %dec25.in = phi i32 [ %7, %while.body.lr.ph ], [ %dec25, %qla27xx_insert32.exit18.while.body_crit_edge ]
  %addr.023 = phi i32 [ %8, %while.body.lr.ph ], [ %add, %qla27xx_insert32.exit18.while.body_crit_edge ]
  %dec25 = add i32 %dec25.in, -1
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %value, align 4
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  %call = call i32 @pci_read_config_dword(ptr noundef %13, i32 noundef %addr.023, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53293, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t273, i32 noundef %addr.023) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  br i1 %tobool.not.i, label %qla27xx_insert32.exit.thread, label %if.then.i16

qla27xx_insert32.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i20 = add i32 %15, 4
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i20, ptr %len, align 4
  br label %qla27xx_insert32.exit18

if.then.i16:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %15
  %17 = call i32 @llvm.bswap.i32(i32 %addr.023) #7
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %add.ptr.i, align 4
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %add.i = add i32 %20, 4
  store i32 %add.i, ptr %len, align 4
  %21 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %value, align 4
  %add.ptr.i15 = getelementptr i8, ptr %buf, i32 %add.i
  %23 = call i32 @llvm.bswap.i32(i32 %22) #7
  %24 = ptrtoint ptr %add.ptr.i15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %add.ptr.i15, align 4
  br label %qla27xx_insert32.exit18

qla27xx_insert32.exit18:                          ; preds = %if.then.i16, %qla27xx_insert32.exit.thread
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %add.i17 = add i32 %26, 4
  store i32 %add.i17, ptr %len, align 4
  %add = add i32 %addr.023, 4
  %tobool.not = icmp eq i32 %dec25, 0
  br i1 %tobool.not, label %qla27xx_insert32.exit18.while.end_crit_edge, label %qla27xx_insert32.exit18.while.body_crit_edge

qla27xx_insert32.exit18.while.body_crit_edge:     ; preds = %qla27xx_insert32.exit18
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

qla27xx_insert32.exit18.while.end_crit_edge:      ; preds = %qla27xx_insert32.exit18
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %qla27xx_insert32.exit18.while.end_crit_edge, %entry.while.end_crit_edge
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %27 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %size.i, align 1
  %29 = call i32 @llvm.bswap.i32(i32 %28) #7
  %add.ptr.i19 = getelementptr i8, ptr %ent, i32 %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret ptr %add.ptr.i19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t274(ptr noundef %vha, ptr noundef %ent, ptr noundef writeonly %buf, ptr noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %queue_type = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %queue_type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %queue_type, align 1
  %conv = zext i8 %2 to i32
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 98304, ptr noundef %vha, i32 noundef 53778, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t274, i32 noundef %conv, i32 noundef %4) #7
  %5 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %2, label %if.else44 [
    i8 1, label %for.cond.preheader
    i8 2, label %for.cond17.preheader
  ]

for.cond17.preheader:                             ; preds = %entry
  %hw18 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %6 = ptrtoint ptr %hw18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw18, align 4
  %max_rsp_queues201 = getelementptr inbounds %struct.qla_hw_data, ptr %7, i32 0, i32 31
  %8 = ptrtoint ptr %max_rsp_queues201 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max_rsp_queues201, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp20203.not = icmp eq i8 %9, 0
  br i1 %cmp20203.not, label %for.cond17.preheader.if.end72_crit_edge, label %for.body22.lr.ph

for.cond17.preheader.if.end72_crit_edge:          ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

for.body22.lr.ph:                                 ; preds = %for.cond17.preheader
  %tobool27.not = icmp eq ptr %buf, null
  br label %for.body22

for.cond.preheader:                               ; preds = %entry
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %max_req_queues208 = getelementptr inbounds %struct.qla_hw_data, ptr %11, i32 0, i32 30
  %12 = ptrtoint ptr %max_req_queues208 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max_req_queues208, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp3210.not = icmp eq i8 %13, 0
  br i1 %cmp3210.not, label %for.cond.preheader.if.end72_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end72_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool6.not = icmp eq ptr %buf, null
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %14 = phi ptr [ %11, %for.body.lr.ph ], [ %39, %if.end.for.body_crit_edge ]
  %count.0214 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1, %if.end.for.body_crit_edge ]
  %i.0211 = phi i32 [ 0, %for.body.lr.ph ], [ %inc13, %if.end.for.body_crit_edge ]
  %req_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %req_q_map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req_q_map, align 4
  %arrayidx = getelementptr ptr, ptr %16, i32 %i.0211
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %18, null
  %tobool.not.not = xor i1 %tobool.not, true
  %or.cond = or i1 %tobool6.not, %tobool.not.not
  br i1 %or.cond, label %if.then7, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then7:                                         ; preds = %for.body
  br i1 %tobool6.not, label %qla27xx_insert16.exit.thread, label %if.then.i145

qla27xx_insert16.exit.thread:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %add.i189 = add i32 %20, 2
  store i32 %add.i189, ptr %len, align 4
  br label %qla27xx_insert16.exit147

if.then.i145:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %conv8 = trunc i32 %i.0211 to i16
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %22
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv8) #7
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %add.ptr.i, align 2
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %add.i = add i32 %26, 2
  store i32 %add.i, ptr %len, align 4
  %add.ptr.i144 = getelementptr i8, ptr %buf, i32 %add.i
  %27 = ptrtoint ptr %add.ptr.i144 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 256, ptr %add.ptr.i144, align 2
  br label %qla27xx_insert16.exit147

qla27xx_insert16.exit147:                         ; preds = %if.then.i145, %qla27xx_insert16.exit.thread
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  %add.i146 = add i32 %29, 2
  store i32 %add.i146, ptr %len, align 4
  br i1 %tobool.not, label %qla27xx_insert16.exit147.cond.end_crit_edge, label %land.lhs.true

qla27xx_insert16.exit147.cond.end_crit_edge:      ; preds = %qla27xx_insert16.exit147
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

land.lhs.true:                                    ; preds = %qla27xx_insert16.exit147
  %out_ptr = getelementptr inbounds %struct.req_que, ptr %18, i32 0, i32 7
  %30 = ptrtoint ptr %out_ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %out_ptr, align 4
  %tobool10.not = icmp eq ptr %31, null
  br i1 %tobool10.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %31, align 2
  %conv12 = zext i16 %33 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %qla27xx_insert16.exit147.cond.end_crit_edge
  %cond = phi i32 [ %conv12, %cond.true ], [ 0, %land.lhs.true.cond.end_crit_edge ], [ 0, %qla27xx_insert16.exit147.cond.end_crit_edge ]
  br i1 %tobool6.not, label %cond.end.qla27xx_insert32.exit_crit_edge, label %if.then.i150

cond.end.qla27xx_insert32.exit_crit_edge:         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_insert32.exit

if.then.i150:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i149 = getelementptr i8, ptr %buf, i32 %add.i146
  %34 = tail call i32 @llvm.bswap.i32(i32 %cond) #7
  %35 = ptrtoint ptr %add.ptr.i149 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %add.ptr.i149, align 4
  br label %qla27xx_insert32.exit

qla27xx_insert32.exit:                            ; preds = %if.then.i150, %cond.end.qla27xx_insert32.exit_crit_edge
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %add.i151 = add i32 %37, 4
  store i32 %add.i151, ptr %len, align 4
  %inc = add i32 %count.0214, 1
  br label %if.end

if.end:                                           ; preds = %qla27xx_insert32.exit, %for.body.if.end_crit_edge
  %count.1 = phi i32 [ %inc, %qla27xx_insert32.exit ], [ %count.0214, %for.body.if.end_crit_edge ]
  %inc13 = add nuw nsw i32 %i.0211, 1
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 4
  %max_req_queues = getelementptr inbounds %struct.qla_hw_data, ptr %39, i32 0, i32 30
  %40 = ptrtoint ptr %max_req_queues to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %max_req_queues, align 8
  %conv2 = zext i8 %41 to i32
  %cmp3 = icmp ult i32 %inc13, %conv2
  br i1 %cmp3, label %if.end.for.body_crit_edge, label %if.end.if.end72_crit_edge

if.end.if.end72_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body22:                                       ; preds = %if.end40.for.body22_crit_edge, %for.body22.lr.ph
  %42 = phi ptr [ %7, %for.body22.lr.ph ], [ %67, %if.end40.for.body22_crit_edge ]
  %count.2207 = phi i32 [ 0, %for.body22.lr.ph ], [ %count.3, %if.end40.for.body22_crit_edge ]
  %i.1204 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc42, %if.end40.for.body22_crit_edge ]
  %rsp_q_map = getelementptr inbounds %struct.qla_hw_data, ptr %42, i32 0, i32 25
  %43 = ptrtoint ptr %rsp_q_map to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rsp_q_map, align 16
  %arrayidx24 = getelementptr ptr, ptr %44, i32 %i.1204
  %45 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %46, null
  %tobool25.not.not = xor i1 %tobool25.not, true
  %or.cond141 = or i1 %tobool27.not, %tobool25.not.not
  br i1 %or.cond141, label %if.then28, label %for.body22.if.end40_crit_edge

for.body22.if.end40_crit_edge:                    ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then28:                                        ; preds = %for.body22
  br i1 %tobool27.not, label %qla27xx_insert16.exit156.thread, label %if.then.i159

qla27xx_insert16.exit156.thread:                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  %add.i155190 = add i32 %48, 2
  store i32 %add.i155190, ptr %len, align 4
  br label %qla27xx_insert16.exit161

if.then.i159:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %conv29 = trunc i32 %i.1204 to i16
  %49 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len, align 4
  %add.ptr.i153 = getelementptr i8, ptr %buf, i32 %50
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv29) #7
  %52 = ptrtoint ptr %add.ptr.i153 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %add.ptr.i153, align 2
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  %add.i155 = add i32 %54, 2
  store i32 %add.i155, ptr %len, align 4
  %add.ptr.i158 = getelementptr i8, ptr %buf, i32 %add.i155
  %55 = ptrtoint ptr %add.ptr.i158 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 256, ptr %add.ptr.i158, align 2
  br label %qla27xx_insert16.exit161

qla27xx_insert16.exit161:                         ; preds = %if.then.i159, %qla27xx_insert16.exit156.thread
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len, align 4
  %add.i160 = add i32 %57, 2
  store i32 %add.i160, ptr %len, align 4
  br i1 %tobool25.not, label %qla27xx_insert16.exit161.cond.end37_crit_edge, label %land.lhs.true31

qla27xx_insert16.exit161.cond.end37_crit_edge:    ; preds = %qla27xx_insert16.exit161
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end37

land.lhs.true31:                                  ; preds = %qla27xx_insert16.exit161
  %in_ptr = getelementptr inbounds %struct.rsp_que, ptr %46, i32 0, i32 7
  %58 = ptrtoint ptr %in_ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %in_ptr, align 4
  %tobool32.not = icmp eq ptr %59, null
  br i1 %tobool32.not, label %land.lhs.true31.cond.end37_crit_edge, label %cond.true33

land.lhs.true31.cond.end37_crit_edge:             ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end37

cond.true33:                                      ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %59, align 2
  %conv35 = zext i16 %61 to i32
  br label %cond.end37

cond.end37:                                       ; preds = %cond.true33, %land.lhs.true31.cond.end37_crit_edge, %qla27xx_insert16.exit161.cond.end37_crit_edge
  %cond38 = phi i32 [ %conv35, %cond.true33 ], [ 0, %land.lhs.true31.cond.end37_crit_edge ], [ 0, %qla27xx_insert16.exit161.cond.end37_crit_edge ]
  br i1 %tobool27.not, label %cond.end37.qla27xx_insert32.exit166_crit_edge, label %if.then.i164

cond.end37.qla27xx_insert32.exit166_crit_edge:    ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_insert32.exit166

if.then.i164:                                     ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i163 = getelementptr i8, ptr %buf, i32 %add.i160
  %62 = tail call i32 @llvm.bswap.i32(i32 %cond38) #7
  %63 = ptrtoint ptr %add.ptr.i163 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %add.ptr.i163, align 4
  br label %qla27xx_insert32.exit166

qla27xx_insert32.exit166:                         ; preds = %if.then.i164, %cond.end37.qla27xx_insert32.exit166_crit_edge
  %64 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len, align 4
  %add.i165 = add i32 %65, 4
  store i32 %add.i165, ptr %len, align 4
  %inc39 = add i32 %count.2207, 1
  br label %if.end40

if.end40:                                         ; preds = %qla27xx_insert32.exit166, %for.body22.if.end40_crit_edge
  %count.3 = phi i32 [ %inc39, %qla27xx_insert32.exit166 ], [ %count.2207, %for.body22.if.end40_crit_edge ]
  %inc42 = add nuw nsw i32 %i.1204, 1
  %66 = ptrtoint ptr %hw18 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw18, align 4
  %max_rsp_queues = getelementptr inbounds %struct.qla_hw_data, ptr %67, i32 0, i32 31
  %68 = ptrtoint ptr %max_rsp_queues to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %max_rsp_queues, align 1
  %conv19 = zext i8 %69 to i32
  %cmp20 = icmp ult i32 %inc42, %conv19
  br i1 %cmp20, label %if.end40.for.body22_crit_edge, label %if.end40.if.end72_crit_edge

if.end40.if.end72_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.end40.for.body22_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body22

if.else44:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2x_ini_mode to i32))
  %70 = load i32, ptr @ql2x_ini_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp45.not = icmp eq i32 %70, 2
  br i1 %cmp45.not, label %if.else44.if.else69_crit_edge, label %land.lhs.true47

if.else44.if.else69_crit_edge:                    ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else69

land.lhs.true47:                                  ; preds = %if.else44
  %71 = ptrtoint ptr %queue_type to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %queue_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %72)
  %cmp50 = icmp eq i8 %72, 3
  br i1 %cmp50, label %if.then52, label %land.lhs.true47.if.else69_crit_edge

land.lhs.true47.if.else69_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else69

if.then52:                                        ; preds = %land.lhs.true47
  %hw53 = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %73 = ptrtoint ptr %hw53 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw53, align 4
  %atio_ring_ptr = getelementptr inbounds %struct.qla_hw_data, ptr %74, i32 0, i32 281, i32 3
  %75 = ptrtoint ptr %atio_ring_ptr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %atio_ring_ptr, align 4
  %tobool54.not = icmp ne ptr %76, null
  %tobool56.not = icmp eq ptr %buf, null
  %or.cond142 = or i1 %tobool56.not, %tobool54.not
  br i1 %or.cond142, label %if.then57, label %if.then52.qla27xx_skip_entry.exit187_crit_edge

if.then52.qla27xx_skip_entry.exit187_crit_edge:   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_skip_entry.exit187

if.then57:                                        ; preds = %if.then52
  %77 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len, align 4
  br i1 %tobool56.not, label %qla27xx_insert16.exit171.thread, label %if.then.i174

qla27xx_insert16.exit171.thread:                  ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %add.i170191 = add i32 %78, 2
  %79 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add.i170191, ptr %len, align 4
  br label %qla27xx_insert16.exit176

if.then.i174:                                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i168 = getelementptr i8, ptr %buf, i32 %78
  %80 = ptrtoint ptr %add.ptr.i168 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %add.ptr.i168, align 2
  %81 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len, align 4
  %add.i170 = add i32 %82, 2
  store i32 %add.i170, ptr %len, align 4
  %add.ptr.i173 = getelementptr i8, ptr %buf, i32 %add.i170
  %83 = ptrtoint ptr %add.ptr.i173 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 256, ptr %add.ptr.i173, align 2
  br label %qla27xx_insert16.exit176

qla27xx_insert16.exit176:                         ; preds = %if.then.i174, %qla27xx_insert16.exit171.thread
  %84 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len, align 4
  %add.i175 = add i32 %85, 2
  store i32 %add.i175, ptr %len, align 4
  %atio_q_in = getelementptr inbounds %struct.qla_hw_data, ptr %74, i32 0, i32 281, i32 6
  %86 = ptrtoint ptr %atio_q_in to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %atio_q_in, align 4
  %tobool59.not = icmp eq ptr %87, null
  br i1 %tobool59.not, label %qla27xx_insert16.exit176.cond.end65_crit_edge, label %cond.true60

qla27xx_insert16.exit176.cond.end65_crit_edge:    ; preds = %qla27xx_insert16.exit176
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end65

cond.true60:                                      ; preds = %qla27xx_insert16.exit176
  call void @__sanitizer_cov_trace_pc() #9
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %87) #7, !srcloc !196
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  br label %cond.end65

cond.end65:                                       ; preds = %cond.true60, %qla27xx_insert16.exit176.cond.end65_crit_edge
  %cond66 = phi i32 [ %89, %cond.true60 ], [ 0, %qla27xx_insert16.exit176.cond.end65_crit_edge ]
  %90 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len, align 4
  br i1 %tobool56.not, label %if.end72.thread.thread, label %if.then74.thread

if.end72.thread.thread:                           ; preds = %cond.end65
  call void @__sanitizer_cov_trace_pc() #9
  %add.i180223 = add i32 %91, 4
  %92 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add.i180223, ptr %len, align 4
  br label %if.end79

if.else69:                                        ; preds = %land.lhs.true47.if.else69_crit_edge, %if.else44.if.else69_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53295, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t274, i32 noundef %conv) #7
  %tobool.not.i182 = icmp eq ptr %buf, null
  br i1 %tobool.not.i182, label %if.else69.if.end79_crit_edge, label %if.then.i183

if.else69.if.end79_crit_edge:                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then.i183:                                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #9
  %driver_flags.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 5
  %93 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %driver_flags.i, align 1
  %95 = or i8 %94, -128
  store i8 %95, ptr %driver_flags.i, align 1
  br label %qla27xx_skip_entry.exit187

if.end72:                                         ; preds = %if.end40.if.end72_crit_edge, %if.end.if.end72_crit_edge, %for.cond.preheader.if.end72_crit_edge, %for.cond17.preheader.if.end72_crit_edge
  %count.5 = phi i32 [ 0, %for.cond.preheader.if.end72_crit_edge ], [ 0, %for.cond17.preheader.if.end72_crit_edge ], [ %count.1, %if.end.if.end72_crit_edge ], [ %count.3, %if.end40.if.end72_crit_edge ]
  %tobool73.not = icmp eq ptr %buf, null
  br i1 %tobool73.not, label %if.end72.if.end79_crit_edge, label %if.then74

if.end72.if.end79_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then74.thread:                                 ; preds = %cond.end65
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i178 = getelementptr i8, ptr %buf, i32 %91
  %96 = tail call i32 @llvm.bswap.i32(i32 %cond66) #7
  %97 = ptrtoint ptr %add.ptr.i178 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %add.ptr.i178, align 4
  %98 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len, align 4
  %add.i180 = add i32 %99, 4
  store i32 %add.i180, ptr %len, align 4
  br label %if.then76

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.5)
  %tobool75.not = icmp eq i32 %count.5, 0
  br i1 %tobool75.not, label %if.then74.qla27xx_skip_entry.exit187_crit_edge, label %if.then74.if.then76_crit_edge

if.then74.if.then76_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76

if.then74.qla27xx_skip_entry.exit187_crit_edge:   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_skip_entry.exit187

if.then76:                                        ; preds = %if.then74.if.then76_crit_edge, %if.then74.thread
  %count.5219222 = phi i32 [ 1, %if.then74.thread ], [ %count.5, %if.then74.if.then76_crit_edge ]
  %100 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 %count.5219222, ptr %0, align 1
  br label %if.end79

qla27xx_skip_entry.exit187:                       ; preds = %if.then74.qla27xx_skip_entry.exit187_crit_edge, %if.then.i183, %if.then52.qla27xx_skip_entry.exit187_crit_edge
  %driver_flags.i185 = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 5
  %101 = ptrtoint ptr %driver_flags.i185 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %driver_flags.i185, align 1
  %103 = or i8 %102, -128
  store i8 %103, ptr %driver_flags.i185, align 1
  br label %if.end79

if.end79:                                         ; preds = %qla27xx_skip_entry.exit187, %if.then76, %if.end72.if.end79_crit_edge, %if.else69.if.end79_crit_edge, %if.end72.thread.thread
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %104 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %size.i, align 1
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #7
  %add.ptr.i188 = getelementptr i8, ptr %ent, i32 %106
  ret ptr %add.ptr.i188
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t275(ptr noundef %vha, ptr noundef %ent, ptr noundef writeonly %buf, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %0, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %size2 = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %4 = ptrtoint ptr %size2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %size2, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %buffer3 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 98304, ptr noundef %vha, i32 noundef 53779, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t275, i32 noundef %3, i32 noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53280, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t275) #7
  %tobool.not.i = icmp eq ptr %buf, null
  br i1 %tobool.not.i, label %if.then.done_crit_edge, label %if.then.i

if.then.done_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %driver_flags.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 5
  %9 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %driver_flags.i, align 1
  %11 = or i8 %10, -128
  store i8 %11, ptr %driver_flags.i, align 1
  br label %done

if.end:                                           ; preds = %entry
  %add = add i32 %3, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp = icmp ugt i32 %add, %6
  br i1 %cmp, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %6, -20
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 65536, ptr noundef %vha, i32 noundef 53296, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t275, i32 noundef %sub) #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %0, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %length.0 = phi i32 [ %sub, %if.then4 ], [ %3, %if.end.if.end6_crit_edge ]
  %tobool.not.i24 = icmp eq ptr %buf, null
  %tobool1.not.i = icmp eq ptr %buffer3, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.0)
  %tobool3.not.i = icmp eq i32 %length.0, 0
  %or.cond10.i = or i1 %or.cond.i, %tobool3.not.i
  br i1 %or.cond10.i, label %if.end6.qla27xx_insertbuf.exit_crit_edge, label %if.then.i25

if.end6.qla27xx_insertbuf.exit_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_insertbuf.exit

if.then.i25:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %15
  %16 = call ptr @memcpy(ptr %add.ptr.i, ptr %buffer3, i32 %length.0)
  br label %qla27xx_insertbuf.exit

qla27xx_insertbuf.exit:                           ; preds = %if.then.i25, %if.end6.qla27xx_insertbuf.exit_crit_edge
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %add.i = add i32 %18, %length.0
  store i32 %add.i, ptr %len, align 4
  br label %done

done:                                             ; preds = %qla27xx_insertbuf.exit, %if.then.i, %if.then.done_crit_edge
  %19 = ptrtoint ptr %size2 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %size2, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %add.ptr.i26 = getelementptr i8, ptr %ent, i32 %21
  ret ptr %add.ptr.i26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t276(ptr noundef %vha, ptr noundef %ent, ptr noundef %buf, ptr nocapture noundef readonly %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 98304, ptr noundef %vha, i32 noundef 53780, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t276, i32 noundef %1) #7
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %2, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %device = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device, align 2
  %12 = lshr i16 %11, 4
  %13 = and i16 %12, 15
  %and = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %and)
  %cmp.not = icmp eq i32 %5, %and
  br i1 %cmp.not, label %lor.lhs.false, label %if.then.qla27xx_skip_entry.exit_crit_edge

if.then.qla27xx_skip_entry.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_skip_entry.exit

lor.lhs.false:                                    ; preds = %if.then
  %port_no = getelementptr inbounds %struct.qla_hw_data, ptr %7, i32 0, i32 38
  %14 = ptrtoint ptr %port_no to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_no, align 8
  %16 = and i8 %15, 3
  %and5 = zext i8 %16 to i32
  %cond22 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %cond22 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %cond22, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %and5)
  %cmp7.not = icmp eq i32 %19, %and5
  br i1 %cmp7.not, label %lor.lhs.false.if.end10_crit_edge, label %lor.lhs.false.qla27xx_skip_entry.exit_crit_edge

lor.lhs.false.qla27xx_skip_entry.exit_crit_edge:  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_skip_entry.exit

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

qla27xx_skip_entry.exit:                          ; preds = %lor.lhs.false.qla27xx_skip_entry.exit_crit_edge, %if.then.qla27xx_skip_entry.exit_crit_edge
  %count = getelementptr inbounds %struct.qla27xx_fwdt_template, ptr %buf, i32 0, i32 3
  %20 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %count, align 1
  %dec = add i32 %21, -1
  store i32 %dec, ptr %count, align 1
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %22 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %size.i, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %add.ptr.i = getelementptr i8, ptr %ent, i32 %24
  %driver_flags.i = getelementptr inbounds %struct.anon.171, ptr %add.ptr.i, i32 0, i32 5
  %25 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %driver_flags.i, align 1
  %27 = or i8 %26, -128
  store i8 %27, ptr %driver_flags.i, align 1
  br label %if.end10

if.end10:                                         ; preds = %qla27xx_skip_entry.exit, %lor.lhs.false.if.end10_crit_edge, %entry.if.end10_crit_edge
  %ent.addr.1 = phi ptr [ %ent, %entry.if.end10_crit_edge ], [ %add.ptr.i, %qla27xx_skip_entry.exit ], [ %ent, %lor.lhs.false.if.end10_crit_edge ]
  %size.i20 = getelementptr inbounds %struct.anon.171, ptr %ent.addr.1, i32 0, i32 1
  %28 = ptrtoint ptr %size.i20 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %size.i20, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  %add.ptr.i21 = getelementptr i8, ptr %ent.addr.1, i32 %30
  ret ptr %add.ptr.i21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t277(ptr noundef %vha, ptr noundef readonly %ent, ptr noundef writeonly %buf, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %0, align 1
  %wr_cmd_data2 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %wr_cmd_data2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %wr_cmd_data2, align 1
  %data_addr3 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %data_addr3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %data_addr3, align 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 98304, ptr noundef %vha, i32 noundef 53781, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t277, i32 noundef %8) #7
  %tobool.not.i = icmp eq ptr %buf, null
  br i1 %tobool.not.i, label %qla27xx_write_reg.exit.thread, label %if.then.i.i.i

qla27xx_write_reg.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %add.i21 = add i32 %10, 4
  store i32 %add.i21, ptr %len, align 4
  br label %qla27xx_read_reg.exit

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %6)
  %12 = tail call i32 @llvm.bswap.i32(i32 %2)
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %14
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %4, ptr %add.ptr.i, align 4
  %16 = load i32, ptr %len, align 4
  %add.i = add i32 %16, 4
  store i32 %add.i, ptr %len, align 4
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase, align 4
  %add.ptr.i17 = getelementptr i8, ptr %20, i32 %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %4) #7, !srcloc !194
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %iobase5 = getelementptr inbounds %struct.qla_hw_data, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %iobase5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iobase5, align 4
  %add.ptr.i19 = getelementptr i8, ptr %24, i32 %11
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #7, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %buf, i32 %27
  %28 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %add.ptr.i.i.i, align 4
  br label %qla27xx_read_reg.exit

qla27xx_read_reg.exit:                            ; preds = %if.then.i.i.i, %qla27xx_write_reg.exit.thread
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %add.i.i.i = add i32 %30, 4
  store i32 %add.i.i.i, ptr %len, align 4
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %size.i, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  %add.ptr.i20 = getelementptr i8, ptr %ent, i32 %33
  ret ptr %add.ptr.i20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qla27xx_fwdt_entry_t278(ptr noundef %vha, ptr noundef readonly %ent, ptr noundef readnone %buf, ptr nocapture noundef readonly %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %0, align 1
  %wr_cmd_data2 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %wr_cmd_data2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %wr_cmd_data2, align 1
  %data_addr3 = getelementptr inbounds %struct.qla27xx_fwdt_entry, ptr %ent, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %data_addr3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %data_addr3, align 1
  %wr_data4 = getelementptr inbounds %struct.anon.197, ptr %0, i32 0, i32 3
  %7 = ptrtoint ptr %wr_data4 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %wr_data4, align 1
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 98304, ptr noundef %vha, i32 noundef 53782, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.qla27xx_fwdt_entry_t278, i32 noundef %10) #7
  %tobool.not.i = icmp eq ptr %buf, null
  br i1 %tobool.not.i, label %entry.qla27xx_write_reg.exit17_crit_edge, label %if.then.i16

entry.qla27xx_write_reg.exit17_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_write_reg.exit17

if.then.i16:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %iobase = getelementptr inbounds %struct.qla_hw_data, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %6)
  %16 = tail call i32 @llvm.bswap.i32(i32 %2)
  %add.ptr.i = getelementptr i8, ptr %14, i32 %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #7, !srcloc !194
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %iobase6 = getelementptr inbounds %struct.qla_hw_data, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %iobase6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase6, align 4
  %add.ptr.i15 = getelementptr i8, ptr %20, i32 %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %4) #7, !srcloc !194
  br label %qla27xx_write_reg.exit17

qla27xx_write_reg.exit17:                         ; preds = %if.then.i16, %entry.qla27xx_write_reg.exit17_crit_edge
  %size.i = getelementptr inbounds %struct.anon.171, ptr %ent, i32 0, i32 1
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %size.i, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  %add.ptr.i18 = getelementptr i8, ptr %ent, i32 %23
  ret ptr %add.ptr.i18
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla27xx_read8(ptr noundef %window, ptr noundef writeonly %buf, ptr nocapture noundef %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.qla27xx_insert32.exit_crit_edge, label %if.then.i

entry.qla27xx_insert32.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_insert32.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %window) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %phi.cast = zext i8 %0 to i32
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %2
  %3 = shl nuw i32 %phi.cast, 24
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %add.ptr.i, align 4
  br label %qla27xx_insert32.exit

qla27xx_insert32.exit:                            ; preds = %if.then.i, %entry.qla27xx_insert32.exit_crit_edge
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %add.i = add i32 %6, 4
  store i32 %add.i, ptr %len, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla27xx_read16(ptr noundef %window, ptr noundef writeonly %buf, ptr nocapture noundef %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.qla27xx_insert32.exit_crit_edge, label %if.then.i

entry.qla27xx_insert32.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_insert32.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %window) #7, !srcloc !201
  %1 = tail call i16 @llvm.bswap.i16(i16 %0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  %phi.cast = zext i16 %1 to i32
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %phi.cast) #7
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %add.ptr.i, align 4
  br label %qla27xx_insert32.exit

qla27xx_insert32.exit:                            ; preds = %if.then.i, %entry.qla27xx_insert32.exit_crit_edge
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %add.i = add i32 %7, 4
  store i32 %add.i, ptr %len, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qla27xx_read32(ptr noundef %window, ptr noundef writeonly %buf, ptr nocapture noundef %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.qla27xx_insert32.exit_crit_edge, label %if.then.i

entry.qla27xx_insert32.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qla27xx_insert32.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %window) #7, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %2
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %add.ptr.i, align 4
  br label %qla27xx_insert32.exit

qla27xx_insert32.exit:                            ; preds = %if.then.i, %entry.qla27xx_insert32.exit_crit_edge
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add.i = add i32 %5, 4
  store i32 %add.i, ptr %len, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_dump_ram(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla24xx_pause_risc(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_soft_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla27xx_dump_mpi_ram(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186, !187, !188}
!llvm.ident = !{!189}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 986, i32 7}
!2 = !{ptr @__func__.qla27xx_fwdt_template_valid, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 986, i32 33}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 993, i32 7}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 1008, i32 36}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 1020, i32 11}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 1024, i32 36}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 1027, i32 11}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 1035, i32 11}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 1046, i32 10}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 1059, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 1062, i32 36}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 1065, i32 7}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 1072, i32 36}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 1075, i32 11}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 1083, i32 11}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 1091, i32 7}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 842, i32 6}
!34 = !{ptr @__func__.qla27xx_walk_template, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 842, i32 30}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 852, i32 8}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 859, i32 7}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 863, i32 7}
!42 = !{ptr @qla27xx_fwdt_entry_call, !43, !"qla27xx_fwdt_entry_call", i1 false, i1 false}
!43 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 790, i32 3}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 140, i32 6}
!46 = !{ptr @__func__.qla27xx_fwdt_entry_t0, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 140, i32 25}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 151, i32 6}
!50 = !{ptr @__func__.qla27xx_fwdt_entry_t255, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 151, i32 25}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 168, i32 6}
!54 = !{ptr @__func__.qla27xx_fwdt_entry_t256, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 168, i32 29}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 183, i32 6}
!58 = !{ptr @__func__.qla27xx_fwdt_entry_t257, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 183, i32 29}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 202, i32 6}
!62 = !{ptr @__func__.qla27xx_fwdt_entry_t258, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 202, i32 29}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 220, i32 6}
!66 = !{ptr @__func__.qla27xx_fwdt_entry_t259, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 220, i32 29}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 235, i32 6}
!70 = !{ptr @__func__.qla27xx_fwdt_entry_t260, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 235, i32 27}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 250, i32 6}
!74 = !{ptr @__func__.qla27xx_fwdt_entry_t261, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 250, i32 27}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 267, i32 6}
!78 = !{ptr @__func__.qla27xx_fwdt_entry_t262, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 267, i32 31}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 296, i32 7}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 303, i32 7}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 315, i32 8}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 335, i32 6}
!88 = !{ptr @__func__.qla27xx_fwdt_entry_t263, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 335, i32 30}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 378, i32 7}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 397, i32 6}
!94 = !{ptr @__func__.qla27xx_fwdt_entry_t264, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 397, i32 28}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 413, i32 7}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 425, i32 6}
!100 = !{ptr @__func__.qla27xx_fwdt_entry_t265, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 425, i32 32}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 437, i32 6}
!104 = !{ptr @__func__.qla27xx_fwdt_entry_t266, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 437, i32 32}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 439, i32 3}
!108 = !{ptr @.str.37, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 452, i32 6}
!110 = !{ptr @__func__.qla27xx_fwdt_entry_t267, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 452, i32 30}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 463, i32 6}
!114 = !{ptr @__func__.qla27xx_fwdt_entry_t268, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 463, i32 31}
!116 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 474, i32 8}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 489, i32 8}
!120 = !{ptr @.str.41, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 504, i32 8}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 520, i32 7}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 533, i32 6}
!126 = !{ptr @__func__.qla27xx_fwdt_entry_t269, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 533, i32 29}
!128 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 553, i32 6}
!130 = !{ptr @__func__.qla27xx_fwdt_entry_t270, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 553, i32 30}
!132 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 573, i32 6}
!134 = !{ptr @__func__.qla27xx_fwdt_entry_t271, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 573, i32 30}
!136 = !{ptr @.str.46, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 589, i32 6}
!138 = !{ptr @__func__.qla27xx_fwdt_entry_t272, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 589, i32 30}
!140 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 592, i32 7}
!142 = !{ptr @.str.48, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 610, i32 6}
!144 = !{ptr @__func__.qla27xx_fwdt_entry_t273, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 610, i32 28}
!146 = !{ptr @.str.49, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 615, i32 8}
!148 = !{ptr @.str.50, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 633, i32 6}
!150 = !{ptr @__func__.qla27xx_fwdt_entry_t274, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 633, i32 33}
!152 = !{ptr @.str.51, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 672, i32 7}
!154 = !{ptr @.str.52, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 696, i32 6}
!156 = !{ptr @__func__.qla27xx_fwdt_entry_t275, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 696, i32 33}
!158 = !{ptr @.str.53, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 699, i32 7}
!160 = !{ptr @.str.54, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 706, i32 7}
!162 = !{ptr @.str.55, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 720, i32 6}
!164 = !{ptr @__func__.qla27xx_fwdt_entry_t276, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 720, i32 26}
!166 = !{ptr @.str.56, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 749, i32 6}
!168 = !{ptr @__func__.qla27xx_fwdt_entry_t277, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 749, i32 27}
!170 = !{ptr @.str.57, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 767, i32 6}
!172 = !{ptr @__func__.qla27xx_fwdt_entry_t278, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 767, i32 27}
!174 = !{ptr @.str.58, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 781, i32 6}
!176 = !{ptr @__func__.qla27xx_fwdt_entry_other, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 781, i32 31}
!178 = distinct !{null, !179, !"__already_done", i1 false, i1 false}
!179 = !{!"../drivers/scsi/qla2xxx/qla_tmpl.c", i32 880, i32 2}
!180 = !{ptr @.str.59, !179, !"<string literal>", i1 false, i1 false}
!181 = !{i32 1, !"wchar_size", i32 2}
!182 = !{i32 1, !"min_enum_size", i32 4}
!183 = !{i32 8, !"branch-target-enforcement", i32 0}
!184 = !{i32 8, !"sign-return-address", i32 0}
!185 = !{i32 8, !"sign-return-address-all", i32 0}
!186 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!187 = !{i32 7, !"uwtable", i32 1}
!188 = !{i32 7, !"frame-pointer", i32 2}
!189 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!190 = !{!"branch_weights", i32 2000, i32 1}
!191 = !{!"branch_weights", i32 1, i32 2000}
!192 = !{i8 0, i8 2}
!193 = !{i64 2156210494}
!194 = !{i64 5151768}
!195 = !{ptr @qla27xx_read16, ptr @qla27xx_read32, ptr @qla27xx_read8}
!196 = !{i64 5152186}
!197 = !{i64 2156208050}
!198 = !{i64 2156819408}
!199 = !{i64 5151966}
!200 = !{i64 2156206844}
!201 = !{i64 5151348}
!202 = !{i64 2156207447}
